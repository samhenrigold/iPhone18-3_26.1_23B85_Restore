void sub_1DC28A9B8(uint64_t a1)
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v71 = *MEMORY[0x1E69E9840];
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v52 = v5;
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v51 = v7 - v6;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v49 = v9;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v48 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v55 = v1;
  sub_1DC516A9C();
  __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
  sub_1DC515D7C();
  sub_1DC51628C();
  v47 = v17;
  v22 = *(v17 + 8);
  v54 = v15;
  v22(v21, v15);
  if (v64)
  {
    sub_1DC28F9B0(&v63, v67);
    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    v23 = type metadata accessor for SessionStoreConversationHistoryProvider();
    sub_1DC28FB9C(v67, &v65);
    v53 = v23;
    v52 = sub_1DC28F198(&v65);
    sub_1DC5153CC();
    v24 = v70;
    if ((v70 & 1) == 0)
    {
      v65 = v68;
      v66 = v69;
      CPPIDForAuditToken(&v65);
    }

    v25 = *(v55 + qword_1EDAC7DA8 + 24);
    v26 = *(v55 + qword_1EDAC7DA8 + 32);
    __swift_project_boxed_opaque_existential_1((v55 + qword_1EDAC7DA8), v25);
    (*(v26 + 8))(&v65, v25, v26);
    sub_1DC5153BC();
    sub_1DC510B7C();
    LOBYTE(v63) = v24 & 1;
    sub_1DC290C78();
    v27 = type metadata accessor for NLRouterExperimentTrialController();
    v28 = NLRouterExperimentTrialController.__allocating_init()();
    sub_1DC515D7C();
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 16))(v48, v14, v50);
    sub_1DC28FB9C(v67, &v63);
    sub_1DC28FB9C(&v65, v62);
    sub_1DC5151AC();
    swift_allocObject();
    v51 = sub_1DC51519C();
    type metadata accessor for ContextRetrievalClient();
    v32 = sub_1DC304CF8();
    type metadata accessor for SessionContext(0);
    v33 = swift_allocObject();
    v60 = v53;
    v61 = &off_1F57FB6E0;
    *&v59 = v52;
    v57 = v27;
    v58 = &off_1F57FCBE8;
    *&v56 = v28;
    (*(v29 + 8))(v14, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    (*(v47 + 32))(v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v21, v54);
    (*(v29 + 32))(v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale, v30, v31);
    sub_1DC28F9B0(&v59, v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider);
    sub_1DC28F9B0(&v63, v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState);
    sub_1DC28F9B0(v62, v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient);
    sub_1DC28F9B0(&v56, v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController);
    *(v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient) = v51;
    *(v33 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient) = v32;
    *(v55 + _MergedGlobals) = v33;
  }

  else
  {
    sub_1DC28EB30(&v63, &qword_1ECC7C928, &qword_1DC523AB8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    v34 = sub_1DC29120C();
    (*(v52 + 16))(v51, v34, v53);
    v35 = v3;
    v36 = sub_1DC516F6C();
    v37 = sub_1DC517BAC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v67[0] = v55;
      *v38 = 136446210;
      sub_1DC515D7C();
      OUTLINED_FUNCTION_3_8();
      sub_1DC291788(v39, v40, MEMORY[0x1E69695E0]);
      v41 = v54;
      v42 = sub_1DC51823C();
      v44 = v43;
      v22(v21, v41);
      v45 = sub_1DC291244(v42, v44, v67);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_1DC287000, v36, v37, "No session state found for %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v52 + 8))(v51, v53);
  }

  OUTLINED_FUNCTION_34();
}

void OUTLINED_FUNCTION_66()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 272);

  return sub_1DC33F1E0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 352);

  return sub_1DC2E5408(v4, a2);
}

uint64_t OUTLINED_FUNCTION_9_27()
{
}

uint64_t OUTLINED_FUNCTION_9_29()
{
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_8_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X6>, char *x8_0@<X8>)
{
  v13 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1DC3136DC(v13, a2, a3, v9, v10, v11, a7, v8, x8_0);
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_16(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1)
{

  return swift_dynamicCast();
}

void sub_1DC28B888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v121 = v28;
  v122 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v30);
  v120 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v119 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v34 - v33);
  v130 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v128 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v129 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v118 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_40_2();
  v51 = OUTLINED_FUNCTION_20();
  v124 = v52;
  v125 = v53;
  v126 = v54;
  v53(v51);
  v55 = v26;
  v56 = sub_1DC516F6C();
  v57 = sub_1DC517B9C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_63();
    v131 = v47;
    v59 = v58;
    v60 = OUTLINED_FUNCTION_249();
    *v59 = 138412290;
    *(v59 + 4) = v55;
    *v60 = v55;
    v61 = v55;
    _os_log_impl(&dword_1DC287000, v56, v57, "NLBridge received message: %@", v59, 0xCu);
    sub_1DC28EB30(v60, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v47 = v131;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v62 = *(v47 + 8);
  v131 = v47 + 8;
  v127 = v62;
  v62(v20, v45);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  v63 = v130;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v130);
  OUTLINED_FUNCTION_183();
  v123 = v45;
  (*(v67 + class metadata base offset for NLBridge + 104))(v21);
  sub_1DC5153EC();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_183();
  (*(v72 + class metadata base offset for NLBridge + 272))(v42);
  sub_1DC516A9C();
  v73 = v135;
  v74 = OUTLINED_FUNCTION_68_3();
  v75 = v129;
  sub_1DC515D7C();
  sub_1DC51628C();
  v76 = *(v128 + 1);
  v77 = v63;
  v78 = &unk_1ECC8F000;
  v76(v75, v77);
  OUTLINED_FUNCTION_147();
  (*(v79 + class metadata base offset for NLBridge + 128))(&v132);
  __swift_destroy_boxed_opaque_existential_1Tm(v133);
  sub_1DC5153BC();
  OUTLINED_FUNCTION_183();
  (*(v80 + class metadata base offset for NLBridge + 320))();
  sub_1DC5153DC();
  OUTLINED_FUNCTION_147();
  (*(v81 + class metadata base offset for NLBridge + 224))(v82 & 1);
  if (sub_1DC5153DC())
  {
    v128 = v76;
    v83 = OUTLINED_FUNCTION_45_9(&a13);
    v84(v83);
    v85 = sub_1DC516F6C();
    v86 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v86))
    {
      OUTLINED_FUNCTION_17_4();
      v73 = swift_slowAlloc();
      *v73 = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v87, v88, "Understanding on device is on");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v89 = OUTLINED_FUNCTION_55_11();
    v90(v89);
    sub_1DC5153BC();
    v91 = v118[4];
    sub_1DC510B7C();
    OUTLINED_FUNCTION_147();
    (*(v92 + class metadata base offset for NLBridge + 120))(v133);
    v93 = v134;
    if (v134)
    {
      v94 = OUTLINED_FUNCTION_68_3();
      v73 = v118;
      v95 = *(v93 - 8);
      MEMORY[0x1EEE9AC00](v94);
      OUTLINED_FUNCTION_6_6();
      v96 = OUTLINED_FUNCTION_20();
      v97(v96);
      sub_1DC28EB30(v133, &qword_1ECC7C928, &qword_1DC523AB8);
      OUTLINED_FUNCTION_57_5();
      sub_1DC51625C();
      (*(v95 + 8))(v24, v93);
      v78 = &unk_1ECC8F000;
      v99 = v121;
      v98 = v122;
      v100 = OUTLINED_FUNCTION_56_11();
      v101(v100, v74, v98);
    }

    else
    {
      sub_1DC28EB30(v133, &qword_1ECC7C928, &qword_1DC523AB8);
      v99 = v121;
      v98 = v122;
      v110 = OUTLINED_FUNCTION_56_11();
      v111(v110);
    }

    v112 = v129;
    sub_1DC515D7C();
    OUTLINED_FUNCTION_183();
    (*(v113 + v78[82] + 424))(v112, v91, v73, 0, 0);
    v128(v112, v130);
    (*(v99 + 8))(v73, v98);
    (*(v119 + 8))(v91, v120);
  }

  else
  {
    v102 = OUTLINED_FUNCTION_45_9(&a14);
    v103(v102);
    v104 = sub_1DC516F6C();
    v105 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v105))
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v106, v107, "Understanding is not on device");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v108 = OUTLINED_FUNCTION_55_11();
    v109(v108);
  }

  type metadata accessor for LVCHistory();
  v114 = sub_1DC2A2334();
  sub_1DC2A22A8(v114);
  OUTLINED_FUNCTION_183();
  (*(v115 + v78[82] + 344))();
  type metadata accessor for RVSHistory();
  v116 = sub_1DC2A2334();
  sub_1DC2A2388(v116);
  OUTLINED_FUNCTION_183();
  (*(v117 + v78[82] + 368))();
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2)
{

  return sub_1DC51814C();
}

uint64_t OUTLINED_FUNCTION_32_13(uint64_t a1, uint64_t a2)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *(a1 + 16) = a11;
  *(a1 + 32) = a12;
  *(a1 + 48) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_1DC37786C(v0, type metadata accessor for NLRouterTurnContext);
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_42()
{
  v2 = *(v0 - 360);

  return sub_1DC3A5DA0(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return MEMORY[0x1EEDC2238](v2, v1, v3, v2, a1);
}

uint64_t OUTLINED_FUNCTION_0_51(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_59(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_63(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_66(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_68()
{

  nullsub_1();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DC517E1C();
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

void OUTLINED_FUNCTION_14_5()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_14_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return MEMORY[0x1EEE3BC48](v0 - 136);
}

void OUTLINED_FUNCTION_14_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_14_19()
{

  return sub_1DC296DBC();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return sub_1DC51813C();
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v2 = *(v0 - 288);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

unint64_t OUTLINED_FUNCTION_1_35(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DC291244(0xD000000000000016, (v2 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_1DC517F4C();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_1DC5109BC();
}

void OUTLINED_FUNCTION_13_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_9(uint64_t a1)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_13_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_13_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DC51834C();
}

void OUTLINED_FUNCTION_13_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return MEMORY[0x1EEE3FA28]();
}

void OUTLINED_FUNCTION_13_23()
{
  *(v0 - 256) = 0;
  *(v0 - 264) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
}

void OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2)
{
  *(v2 - 176) = a1;
  *(v2 - 168) = a2;

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_13_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC516F1C();
}

void OUTLINED_FUNCTION_13_26()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F358(a1, a2, v2, v3);
}

id OUTLINED_FUNCTION_18_6()
{

  return sub_1DC312744(0x746E65696C435252, 0xEF6C696E20736920, -1, 0);
}

unint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_1DC297814();
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_18_16(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_17@<X0>(uint64_t a1@<X1>, char a2@<W8>, __int128 a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_18(uint64_t a1, uint64_t a2)
{

  return sub_1DC51820C();
}

uint64_t OUTLINED_FUNCTION_54@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_15()
{
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return sub_1DC40AA38(v0, type metadata accessor for HeuristicAgentKeywords);
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return ServiceSetupConfiguration.init(locale:clientProcessId:)();
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_58()
{

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_55_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1, uint64_t a2)
{

  return sub_1DC51814C();
}

uint64_t OUTLINED_FUNCTION_34_18()
{

  return sub_1DC51120C();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return sub_1DC5176CC();
}

void OUTLINED_FUNCTION_29_1()
{
  *(v3 - 296) = v2;
  *(v3 - 288) = v1;
  *(v3 - 280) = v0;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_1DC327BD8();
}

uint64_t OUTLINED_FUNCTION_168()
{
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1DC28D414();
}

uint64_t OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_117()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1DC291244(v0, v1, (v2 - 152));
}

__n128 *OUTLINED_FUNCTION_6_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "useCases.json");
  result[2].n128_u16[7] = -4864;
  result[3].n128_u64[0] = 0x7365736143657375;
  result[3].n128_u64[1] = 0xEB0000000062702ELL;
  return result;
}

void OUTLINED_FUNCTION_6_11(void *a1@<X8>)
{
  v2 = *(v1 - 368);
  *a1 = *(v1 - 360);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DC51835C();
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_53_7()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_53_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_53_12()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_53_13()
{
  *(v5 - 512) = v4;
  *(v5 - 520) = v3;
  *(v5 - 336) = v1;
  *(v5 - 264) = 0;
  *(v5 - 224) = *(v0 + 16);
  *(v5 - 216) = v0 + 8;
  *(v5 - 240) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_53_14(uint64_t a1, uint64_t a2)
{

  return sub_1DC51817C();
}

uint64_t OUTLINED_FUNCTION_53_16(uint64_t a1, uint64_t a2)
{

  return sub_1DC51825C();
}

char *OUTLINED_FUNCTION_53_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_1DC33F29C(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_44_5()
{
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1, uint64_t a2)
{

  return sub_1DC398320(a1, a2, type metadata accessor for NLRouterServiceResponse);
}

void OUTLINED_FUNCTION_42()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_67()
{

  JUMPOUT(0x1E1298840);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_1DC51825C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F358(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_114_1()
{

  JUMPOUT(0x1E1298840);
}

uint64_t sub_1DC28EA9C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  OUTLINED_FUNCTION_15_7();
  if (!v5)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t OUTLINED_FUNCTION_229_0()
{
}

uint64_t sub_1DC28EB30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_35();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_30_7(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_30_10()
{

  return sub_1DC2A5914();
}

uint64_t sub_1DC28ED54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  OUTLINED_FUNCTION_47_8(v4 + *a2, a2);
  sub_1DC384434(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DC28EDD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_115_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46_3()
{

  sub_1DC32DE40();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_1DC28EB30(v2, v0, v1);
}

id OUTLINED_FUNCTION_46_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return swift_slowAlloc();
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

uint64_t sub_1DC28F198(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DC28F9B0(a1, v2 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_37_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1DC28F308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DC28F358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC28F3B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC28F414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC5176CC();
}

void OUTLINED_FUNCTION_33_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  static SignpostLogger.begin(_:enableTelemetry:)(a1, a2, a3, 1, a5, a6, v6);
}

uint64_t OUTLINED_FUNCTION_33_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_1DC510C6C();
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return sub_1DC291F78(v0 - 96, v0 - 128);
}

id OUTLINED_FUNCTION_57_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_15_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_66_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 128);

  _os_log_impl(a1, v4, v8, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_20(uint64_t a1)
{

  return sub_1DC51777C();
}

uint64_t sub_1DC28F9B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_35_12()
{
  v2 = *(v0 - 208);

  return sub_1DC291244(0xD000000000000013, v2, (v0 - 120));
}

uint64_t OUTLINED_FUNCTION_35_16(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_35_18(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_1DC28FB9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_28_10(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_28_12(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return sub_1DC44BE10(v0);
}

uint64_t OUTLINED_FUNCTION_28_16()
{
  v2 = *(v0 - 120);

  return sub_1DC45BDFC(v2, type metadata accessor for TurnSummary);
}

void sub_1DC28FD94(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for NLRouterClientImpl;
  *(a1 + 32) = &protocol witness table for NLRouterClientImpl;
  NLRouterClientImpl.init()();
}

uint64_t sub_1DC28FDF4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1ECC8F2E0;
  OUTLINED_FUNCTION_47_8(v2 + qword_1ECC8F2E0, a2);
  sub_1DC384434(a1, v2 + v4, &qword_1ECC7C928, &qword_1DC523AB8);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_1DC2AAF50(v2, v0, v1);
}

void OUTLINED_FUNCTION_39_2()
{

  JUMPOUT(0x1E1296160);
}

void OUTLINED_FUNCTION_39_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_1DC3136A0();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_39_8()
{

  return sub_1DC299428(v0);
}

void OUTLINED_FUNCTION_39_9()
{
  v1 = v0[51];
  v0[45] = v1 + 16;
  v0[36] = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return sub_1DC2AAF50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC290080(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1ECC8F2D0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC2900E0(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1ECC8F2B0;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC290120@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  v4 = qword_1ECC8F2E0;
  OUTLINED_FUNCTION_54_11(v2 + qword_1ECC8F2E0, a2);
  return sub_1DC28F414(v2 + v4, a1, &qword_1ECC7C928, &qword_1DC523AB8);
}

unint64_t OUTLINED_FUNCTION_58_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DC2D2774(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_7()
{
}

uint64_t sub_1DC290280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*v5 + class metadata base offset for NLBridge + 168))(v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v12 + 24))(a1, a2, a3, a4, a5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_183();
  return (*(v13 + class metadata base offset for NLBridge + 472))();
}

void sub_1DC2903F0()
{
  OUTLINED_FUNCTION_33();
  v49 = v0;
  v46 = v1;
  v47 = v2;
  v43 = v3;
  v44 = v4;
  v41 = v5;
  v42 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC510C8C();
  v38 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v49 + 32);
  OUTLINED_FUNCTION_44_8();
  v20(v19, v41, v13);
  OUTLINED_FUNCTION_82_2();
  v21(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v10);
  v22 = v48;
  OUTLINED_FUNCTION_126_0();
  v23 = v42;
  v24(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v42);
  v25 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v26 = (v17 + *(v11 + 80) + v25) & ~*(v11 + 80);
  v27 = (v12 + *(v22 + 80) + v26) & ~*(v22 + 80);
  v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v49;
  (*(v15 + 32))(v29 + v25, v19, v13);
  (*(v11 + 32))(v29 + v26, v39, v38);
  (*(v48 + 32))(v29 + v27, v40, v23);
  v30 = (v29 + v28);
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  OUTLINED_FUNCTION_27_5();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1DC292CC8;
  *(v32 + 24) = v29;
  v50[4] = sub_1DC292A1C;
  v50[5] = v32;
  OUTLINED_FUNCTION_5_4();
  v50[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v50[2] = v33;
  v50[3] = &block_descriptor_28;
  v34 = _Block_copy(v50);

  dispatch_sync(v45, v34);
  _Block_release(v34);
  v35 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_173(v35, v36, v37, 209);
  OUTLINED_FUNCTION_220();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC290784()
{
  OUTLINED_FUNCTION_241();
  v21 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v3 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  v20 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v8 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v14 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);

  (*(v2 + 8))(v0 + v3, v21);
  (*(v7 + 8))(v0 + v8, v20);
  (*(v13 + 8))(v0 + v14, v11);

  OUTLINED_FUNCTION_240();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_20()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DC517E1C();
}

void OUTLINED_FUNCTION_5_24()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_1DC51764C();
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_1DC5176CC();
}

void sub_1DC290C78()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v73 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_4(v9, v63);
  v10 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v70 = v15;
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v18 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1DC29120C();
  v69 = v20;
  (*(v20 + 16))(v24, v25, v18);
  v26 = *(v12 + 16);
  v72 = v5;
  v68 = v26;
  v26(v17, v5, v10);
  v27 = sub_1DC516F6C();
  v66 = sub_1DC517B9C();
  v28 = OUTLINED_FUNCTION_25_0(v66);
  v75 = v3;
  v29 = HIDWORD(v3) & 1;
  v67 = v29;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v78[0] = v64;
    *v30 = 136315394;
    sub_1DC291788(&qword_1ECC7BE58, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v63 = v27;
    v31 = sub_1DC51823C();
    v65 = v12 + 16;
    v32 = v29;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_40_9();
    v36(v35);
    v37 = sub_1DC291244(v31, v34, v78);
    v38 = v18;
    v39 = v75;

    *(v30 + 4) = v37;
    *(v30 + 12) = 2082;
    v76 = v39;
    v77 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C940, &unk_1DC523CA0);
    v40 = sub_1DC51777C();
    v42 = sub_1DC291244(v40, v41, v78);

    *(v30 + 14) = v42;
    v43 = v63;
    _os_log_impl(&dword_1DC287000, v63, v66, "Setting up nlRouterClient with locale: %s, client processId: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();

    (*(v69 + 8))(v24, v38);
  }

  else
  {

    v44 = OUTLINED_FUNCTION_40_9();
    v45(v44);
    (*(v69 + 8))(v24, v18);
  }

  v46 = v1;
  v47 = *(v1 + qword_1EDAC7D98);
  sub_1DC517AAC();
  v48 = v74;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = v71;
  v68(v71, v72, v10);
  sub_1DC28FB9C(v73, v78);
  v54 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v55 = (v54 + v70 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v56 = v10;
  v57 = (v54 + v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = 0;
  *(v58 + 3) = 0;
  *(v58 + 4) = v47;
  (*(v12 + 32))(&v58[v54], v53, v56);
  v59 = &v58[v55];
  *v59 = v75;
  v59[4] = v67;
  sub_1DC28F9B0(v78, &v58[v57]);

  v60 = OUTLINED_FUNCTION_27_7();
  *(v46 + qword_1EDAC7DA0) = sub_1DC315A04(v60, v61, v48, v62, v58);

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC291138()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v4 | 7);
}

unint64_t sub_1DC291244(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DC291E78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DC291F78(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_51_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

uint64_t OUTLINED_FUNCTION_51_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_51_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_40_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_13()
{

  return sub_1DC5179EC();
}

id OUTLINED_FUNCTION_40_16()
{

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_17_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X6>, char *x8_0@<X8>)
{
  v13 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1DC327CF8(v13, a2, a3, v9, v10, v11, a7, v8, x8_0);
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_17_17()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return sub_1DC5109BC();
}

uint64_t sub_1DC291740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC291788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC2917D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_27_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_27_14(float a1)
{
  *v1 = a1;

  return sub_1DC5183EC();
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DC51834C();
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_27_19()
{

  return sub_1DC45BDFC(v0, type metadata accessor for QDContextState);
}

uint64_t sub_1DC291A34()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC291ACC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DC29CB90;

  return v6(a1);
}

uint64_t sub_1DC291BC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_1DC517F4C();
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return sub_1DC312FB4(0);
}

void OUTLINED_FUNCTION_36_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_36_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_36_15(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

id OUTLINED_FUNCTION_36_18(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_36_20()
{

  return sub_1DC5179EC();
}

void *sub_1DC291E08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE50, &unk_1DC522990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1DC291E78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DC291FD4(a5, a6);
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
    result = sub_1DC517F8C();
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

uint64_t sub_1DC291F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DC291FD4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DC292108(a1, a2);
  sub_1DC292020(&unk_1F57F58F8);
  return v3;
}

uint64_t sub_1DC292020(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1DC2CF8DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DC292108(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_1DC5178EC())
  {
    result = sub_1DC291E08(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DC517F1C();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1DC517F8C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

  return MEMORY[0x1E69E7CC0];
}

id NLRouterExperimentTrialController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NLRouterExperimentTrialController.init()()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  ObjectType = swift_getObjectType();
  v5 = sub_1DC516E9C();
  v6 = &off_1F57FCBD8;
  v4[0] = [objc_allocWithZone(v5) init];
  v2 = (*(ObjectType + 96))(v0, v4);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1DC292368()
{
  OUTLINED_FUNCTION_37_4();
  v0 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_0(v1);
  *v2 = v3;
  v2[1] = sub_1DC29F200;

  return sub_1DC292488();
}

uint64_t sub_1DC292488()
{
  OUTLINED_FUNCTION_1_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1DC516F7C();
  v0[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[7] = v6;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v7 = sub_1DC510C8C();
  v0[10] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[11] = v8;
  v0[12] = swift_task_alloc();
  v9 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_10(v9);
  v0[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

void OUTLINED_FUNCTION_11_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_22()
{

  JUMPOUT(0x1E1298840);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
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

uint64_t OUTLINED_FUNCTION_54_7()
{

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_54_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_11(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_54_12()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_54_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_54_15(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_54_16(uint64_t a1, uint64_t a2)
{

  return sub_1DC5180AC();
}

uint64_t OUTLINED_FUNCTION_54_17(uint64_t a1)
{

  return sub_1DC5179EC();
}

void OUTLINED_FUNCTION_85_1(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
  *(v1 - 112) = 0xE700000000000000;

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC292CC8()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v2 = sub_1DC51623C();
  OUTLINED_FUNCTION_52(v2);
  OUTLINED_FUNCTION_52_8();

  return sub_1DC292DFC();
}

uint64_t sub_1DC292DFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_30_1();
  sub_1DC292F48();
  v3 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  v4 = OUTLINED_FUNCTION_41();
  v5(v4);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
  OUTLINED_FUNCTION_38_1();
  (*(v9 + 472))(v0);
  OUTLINED_FUNCTION_38_1();
  v10 = OUTLINED_FUNCTION_30();
  return v11(v10);
}

uint64_t sub_1DC292F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
  OUTLINED_FUNCTION_63_0();
  sub_1DC51764C();
  OUTLINED_FUNCTION_38_1();
  (*(v0 + 616))();
  OUTLINED_FUNCTION_63_0();
  sub_1DC51764C();
  OUTLINED_FUNCTION_38_1();
  (*(v1 + 640))();
  OUTLINED_FUNCTION_38_1();
  v3 = *(v2 + 592);

  return v3(0);
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_1DC2BE044(v1, v2 + v0);
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return sub_1DC516F5C();
}

void OUTLINED_FUNCTION_43_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_43_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 88) = a5;

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC2931CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_35_1(a1);
  *(v2 + v4) = a1;
}

uint64_t sub_1DC293244(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1DC28EDD8(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DC2932B8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC2933CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_148();
  v7 = sub_1DC510AFC();
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC510AEC();
  OUTLINED_FUNCTION_38_1();
  (*(v9 + 544))(v3);
  sub_1DC2936F0();
  v11 = v10;
  OUTLINED_FUNCTION_38_1();
  (*(v12 + 400))(2);
  OUTLINED_FUNCTION_38_1();
  v14 = (*(v13 + 816))(a1, 0xD000000000000012, v11);
  OUTLINED_FUNCTION_38_1();
  (*(v15 + 352))(0xD000000000000012, v11);
  v16 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  v17 = OUTLINED_FUNCTION_63_0();
  v18(v17);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  OUTLINED_FUNCTION_38_1();
  (*(v22 + 328))(v2);
  return v14 & 1;
}

uint64_t sub_1DC29366C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1DC510AFC();
  OUTLINED_FUNCTION_35();
  (*(v5 + 40))(v2 + v4, a1);
  return swift_endAccess();
}

unint64_t sub_1DC2936F0()
{
  v1 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D0890], v1);
  OUTLINED_FUNCTION_63_0();
  sub_1DC2937EC();
  v5 = OUTLINED_FUNCTION_62_2();
  v6(v5);
  return 0xD000000000000012;
}

uint64_t sub_1DC2937EC()
{
  sub_1DC51623C();
  sub_1DC293BE4(&qword_1ECC7BB20, MEMORY[0x1E69D08A0], MEMORY[0x1E69D08A8]);
  sub_1DC5179EC();
  sub_1DC5179EC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1DC51825C();
  }

  return v1 & 1;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_1DC37786C(v0, type metadata accessor for HeuristicRoutingRequest);
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC293BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC293C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC293C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DC293CBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_11(v2 + 16, a2);
  v3 = *(v2 + 16);
  v4 = v3;
  return v3;
}

uint64_t sub_1DC293CF4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1DC293D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v26;
  a22 = v27;
  v219 = v28;
  v212 = v29;
  v218 = v30;
  v221 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v227 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v34);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  v220 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  v225 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v226 = v43;
  OUTLINED_FUNCTION_12();
  v224 = sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v217 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v223 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v208 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  v216 = v49;
  OUTLINED_FUNCTION_12();
  v50 = sub_1DC5173EC();
  OUTLINED_FUNCTION_0();
  v207 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_42_3();
  v54 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v204 - v62;
  OUTLINED_FUNCTION_38_1();
  v65 = v64 + 296;
  v66 = *(v64 + 296);
  v67 = v66();
  if (v67)
  {
    v68 = v56;

    if (sub_1DC34D4A4())
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v69(v22);
      v70 = sub_1DC516F6C();
      v71 = sub_1DC517B8C();
      if (OUTLINED_FUNCTION_15_4(v71))
      {
        v72 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v72);
        OUTLINED_FUNCTION_33_10(&dword_1DC287000, v73, v74, "Previous setup failed or not run, should call setup again");
        OUTLINED_FUNCTION_40_0();
      }

      (*(v56 + 8))(v22, v54);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_12_0();
    v111 = *(v110 + 344);
    v222 = v23;
    v112 = v111();
    if (v219)
    {
      v114 = v220;
      v115 = v221;
      v116 = v226;
      v117 = v227;
      v118 = v225;
      if (v113)
      {
        v119 = v112 == v212 && v113 == v219;
        if (v119)
        {

          goto LABEL_29;
        }

        sub_1DC51825C();
        OUTLINED_FUNCTION_23_2();

        if (v23)
        {
LABEL_29:
          OUTLINED_FUNCTION_12_0();
          v131 += 40;
          v132 = *v131;
          v220 = v131;
          v221 = v132;
          v132();
          v223 = *(v117 + 16);
          v224 = v117 + 16;
          v223(v118, v218, v115);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v133, v134, v135, v115);
          v136 = *(v214 + 48);
          v137 = &qword_1ECC7CD00;
          v138 = &unk_1DC5259F0;
          sub_1DC28F308(v116, v114, &qword_1ECC7CD00, &unk_1DC5259F0);
          sub_1DC28F308(v118, v114 + v136, &qword_1ECC7CD00, &unk_1DC5259F0);
          OUTLINED_FUNCTION_39(v114, 1, v115);
          if (v119)
          {
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v139, v140, v141);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v142, v143, v144);
            OUTLINED_FUNCTION_39(v114 + v136, 1, v115);
            if (v119)
            {
              sub_1DC28EB30(v114, &qword_1ECC7CD00, &unk_1DC5259F0);
              v145 = v68;
              v146 = v54;
              goto LABEL_43;
            }
          }

          else
          {
            v137 = v211;
            sub_1DC28F308(v114, v211, &qword_1ECC7CD00, &unk_1DC5259F0);
            OUTLINED_FUNCTION_39(v114 + v136, 1, v115);
            if (!v147)
            {
              (*(v117 + 32))(v210, v114 + v136, v115);
              OUTLINED_FUNCTION_8_9();
              sub_1DC293BE4(v172, v173, MEMORY[0x1E6969788]);
              OUTLINED_FUNCTION_46_6();
              v174 = sub_1DC5176CC();
              v175 = *(v227 + 8);
              v176 = OUTLINED_FUNCTION_153_0();
              v175(v176);
              v138 = &qword_1ECC7CD00;
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v177, v178, v179);
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v180, v181, v182);
              v183 = OUTLINED_FUNCTION_85_0();
              v175(v183);
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v184, v185, v186);
              v145 = v68;
              v146 = v54;
              if (v174)
              {
LABEL_43:
                OUTLINED_FUNCTION_12_0();
                if ((*(v187 + 560))())
                {
                  sub_1DC28D414();
                  OUTLINED_FUNCTION_82_2();
                  v188 = v206;
                  v189(v206);
                  v190 = sub_1DC516F6C();
                  v191 = sub_1DC517B8C();
                  if (OUTLINED_FUNCTION_14_7(v191))
                  {
                    v192 = OUTLINED_FUNCTION_35_8();
                    OUTLINED_FUNCTION_81_2(v192);
                    OUTLINED_FUNCTION_16_0();
                    _os_log_impl(v193, v194, v195, v196, v197, 2u);
                    OUTLINED_FUNCTION_31();
                  }

                  (*(v145 + 8))(v188, v146);
                }

                goto LABEL_27;
              }

LABEL_38:
              v205 = v146;
              sub_1DC28D414();
              OUTLINED_FUNCTION_82_2();
              v156 = OUTLINED_FUNCTION_161_1();
              v157(v156);
              v158 = OUTLINED_FUNCTION_83(&a16);
              v223(v158, v218, v115);

              v159 = sub_1DC516F6C();
              v160 = sub_1DC517B8C();

              LODWORD(v227) = v160;
              if (os_log_type_enabled(v159, v160))
              {
                v161 = OUTLINED_FUNCTION_140();
                v226 = OUTLINED_FUNCTION_143();
                v229[0] = v226;
                *v161 = 136315394;
                OUTLINED_FUNCTION_8_9();
                sub_1DC293BE4(v162, v163, MEMORY[0x1E6969798]);
                sub_1DC51823C();
                OUTLINED_FUNCTION_238();
                v164 = OUTLINED_FUNCTION_85_0();
                v225 = v165;
                v165(v164);
                v166 = OUTLINED_FUNCTION_12_3();
                v169 = sub_1DC291244(v166, v167, v168);

                *(v161 + 4) = v169;
                *(v161 + 12) = 2080;
                OUTLINED_FUNCTION_20_3();
                v221();
                if (__swift_getEnumTagSinglePayload(v137, 1, v115))
                {
                  sub_1DC28EB30(v137, &qword_1ECC7CD00, &unk_1DC5259F0);
                }

                else
                {
                  v223(v210, v137, v115);
                  v198 = sub_1DC28EB30(v137, &qword_1ECC7CD00, &unk_1DC5259F0);
                  MEMORY[0x1E128F450](v198);
                  v199 = OUTLINED_FUNCTION_47_6();
                  v225(v199);
                }

                v200 = OUTLINED_FUNCTION_62_2();
                v203 = sub_1DC291244(v200, v201, v202);

                *(v161 + 14) = v203;
                _os_log_impl(&dword_1DC287000, v159, v227, "Given locale %s is not the same as exists locale %s, should call setup again", v161, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_40_0();

                (*(v68 + 8))(v213, v54);
              }

              else
              {

                v170 = OUTLINED_FUNCTION_85_0();
                v171(v170);
                (*(v145 + 8))(v138, v205);
              }

              goto LABEL_27;
            }

            v137 = &qword_1ECC7CD00;
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v148, v149, v150);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v151, v152, v153);
            v154 = OUTLINED_FUNCTION_153_0();
            v155(v154);
          }

          sub_1DC28EB30(v114, &unk_1ECC7CD30, &qword_1DC524D20);
          v145 = v68;
          v146 = v54;
          goto LABEL_38;
        }
      }
    }

    else
    {
      v114 = v220;
      v115 = v221;
      v116 = v226;
      v117 = v227;
      v118 = v225;
      if (!v113)
      {
        goto LABEL_29;
      }
    }

    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v120(v215);
    v121 = sub_1DC516F6C();
    v122 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v122))
    {
      v123 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v123);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v124, v125, v126, v127, v128, 2u);
      OUTLINED_FUNCTION_31();
    }

    v129 = OUTLINED_FUNCTION_150_0();
    v130(v129, v54);
  }

  else
  {
    v226 = v66;
    v227 = v65;
    v221 = v25;
    v222 = v23;
    v225 = v24;
    v75 = v223;
    v76 = v224;
    sub_1DC28D414();
    v77 = OUTLINED_FUNCTION_89_0();
    v78(v77);
    v79 = sub_1DC516F6C();
    v80 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v80))
    {
      v81 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v81);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_56_4(v82, v83, v84, v85);
      OUTLINED_FUNCTION_58();
    }

    (*(v56 + 8))(v63, v54);
    v86 = v222;
    OUTLINED_FUNCTION_38_1();
    (*(v87 + 760))();
    OUTLINED_FUNCTION_38_1();
    v89 = (*(v88 + 304))();
    if (*(v86 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) == 1)
    {
      v90 = v226(v89);
      if (v90)
      {
        v91 = v90;
        [v90 registerWithAssetsDelegate:*(v86 + 24) withType:0];
      }

      v92 = v216;
      v93 = v217;
      if (*(v86 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) == 1)
      {
        v94 = *(v86 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds);
        if (v94 > 0.0)
        {
          v95 = v76;
          v96 = v75;
          v226 = *(v86 + 32);
          sub_1DC5173DC();
          sub_1DC51741C(v94);
          v227 = *(v207 + 8);
          v97 = OUTLINED_FUNCTION_229();
          v98(v97);
          v229[4] = sub_1DC357ABC;
          v229[5] = v86;
          OUTLINED_FUNCTION_66_6();
          v229[1] = 1107296256;
          OUTLINED_FUNCTION_3_14();
          v229[2] = v99;
          v229[3] = &block_descriptor_31;
          v100 = _Block_copy(v229);

          sub_1DC51739C();
          v228 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_1_14();
          sub_1DC293BE4(v101, v102, MEMORY[0x1E69E7F70]);
          v103 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
          v222 = v50;
          OUTLINED_FUNCTION_70_4();
          sub_1DC2C4B5C(v104, v105, v106);
          v107 = v209;
          sub_1DC517E9C();
          v108 = v225;
          MEMORY[0x1E1296480](v225, v103, v107, v100);
          _Block_release(v100);
          (*(v93 + 8))(v107, v95);
          OUTLINED_FUNCTION_62_0();
          v109(v103, v96);
          (v227)(v108, v222);
        }
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_101();
}

BOOL OUTLINED_FUNCTION_20_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_16()
{
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_1DC41D748(v0, type metadata accessor for NLRouterServiceRequest);
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_1DC44B9CC(0, 0);
}

uint64_t OUTLINED_FUNCTION_98_4()
{
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 4, a1);
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return sub_1DC28EB30(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_47_10(int a1@<W8>)
{
  *(v4 - 468) = a1;
  v5 = *(v4 - 232);
  *(v4 - 480) = v5 + 104;
  *(v4 - 496) = v5 + 32;
  *(v4 - 488) = v5 + 8;
  *(v4 - 320) = v3;
  *(v4 - 288) = v2;
  *(v4 - 296) = v1;
}

uint64_t sub_1DC29503C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DC29F200;

  return NLRouterClientImpl.setupNLRouter(with:)(v2);
}

uint64_t sub_1DC2950CC()
{
  if (!v0[2])
  {
    if (sub_1DC517AEC())
    {
      sub_1DC29120C();
      v3 = OUTLINED_FUNCTION_8_4();
      v4(v3);
      v5 = sub_1DC516F6C();
      v6 = sub_1DC517B9C();
      v7 = OUTLINED_FUNCTION_20_1(v6);
      v8 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      if (v7)
      {
        OUTLINED_FUNCTION_17_4();
        v11 = swift_slowAlloc();
        OUTLINED_FUNCTION_31_2(v11);
        OUTLINED_FUNCTION_16_2(&dword_1DC287000, v12, v13, "setupNLRouterTask cancelled. Returning");
        v14 = OUTLINED_FUNCTION_7_7();
        MEMORY[0x1E1298840](v14);
      }

      (*(v10 + 8))(v8, v9);
      OUTLINED_FUNCTION_44_5();

      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_36_8();

      __asm { BRAA            X1, X16 }
    }

    v17 = OUTLINED_FUNCTION_23_8();
    v18(v17);
    OUTLINED_FUNCTION_34_6();
    v19 = OUTLINED_FUNCTION_36();
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_25_4();
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_11_8(v21);
    OUTLINED_FUNCTION_36_8();

    __asm { BRAA            X3, X16 }
  }

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1DC2960D8;
  OUTLINED_FUNCTION_36_8();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1)
{

  return sub_1DC51674C();
}

BOOL OUTLINED_FUNCTION_25_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return mach_absolute_time();
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_8()
{
}

uint64_t OUTLINED_FUNCTION_26_9(uint64_t a1)
{
  v4 = v1[30];
  *(v2 - 176) = v1[31];
  *(v2 - 168) = v4;
  v5 = v1[28];
  *(v2 - 160) = v1[29];
  *(v2 - 152) = v5;
  v6 = v1[23];
  *(v2 - 144) = v1[24];
  *(v2 - 136) = v6;
  v7 = v1[19];
  *(v2 - 128) = v1[20];
  *(v2 - 120) = v7;
  v8 = v1[17];
  *(v2 - 112) = v1[18];
  *(v2 - 104) = v8;
  *(v2 - 96) = v1[14];
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_26_15()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_19()
{
  v2 = *(v0 - 256);

  return sub_1DC45BDFC(v2, type metadata accessor for NLRouterTurnContext);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_4_14()
{
  v2 = *(v1 - 64);
  *v0 = *(v1 - 80);
  *(v0 + 16) = v2;
  result = *(v1 - 48);
  v4 = *(v1 - 32);
  *(v0 + 32) = result;
  *(v0 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x525F000000000000;
  *(a1 + 40) = 0xEF7265646E696D65;

  return sub_1DC35DBDC();
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v2 = *(v0 - 280);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1)
{

  return swift_once();
}

void sub_1DC29595C()
{
  if (sub_1DC517AEC())
  {
    sub_1DC29120C();
    v1 = OUTLINED_FUNCTION_8_4();
    v2(v1);
    v3 = sub_1DC516F6C();
    v4 = sub_1DC517B9C();
    v5 = OUTLINED_FUNCTION_20_1(v4);
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    if (v5)
    {
      OUTLINED_FUNCTION_17_4();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_31_2(v9);
      OUTLINED_FUNCTION_16_2(&dword_1DC287000, v10, v11, "setupNLRouterTask cancelled. Returning");
      v12 = OUTLINED_FUNCTION_7_7();
      MEMORY[0x1E1298840](v12);
    }

    (*(v8 + 8))(v6, v7);
    OUTLINED_FUNCTION_44_5();

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_8();

    __asm { BRAA            X1, X16 }
  }

  v15 = OUTLINED_FUNCTION_23_8();
  v16(v15);
  OUTLINED_FUNCTION_34_6();
  v17 = OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_25_4();
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_11_8(v19);
  OUTLINED_FUNCTION_36_8();

  __asm { BRAA            X3, X16 }
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1, uint64_t a2)
{

  return sub_1DC51820C();
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_15()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

unint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_1DC297814();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DC517E1C();
}

unint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_1DC291244(v1, v0, (v2 - 88));
}

void OUTLINED_FUNCTION_7_25(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1DC442604(319, a2, a3, v4);
}

uint64_t sub_1DC2960D8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t ServiceSetupConfiguration.init(locale:clientProcessId:)()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v2;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v4 + 32))(v3, v1);
  result = type metadata accessor for ServiceSetupConfiguration(0);
  v6 = v3 + *(result + 20);
  *v6 = v0;
  *(v6 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t sub_1DC296250()
{
  OUTLINED_FUNCTION_37_4();
  v1 = sub_1DC296704();
  v0[3] = v1;
  v0[4] = *v1;
  type metadata accessor for NLRouterService(0);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DC29EBDC;
  v3 = OUTLINED_FUNCTION_21_18();

  return v4(v3);
}

void OUTLINED_FUNCTION_3_4()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  v2 = *(v0 - 304);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  result = v0;
  *(v2 - 88) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return sub_1DC2E5408(v0, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1)
{

  return sub_1DC51825C();
}

uint64_t *sub_1DC296704()
{
  if (qword_1ECC84470 != -1)
  {
    OUTLINED_FUNCTION_9_21(&qword_1ECC84470);
  }

  return &qword_1ECC8F6E8;
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_1DC2AD740(v1, v0);
}

uint64_t sub_1DC2968D4()
{
  OUTLINED_FUNCTION_1_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v5);
  v1[12] = v6;
  v1[13] = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v8);
  v1[15] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC510B6C();
  v1[16] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[17] = v10;
  v1[18] = *(v11 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v12 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  OUTLINED_FUNCTION_10(v12);
  v1[21] = OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6DFA0](sub_1DC296B10, v0, 0);
}

uint64_t sub_1DC296B10()
{
  v23 = v1;
  sub_1DC517B9C();
  v2 = OUTLINED_FUNCTION_21_2();
  v3 = sub_1DC296DBC();
  if (OUTLINED_FUNCTION_36_15(v3))
  {
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_111();
    v22 = v4;
    v5 = OUTLINED_FUNCTION_27_14(4.8149e-34);
    v7 = sub_1DC291244(v5, v6, &v22);

    *(v0 + 4) = v7;
    OUTLINED_FUNCTION_27_11();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();
  }

  OUTLINED_FUNCTION_12_0();
  v14 = (*(v13 + 160))();
  v1[6] = v14;
  v1[7] = v15;
  v1[22] = v14;
  (*(v1[9] + 16))(v1[10]);
  v16 = sub_1DC297438();
  v17 = *v16;
  v1[23] = *v16;
  v18 = *(*v17 + 272);

  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_1DC2998EC;

  return v21();
}

uint64_t *OUTLINED_FUNCTION_81@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 104);
  v4[3] = v1;
  v4[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v4);
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_81_7()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 160);
  *(v0 - 96) = v1;
  return v0 - 104;
}

uint64_t sub_1DC296F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = (*(a2 + 16))(a3, a1, a2);
  v14 = (*(*v4 + 104))(v13);
  v15 = sub_1DC297288(v12, v14);

  if (!v15)
  {
    v15 = (*(a2 + 8))(a1, a2);
    (*(*v4 + 168))(v12, v15, a2);
  }

  sub_1DC2989EC(v12);
  return v15;
}

uint64_t sub_1DC2970B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v13 - v2;
  v4 = OUTLINED_FUNCTION_429();
  v13[1] = type metadata accessor for NLRouterService(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA20, &qword_1DC52A6C8);
  sub_1DC51777C();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_65_1();
  return sub_1DC297194(v9, v10, v3, v11);
}

BOOL OUTLINED_FUNCTION_302()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1DC297194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for ServiceStoreServiceKeyingFields(0) + 20);

  return sub_1DC2971E0(a3, v5);
}

uint64_t sub_1DC2971E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC297288(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1DC2977A8(a1), (v2 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

id sub_1DC2972DC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1DC297334()
{
  sub_1DC510C4C();
  *&v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_client] = 0;
  v1 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_cacheManager];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_promptGenerator];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_tokenizer];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_generativeAssistantHelper];
  nullsub_1();
  *(v4 + 3) = &type metadata for GenerativeAssistantHelper;
  *(v4 + 4) = &off_1F57F8A40;
  v5 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil;
  *&v0[v5] = *sub_1DC297438();
  type metadata accessor for HeuristicAgentKeywords(0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v11.receiver = v0;
  v11.super_class = type metadata accessor for NLRouterService(0);

  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t *sub_1DC297438()
{
  if (qword_1ECC7EE30 != -1)
  {
    OUTLINED_FUNCTION_40_12(&qword_1ECC7EE30);
  }

  return &qword_1ECC8F3E8;
}

uint64_t sub_1DC297498(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  v8 = *(v7 + 120);
  swift_unknownObjectRetain();
  v9 = v8(v16);
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v11;
  sub_1DC2975B4(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *v11 = v15;
  v9(v16, 0);
  v13 = (*(*v3 + 144))(v16);
  sub_1DC298864(a1);

  return v13(v16, 0);
}

uint64_t sub_1DC2975B4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = sub_1DC2977A8(a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F0, &qword_1DC527710);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1DC2977A8(a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v5;
  if (v16)
  {
    v20 = (v19[7] + 16 * v15);
    *v20 = a1;
    v20[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1DC2986F0();
    return sub_1DC298748(v15, v11, a1, a2, v19);
  }
}

unint64_t sub_1DC2977A8(void *a1)
{
  sub_1DC5182FC();
  sub_1DC298098(v4);
  v2 = sub_1DC51833C();

  return sub_1DC298254(a1, v2);
}

unint64_t sub_1DC297814()
{
  result = qword_1EDAC7F90;
  if (!qword_1EDAC7F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAC7F90);
  }

  return result;
}

id sub_1DC297858(void *a1, void *a2)
{
  v5 = sub_1DC5176FC();
  v6 = sub_1DC5176FC();
  v7 = [a1 levelForFactor:v5 withNamespaceName:v6];

  if (v7)
  {
    if ([v7 levelOneOfCase] == 10)
    {
      v8 = [v7 BOOLeanValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v2[OBJC_IVAR___NLRouterExperimentTrialController_suppressRewrite] = v8;
  sub_1DC28FB9C(a2, &v2[OBJC_IVAR___NLRouterExperimentTrialController_experimentationAnalyticsManager]);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for NLRouterExperimentTrialController();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_55_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_55_9(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_55_12()
{

  return sub_1DC291244(v0, v1, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_55_14(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 336);

  return sub_1DC45BDFC(v4, a2);
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_1DC510B6C();
}

void OUTLINED_FUNCTION_16_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_16_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DC517BFC();
}

void OUTLINED_FUNCTION_16_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DC297CB0()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_36();
  return sub_1DC297858(v2, v3);
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1DC5169AC();
}

void sub_1DC297D70(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_1DC297DD0()
{
  OUTLINED_FUNCTION_6_27();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_50();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_20_18();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_119_4()
{

  return sub_1DC51178C();
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_82_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_1DC297F98()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(CDMClient);

  return [v2 initWithDelegate_];
}

id CDMOSLoggerForCategory(int a1)
{
  if (a1 >= 5)
  {
    __assert_rtn("CDMOSLoggerForCategory", "CDMLogging.mm", 18, "loggingCategory < CDMCategoryLogMax");
  }

  if (CDMOSLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&CDMOSLoggerForCategory::onceToken, &__block_literal_global_6579);
  }

  v2 = CDMOSLoggerForCategory::logObjects[a1];

  return v2;
}

uint64_t sub_1DC298098(uint64_t a1)
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DC51769C();
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  sub_1DC2DB2AC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
  {
    return sub_1DC51831C();
  }

  (*(v3 + 32))(v7, v11, v1);
  sub_1DC51831C();
  OUTLINED_FUNCTION_7_18();
  sub_1DC2B3338(v13, v14, MEMORY[0x1E6969780]);
  sub_1DC51768C();
  return (*(v3 + 8))(v7, v1);
}

unint64_t sub_1DC298254(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DC510C8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v36 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  MEMORY[0x1EEE9AC00](v36);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v3 + 64;
  v40 = v3;
  v17 = -1 << *(v3 + 32);
  v18 = a2 & ~v17;
  if (((*(v3 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return v18;
  }

  v37 = ~v17;
  v19 = a1[1];
  v41 = *a1;
  v29 = (v7 + 32);
  v30 = v11;
  v33 = (v7 + 8);
  v34 = a1;
  v38 = *(v14 + 72);
  while (1)
  {
    sub_1DC2986F0();
    v20 = *v16 == v41 && v16[1] == v19;
    if (!v20 && (sub_1DC51825C() & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = *(v11 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
    {
      break;
    }

    sub_1DC2DB2AC();
    if (__swift_getEnumTagSinglePayload(&v13[v21], 1, v6) == 1)
    {
      (*v33)(v35, v6);
      goto LABEL_13;
    }

    v22 = v35;
    v23 = v31;
    (*v29)(v31, &v13[v21], v6);
    sub_1DC2B3338(&qword_1ECC7BE60, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v32 = sub_1DC5176CC();
    v24 = *v33;
    v25 = v23;
    v26 = v22;
    v11 = v30;
    (*v33)(v25, v6);
    v24(v26, v6);
    sub_1DC28EB30(v13, &qword_1ECC7CD00, &unk_1DC5259F0);
    if (v32)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1DC2989EC(v16);
    v18 = (v18 + 1) & v37;
    if (((*(v39 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return v18;
    }
  }

  if (__swift_getEnumTagSinglePayload(&v13[v21], 1, v6) != 1)
  {
LABEL_13:
    sub_1DC28EB30(v13, &unk_1ECC7CD30, &qword_1DC524D20);
    goto LABEL_15;
  }

  sub_1DC28EB30(v13, &qword_1ECC7CD00, &unk_1DC5259F0);
LABEL_17:
  sub_1DC2989EC(v16);
  return v18;
}

uint64_t sub_1DC2986F0()
{
  OUTLINED_FUNCTION_42_0();
  v1(0);
  OUTLINED_FUNCTION_35();
  v2 = OUTLINED_FUNCTION_43();
  v3(v2);
  return v0;
}

uint64_t sub_1DC298748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  result = sub_1DC298804();
  v10 = (a5[7] + 16 * a1);
  *v10 = a3;
  v10[1] = a4;
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

uint64_t sub_1DC298804()
{
  OUTLINED_FUNCTION_42_0();
  v1(0);
  OUTLINED_FUNCTION_35();
  v2 = OUTLINED_FUNCTION_43();
  v3(v2);
  return v0;
}

uint64_t sub_1DC298864(void *a1)
{
  v2 = v1;
  v3 = sub_1DC2977A8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1E8, &qword_1DC527708);
  sub_1DC517FFC();
  v6 = *(v10 + 48);
  v7 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  sub_1DC2989EC(v6 + *(*(v7 - 8) + 72) * v5);
  v8 = *(*(v10 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  sub_1DC2B3338(&unk_1ECC7BD90, type metadata accessor for ServiceStoreServiceKeyingFields, &unk_1DC527410);
  sub_1DC51800C();
  *v2 = v10;
  return v8;
}

uint64_t sub_1DC2989EC(uint64_t a1)
{
  v2 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC298A48()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_12_0();
  v5 = (*(v0 + 264) + **(v0 + 264));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_0(v1);
  *v2 = v3;
  v2[1] = sub_1DC299718;
  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_1DC298B60()
{
  OUTLINED_FUNCTION_1_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v6);
  v1[7] = OUTLINED_FUNCTION_124();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_1DC510B6C();
  v1[10] = v7;
  OUTLINED_FUNCTION_52(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_124();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC298C74(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1DC3136A0();
}

uint64_t OUTLINED_FUNCTION_112_2()
{
  *(v1 + 184) = v0;

  return mach_absolute_time();
}

BOOL OUTLINED_FUNCTION_112_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1DC298D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v25 = v22[3];
  v26 = [objc_allocWithZone(MEMORY[0x1E69CEF88]) init];
  if (!v25)
  {
    v37 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v38 = sub_1DC296DBC();
    sub_1DC516F0C(v37, &dword_1DC287000, v38, "Missing UUID string for RequestID", 33, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  v27 = v22[3];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v22[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v39 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v38 = sub_1DC296DBC();
    sub_1DC516F0C(v39, &dword_1DC287000, v38, "Empty UUID string for RequestID", 31, 2, MEMORY[0x1E69E7CC0]);
LABEL_10:

    sub_1DC510B5C();
    if (!v26)
    {
      goto LABEL_12;
    }

LABEL_11:
    v40 = v22[13];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v41 = OUTLINED_FUNCTION_62_2();
    v42(v41);
    v43 = v26;
    v44 = sub_1DC299428(v40);
    OUTLINED_FUNCTION_72_5(v44, sel_setNlRouterId_);

    goto LABEL_12;
  }

  v30 = v22[9];
  v29 = v22[10];
  sub_1DC510B0C();
  OUTLINED_FUNCTION_39(v30, 1, v29);
  if (v31)
  {
    sub_1DC28EB30(v22[9], &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v32 = sub_1DC296DBC();
    v33 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v33, v34, v35, v36, 33, 2);

    goto LABEL_29;
  }

  v70 = *(v22[11] + 32);
  (v70)(v22[14], v22[9], v22[10]);
  if (v26)
  {
    v72 = v22[13];
    v71 = v22[14];
    v73 = v22[10];
    v74 = v22[11];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    (*(v74 + 16))(v72, v71, v73);
    v75 = v26;
    v76 = sub_1DC299428(v72);
    [v75 setRequestId_];
  }

  v77 = v22[10];
  v78 = v22[8];
  OUTLINED_FUNCTION_12_0();
  (*(v79 + 80))();
  OUTLINED_FUNCTION_39(v78, 1, v77);
  if (v31)
  {
    sub_1DC28EB30(v22[8], &unk_1ECC7CA30, &qword_1DC522A00);
    v80 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v81 = sub_1DC296DBC();
    v82 = os_log_type_enabled(v81, v80);
    v83 = v22[14];
    v85 = v22[10];
    v84 = v22[11];
    if (v82)
    {
      a10 = v22[14];
      v86 = v22[2];
      v87 = OUTLINED_FUNCTION_63();
      v88 = OUTLINED_FUNCTION_82();
      a11 = v88;
      *v87 = 136315138;
      *(v87 + 4) = sub_1DC291244(v86, v27, &a11);
      _os_log_impl(&dword_1DC287000, v81, v80, "Error generating NLRouterId from requestId: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v84 + 8))(a10, v85);
    }

    else
    {

      (*(v84 + 8))(v83, v85);
    }

    goto LABEL_29;
  }

  (*(v22[11] + 8))(v22[14], v22[10]);
  OUTLINED_FUNCTION_75_4();
  v70();
  if (v26)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v22[5])
  {
    v55 = v22[15];
    v56 = v22[10];
    v57 = v22[11];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v58 = sub_1DC296DBC();
    v59 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v59, v60, v61, v62, 30, 2);

    v54 = *(v57 + 8);
    v52 = v55;
    v53 = v56;
    goto LABEL_16;
  }

  v45 = v22[10];
  v46 = v22[7];
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
  {
    sub_1DC28EB30(v22[7], &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v47 = sub_1DC296DBC();
    v48 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v48, v49, v50, v51, 30, 2);

    v52 = OUTLINED_FUNCTION_60();
LABEL_16:
    v54(v52, v53);
    goto LABEL_29;
  }

  (*(v22[11] + 32))(v22[12], v22[7], v22[10]);
  if (v26)
  {
    v63 = v22[13];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v64 = OUTLINED_FUNCTION_56_0();
    v65(v64);
    v66 = v26;
    v67 = sub_1DC299428(v63);
    [v66 setTrpId_];
  }

  v68 = *(v22[11] + 8);
  (v68)(v22[12], v22[10]);
  v69 = OUTLINED_FUNCTION_56_0();
  v68(v69);
LABEL_29:

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_74_5();

  return v91(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14);
}

id sub_1DC299428(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC510B2C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DC510B6C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
}

uint64_t OUTLINED_FUNCTION_66_3(char a1)
{
  *(v1 + 33) = a1 & 1;
  sub_1DC2EB640(1, v1);

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_5()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{
  v4 = *(v2 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  return v4;
}

__n128 *OUTLINED_FUNCTION_38_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "messageState");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  result[3].n128_u64[0] = 0x7265646E6573;
  result[3].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return sub_1DC5179EC();
}

uint64_t sub_1DC299718()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_34_10();

  return v5(v2);
}

void OUTLINED_FUNCTION_64_0()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC2998EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_38();
  *v6 = v5;
  *(v8 + 200) = v7;
  *(v8 + 208) = v0;

  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_1DC3AF7E0;
  }

  else
  {
    v10 = sub_1DC299A18;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DC299A18()
{
  sub_1DC510B5C();
  v1 = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v9 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_1DC29E3EC;
  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[8];
  v7 = v0[9];

  return v9(v4, v5, v1, v6, v7);
}

uint64_t sub_1DC299B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC299B74()
{
  OUTLINED_FUNCTION_100_0();
  v26 = v0;
  v1 = v0[2];
  if (!v1)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v4 = sub_1DC296DBC();
    v13 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v13, v14, v15, v16, 102, 2);
LABEL_8:

    OUTLINED_FUNCTION_39_5();

    return v17();
  }

  v2 = v0[5];
  if (type metadata accessor for NLRouterService(0) != v2 && type metadata accessor for NLRouterOverrideService() != v2)
  {
    v3 = v1;
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_117_4(v5))
    {
      v6 = OUTLINED_FUNCTION_63();
      v7 = OUTLINED_FUNCTION_82();
      v25 = v7;
      *v6 = 136315138;
      v8 = sub_1DC5183EC();
      v10 = sub_1DC291244(v8, v9, &v25);

      *(v6 + 4) = v10;
      OUTLINED_FUNCTION_55_0(&dword_1DC287000, v11, v12, "Unknown service %s for logNLRouterSubComponentSetupStarted, skipping SELF emission");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_28_11();
  v20 = *(v19 + 320);
  v21 = v1;
  v24 = (v20 + *v20);
  v22 = swift_task_alloc();
  v0[7] = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_94_2(v22);
  v23 = OUTLINED_FUNCTION_25_10();

  return v24(v23);
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_31_4()
{

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_1DC51678C();
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  *(v0 - 120) = 0;

  return sub_1DC51823C();
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return sub_1DC312FB4(0);
}

uint64_t sub_1DC29A114()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = v1;
  v4 = OUTLINED_FUNCTION_84_3(v2, v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_52(v4);
  *(v0 + 40) = v5;
  *(v0 + 48) = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1)
{

  return sub_1DC5179AC();
}

uint64_t OUTLINED_FUNCTION_72_4(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_72_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1DC29A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF010]));
  [v14 setNlRouterSubComponent_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v15 setStartedOrChanged_];
  if (v15)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v16 = OUTLINED_FUNCTION_9_19();
    v17(v16);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v19, sel_setTraceId_);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v20)
  {
    OUTLINED_FUNCTION_71_6([v20 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v21 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v21, v22, v23, v24, 92, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_1DC28F358(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_76_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return sub_1DC516F7C();
}

void sub_1DC29A818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1DC29A8C0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_1DC313670();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
}

uint64_t OUTLINED_FUNCTION_99_3@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = a1;
  *(v3 - 128) = v1;
  v4 = v2[52];
  *(v3 - 120) = v2[51];
  *(v3 - 112) = v4;
  v5 = v2[39];
  *(v3 - 88) = v2[40];
  *(v3 - 144) = v5;
  *(v3 - 168) = v2[36];
  return v2[34];
}

uint64_t sub_1DC29AAF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC29AB74()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  OUTLINED_FUNCTION_36_7(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph, v4);
  v2 = *v1;

  return v2;
}

void sub_1DC29ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  v22 = v20;
  v140 = v23;
  v139 = v24;
  v137 = v25;
  v153 = v26;
  v156 = v27;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v150 = v29;
  v151 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v149 = v30;
  OUTLINED_FUNCTION_12();
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v145 = v32;
  v146 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v143 = v33;
  OUTLINED_FUNCTION_12();
  v144 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v142 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v36);
  v37 = sub_1DC510AFC();
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v42);
  v154 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v148 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_92_1();
  v155 = v45;
  OUTLINED_FUNCTION_12();
  v46 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD08, &unk_1DC524D00);
  OUTLINED_FUNCTION_10(v53);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_17_0();
  sub_1DC29B898();
  sub_1DC29B97C();
  dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_38_1();
  (*(v55 + 736))();
  v56 = sub_1DC29BA28();
  v57 = *v56;
  v58 = v56[1];
  v59 = *(v56 + 16);
  v60 = OUTLINED_FUNCTION_130();
  static SignpostLogger.begin(_:enableTelemetry:)(v57, v58, v59, v60 & 1, &unk_1F57F9698, &off_1F57F95E8, v21);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  OUTLINED_FUNCTION_91_0();
  (*(v65 + 448))(v21);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_106_2();
  v66(v52);
  sub_1DC5168CC();
  (*(v48 + 8))(v52, v46);
  OUTLINED_FUNCTION_91_0();
  v68 = (*(v67 + 296))();
  if (v68)
  {
    v69 = v68;
    (*(*v22 + 376))(2);
    (*(*v22 + 400))(0);
    OUTLINED_FUNCTION_91_0();
    (*(v70 + 424))(0);
    OUTLINED_FUNCTION_91_0();
    (*(v71 + 568))(0);
    v158[0] = v69;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    v72 = swift_allocObject();
    v152 = v69;
    OUTLINED_FUNCTION_199(v72);
    v73 = v148;
    v147 = *(v148 + 16);
    v151 = v148 + 16;
    v74 = v155;
    v75 = v154;
    v147(v155, v156, v154);
    v150 = *(v148 + 80);
    v76 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v149 = v76;
    v77 = (v136[3] + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = &unk_1F57F9698;
    v148 = *(v73 + 32);
    (v148)(v78 + v76, v74, v75);
    v79 = (v78 + v77);
    v80 = v137;
    *v79 = v153;
    v79[1] = v137;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v81 = *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup);
    *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup) = &unk_1F57F9698;

    v158[0] = v69;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    v82 = swift_allocObject();
    OUTLINED_FUNCTION_199(v82);
    v83 = v147;
    v147(v155, v156, v75);
    v84 = swift_allocObject();
    *(v84 + 16) = &unk_1F57F9698;
    OUTLINED_FUNCTION_62_3();
    v85();
    v86 = (v84 + v77);
    *v86 = v153;
    v86[1] = v80;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v87 = *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup);
    *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup) = &unk_1F57F9698;

    v158[0] = v152;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    v88 = swift_allocObject();
    OUTLINED_FUNCTION_199(v88);
    v89 = v155;
    v90 = v154;
    v83(v155, v156, v154);
    v91 = swift_allocObject();
    *(v91 + 16) = &unk_1F57F9698;
    (v148)(v91 + v149, v89, v90);
    v92 = (v91 + v77);
    v93 = v140;
    *v92 = v139;
    v92[1] = v140;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v94 = *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled);
    *(v22 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled) = &unk_1F57F9698;

    sub_1DC510B5C();
    sub_1DC510B6C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
    OUTLINED_FUNCTION_91_0();
    (*(v99 + 496))(v138);
    OUTLINED_FUNCTION_20_3();
    sub_1DC510AEC();
    OUTLINED_FUNCTION_91_0();
    (*(v100 + 520))(&unk_1F57F9698);
    v147(v89, v156, v154);
    OUTLINED_FUNCTION_91_0();
    v102 = *(v101 + 344);

    v104 = v102(v103);
    v106 = v105;
    OUTLINED_FUNCTION_91_0();
    (*(v107 + 488))();
    v108 = objc_allocWithZone(CDMClientSetup);
    BYTE5(v136[1]) = 0;
    HIWORD(v136[1]) = -5120;
    strcpy(v136, "ORCHESTRATOR");
    v109 = OUTLINED_FUNCTION_153_0();
    v111 = sub_1DC2A0FBC(v109, v110, v93, v104, v106, 0, 0, 0, 0, 0, 0, 0, v138, v136[0], v136[1]);
    OUTLINED_FUNCTION_27_5();
    v112 = swift_allocObject();
    v113 = v152;
    *(v112 + 16) = v152;
    *(v112 + 24) = v111;
    v158[4] = sub_1DC3587D8;
    v158[5] = v112;
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 1107296256;
    v158[2] = sub_1DC2AECB0;
    v158[3] = &block_descriptor_174;
    v114 = _Block_copy(v158);
    v115 = v113;
    v116 = v111;
    sub_1DC51739C();
    v157 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v117, v118, MEMORY[0x1E69E7F70]);
    v119 = OUTLINED_FUNCTION_12_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v119, v120);
    sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v141, v143, v114);
    _Block_release(v114);

    v121 = OUTLINED_FUNCTION_45_0();
    v122(v121);
    OUTLINED_FUNCTION_62_0();
    v123(v141, v144);
  }

  else
  {
    sub_1DC28D414();
    v124 = OUTLINED_FUNCTION_89_0();
    v125(v124);
    v126 = sub_1DC516F6C();
    v127 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v127))
    {
      v128 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v128);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v129, v130, v131, v132, v133, 2u);
      OUTLINED_FUNCTION_31();
    }

    v134 = OUTLINED_FUNCTION_35_0();
    v135(v134);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC29B7C4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DC29B810()
{
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1DC29B898()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_0();
  v3 = (*(v2 + 728))();
  if (v3)
  {
    v4 = v3;
    sub_1DC517D1C();
  }

  v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup);
  if (v5)
  {
    v6 = v5;
    sub_1DC51083C();
  }

  v7 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup);
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_185();
    sub_1DC51083C();
  }
}

uint64_t OUTLINED_FUNCTION_176_0(uint64_t a1)
{

  return swift_weakInit();
}

void sub_1DC29B97C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_185();
    sub_1DC51083C();
  }
}

void sub_1DC29B9E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore;
  OUTLINED_FUNCTION_35_1(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1DC29BA34(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore;
  OUTLINED_FUNCTION_9_10(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1DC29BA70()
{
  OUTLINED_FUNCTION_33();
  v112 = v0;
  v3 = v2;
  v4 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v109 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v108 = v8 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v100 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v101 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  v21 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v106 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_40_2();
  v28 = v23;
  v29 = *(v23 + 16);
  v103 = v27;
  v104 = v23 + 16;
  v111 = v21;
  v102 = v29;
  (v29)(v0);
  v30 = v3;
  v31 = sub_1DC516F6C();
  v32 = sub_1DC517B9C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_63();
    v107 = v4;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_249();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v35 = v30;
    v36 = v30;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v31, v32, "NLBridge received message: %@");
    sub_1DC28EB30(v35, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v4 = v107;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v37 = v28 + 8;
  v38 = *(v28 + 8);
  v39 = v111;
  v107 = v37;
  v105 = v38;
  v40 = (v38)(v0, v111);
  (*(*v112 + class metadata base offset for NLBridge + 96))(v40);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
  v44 = *(v110 + 48);
  OUTLINED_FUNCTION_49_9(v20, v11);
  OUTLINED_FUNCTION_49_9(v1, &v11[v44]);
  OUTLINED_FUNCTION_2_0(v11);
  if (!v52)
  {
    v51 = v101;
    sub_1DC28F414(v11, v101, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(&v11[v44]);
    if (!v52)
    {
      v75 = OUTLINED_FUNCTION_33_11();
      v76(v75);
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v77, v78, MEMORY[0x1E69695C8]);
      LODWORD(v110) = sub_1DC5176CC();
      v79 = *(v51 + 8);
      v79(v44, v4);
      OUTLINED_FUNCTION_50_10(v1);
      OUTLINED_FUNCTION_50_10(v20);
      v80 = OUTLINED_FUNCTION_229();
      (v79)(v80);
      v39 = v111;
      OUTLINED_FUNCTION_50_10(v11);
      if (v110)
      {
        goto LABEL_17;
      }

LABEL_12:
      v59 = v106;
      v102(v106, v103, v39);
      v60 = v30;
      v61 = sub_1DC516F6C();
      v62 = sub_1DC517BAC();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v64 = swift_slowAlloc();
        *&v113 = v64;
        OUTLINED_FUNCTION_48_7(v64, 4.8149e-34);
        OUTLINED_FUNCTION_0_33();
        sub_1DC2917D0(v65, v66, MEMORY[0x1E69695E0]);
        sub_1DC51823C();
        v67 = OUTLINED_FUNCTION_34_9();
        v68(v67);
        v69 = OUTLINED_FUNCTION_43();
        v72 = sub_1DC291244(v69, v70, v71);

        *(v63 + 4) = v72;
        OUTLINED_FUNCTION_52_10(&dword_1DC287000, v61, v62, "SessionId: %s is not the current session, ignoring", v99);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v73 = v60;
        v74 = v1;
      }

      else
      {

        v73 = v59;
        v74 = v39;
      }

      v105(v73, v74);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v53, v54, v55);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v56, v57, v58);
    (*(v109 + 8))(v51, v4);
LABEL_11:
    sub_1DC28EB30(v11, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v45, v46, v47);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v48, v49, v50);
  OUTLINED_FUNCTION_2_0(&v11[v44]);
  if (!v52)
  {
    goto LABEL_11;
  }

  sub_1DC28EB30(v11, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_17:
  OUTLINED_FUNCTION_60_8();
  v82 = (*(v81 + class metadata base offset for NLBridge + 216))();
  if (v82 != 2 && (v82 & 1) != 0)
  {
    OUTLINED_FUNCTION_60_8();
    (*(v83 + class metadata base offset for NLBridge + 168))(&v113);
    v84 = *(&v114 + 1);
    v85 = v115;
    __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
    v86 = v108;
    sub_1DC515D7C();
    (*(v85 + 32))(v86, v84, v85);
    (*(v109 + 8))(v86, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  }

  v87 = v100;
  v88 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v4);
  OUTLINED_FUNCTION_60_8();
  (*(v91 + class metadata base offset for NLBridge + 104))(v87);
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  OUTLINED_FUNCTION_60_8();
  (*(v92 + class metadata base offset for NLBridge + 128))(&v113);
  v93 = *(type metadata accessor for SiriReferenceResolutionProxy() + 240);
  v94 = *v93();
  (*(v94 + 256))();

  v96 = *(v93)(v95);
  (*(v96 + 360))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D018, &qword_1DC5263B8);
  v97 = sub_1DC51693C();
  v98 = v97(&v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D020, &qword_1DC5263C0);
  sub_1DC51765C();
  v98(&v113, 0);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_52_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_52_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_52_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

char *OUTLINED_FUNCTION_52_15@<X0>(unint64_t a1@<X8>)
{

  return sub_1DC33F29C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return sub_1DC2AAF50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DC2EAE54(v2, va);
}

id OUTLINED_FUNCTION_49_7()
{

  return sub_1DC299428(v0);
}

uint64_t OUTLINED_FUNCTION_49_9(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F414(a1, a2, v2, v3);
}

id OUTLINED_FUNCTION_23_5()
{

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  v2 = *(v0 - 104);

  return sub_1DC30C114(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return sub_1DC51627C();
}

uint64_t OUTLINED_FUNCTION_23_23()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_67_0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = v1;
  *(v2 + 12) = 2080;

  return v1;
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  *(v10 + 64) = MEMORY[0x1E69E9820];
  return result;
}

BOOL OUTLINED_FUNCTION_67_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_134_0()
{
}

uint64_t sub_1DC29C9C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1DC2BE044(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_61_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_1DC28EB30(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_61_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_61_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_61_7()
{

  return sub_1DC43F4A8();
}

uint64_t sub_1DC29CADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_54_11(v4 + *a1, a2);
  return sub_1DC28F308(v4 + v8, a4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_158_1()
{

  return sub_1DC5138FC();
}

uint64_t sub_1DC29CB90()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC29CC74()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC29CD5C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t OUTLINED_FUNCTION_62_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_62_11()
{

  return swift_arrayDestroy();
}

uint64_t sub_1DC29CFD8(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_3();
  sub_1DC29D2C8(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_1DC2A17A4(v3);
    v16 = [objc_opt_self() getSingletonCDMAssetsManager];
    sub_1DC2A19E8(a1, v16);

    if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
    {
      sub_1DC2A17A4(v1);
      sub_1DC517BAC();
      OUTLINED_FUNCTION_21_2();
      v17 = sub_1DC296DBC();
      v18 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v18, v19, v20, v21, 31, 2);

      return 0;
    }

    else
    {
      (*(v10 + 32))(v14, v1, v8);
      sub_1DC517B9C();
      OUTLINED_FUNCTION_18_7();
      v25 = sub_1DC296DBC();
      v26 = OUTLINED_FUNCTION_9_7();
      sub_1DC516F0C(v26, v27, v28, v29, 42, 2);

      v22 = sub_1DC51094C();
      (*(v10 + 8))(v14, v8);
    }
  }

  else
  {
    (*(v10 + 32))(v2, v3, v8);
    v23 = sub_1DC517B9C();
    sub_1DC297814();
    v24 = sub_1DC296DBC();
    sub_1DC516F0C(v23, &dword_1DC287000, v24, "NLRouterOverrides Loads from side loaded URL", 44, 2, MEMORY[0x1E69E7CC0]);

    v22 = sub_1DC51094C();
    (*(v10 + 8))(v2, v8);
  }

  return v22;
}

uint64_t sub_1DC29D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_8(inited, xmmword_1DC522F10);
  v8[2] = a1;
  v9 = v2;
  v6 = sub_1DC29D380(sub_1DC2A1770, v8, inited);
  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC2A1850(v6, a2);
}

char *sub_1DC29D380(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1DC5109BC();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v24 - v12;
  v26 = v13;
  v14 = *(a3 + 16);
  v28 = (v13 + 32);
  v15 = (a3 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  if (v14)
  {
    while (1)
    {
      v17 = *v15;
      v30[0] = *(v15 - 1);
      v30[1] = v17;

      a1(v30);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1DC2A17A4(v8);
      }

      else
      {
        v18 = v9;
        v19 = *v28;
        v20 = v25;
        (*v28)(v25, v8, v18);
        v19(v29, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1DC2A5828(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1DC2A5828((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v19(&v16[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v29, v18);
        v9 = v18;
        a1 = v27;
      }

      v15 += 2;
      if (!--v14)
      {
        return v16;
      }
    }
  }

  return v16;
}

void sub_1DC29D640()
{
  OUTLINED_FUNCTION_33();
  v62 = v1;
  v63 = v2;
  v4 = v3;
  v64 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v61 = v8 - v7;
  v9 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v67 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v58 = v12 - v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v54 - v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v54 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_9();
  v19 = sub_1DC510BEC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  (*(v21 + 104))(v24 - v23, *MEMORY[0x1E6969638], v19);
  v26 = sub_1DC510B9C();
  v28 = v27;
  (*(v21 + 8))(v25, v19);
  sub_1DC517B9C();
  OUTLINED_FUNCTION_18_7();
  v29 = sub_1DC296DBC();
  if (os_log_type_enabled(v29, v19))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v68 = v31;
    *v30 = 136315138;
    v32 = v26;
    *(v30 + 4) = sub_1DC291244(v26, v28, &v68);
    _os_log_impl(&dword_1DC287000, v29, v19, "Fetching sideload assets for locale: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v32 = v26;
  }

  type metadata accessor for NLRouterOverrideService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  v35 = sub_1DC5176FC();
  v36 = sub_1DC2A23B4(v35, 0, 0xE000000000000000, v34);

  if (v36)
  {
    v57 = v4;
    sub_1DC51093C();

    v68 = v32;
    v69 = v28;

    MEMORY[0x1E1296160](1668246574, 0xE400000000000000);

    v37 = v58;
    sub_1DC51091C();

    v68 = 0x656469727265766FLL;
    v69 = 0xE900000000000073;
    v55 = *MEMORY[0x1E6968F70];
    v56 = v0;
    v66 = v9;
    v38 = v59;
    v54 = *(v59 + 104);
    v39 = v61;
    v40 = v64;
    v41 = v54(v61);
    sub_1DC2A32B0(v41, v42, v43);
    v44 = v60;
    sub_1DC51099C();
    v45 = *(v38 + 8);
    v45(v39, v40);
    v59 = *(v67 + 8);
    (v59)(v37, v66);
    v68 = v62;
    v69 = v63;
    (v54)(v39, v55, v40);
    v46 = v65;
    v47 = v66;
    sub_1DC51099C();
    v48 = v46;
    v45(v39, v40);
    v49 = v59;
    (v59)(v44, v47);
    v50 = [objc_opt_self() defaultManager];
    sub_1DC51095C();
    v51 = sub_1DC5176FC();

    LODWORD(v40) = [v50 fileExistsAtPath_];

    v9 = v47;
    v49(v56, v47);
    if (v40)
    {
      v4 = v57;
      OUTLINED_FUNCTION_26_1();
      v52();
      v53 = 0;
    }

    else
    {
      v49(v48, v47);
      v53 = 1;
      v4 = v57;
    }
  }

  else
  {

    v53 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v53, 1, v9);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC29DBF0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1DC2D2420(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1DC29DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BCB8;
  if (!qword_1ECC7BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_7(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_45_10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = v2;
  result[9] = (a2 - 32) | 0x8000000000000000;
  result[10] = 0x6E65697069636572;
  result[11] = 0xEA00000000007374;
  return result;
}

uint64_t sub_1DC29DEB8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC29DFB8()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[8])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_94_2(v1);
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[2];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v7, v8, v9, v10, 84, 2);

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC29E164(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC29E17C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC29E274()
{
  OUTLINED_FUNCTION_41_5();
  v1 = [*(v0 + 16) eventMetadata];
  if (v1 && (v2 = v1, v3 = [v1 nlRouterId], v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    [*(v5 + 16) emitMessage:v6 timestamp:v4];
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v7 = sub_1DC296DBC();
    v8 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v8, v9, v10, v11, 57, 2);
  }

  OUTLINED_FUNCTION_39_5();

  return v12();
}

uint64_t sub_1DC29E38C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC29E3EC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[28] = v0;

  v7 = v3[11];
  if (v0)
  {
    v8 = sub_1DC3AF88C;
  }

  else
  {
    v3[29] = v3[7];
    v8 = sub_1DC29E4F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DC29E4F8()
{
  v26 = *(v0 + 232);
  v27 = *(v0 + 200);
  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  v1 = *(v0 + 160);
  v29 = v1;
  v30 = *(v0 + 168);
  v2 = *(v0 + 152);
  v24 = v2;
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v23 = v4;
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = sub_1DC517AAC();
  v25 = *(v0 + 64);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  sub_1DC2986F0();
  (*(v3 + 16))(v2, v1, v4);
  v9 = (v6 + ((*(v7 + 80) + 48) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 8) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v31;
  *(v13 + 5) = v26;
  sub_1DC298804();
  *&v13[v9] = v25;
  *&v13[v10] = v32;
  *&v13[v11] = v27;
  (*(v3 + 32))(&v13[v12], v24, v23);
  v28 = v27;

  swift_unknownObjectRetain();
  v14 = sub_1DC3AF95C(0, 0, v5, &unk_1DC5271C8, v13);
  OUTLINED_FUNCTION_12_0();
  v16 = *(v15 + 144);

  v17 = v16(v0 + 16);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v19;
  sub_1DC29E990(v14, v30, isUniquelyReferenced_nonNull_native);
  *v19 = v33;
  v17(v0 + 16, 0);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v29, v23);
  sub_1DC2989EC(v30);

  OUTLINED_FUNCTION_2_2();

  return v21();
}

uint64_t sub_1DC29E810()
{
  v1 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = (((((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v12 + v6 + 8) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v16 + 8))(v0 + v4);

  (*(v9 + 8))(v0 + v13, v7);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v14, v15 | 7);
}

uint64_t sub_1DC29E990(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_1DC2977A8(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1E8, &qword_1DC527708);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1DC2977A8(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    *(*(v17 + 56) + 8 * v13) = a1;
  }

  else
  {
    sub_1DC2986F0();
    return sub_1DC29EB28(v13, v9, a1, v17);
  }
}

uint64_t sub_1DC29EB28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  result = sub_1DC298804();
  *(*(a4 + 56) + 8 * a1) = a3;
  v8 = *(a4 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_1DC29EBDC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC29ECDC()
{
  OUTLINED_FUNCTION_37_4();
  *(v0 + 56) = **(v0 + 24);
  type metadata accessor for NLRouterOverrideService();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F004;
  v2 = OUTLINED_FUNCTION_21_18();

  return v3(v2);
}

uint64_t sub_1DC29EE3C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v11[1] = type metadata accessor for NLRouterOverrideService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF68, qword_1DC525C10);
  v6 = sub_1DC51777C();
  v8 = v7;
  v9 = sub_1DC510C8C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  return sub_1DC297194(v6, v8, v5, a1);
}

id sub_1DC29EF28()
{
  v1 = &v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_overridesStore];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cachedRegex] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock] = 0;
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_assetInfo] = xmmword_1DC522850;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NLRouterOverrideService();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1DC29EFC8(uint64_t a1)
{
  sub_1DC5182FC();
  sub_1DC298098(v2);
  return sub_1DC51833C();
}

uint64_t sub_1DC29F004()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_2();

    return v10();
  }
}

uint64_t sub_1DC29F120()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC29F204()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_1DC316A40;
  }

  else
  {
    v5 = sub_1DC29F308;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC29F308()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC29F384(*(v0 + 104));
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC29F384(uint64_t a1)
{
  v2 = type metadata accessor for ServiceSetupConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC29F3E0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  OUTLINED_FUNCTION_11_16();
  v7 = (*(v2 + 312) + **(v2 + 312));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5(v4);

  return v7(v1);
}

uint64_t sub_1DC29F508()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v14;
  *(v0 + 32) = v13;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_31_13(v4);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1DC2B7464;

  return v11(v2, ObjectType, v4);
}

uint64_t sub_1DC29F648()
{
  OUTLINED_FUNCTION_1_0();
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v3);
  v1[12] = OUTLINED_FUNCTION_118();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v4);
  v1[13] = OUTLINED_FUNCTION_118();
  v5 = sub_1DC51744C();
  v1[14] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_118();
  v7 = sub_1DC51507C();
  OUTLINED_FUNCTION_10(v7);
  v1[17] = OUTLINED_FUNCTION_118();
  v8 = sub_1DC51512C();
  v1[18] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_124();
  v1[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA30, &qword_1DC52A6F8);
  OUTLINED_FUNCTION_10(v10);
  v1[22] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC51509C();
  v1[23] = v11;
  OUTLINED_FUNCTION_52(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_118();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA38, &qword_1DC52A700);
  OUTLINED_FUNCTION_10(v13);
  v1[26] = OUTLINED_FUNCTION_118();
  v14 = sub_1DC510E1C();
  v1[27] = v14;
  OUTLINED_FUNCTION_52(v14);
  v1[28] = v15;
  v1[29] = OUTLINED_FUNCTION_118();
  v16 = sub_1DC510C8C();
  v1[30] = v16;
  OUTLINED_FUNCTION_52(v16);
  v1[31] = v17;
  v1[32] = OUTLINED_FUNCTION_118();
  v18 = sub_1DC516F5C();
  v1[33] = v18;
  OUTLINED_FUNCTION_52(v18);
  v1[34] = v19;
  v1[35] = OUTLINED_FUNCTION_124();
  v1[36] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1DC29F950(uint64_t a1)
{
  if (qword_1ECC82070 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_1ECC82070);
  }

  swift_beginAccess();
  v2 = sub_1DC29DBF0(a1, qword_1ECC8F580);
  if (v2 != 2)
  {
    v7 = v2;
    swift_endAccess();
    v8 = sub_1DC517B9C();
    sub_1DC297814();
    v9 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315394;
      v17[0] = a1;
LABEL_10:
      v12 = sub_1DC51777C();
      v14 = sub_1DC291244(v12, v13, v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v7 & 1;
      _os_log_impl(&dword_1DC287000, v9, v8, "Feature flag %s has been forcefully set to %{BOOL}d", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E1298840](v11, -1, -1);
      MEMORY[0x1E1298840](v10, -1, -1);
    }

LABEL_11:

    return v7 & 1;
  }

  v3 = swift_endAccess();
  v4 = OUTLINED_FUNCTION_50_1(v3, v17);
  v7 = byte_1ECC7BEC8;
  if (byte_1ECC7BEC8 != 2)
  {
    v8 = sub_1DC517B9C();
    sub_1DC297814();
    v9 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315394;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v16[3] = &type metadata for PlannerFeatureFlags;
  v16[4] = sub_1DC29DC3C(v4, v5, v6);
  LOBYTE(v16[0]) = a1;
  v7 = sub_1DC510D0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v7 & 1;
}

uint64_t sub_1DC29FB9C()
{
  v1 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v1);
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_10(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DC29F120;

  return sub_1DC29F508();
}

uint64_t sub_1DC29FD28()
{
  OUTLINED_FUNCTION_11_16();
  v2 = (*(v1 + 208))();
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1DC29FE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v73 - v4;
  v6 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  if ((sub_1DC2A051C() & 1) == 0)
  {
    sub_1DC517B9C();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v35 = sub_1DC2A5914();
    v36 = OUTLINED_FUNCTION_40_1();
    v40 = 95;
LABEL_21:
    sub_1DC516F0C(v36, v37, v38, v39, v40, 2);

    return 0;
  }

  v79 = type metadata accessor for NLRouterAssetsUtils();
  v13 = sub_1DC29CFD8(a1);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v75 = a1;
    v76 = v12;
    v77 = v8;
    sub_1DC517B9C();
    OUTLINED_FUNCTION_155();
    v17 = sub_1DC297814();
    v18 = sub_1DC2A5914();
    v19 = os_log_type_enabled(v18, v8);
    v78 = v6;
    if (v19)
    {
      OUTLINED_FUNCTION_11();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v21 = swift_slowAlloc();
      v80 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DC291244(v15, v16, &v80);
      _os_log_impl(&dword_1DC287000, v18, v8, "Path is %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v22 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_15_8();
    v24 = (*(v23 + 232))(v15, v16);
    if (v24)
    {
      v25 = v24;

      sub_1DC2AD798(v26);
      OUTLINED_FUNCTION_15_8();
      (*(v27 + 120))();
      sub_1DC517B9C();
      v28 = OUTLINED_FUNCTION_30_10();
      if (os_log_type_enabled(v28, v22))
      {

        v29 = swift_slowAlloc();
        v73 = v15;
        v30 = v29;
        OUTLINED_FUNCTION_19_3();
        v31 = swift_slowAlloc();
        v80 = v31;
        *v30 = 134218242;
        v74 = v22;
        v32 = v17;
        v33 = *(v25 + 16);

        *(v30 + 4) = v33;
        v17 = v32;

        *(v30 + 12) = 2080;
        v34 = sub_1DC291244(v73, v16, &v80);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_1DC287000, v28, v74, "Overrides successfully loaded %ld overrides from: %s", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      else
      {
      }

      v49 = sub_1DC2B8400();
      sub_1DC2B8404();

      v50 = v78;
      if (__swift_getEnumTagSinglePayload(v5, 1, v78) == 1)
      {
        sub_1DC37BD24(v5, &qword_1ECC7C950);
        sub_1DC517B9C();
        v51 = OUTLINED_FUNCTION_30_10();
        v52 = OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C(v52, v53, v54, v55, 67, 2);

        nullsub_1();
        OUTLINED_FUNCTION_15_8();
        (*(v56 + 192))();
      }

      else
      {
        (*(v77 + 32))(v76, v5, v50);
        sub_1DC51094C();
        OUTLINED_FUNCTION_15_8();
        v58 = (*(v57 + 240))();
        v60 = v59;

        if (v60)
        {
          sub_1DC517B9C();
          sub_1DC2A5914();
          OUTLINED_FUNCTION_22_9();
          if (os_log_type_enabled(v61, v62))
          {
            OUTLINED_FUNCTION_11();
            v63 = swift_slowAlloc();
            OUTLINED_FUNCTION_19_3();
            v64 = swift_slowAlloc();
            v80 = v64;
            *v63 = 136315138;
            *(v63 + 4) = sub_1DC291244(v58, v60, &v80);
            OUTLINED_FUNCTION_7_11();
            _os_log_impl(v65, v66, v67, v68, v69, v70);
            __swift_destroy_boxed_opaque_existential_1Tm(v64);
            v50 = v78;
            OUTLINED_FUNCTION_8_0();
            MEMORY[0x1E1298840]();
            OUTLINED_FUNCTION_8_0();
            MEMORY[0x1E1298840]();
          }

          nullsub_1();
          OUTLINED_FUNCTION_15_8();
          (*(v71 + 192))();
        }

        (*(v77 + 8))(v76, v50);
      }

      sub_1DC517B8C();
      v35 = OUTLINED_FUNCTION_30_10();
      v36 = OUTLINED_FUNCTION_40_1();
      v40 = 29;
      goto LABEL_21;
    }

    sub_1DC517BAC();
    v41 = OUTLINED_FUNCTION_30_10();
    if (os_log_type_enabled(v41, v22))
    {
      OUTLINED_FUNCTION_11();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v47 = swift_slowAlloc();
      v80 = v47;
      *v46 = 136315138;
      v48 = sub_1DC291244(v15, v16, &v80);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_1DC287000, v41, v22, "Overrides cannot be loaded from path: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v41 = sub_1DC2A5914();
    v42 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v42, v43, v44, v45, 27, 2);
  }

  return 1;
}

uint64_t sub_1DC2A051C()
{
  v0 = sub_1DC29F950(4);
  if ((v0 & 1) == 0)
  {
    v1 = sub_1DC517B8C();
    sub_1DC297814();
    v2 = sub_1DC2A5914();
    sub_1DC516F0C(v1, &dword_1DC287000, v2, "Overrides service is not enabled", 32, 2, MEMORY[0x1E69E7CC0]);
  }

  return v0 & 1;
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a4)
  {
    v9 = *(a6 + 8);
    v9(a5, a6, a3);
    sub_1DC516F3C();
    sub_1DC517CEC();
    v10 = (v9)(a5, a6);
    OUTLINED_FUNCTION_10_14();
    sub_1DC516F1C();
  }

  else
  {
    (*(a6 + 24))(a7, a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void sub_1DC2A08C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_15_7();
  if (!v14)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *a10;
  sub_1DC516F3C();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_1DC517CEC();
    v21 = *a10;
    sub_1DC516F2C();
  }

  else
  {

    sub_1DC517CEC();
    v16 = *a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DC522F20;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1DC2C0FA4(v17, v18, v19);
    *(v17 + 32) = a7;
    *(v17 + 40) = a8;
    v20 = v16;
    sub_1DC516F1C();
  }

  OUTLINED_FUNCTION_19_14();
}

void OUTLINED_FUNCTION_139()
{

  JUMPOUT(0x1E1296570);
}

void *OUTLINED_FUNCTION_139_0()
{
  result = *(v1 - 104);
  *result = v0;
  return result;
}

uint64_t sub_1DC2A0B64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC522F10;
  v4 = v3 + v2;
  v5 = (v4 + v0[14]);
  sub_1DC51680C();
  v6 = sub_1DC2A0C74();
  v8 = *v6;
  v7 = *(v6 + 1);
  *v5 = v8;
  v5[1] = v7;
  v9 = (v4 + v1 + v0[14]);

  sub_1DC51687C();
  *v9 = sub_1DC2A0C80(0);
  v9[1] = v10;
  return v3;
}

unint64_t sub_1DC2A0C80(char a1)
{
  result = 0x7465536D64436C6ELL;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6575716552756C6ELL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DC2A0DF4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC2A0E34(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC2A0E74(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_1DC5149AC();
}

void OUTLINED_FUNCTION_159_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DC2A0FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v31 = sub_1DC510BFC();
  if (a3)
  {
    v19 = sub_1DC5176FC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = sub_1DC5176FC();

  if (a7)
  {
LABEL_4:
    v21 = sub_1DC5176FC();

    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  if (a8)
  {
    sub_1DC298C74(0, &qword_1ECC7CE58, 0x1E69D1308);
    v22 = sub_1DC517A0C();
  }

  else
  {
    v22 = 0;
  }

  if (a10)
  {
    v23 = sub_1DC5176FC();

    if (a12)
    {
LABEL_13:
      v24 = sub_1DC5176FC();

      goto LABEL_16;
    }
  }

  else
  {
    v23 = 0;
    if (a12)
    {
      goto LABEL_13;
    }
  }

  v24 = 0;
LABEL_16:
  v25 = sub_1DC510B6C();
  v26 = 0;
  if (__swift_getEnumTagSinglePayload(a13, 1, v25) != 1)
  {
    v26 = sub_1DC510B2C();
    (*(*(v25 - 8) + 8))(a13, v25);
  }

  if (a15)
  {
    v27 = sub_1DC5176FC();
  }

  else
  {
    v27 = 0;
  }

  v28 = [v32 initWithLocaleIdentifier:v31 sandboxId:v19 activeServiceGraph:v20 assetDirPath:v21 overrideSiriVocabSpans:v22 serviceStateDirectory:v23 embeddingVersion:v24 nlSetupId:v26 invocationSource:v27];

  v29 = sub_1DC510C8C();
  (*(*(v29 - 8) + 8))(a1, v29);
  return v28;
}

uint64_t sub_1DC2A17A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC2A180C()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC2A1850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5109BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DC2A19E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_8(inited, xmmword_1DC522F10);
  v23 = v2;
  v24 = a1;
  v25 = a2;
  v10 = sub_1DC29D380(sub_1DC2A1E60, v22, inited);
  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC2A1850(v10, v8);

  sub_1DC5109BC();
  OUTLINED_FUNCTION_2_6(v8);
  if (v11)
  {
    sub_1DC2A17A4(v8);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_18_7();
    v12 = sub_1DC296DBC();
    v13 = OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C(v13, v14, v15, v16, 43, 2);

    v20 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_5_10();
    v19 = v18(v17);
    v20 = 0;
  }

  return OUTLINED_FUNCTION_12_8(v19, v20);
}

void sub_1DC2A1B8C()
{
  OUTLINED_FUNCTION_33();
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v5 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38_3();
  sub_1DC2A2428();
  OUTLINED_FUNCTION_2_6(v15);
  if (v21)
  {
    v22 = sub_1DC2A17A4(v15);
LABEL_7:
    v31 = 1;
    goto LABEL_8;
  }

  v32 = *(v18 + 32);
  v32(v1, v15, v16);
  v36 = v33;
  v37 = v34;
  v23 = (*(v7 + 104))(v11, *MEMORY[0x1E6968F70], v5);
  sub_1DC2A32B0(v23, v24, v25);
  sub_1DC51099C();
  (*(v7 + 8))(v11, v5);
  v26 = [objc_opt_self() defaultManager];
  sub_1DC51095C();
  v27 = sub_1DC5176FC();

  v28 = [v26 fileExistsAtPath_];

  v29 = *(v18 + 8);
  v29(v1, v16);
  if (!v28)
  {
    v22 = (v29)(v0, v16);
    goto LABEL_7;
  }

  v30 = OUTLINED_FUNCTION_5_10();
  v22 = (v32)(v30);
  v31 = 0;
LABEL_8:
  OUTLINED_FUNCTION_12_8(v22, v31);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_222_0()
{

  return sub_1DC372F04();
}

uint64_t sub_1DC2A20AC()
{
  type metadata accessor for TurnInputManager();
  sub_1DC2A214C(5);
  OUTLINED_FUNCTION_183();
  v1 = *(v0 + class metadata base offset for NLBridge + 152);

  return v1();
}

uint64_t sub_1DC2A214C(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  v2 = swift_allocObject();
  sub_1DC2A2184(a1);
  return v2;
}

uint64_t sub_1DC2A2184(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for TurnInputContainer();
  v3 = swift_allocObject();
  if (a1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1DC2A21F8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_35_1(a1);
  *(v2 + v4) = a1;
}

uint64_t sub_1DC2A2248()
{

  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2A2278()
{

  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2A22AC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1DC2A234C()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1DC2A23B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DC5176FC();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

void sub_1DC2A2428()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v51[1] = *MEMORY[0x1E69E9840];
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v3 = sub_1DC510BEC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v5 + 104))(v8 - v7, *MEMORY[0x1E6969638], v3);
  sub_1DC510B9C();
  (*(v5 + 8))(v9, v3);

  OUTLINED_FUNCTION_75();
  sub_1DC510B7C();
  v10 = sub_1DC517B9C();
  sub_1DC297814();
  v11 = sub_1DC296DBC();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51[0] = v13;
    *v12 = 136315138;
    v14 = OUTLINED_FUNCTION_75();
    *(v12 + 4) = sub_1DC291244(v14, v15, v16);
    _os_log_impl(&dword_1DC287000, v11, v10, "Fetching assets info for locale: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v17 = objc_opt_self();
  OUTLINED_FUNCTION_75();
  v18 = sub_1DC5176FC();
  v19 = [v17 getCDMAssetsInfoForNLRouterWithLocale_];

  OUTLINED_FUNCTION_75();
  v20 = sub_1DC5176FC();

  LODWORD(v18) = [v1 shouldReSetupForLocale:v20 cdmAssetsInfo:v19];

  if (!v18 || (v21 = sub_1DC510BFC(), v51[0] = 0, [v1 setupForLocale:v21 cdmAssetsInfo:v19 error:v51], v21, !v51[0]))
  {
    v31 = sub_1DC510BFC();
    v32 = [v1 getAssetsByFactorNamesForCDMAssetsInfo:v19 assetDirPath:0 locale:v31];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C9C0, qword_1DC523D38);
    v33 = sub_1DC51762C();

    v34 = sub_1DC2A5614(0xD000000000000027, 0x80000001DC53EF00, v33);

    if (v34)
    {
      v35 = [v34 getAssetPath];
      if (v35)
      {
        v36 = v35;
        sub_1DC51772C();

        sub_1DC51096C();
        swift_unknownObjectRelease();

        v37 = OUTLINED_FUNCTION_8_5();
        v38(v37);
        goto LABEL_12;
      }

      sub_1DC517BAC();
      v39 = sub_1DC296DBC();
      v44 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v44, v45, v46, v47, 38, 2);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1DC517BAC();
      v39 = sub_1DC296DBC();
      v40 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v40, v41, v42, v43, 49, 2);
    }

    v48 = OUTLINED_FUNCTION_8_5();
    v49(v48);
    v50 = sub_1DC5109BC();
    OUTLINED_FUNCTION_28_7(v50);
    goto LABEL_12;
  }

  v22 = v51[0];
  sub_1DC517BAC();
  v23 = sub_1DC296DBC();
  v24 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v24, v25, v26, v27, 30, 2);

  v28 = OUTLINED_FUNCTION_8_5();
  v29(v28);
  v30 = sub_1DC5109BC();
  OUTLINED_FUNCTION_28_7(v30);

LABEL_12:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_77(char a1, uint64_t a2)
{
  *(v4 + 32) = a1 & 1;

  return sub_1DC2EB40C(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_5(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC2A2E50()
{
  OUTLINED_FUNCTION_465();
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_7_1();
  (*v2)(v0);
  return v0;
}

uint64_t sub_1DC2A2ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v11 = a4;
  sub_1DC516F3C();
  return sub_1DC2A2F3C(a6, a1, a2, a3, v11, v6);
}

uint64_t sub_1DC2A2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1DC517CEC();
  if (a6)
  {
    OUTLINED_FUNCTION_2_22();
    return sub_1DC516F1C();
  }

  else
  {
    OUTLINED_FUNCTION_2_22();

    return sub_1DC516F2C();
  }
}

uint64_t sub_1DC2A2FF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_locale;
  v4 = OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22(v4, v5);
  sub_1DC510C8C();
  OUTLINED_FUNCTION_11_0();
  (*(v6 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DC3136DC(v8, v7, a3, v11, v12, v13, a7, v10, v9);
}

uint64_t OUTLINED_FUNCTION_94_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_1DC2A30F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  if (a2 == 1)
  {
    OUTLINED_FUNCTION_0_68();
    v7 = v9;
    v8 = v10;
  }

  sub_1DC2A329C(a1, a2);
  if (_MergedGlobals_20 != -1)
  {
    swift_once();
  }

  v11 = *(qword_1EDAC9608 + 16);
  if (v11)
  {
    v12 = (qword_1EDAC9608 + 40);
    v13 = MEMORY[0x1E69E7CD0];
    v14 = -1;
    do
    {
      v15 = *(v12 - 1);
      if (v14 < v15)
      {
        v16 = *v12;

        v17 = sub_1DC2A49A4(v7, v8) < v15;
        if (((v18 | v17) & 1) == 0)
        {
          v14 = v15;
          v13 = v16;
        }
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  MEMORY[0x1EEE9AC00](v19);
  v22[2] = v3;
  v22[3] = a3;

  v20 = sub_1DC2A4D24(sub_1DC2BCEC8, v22, v13);

  type metadata accessor for NLRouterModelFeatureSet();
  result = swift_allocObject();
  *(result + 16) = v20;
  return result;
}

uint64_t sub_1DC2A329C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1DC2A32B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDAC7FD0;
  if (!qword_1EDAC7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FD0);
  }

  return result;
}

uint64_t sub_1DC2A3304(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DC522850;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1DC517CBC();
}

uint64_t sub_1DC2A3398()
{
  OUTLINED_FUNCTION_140_0();
  v3 = (v1 + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_promptGenerator);
  v4 = OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_142(v4, v5);
  v6 = *v3;
  v7 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_1DC29C9C0(v6, v7);
}

void sub_1DC2A33E8()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA38, &qword_1DC52A700);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF80, &qword_1DC52E9F8);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30_1();
  v11 = sub_1DC510DEC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_2();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))(v4);
  OUTLINED_FUNCTION_39(v2, 1, v11);
  if (v13)
  {
    sub_1DC28EB30(v2, &qword_1ECC7DF80, &qword_1DC52E9F8);
LABEL_10:
    sub_1DC510E1C();
    v23 = OUTLINED_FUNCTION_27();
    goto LABEL_11;
  }

  v14 = OUTLINED_FUNCTION_113_0();
  v15(v14);
  if (qword_1ECC82DE8 != -1)
  {
    OUTLINED_FUNCTION_25_18(&qword_1ECC82DE8);
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  sub_1DC2A2E50();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_1DC510D6C();
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  sub_1DC4465D4();
  if (!v45)
  {
    sub_1DC28EB30(&v44, &qword_1ECC7DF88, &qword_1DC52EA00);
    v25 = sub_1DC517BAC();
    sub_1DC297814();
    v26 = sub_1DC296DBC();
    sub_1DC516F0C(v25, &dword_1DC287000, v26, "NLRouter model asset resourceBundle is nil (Model may not be installed)", 71, 2, MEMORY[0x1E69E7CC0]);

    sub_1DC28EB30(v47, &qword_1ECC7DF88, &qword_1DC52EA00);
    v27 = OUTLINED_FUNCTION_30();
    v28(v27);
    goto LABEL_10;
  }

  sub_1DC28F9B0(&v44, v46);
  sub_1DC2A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF90, &qword_1DC52EA08);
  OUTLINED_FUNCTION_38_2();
  v16 = sub_1DC510E1C();
  OUTLINED_FUNCTION_392();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    sub_1DC28EB30(v47, &qword_1ECC7DF88, &qword_1DC52EA00);
    v17 = OUTLINED_FUNCTION_30();
    v18(v17);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
    OUTLINED_FUNCTION_7_1();
    (*(v22 + 32))(v6, v1, v16);
    v23 = v6;
    v24 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v16);
    sub_1DC28EB30(v1, &qword_1ECC7DA38, &qword_1DC52A700);
    v34 = sub_1DC517BAC();
    sub_1DC297814();
    v35 = sub_1DC296DBC();
    sub_1DC2A2E50();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_82();
      *v36 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      swift_getDynamicType();
      sub_1DC5183EC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      v37 = OUTLINED_FUNCTION_46_0();
      v40 = sub_1DC291244(v37, v38, v39);

      *(v36 + 4) = v40;
      OUTLINED_FUNCTION_409(&dword_1DC287000, v41, v34, "Failed to get resourceBundle as AssetBackedLLMBundle. %s");
      OUTLINED_FUNCTION_146_5();
      OUTLINED_FUNCTION_54_12();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    sub_1DC28EB30(v47, &qword_1ECC7DF88, &qword_1DC52EA00);
    v42 = OUTLINED_FUNCTION_30();
    v43(v42);
    v23 = OUTLINED_FUNCTION_44();
  }

  v29 = 1;
  v30 = v16;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v23, v24, v29, v30);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_31_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_slowAlloc();
}

uint64_t sub_1DC2A3B80()
{
  v163 = v0;
  sub_1DC297814();
  v1 = sub_1DC2A48A4();
  v2 = *(v1 + 16);
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_54_2();
  sub_1DC2A2ED0(v4, v5, v2, v3, 1, v6);

  if ((sub_1DC29F950(0) & 1) == 0)
  {
    v41 = v0[34];
    sub_1DC517B9C();
    v42 = sub_1DC296DBC();
    v43 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v43, v44, v45, v46, 40, 2);

    v47 = *(v1 + 16);
    v48 = sub_1DC296DBC();
    OUTLINED_FUNCTION_301_0();
    sub_1DC2B8848(v49, v50, v51, v47, v48);

    v52 = *(v41 + 8);
LABEL_13:
    v160 = 1;
    goto LABEL_14;
  }

  v7 = v0[32];
  v157 = v0[27];
  v159 = v1;
  v8 = v0[11];
  v9 = *(v0[31] + 16);
  v10 = OUTLINED_FUNCTION_47_6();
  (v9)(v10);
  (*((*MEMORY[0x1E69E7D40] & *v8) + 0x98))(v7);
  sub_1DC517B9C();
  v11 = OUTLINED_FUNCTION_481();
  v12 = OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C(v12, v13, v14, v15, 30, 2);

  v16 = OUTLINED_FUNCTION_47_6();
  v152 = v9;
  (v9)(v16);
  v17 = sub_1DC2A48B0();
  v155 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xE0);
  v155(v17);
  v18 = sub_1DC2A51CC();
  v19 = *(v18 + 16);
  v20 = sub_1DC296DBC();
  v21 = OUTLINED_FUNCTION_45_2();
  sub_1DC2A2ED0(v21, v22, v19, v20, 1, v23);

  sub_1DC2A33E8();
  v24 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v24, v25, v157);
  if (v26)
  {
    v27 = v0[36];
    v28 = v0[34];
    sub_1DC28EB30(v0[26], &qword_1ECC7DA38, &qword_1DC52A700);
    sub_1DC517BAC();
    v29 = sub_1DC296DBC();
    v30 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v30, v31, v32, v33, 72, 2);

    v34 = *(v28 + 8);
    v35 = OUTLINED_FUNCTION_63_0();
    v34(v35);
    v36 = *v1;
    v37 = v1[1];
    v38 = *(v159 + 16);
    v39 = sub_1DC296DBC();
    v40 = v27;
LABEL_12:
    sub_1DC2B8848(v40, v36, v37, v38, v39);

    v52 = v34;
    goto LABEL_13;
  }

  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_1DC2A5208();
  v54 = v53;
  v56 = v55;
  v158 = v0;
  OUTLINED_FUNCTION_142(&qword_1ECC7BD00, (v0 + 7));
  qword_1ECC7BD00 = v54;
  unk_1ECC7BD08 = v56;

  v57 = OUTLINED_FUNCTION_31_0();
  sub_1DC2A5760(v57, v58);
  v59 = sub_1DC517B8C();
  v60 = sub_1DC296DBC();
  if (os_log_type_enabled(v60, v59))
  {
    OUTLINED_FUNCTION_63();
    v62 = OUTLINED_FUNCTION_115_4();
    v162[0] = v62;
    *v19 = 136446210;
    v63 = OUTLINED_FUNCTION_75();
    sub_1DC2B8808(v63, v64);

    v65 = OUTLINED_FUNCTION_45_2();
    v68 = sub_1DC291244(v65, v66, v67);

    *(v19 + 4) = v68;
    _os_log_impl(&dword_1DC287000, v60, v59, "NLRouter asset info: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  v0 = v158;
  v150 = v158[23];
  v69 = v18[1];
  v70 = *(v18 + 16);
  v71 = sub_1DC296DBC();
  v72 = OUTLINED_FUNCTION_220_0();
  sub_1DC2B8848(v72, v73, v69, v70, v71);

  sub_1DC510E0C();
  sub_1DC51508C();
  v74 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v74, v75, v150);
  if (v26)
  {
    v156 = v158[36];
    v76 = v158[34];
    sub_1DC28EB30(v158[22], &qword_1ECC7DA30, &qword_1DC52A6F8);
    v77 = sub_1DC517BAC();
    v78 = sub_1DC296DBC();
    sub_1DC516F0C(v77, &dword_1DC287000, v78, "NLRouter asset model could not be loaded (ModelBundle nil, setup failed", 71, 2, MEMORY[0x1E69E7CC0]);

    v79 = OUTLINED_FUNCTION_54_2();
    v80(v79);
    v34 = *(v76 + 8);
    v81 = OUTLINED_FUNCTION_63_0();
    v34(v81);
    v36 = *v159;
    v37 = v159[1];
    v38 = *(v159 + 16);
    v39 = sub_1DC296DBC();
    v40 = v156;
    goto LABEL_12;
  }

  v84 = v158[24];
  v85 = v158[25];
  v86 = v158[23];
  v87 = v158[10];
  v88 = v158[11];
  (*(v84 + 32))(v85, v158[22], v86);
  v89 = *(v87 + *(type metadata accessor for ServiceSetupConfiguration(0) + 20) + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA40, &qword_1DC52A708);
  v90 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1DC522F20;
  (*(v84 + 16))(v91 + v90, v85, v86);
  sub_1DC51506C();
  v142 = v89;
  sub_1DC51511C();
  v92 = OUTLINED_FUNCTION_74();
  v93(v92);
  sub_1DC51505C();
  swift_allocObject();
  OUTLINED_FUNCTION_56_7();
  v94 = sub_1DC51503C();
  v95 = MEMORY[0x1E69E7D40];
  v96 = (*((*MEMORY[0x1E69E7D40] & *v88) + 0xB0))(v94);
  if ((*((*v95 & *v88) + 0xA8))(v96))
  {
    sub_1DC51504C();
  }

  (*(v158[15] + 104))(v158[16], *MEMORY[0x1E69ABD18], v158[14]);
  v97 = sub_1DC51743C();
  v98 = OUTLINED_FUNCTION_31_0();
  v99(v98);
  if (v97)
  {
    v100 = v158[13];
    v101 = v158[11];
    sub_1DC517AAC();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    v106 = swift_allocObject();
    v106[2] = 0;
    v106[3] = 0;
    v106[4] = v101;
    v107 = v101;
    v108 = OUTLINED_FUNCTION_75_6();
    sub_1DC315A04(v108, v109, v100, v110, v106);
  }

  v111 = v158[32];
  sub_1DC517B9C();
  v112 = sub_1DC296DBC();
  v113 = OUTLINED_FUNCTION_208();
  sub_1DC516F0C(v113, v114, v115, v116, 49, 2, v142);

  type metadata accessor for MorphunTokenizer();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_75_4();
  v152();
  sub_1DC453C48(v161);
  sub_1DC453C88(v162);
  v117 = sub_1DC453CA0(v111, v161, v162);
  if (v117)
  {
    v118 = &off_1F57FF458;
  }

  else
  {
    v112 = 0;
    v118 = 0;
    v162[1] = 0;
    v162[2] = 0;
  }

  v153 = v158[35];
  v154 = v158[36];
  v119 = v158[34];
  v149 = v158[29];
  v151 = v158[33];
  v147 = v158[28];
  v148 = v158[27];
  v120 = v158[24];
  v145 = v158[23];
  v146 = v158[25];
  v121 = v158[19];
  v143 = v158[18];
  v144 = v158[21];
  v122 = v158[12];
  v123 = v158[11];
  v124 = v158[10];
  v162[0] = v117;
  v162[3] = v112;
  v162[4] = v118;
  (*((*MEMORY[0x1E69E7D40] & *v123) + 0xF8))(v162);
  type metadata accessor for NLRouterModelFeatureSet();
  v125 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A329C(v125, v126);
  v127 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A30F8(v127, v128, v124);
  v129 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A5760(v129, v130);
  v131 = sub_1DC2BE10C();
  v155(v131);
  sub_1DC2BAA34(v124, v122);
  v0 = v158;
  (*((*MEMORY[0x1E69E7D40] & *v123) + 0x128))(v122);
  v132 = sub_1DC517B9C();
  v133 = sub_1DC296DBC();
  v134 = MEMORY[0x1E69E7CC0];
  sub_1DC516F0C(v132, &dword_1DC287000, v133, "Loading heuristic rules configuration", 37, 2, MEMORY[0x1E69E7CC0]);

  sub_1DC2BBBB0(v158 + 2);
  sub_1DC2BAC2C(v124, v158 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v158 + 2);
  v135 = sub_1DC517B9C();
  v136 = sub_1DC296DBC();
  sub_1DC516F0C(v135, &dword_1DC287000, v136, "NL Router Service initialized successfully", 42, 2, v134);

  (*(v121 + 8))(v144, v143);
  (*(v120 + 8))(v146, v145);
  (*(v147 + 8))(v149, v148);
  v137 = *(v119 + 8);
  v137(v153, v151);
  v138 = *v159;
  v139 = v159[1];
  v140 = *(v159 + 16);
  v141 = sub_1DC296DBC();
  sub_1DC2B8848(v154, v138, v139, v140, v141);

  v52 = v137;
  v160 = 0;
LABEL_14:
  v52(v0[36], v0[33]);

  v82 = v0[1];

  return v82(v160);
}

uint64_t sub_1DC2A4780()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_42_14()
{
  v1 = *(v0 - 144);
  *(v0 - 136) = v1 + 16;
  *(v0 - 152) = v1 + 8;
}

uint64_t sub_1DC2A48B0()
{
  OUTLINED_FUNCTION_155();
  type metadata accessor for NLRouterModelFeatureSet();
  sub_1DC2A495C(v0);
  sub_1DC297438();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  v2 = *(v1 + 8);

  v3 = OUTLINED_FUNCTION_46_6();
  v2(v3);
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_1DC2A495C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_68();
  v4 = sub_1DC2A30F8(v2, v3, a1);

  return v4;
}

unsigned __int8 *sub_1DC2A49A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - v6;
  if (!a2)
  {
    return 0;
  }

  v44 = a1;
  v45 = a2;
  v43[0] = 46;
  v43[1] = 0xE100000000000000;
  v8 = sub_1DC510C8C();
  v9 = __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_1DC2A32B0(v9, v10, v11);
  sub_1DC517E2C();
  v13 = v12;
  sub_1DC28EB30(v7, &qword_1ECC7CD00, &unk_1DC5259F0);
  if (v13)
  {
    return 0;
  }

  v15 = sub_1DC5179AC();
  v16 = MEMORY[0x1E1296060](v15);
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  v20 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return 0;
  }

  if ((v18 & 0x1000000000000000) == 0)
  {
    if ((v18 & 0x2000000000000000) != 0)
    {
      v44 = v16;
      v45 = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (v19)
        {
          if (v19 != 1)
          {
            OUTLINED_FUNCTION_33_15();
            while (1)
            {
              OUTLINED_FUNCTION_4_23();
              if (!v25 & v24)
              {
                break;
              }

              OUTLINED_FUNCTION_2_26();
              if (!v25)
              {
                break;
              }

              v23 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              OUTLINED_FUNCTION_24_11();
              if (v25)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_83:
        __break(1u);
        return result;
      }

      if (v16 != 45)
      {
        if (v19)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_23();
            if (!v25 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_2_26();
            if (!v25)
            {
              break;
            }

            v23 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            OUTLINED_FUNCTION_24_11();
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v19)
      {
        if (v19 != 1)
        {
          OUTLINED_FUNCTION_33_15();
          while (1)
          {
            OUTLINED_FUNCTION_4_23();
            if (!v25 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_2_26();
            if (!v25)
            {
              break;
            }

            v23 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_24_11();
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        result = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_31_0();
        result = sub_1DC517F8C();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_4_23();
                if (!v25 & v24)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_2_26();
                if (!v25)
                {
                  goto LABEL_71;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_24_11();
                if (v25)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_82;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v35 = *result - 48;
              if (v35 > 9)
              {
                goto LABEL_71;
              }

              v36 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_71;
              }

              v23 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v23 = 0;
        v28 = 1;
        goto LABEL_72;
      }

      if (v20 >= 1)
      {
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_23();
              if (!v25 & v24)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_2_26();
              if (!v25)
              {
                goto LABEL_71;
              }

              v23 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_24_11();
              if (v25)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v28 = 0;
LABEL_72:
          LOBYTE(v43[0]) = v28;
          v39 = v28;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  LOBYTE(v43[0]) = 0;
  v40 = OUTLINED_FUNCTION_31_0();
  v23 = sub_1DC3B0F74(v40, v41, 10);
  v39 = v42;
LABEL_73:

  if (v39)
  {
    return 0;
  }

  else
  {
    return v23;
  }
}

void *sub_1DC2A4D24(uint64_t (*a1)(char *), void *a2, uint64_t a3)
{
  v23 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = (8 * v7);
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](a1);
    v8 = (v21 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    v21[0] = v7;
    sub_1DC2A3304(0, v7, v8);
    v22 = 0;
    v9 = 0;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v7 = v14 | (v9 << 6);
      v24 = *(*(a3 + 48) + v7);
      v17 = v23(&v24);
      if (v3)
      {

        swift_willThrow();
        return a2;
      }

      if (v17)
      {
        *(v8 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1DC2A4FA8(v8, v21[0], v22, a3);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_1DC2A4FA8(v8, v21[0], v22, a3);
      }

      v16 = *(a3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  a2 = sub_1DC456600(v20, v7, a3, v23);

  MEMORY[0x1E1298840](v20, -1, -1);
  return a2;
}

uint64_t sub_1DC2A4FA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E020, &qword_1DC52F1E0);
  result = sub_1DC517F0C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1DC5182FC();
    MEMORY[0x1E1296BB0](v16);
    result = sub_1DC51833C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_177_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 152);

  _os_log_impl(a1, v5, v8, a4, v4, 0x16u);
}

void sub_1DC2A5208()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  sub_1DC510DBC();
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_3_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF78, &qword_1DC52E9F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_28_13();
  sub_1DC510DFC();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1DC510DCC();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  sub_1DC510D7C();
  sub_1DC510DAC();
  v2 = OUTLINED_FUNCTION_29_0();
  v3(v2);
  OUTLINED_FUNCTION_56_0();
  nullsub_1();
  OUTLINED_FUNCTION_192();
  v4 = OUTLINED_FUNCTION_35_0();
  v5(v4);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2A5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DC2AEB04(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DC2A56AC()
{
  result = qword_1EDAC7FC0;
  if (!qword_1EDAC7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC7CD40, &unk_1DC523860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FC0);
  }

  return result;
}

uint64_t sub_1DC2A5730()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C888, &qword_1DC523498);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DC2A5760(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_1DC2A5828(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2A5EB4(v8, v7);
  v10 = *(sub_1DC5109BC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC319260(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1DC2A592C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  OUTLINED_FUNCTION_30();
  v5 = sub_1DC5176FC();
  v6 = [v4 fileExistsAtPath_];

  if (!v6)
  {
    v30 = sub_1DC517BAC();
    sub_1DC297814();
    v31 = sub_1DC2A5914();
    if (os_log_type_enabled(v31, v30))
    {
      OUTLINED_FUNCTION_11();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v34 = OUTLINED_FUNCTION_30();
      *(v32 + 4) = sub_1DC291244(v34, v35, v36);
      v37 = "Overrides file does not exist: %s";
LABEL_9:
      _os_log_impl(&dword_1DC287000, v31, v30, v37, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

LABEL_10:

    return 0;
  }

  v7 = sub_1DC51795C();
  sub_1DC517B9C();
  v8 = sub_1DC297814();
  sub_1DC2A5914();
  OUTLINED_FUNCTION_22_9();
  v11 = os_log_type_enabled(v9, v10);
  if ((v7 & 1) == 0)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_11();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v74 = swift_slowAlloc();
      *v40 = 136315138;
      v41 = OUTLINED_FUNCTION_30();
      *(v40 + 4) = sub_1DC291244(v41, v42, v43);
      OUTLINED_FUNCTION_7_11();
      _os_log_impl(v44, v45, v46, v47, v48, v49);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    OUTLINED_FUNCTION_30();
    v50 = sub_1DC5176FC();
    v51 = [v4 contentsAtPath_];

    if (v51)
    {
      v24 = sub_1DC510A0C();
      v26 = v52;

      v53 = OUTLINED_FUNCTION_23_14();
      v29 = v54(v53);
      goto LABEL_17;
    }

    v30 = sub_1DC517BAC();
    v31 = sub_1DC2A5914();
    if (os_log_type_enabled(v31, v30))
    {
      OUTLINED_FUNCTION_11();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v70 = OUTLINED_FUNCTION_30();
      *(v32 + 4) = sub_1DC291244(v70, v71, v72);
      v37 = "Failed reading overrides file: %s";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_11();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v73 = swift_slowAlloc();
    *v12 = 136315138;
    v13 = OUTLINED_FUNCTION_30();
    *(v12 + 4) = sub_1DC291244(v13, v14, v15);
    OUTLINED_FUNCTION_7_11();
    _os_log_impl(v16, v17, v18, v19, v20, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  OUTLINED_FUNCTION_30();
  v22 = sub_1DC5176FC();
  v23 = [v4 contentsAtPath_];

  if (!v23)
  {
    v30 = sub_1DC517BAC();
    v31 = sub_1DC2A5914();
    if (!os_log_type_enabled(v31, v30))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_11();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v33 = swift_slowAlloc();
    *v32 = 136315138;
    v67 = OUTLINED_FUNCTION_30();
    *(v32 + 4) = sub_1DC291244(v67, v68, v69);
    v37 = "Failed reading NLRouter overrides json: %s";
    goto LABEL_9;
  }

  v24 = sub_1DC510A0C();
  v26 = v25;

  v27 = OUTLINED_FUNCTION_23_14();
  v29 = v28(v27);
LABEL_17:
  v38 = v29;
  sub_1DC2AD740(v24, v26);
  if (!v3)
  {

    return v38;
  }

  sub_1DC517BAC();
  v55 = v8;
  sub_1DC2A5914();
  OUTLINED_FUNCTION_22_9();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v75 = swift_slowAlloc();
    *v58 = 136315394;
    v60 = OUTLINED_FUNCTION_30();
    v63 = sub_1DC291244(v60, v61, v62);
    OUTLINED_FUNCTION_28_10(v63);
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 14) = v64;
    *v59 = v64;
    OUTLINED_FUNCTION_27_12(&dword_1DC287000, v65, v66, "Error parsing overrides file at %s: %@");
    sub_1DC37BD24(v59, &qword_1ECC7DFE0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  return 0;
}

void *sub_1DC2A5EB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C958, &unk_1DC523D28);
  v4 = *(sub_1DC5109BC() - 8);
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