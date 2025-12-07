uint64_t WFContentPropertyPossibleValuesGetter.unsafeValues.getter()
{
  v1 = WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore(v0);
  v2 = sub_21E3439D0();

  return v2;
}

uint64_t sub_21E1E89CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21E1C2B8C(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_21E1E3530(v8, a2);
    result = sub_21E1DFA50(a2, a3);
    *v3 = v7;
  }

  else
  {
    sub_21E1C377C(a1, &qword_27CEB8950, &unk_21E354390);
    sub_21E20EA60(v8, a2);
    sub_21E1DFA50(a2, a3);
    return sub_21E1C377C(v8, &qword_27CEB8950, &unk_21E354390);
  }

  return result;
}

id WFAskLLMModelSession.conversation.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void WFAskLLMModelSession.conversation.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t WFAskLLMModelSession.__allocating_init(generativeModel:conversation:useCaseId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_137();
  WFAskLLMModelSession.init(generativeModel:conversation:useCaseId:)(v7, v8, a3, a4);
  return v6;
}

void *WFAskLLMModelSession.init(generativeModel:conversation:useCaseId:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v5 = v4;
  v97 = a3;
  v111 = a2;
  v107 = *v4;
  v95 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v100 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v101 = (v10 - v9);
  v11 = sub_21E342F20();
  v12 = OUTLINED_FUNCTION_28_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v104 = v14 - v13;
  sub_21E342FA0();
  OUTLINED_FUNCTION_5();
  v98 = v16;
  v99 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v96 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8900, &qword_21E354170);
  v21 = OUTLINED_FUNCTION_28_0(v20);
  MEMORY[0x28223BE20](v21);
  v102 = v93 - v22;
  sub_21E342F40();
  OUTLINED_FUNCTION_5();
  v105 = v24;
  v106 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  v27 = v26 - v25;
  v28 = sub_21E342E20();
  OUTLINED_FUNCTION_5();
  v30 = v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = v93 - v35;
  v37 = OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale;
  v38 = sub_21E342CA0();
  __swift_storeEnumTagSinglePayload(v5 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_responseCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8908, &unk_21E354178);
  sub_21E20DA10();
  *(v5 + v39) = sub_21E343760();
  v110 = v5;
  sub_21E1C4248(a1, (v5 + 4));
  v41 = a1[3];
  v40 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v42 = v108;
  (*(v40 + 104))(v41, v40);
  if (v42)
  {

    v43 = v112;
LABEL_25:
    v68 = v110;
    __swift_destroy_boxed_opaque_existential_1Tm(v110 + 4);
    sub_21E1C377C(v68 + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale, &qword_27CEB8260, &unk_21E3535C0);

    swift_deallocPartialClassInstance();
    v71 = v43;
    goto LABEL_26;
  }

  v94 = v27;
  v44 = v103;
  v93[1] = 0;
  v45 = v30;
  v46 = *(v30 + 16);
  v108 = v36;
  v46(v34, v36, v28);
  v47 = v102;
  sub_21E342F30();
  v48 = v106;
  v49 = v45;
  if (__swift_getEnumTagSinglePayload(v47, 1, v106) == 1)
  {
    v50 = v28;

    sub_21E1C377C(v47, &qword_27CEB8900, &qword_21E354170);
    v51 = v101;
    sub_21E343100();
    v43 = v112;
    sub_21E1C4248(v112, v114);
    v52 = sub_21E3434C0();
    v53 = sub_21E343B60();
    v54 = os_log_type_enabled(v52, v53);
    v109 = v45;
    if (v54)
    {
      v55 = v50;
      OUTLINED_FUNCTION_130();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v106 = swift_slowAlloc();
      v115 = v106;
      *v56 = 136315138;
      v57 = v114[4];
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v58 = OUTLINED_FUNCTION_399();
      v59(v58, v57);
      v60 = v95;
      v93[0] = v55;
      if (v113)
      {
        if (v113 == 1)
        {
          sub_21E343870("Extension", 9, v93[0]);
        }

        else
        {
          sub_21E343870("On-Device", 9, v93[0]);
        }
      }

      else
      {
        sub_21E343870("Private Cloud Compute", 21, v93[0]);
      }

      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
      }

      v72 = qword_27CEB8248;
      sub_21E3437A0();
      OUTLINED_FUNCTION_399();
      v73 = sub_21E3437A0();

      v74 = [v72 localizedStringForKey:v51 value:v73 table:0];

      v75 = sub_21E3437E0();
      v77 = v76;

      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      sub_21E1C80B4(v75, v77, &v115);
      OUTLINED_FUNCTION_399();

      *(v56 + 4) = v75;
      _os_log_impl(&dword_21E1BD000, v52, v53, "Could not get model bundle for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v78 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v78);
      v79 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x223D57360](v79);

      (*(v100 + 8))(v101, v60);
      v43 = v112;
      v50 = v93[0];
    }

    else
    {

      (*(v100 + 8))(v51, v95);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    v81 = v80;
    v82 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v83 = OUTLINED_FUNCTION_399();
    v84(v83, v82);
    if (LOBYTE(v114[0]))
    {
      if (LOBYTE(v114[0]) == 1)
      {
        sub_21E343870("Extension", 9);
        if (qword_27CEB7FA0 == -1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_21E343870("On-Device", 9);
        if (qword_27CEB7FA0 == -1)
        {
LABEL_24:
          v85 = OUTLINED_FUNCTION_29_2();
          v86 = OUTLINED_FUNCTION_29_2();

          v88 = OUTLINED_FUNCTION_285(v87, sel_localizedStringForKey_value_table_);

          v89 = sub_21E3437E0();
          v91 = v90;

          *v81 = v89;
          *(v81 + 8) = v91;
          *(v81 + 56) = 1;
          swift_willThrow();

          (*(v109 + 8))(v108, v50);
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_21E343870("Private Cloud Compute", 21);
      if (qword_27CEB7FA0 == -1)
      {
        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_0_0(&qword_27CEB7FA0);
    goto LABEL_24;
  }

  v61 = v105;
  v62 = v94;
  (*(v105 + 32))(v94, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8918, &qword_21E354188);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21E3522F0;
  (*(v61 + 16))(v64 + v63, v62, v48);
  sub_21E342F10();
  sub_21E342F90();
  v66 = v98;
  v65 = v99;
  (*(v98 + 16))(v96, v44, v99);
  sub_21E342F00();
  OUTLINED_FUNCTION_234();
  swift_allocObject();
  v67 = sub_21E342EE0();
  v68 = v110;
  v110[3] = v67;
  v69 = v111;
  if (!v111)
  {
    v69 = [objc_allocWithZone(type metadata accessor for WFAskLLMConversation()) init];
  }

  v70 = MEMORY[0x277D84F90];
  v68[2] = v69;
  (*(v66 + 8))(v44, v65);
  (*(v105 + 8))(v94, v106);
  (*(v49 + 8))(v108, v28);
  v68[9] = v70;
  v71 = v112;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v68;
}

uint64_t WFAskLLMModelSession.registerDocuments(_:)()
{
  OUTLINED_FUNCTION_10();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_21E3434D0();
  v1[9] = v3;
  OUTLINED_FUNCTION_62_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_378();
  v5 = sub_21E343160();
  v1[12] = v5;
  OUTLINED_FUNCTION_62_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_378();
  v7 = sub_21E3431A0();
  v1[15] = v7;
  OUTLINED_FUNCTION_62_0(v7);
  v1[16] = v8;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = sub_21E343180();
  v1[20] = v9;
  OUTLINED_FUNCTION_62_0(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_378();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8920, &qword_21E354198);
  OUTLINED_FUNCTION_28_0(v11);
  v1[23] = OUTLINED_FUNCTION_378();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8928, &unk_21E3541A0);
  v1[24] = v12;
  OUTLINED_FUNCTION_62_0(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_378();
  v14 = sub_21E342BB0();
  v1[27] = v14;
  OUTLINED_FUNCTION_62_0(v14);
  v1[28] = v15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v16 = sub_21E343150();
  v1[31] = v16;
  OUTLINED_FUNCTION_62_0(v16);
  v1[32] = v17;
  v1[33] = OUTLINED_FUNCTION_378();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0, &qword_21E352528);
  v1[34] = v18;
  OUTLINED_FUNCTION_62_0(v18);
  v1[35] = v19;
  v1[36] = *(v20 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_21E1E9A10()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_13:
    OUTLINED_FUNCTION_269();

    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_342();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  v40 = MEMORY[0x277D84F90];
  sub_21E1D5A84(0, v2, 0);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v38 = *(v4 + 72);
  v39 = v3;
  v37 = (v4 + 8);
  v36 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = *(v4 + 16);
  do
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = OUTLINED_FUNCTION_390();
    v6(v9);
    v10 = OUTLINED_FUNCTION_137();
    v6(v10);
    sub_21E343140();
    v11 = *v37;
    *(v0 + 336) = *v37;
    *(v0 + 344) = v36;
    v11(v7, v8);
    v13 = *(v40 + 16);
    v12 = *(v40 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21E1D5A84(v12 > 1, v13 + 1, 1);
    }

    v14 = *(v0 + 264);
    v15 = *(v0 + 248);
    *(v40 + 16) = v13 + 1;
    (*(v39 + 32))(v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v13, v14, v15);
    v5 += v38;
    --v2;
  }

  while (v2);
  v16 = sub_21E342EF0();
  *(v0 + 312) = v16;

  v17 = sub_21E1C7FAC(v16);
  *(v0 + 320) = v17;
  if (!v17)
  {

    goto LABEL_13;
  }

  *(v0 + 376) = *MEMORY[0x277D0E710];
  *(v0 + 328) = *MEMORY[0x277D7A440];
  v18 = *(v0 + 312);
  v19 = sub_21E20DA64(v18);
  sub_21E20DAD4(0, v19 & 1, v18);
  if (v19)
  {
    (*(*(v0 + 280) + 16))(*(v0 + 304), *(v0 + 312) + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
  }

  else
  {
    v30 = *(v0 + 288);
    v26 = sub_21E20DB3C(0, *(v0 + 312));
    if (v30 != 8)
    {
      __break(1u);
      return MEMORY[0x282200310](v26);
    }

    v31 = v26;
    v32 = *(v0 + 304);
    v33 = *(v0 + 272);
    v34 = *(v0 + 280);
    *(v0 + 40) = v31;
    (*(v34 + 16))(v32, v0 + 40, v33);
    swift_unknownObjectRelease();
  }

  *(v0 + 352) = 1;
  v20 = OUTLINED_FUNCTION_309();
  v22 = v21(v20);
  v23 = OUTLINED_FUNCTION_237(v22);
  OUTLINED_FUNCTION_409(v23);
  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 368) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_175(v24);
  OUTLINED_FUNCTION_342();

  return MEMORY[0x282200310](v26);
}

uint64_t sub_21E1E9DCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1E9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_150();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_169();
  a30 = v32;
  v35 = *(v32 + 184);
  v36 = *(v32 + 160);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
  {
    v50 = *(v32 + 376);
    (*(*(v32 + 168) + 32))(*(v32 + 176), v35, v36);
    sub_21E343170();
    v51 = OUTLINED_FUNCTION_151();
    if (v52(v51) == v50)
    {
      v53 = *(v32 + 128);
      (*(*(v32 + 104) + 96))(*(v32 + 112), *(v32 + 96));
      v54 = OUTLINED_FUNCTION_235();
      v120 = v55;
      (v55)(v54);
      sub_21E343100();
      v56 = *(v53 + 16);
      v57 = OUTLINED_FUNCTION_3_0();
      v56(v57);
      v58 = sub_21E3434C0();
      v59 = sub_21E343B50();
      if (os_log_type_enabled(v58, v59))
      {
        v110 = *(v32 + 336);
        v109 = v59;
        v108 = *(v32 + 144);
        v60 = *(v32 + 128);
        v114 = *(v32 + 88);
        v117 = *(v32 + 120);
        v112 = *(v32 + 80);
        v113 = *(v32 + 72);
        OUTLINED_FUNCTION_130();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v111 = swift_slowAlloc();
        a21 = v111;
        *v61 = 136315138;
        sub_21E343190();
        sub_21E20EE78(&qword_27CEB80D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v62 = sub_21E343F60();
        v63 = v56;
        v65 = v64;
        v66 = OUTLINED_FUNCTION_232();
        v110(v66);
        v67 = v117;
        v118 = *(v60 + 8);
        v118(v108, v67);
        v68 = sub_21E1C80B4(v62, v65, &a21);
        v56 = v63;

        *(v61 + 4) = v68;
        _os_log_impl(&dword_21E1BD000, v58, v109, "finished uploading document with identifier: %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v69 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v69);

        (*(v112 + 8))(v114, v113);
      }

      else
      {
        v82 = *(v32 + 144);
        v83 = *(v32 + 120);
        v84 = *(v32 + 128);

        v118 = *(v84 + 8);
        v118(v82, v83);
        v85 = OUTLINED_FUNCTION_151();
        v86(v85);
      }

      v87 = *(v32 + 64);
      (v56)(*(v32 + 136), *(v32 + 152), *(v32 + 120));
      OUTLINED_FUNCTION_270(v87 + 72, v32 + 16);
      v88 = *(v87 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v87 + 72) = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v107 = *(v32 + 64);
        v88 = sub_21E1CDED0(0, *(v88 + 2) + 1, 1, v88);
        *(v107 + 72) = v88;
      }

      v91 = *(v88 + 2);
      v90 = *(v88 + 3);
      if (v91 >= v90 >> 1)
      {
        v88 = sub_21E1CDED0((v90 > 1), v91 + 1, 1, v88);
      }

      v92 = *(v32 + 168);
      v115 = *(v32 + 176);
      v93 = *(v32 + 160);
      v95 = *(v32 + 128);
      v94 = *(v32 + 136);
      v96 = *(v32 + 120);
      v97 = *(v32 + 64);
      *(v88 + 2) = v91 + 1;
      v120(&v88[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v91], v94, v96);
      *(v97 + 72) = v88;
      swift_endAccess();
      v98 = OUTLINED_FUNCTION_184();
      (v118)(v98);
      (*(v92 + 8))(v115, v93);
    }

    else
    {
      v80 = *(v32 + 104);
      v79 = *(v32 + 112);
      v81 = *(v32 + 96);
      (*(*(v32 + 168) + 8))(*(v32 + 176), *(v32 + 160));
      (*(v80 + 8))(v79, v81);
    }

    goto LABEL_20;
  }

  v37 = *(v32 + 352);
  v38 = *(v32 + 320);
  (*(*(v32 + 200) + 8))(*(v32 + 208), *(v32 + 192));
  if (v37 != v38)
  {
    v70 = *(v32 + 352);
    v71 = *(v32 + 312);
    v72 = sub_21E20DA64(v71);
    sub_21E20DAD4(v70, v72 & 1, v71);
    v73 = *(v32 + 312);
    if (v72)
    {
      v74 = (*(*(v32 + 280) + 16))(*(v32 + 304), v73 + ((*(*(v32 + 280) + 80) + 32) & ~*(*(v32 + 280) + 80)) + *(*(v32 + 280) + 72) * v70, *(v32 + 272));
    }

    else
    {
      v102 = *(v32 + 288);
      v74 = sub_21E20DB3C(v70, v73);
      if (v102 != 8)
      {
        goto LABEL_26;
      }

      v103 = v74;
      v104 = *(v32 + 304);
      v105 = *(v32 + 272);
      v106 = *(v32 + 280);
      *(v32 + 40) = v103;
      (*(v106 + 16))(v104, v32 + 40, v105);
      v74 = swift_unknownObjectRelease();
    }

    *(v32 + 352) = v70 + 1;
    if (!__OFADD__(v70, 1))
    {
      v75 = OUTLINED_FUNCTION_309();
      v77 = v76(v75);
      v78 = OUTLINED_FUNCTION_237(v77);
      OUTLINED_FUNCTION_409(v78);
LABEL_20:
      swift_getAssociatedConformanceWitness();
      swift_task_alloc();
      OUTLINED_FUNCTION_146_0();
      *(v32 + 368) = v99;
      *v99 = v100;
      OUTLINED_FUNCTION_175(v99);
      OUTLINED_FUNCTION_149();

      return MEMORY[0x282200310](v74);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return MEMORY[0x282200310](v74);
  }

  OUTLINED_FUNCTION_269();
  v116 = v40;
  v119 = v39;
  v121 = *(v32 + 88);

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_149();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, v116, v119, v121, a21, a22, a23, a24);
}

uint64_t sub_21E1EA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_407();
  v26 = v16[18];
  v27 = v16[17];
  v28 = v16[14];
  v30 = v16[11];
  (*(v16[25] + 8))(v16[26], v16[24]);
  v29 = v16[6];

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_335();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t WFAskLLMModelSession.generateTextResponse(userPrompt:isFinalRequest:)(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E1EA638()
{
  OUTLINED_FUNCTION_10();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21E1EA6E4;
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_21E1EFC10(v4, 0, 1, v2, v3, v3);
}

uint64_t sub_21E1EA6E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_294();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_3_0();
  }

  return v5(v4);
}

uint64_t sub_21E1EA7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_21E3434D0();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1EA8A8);
}

uint64_t sub_21E1EA8A8()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v1 = v0[22];
  if (sub_21E1E2280(v1 + 32))
  {
    sub_21E343100();
    v2 = sub_21E3434C0();
    v3 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v3))
    {
      v4 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v4);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v10 = OUTLINED_FUNCTION_97();
    v11(v10);
    sub_21E1C4248(v1 + 32, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
    OUTLINED_FUNCTION_173();
    type metadata accessor for WFAFMInstructServerV1Model();
    if (swift_dynamicCast())
    {

      v12 = swift_task_alloc();
      v0[30] = v12;
      *v12 = v0;
      v12[1] = sub_21E1EAD64;
      OUTLINED_FUNCTION_364();

      return sub_21E1EB18C(v13, v14);
    }

    v27 = swift_task_alloc();
    v0[33] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v32, v33, MEMORY[0x277D71A40]);
    OUTLINED_FUNCTION_405();
    *v27 = v34;
    v31 = sub_21E1EAFEC;
  }

  else
  {
    sub_21E343100();
    v17 = sub_21E3434C0();
    v18 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v18))
    {
      v19 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v19);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v25 = OUTLINED_FUNCTION_7();
    v26(v25);
    v27 = swift_task_alloc();
    v0[27] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v28, v29, MEMORY[0x277D71A40]);
    OUTLINED_FUNCTION_405();
    *v27 = v30;
    v31 = sub_21E1EABC4;
  }

  v27[1] = v31;
  OUTLINED_FUNCTION_364();

  return MEMORY[0x282165A78](v35);
}

uint64_t sub_21E1EABC4(uint64_t a1)
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_22();
  v8 = v7;
  OUTLINED_FUNCTION_42_1();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (v1)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v8 + 224) = v4;
    *(v8 + 232) = v6;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v21);
  }
}

uint64_t sub_21E1EACF8()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[28];
  v2 = v0[20];
  *v2 = v0[29];
  v2[1] = v1;

  OUTLINED_FUNCTION_46_1();

  return v3();
}

uint64_t sub_21E1EAD64(uint64_t a1)
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_22();
  v8 = v7;
  OUTLINED_FUNCTION_42_1();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (v1)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v8 + 248) = v4;
    *(v8 + 256) = v6;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v21);
  }
}

uint64_t sub_21E1EAE98()
{
  v1 = v0[31];
  v0[7] = v0[32];
  v0[8] = v1;
  OUTLINED_FUNCTION_14_4();
  v0[9] = 0xD000000000000012;
  v0[10] = v2;
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  sub_21E1CB3C4();
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_68_0();
  v3 = sub_21E343CB0();
  v5 = v4;

  v0[13] = v3;
  v0[14] = v5;
  OUTLINED_FUNCTION_160();
  v0[15] = v6;
  OUTLINED_FUNCTION_159();
  v0[16] = v7;
  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v8 = sub_21E343CB0();
  v10 = v9;

  v11 = v0[20];
  *v11 = v8;
  v11[1] = v10;

  OUTLINED_FUNCTION_46_1();

  return v12();
}

uint64_t sub_21E1EAFEC(uint64_t a1)
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_22();
  v8 = v7;
  OUTLINED_FUNCTION_42_1();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (v1)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v8 + 272) = v4;
    *(v8 + 280) = v6;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v21);
  }
}

uint64_t sub_21E1EB120()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[34];
  v2 = v0[20];
  *v2 = v0[35];
  v2[1] = v1;

  OUTLINED_FUNCTION_46_1();

  return v3();
}

uint64_t sub_21E1EB18C(uint64_t a1, char a2)
{
  *(v3 + 136) = v2;
  *(v3 + 105) = a2;
  v4 = sub_21E343820();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_21E3434D0();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v6 = v3;
  v6[1] = sub_21E1EB374;

  return MEMORY[0x282165A78](v7);
}

uint64_t sub_21E1EB374()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v4;
  v2[30] = v5;
  v2[31] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6);
}

void sub_21E1EB478()
{
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 240);
  sub_21E343100();
  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();
  if (OUTLINED_FUNCTION_32(v2))
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v100 = *(v0 + 216);
    v5 = *(v0 + 176);
    v98 = *(v0 + 168);
    OUTLINED_FUNCTION_130();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    *v102 = swift_slowAlloc();
    *v6 = 136315138;

    v7 = sub_21E1C80B4(v4, v3, v102);

    *(v6 + 4) = v7;
    _os_log_impl(&dword_21E1BD000, v1, v2, "Generated v2 response: %s", v6, 0xCu);
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v8 = v100;
    v101 = *(v5 + 8);
    v101(v8, v98);
  }

  else
  {
    v2 = *(v0 + 176);

    v9 = OUTLINED_FUNCTION_97();
    v101 = v10;
    (v10)(v9);
  }

  v11 = OUTLINED_FUNCTION_132();

  if ((v11 & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_270(v12, v13);
    MEMORY[0x223D55240](32034, 0xE200000000000000);
    swift_endAccess();
    sub_21E343100();

    v14 = sub_21E3434C0();
    v15 = sub_21E343B50();
    v16 = OUTLINED_FUNCTION_32(v15);
    v2 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    if (v16)
    {
      OUTLINED_FUNCTION_130();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      *v102 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = OUTLINED_FUNCTION_187();
      v97 = v17;
      v23 = sub_21E1C80B4(v20, v21, v22);

      *(v19 + 4) = v23;
      OUTLINED_FUNCTION_355(&dword_21E1BD000, v14, v15, "Generated response is malformed, updated v2 response: %s", v94);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();

      v24 = v97;
      v25 = v18;
    }

    else
    {

      v24 = v17;
      v25 = v18;
    }

    v101(v24, v25);
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 160);
  v28 = *(v0 + 144);

  sub_21E343810();
  sub_21E3437F0();
  OUTLINED_FUNCTION_252();

  (*(v26 + 8))(v27, v28);
  if (v2 >> 60 == 15)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v29, v30);
    swift_willThrow();
    goto LABEL_13;
  }

  v31 = *(v0 + 248);
  v32 = OUTLINED_FUNCTION_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  sub_21E20F428(&qword_27CEB8B18, &qword_27CEB8B10, &qword_21E354590);
  OUTLINED_FUNCTION_137();
  sub_21E343450();
  if (v31)
  {
    v34 = OUTLINED_FUNCTION_137();
    sub_21E1D8430(v34, v35);
    goto LABEL_13;
  }

  v38 = *(v0 + 88);
  v39 = *(v0 + 96);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 1)
    {
      v40 = *(v0 + 105);

      if (v40 & 1) == 0 || (sub_21E204D50(v41))
      {
        sub_21E343100();
        v42 = sub_21E3434C0();
        v43 = sub_21E343B50();
        v44 = OUTLINED_FUNCTION_32(v43);
        v45 = *(v0 + 192);
        v99 = *(v0 + 168);
        if (v44)
        {
          OUTLINED_FUNCTION_130();
          v95 = v45;
          v46 = swift_slowAlloc();
          OUTLINED_FUNCTION_135();
          *v102 = swift_slowAlloc();
          *v46 = 136315138;
          *(v0 + 128) = MEMORY[0x277D837D0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8B20, &qword_21E354598);
          v47 = sub_21E343830();
          v49 = sub_21E1C80B4(v47, v48, v102);

          *(v46 + 4) = v49;
          _os_log_impl(&dword_21E1BD000, v42, v43, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s", v46, 0xCu);
          OUTLINED_FUNCTION_348();
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          v50 = OUTLINED_FUNCTION_137();
          sub_21E1D8430(v50, v51);

          v101(v95, v99);
        }

        else
        {
          v73 = OUTLINED_FUNCTION_137();
          sub_21E1D8430(v73, v74);

          v101(v45, v99);
        }

        OUTLINED_FUNCTION_419();

LABEL_28:
        OUTLINED_FUNCTION_416();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_342();

        __asm { BRAA            X3, X16 }
      }

      v96 = v38;
      sub_21E343100();
      v77 = sub_21E3434C0();
      v78 = sub_21E343B50();
      if (OUTLINED_FUNCTION_133(v78))
      {
        v79 = OUTLINED_FUNCTION_31();
        *v79 = 0;
        OUTLINED_FUNCTION_142();
        _os_log_impl(v80, v81, v82, v83, v79, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v84 = *(v0 + 136);

      v85 = OUTLINED_FUNCTION_404();
      v86(v85);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      __swift_project_boxed_opaque_existential_1(v84 + 4, v84[7]);
      v87 = OUTLINED_FUNCTION_304();
      v88(v87);
      OUTLINED_FUNCTION_13_1();
      v89 = swift_beginAccess();
      v90 = v84[2];
      OUTLINED_FUNCTION_274(v89, xmmword_21E354140);
      v91 = v90;
      v92 = OUTLINED_FUNCTION_137();
      sub_21E1D8430(v92, v93);
      sub_21E20F47C(v96, v39, 1u);
    }

    else
    {
      sub_21E343100();
      v56 = sub_21E3434C0();
      v57 = sub_21E343B50();
      if (OUTLINED_FUNCTION_133(v57))
      {
        v58 = OUTLINED_FUNCTION_31();
        *v58 = 0;
        OUTLINED_FUNCTION_142();
        _os_log_impl(v59, v60, v61, v62, v58, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v63 = *(v0 + 136);

      v64 = OUTLINED_FUNCTION_404();
      v65(v64);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      __swift_project_boxed_opaque_existential_1(v63 + 4, v63[7]);
      v66 = OUTLINED_FUNCTION_304();
      v67(v66);
      OUTLINED_FUNCTION_13_1();
      v68 = swift_beginAccess();
      v69 = v63[2];
      OUTLINED_FUNCTION_274(v68, xmmword_21E354130);
      v70 = v69;
      v71 = OUTLINED_FUNCTION_137();
      sub_21E1D8430(v71, v72);
    }

    OUTLINED_FUNCTION_419();
LABEL_13:

    OUTLINED_FUNCTION_416();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_342();

    __asm { BRAA            X1, X16 }
  }

  v52 = OUTLINED_FUNCTION_221();
  sub_21E20F494(v52, v53, 0);
  v54 = OUTLINED_FUNCTION_137();
  sub_21E1D8430(v54, v55);
  OUTLINED_FUNCTION_419();

  goto LABEL_28;
}

uint64_t sub_21E1EBC9C(uint64_t a1)
{
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_21E1EBD3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EBF18;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EBF18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E1EC624()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EC6B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EC88C;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EC88C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E1ECF98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 194) = a3;
  *(v4 + 72) = a1;
  *(v4 + 80) = v3;
  v5 = sub_21E343820();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 160) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1ED174;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1ED174()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[21] = v4;
  v2[22] = v5;
  v2[23] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1ED79C()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1ED828(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 194) = a3;
  *(v4 + 72) = a1;
  *(v4 + 80) = v3;
  v5 = sub_21E343820();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 160) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EDA04;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EDA04()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[21] = v4;
  v2[22] = v5;
  v2[23] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1EE028(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EE204;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EE204()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E1EE84C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 106) = a3;
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  v5 = sub_21E343820();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 208) = v6;
  *(v4 + 216) = *(v6 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 256) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EEA28;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EEA28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[33] = v4;
  v2[34] = v5;
  v2[35] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1EEB2C(uint64_t a1)
{
  v83 = v1;
  OUTLINED_FUNCTION_284();
  v2 = sub_21E3434C0();
  v3 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v3))
  {
    v4 = *(v1 + 264);
    v5 = *(v1 + 216);
    v77 = *(v1 + 208);
    v79 = *(v1 + 248);
    OUTLINED_FUNCTION_130();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    __src[0] = swift_slowAlloc();
    OUTLINED_FUNCTION_418(4.8149e-34);
    v7 = OUTLINED_FUNCTION_57();
    sub_21E1C80B4(v7, v8, v9);
    OUTLINED_FUNCTION_276();

    *(v6 + 4) = v4;
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_310(v10, v11, v12, v13);
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v14 = *(v5 + 8);
    v14(v79, v77);
  }

  else
  {
    v15 = *(v1 + 216);

    v14 = *(v15 + 8);
    v16 = OUTLINED_FUNCTION_7();
    (v14)(v16);
  }

  OUTLINED_FUNCTION_132();

  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v17 = OUTLINED_FUNCTION_187();
  v18(v17);
  OUTLINED_FUNCTION_268();
  if (!v20 & v19)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v21, v22);
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v23 = *(v1 + 280);
  v24 = OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_417(&qword_27CEB8A20);
  v26 = OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_366(v26);
  if (v23)
  {
    v27 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v27, v28);
    goto LABEL_9;
  }

  memcpy(__dst, (v1 + 16), 0x59uLL);
  if (*(v1 + 105))
  {
    if (*(v1 + 105) == 1)
    {
      v31 = *(v1 + 106);
      v32 = memcpy(__src, (v1 + 16), 0x59uLL);
      if (v31 & 1) == 0 || (sub_21E204D50(v32))
      {
        OUTLINED_FUNCTION_284();
        v33 = sub_21E3434C0();
        v34 = sub_21E343B50();
        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v1 + 224);
        v37 = *(v1 + 208);
        if (v35)
        {
          OUTLINED_FUNCTION_130();
          v38 = swift_slowAlloc();
          OUTLINED_FUNCTION_135();
          v78 = v37;
          v39 = swift_slowAlloc();
          v82[0] = v39;
          *v38 = 136315138;
          *(v1 + 160) = &type metadata for DateOutput;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A10, &qword_21E354478);
          v40 = sub_21E343830();
          sub_21E1C80B4(v40, v41, v82);
          OUTLINED_FUNCTION_299();
          *(v38 + 4) = v36;
          OUTLINED_FUNCTION_310(&dword_21E1BD000, v33, v34, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          v42 = OUTLINED_FUNCTION_57_0();
          MEMORY[0x223D57360](v42);
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          v43 = OUTLINED_FUNCTION_134();
          sub_21E1D8430(v43, v44);

          v14(v76, v78);
        }

        else
        {
          v61 = OUTLINED_FUNCTION_134();
          sub_21E1D8430(v61, v62);

          v63 = OUTLINED_FUNCTION_184();
          (v14)(v63);
        }

        v49 = *(v1 + 168);
        v48 = __src;
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_284();
      v64 = sub_21E3434C0();
      v65 = sub_21E343B50();
      if (OUTLINED_FUNCTION_162(v65))
      {
        v66 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v66);
        OUTLINED_FUNCTION_107(&dword_21E1BD000, v67, v68, "Model generated handleWithCare responses using v2 adapter, throwing an error...");
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v69 = *(v1 + 176);

      v70 = OUTLINED_FUNCTION_88();
      (v14)(v70);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      OUTLINED_FUNCTION_23_3();
      v71 = OUTLINED_FUNCTION_221();
      v72(v71);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v59 = *(v69 + 16);
      v60 = xmmword_21E354140;
    }

    else
    {
      OUTLINED_FUNCTION_284();
      v50 = sub_21E3434C0();
      v51 = sub_21E343B50();
      if (OUTLINED_FUNCTION_162(v51))
      {
        v52 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v52);
        OUTLINED_FUNCTION_107(&dword_21E1BD000, v53, v54, "Model generated unsafe responses using v2 adapter, throwing an error...");
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v55 = *(v1 + 176);

      v56 = OUTLINED_FUNCTION_88();
      (v14)(v56);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      OUTLINED_FUNCTION_23_3();
      v57 = OUTLINED_FUNCTION_221();
      v58(v57);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v59 = *(v55 + 16);
      v60 = xmmword_21E354130;
    }

    OUTLINED_FUNCTION_22_4(v60);
    swift_willThrow();
    v73 = v59;
    v74 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v74, v75);
    goto LABEL_9;
  }

  v45 = *(v1 + 168);
  v46 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v46, v47);

  v48 = __dst;
  v49 = v45;
LABEL_25:
  memcpy(v49, v48, 0x59uLL);

  OUTLINED_FUNCTION_46_1();
LABEL_10:

  return v29();
}

uint64_t sub_21E1EF130()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EF1BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 112) = a1;
  *(v4 + 120) = v3;
  v5 = sub_21E343820();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 200) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v7 = v4;
  v7[1] = sub_21E1EF398;

  return MEMORY[0x282165A78](v8);
}

uint64_t sub_21E1EF398()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[26] = v4;
  v2[27] = v5;
  v2[28] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1EF49C()
{
  v91 = v0;
  sub_21E343100();
  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v2))
  {
    v86 = *(v0 + 192);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    OUTLINED_FUNCTION_130();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v6 = swift_slowAlloc();
    v90 = v6;
    *v5 = 136315138;

    v7 = OUTLINED_FUNCTION_137();
    v10 = sub_21E1C80B4(v7, v8, v9);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_355(v11, v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v15 = *(v4 + 8);
    v15(v86, v3);
  }

  else
  {
    v16 = *(v0 + 160);

    v15 = *(v16 + 8);
    v17 = OUTLINED_FUNCTION_7();
    (v15)(v17);
  }

  v18 = *(v0 + 128);

  OUTLINED_FUNCTION_132();

  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v19 = OUTLINED_FUNCTION_219();
  v20(v19, v18);
  OUTLINED_FUNCTION_268();
  if (!v22 & v21)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v23, v24);
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v25 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89A8, &qword_21E354408);
  sub_21E20F428(&qword_27CEB89B0, &qword_27CEB89A8, &qword_21E354408);
  OUTLINED_FUNCTION_134();
  sub_21E343450();
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v26, v27);
    goto LABEL_9;
  }

  v31 = *(v0 + 16);
  v30 = *(v0 + 24);
  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  if (!*(v0 + 48))
  {
    sub_21E20EF0C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), 0);
    v46 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v46, v47);
LABEL_24:
    OUTLINED_FUNCTION_290();
    goto LABEL_25;
  }

  if (*(v0 + 48) != 1)
  {
    sub_21E343100();
    v48 = sub_21E3434C0();
    v49 = sub_21E343B50();
    if (OUTLINED_FUNCTION_162(v49))
    {
      v50 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v50);
      OUTLINED_FUNCTION_107(&dword_21E1BD000, v51, v52, "Model generated unsafe responses using v2 adapter, throwing an error...");
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v53 = *(v0 + 184);
    v54 = *(v0 + 120);

    v55 = OUTLINED_FUNCTION_88();
    (v15)(v55);
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    v56 = v54[7];
    v57 = v54[8];
    __swift_project_boxed_opaque_existential_1(v54 + 4, v56);
    OUTLINED_FUNCTION_389();
    v58(v56, v57);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v59 = v54[2];
    OUTLINED_FUNCTION_39_1(xmmword_21E354130);
    *(v53 + 24) = v59;
    OUTLINED_FUNCTION_78(v60);
    swift_willThrow();
    v61 = v59;
    v62 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v62, v63);
    OUTLINED_FUNCTION_290();
    goto LABEL_9;
  }

  v34 = *(v0 + 49);

  if ((v34 & 1) != 0 && (sub_21E204D50(v35) & 1) == 0)
  {
    v84 = v31;
    v88 = v32;
    sub_21E343100();
    v67 = sub_21E3434C0();
    v68 = sub_21E343B50();
    if (OUTLINED_FUNCTION_162(v68))
    {
      v69 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v69);
      OUTLINED_FUNCTION_107(&dword_21E1BD000, v70, v71, "Model generated handleWithCare responses using v2 adapter, throwing an error...");
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v72 = *(v0 + 120);

    v73 = OUTLINED_FUNCTION_232();
    (v15)(v73);
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    v74 = v72[7];
    v75 = v72[8];
    __swift_project_boxed_opaque_existential_1(v72 + 4, v74);
    OUTLINED_FUNCTION_389();
    v76(v74, v75);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v77 = v72[2];
    OUTLINED_FUNCTION_22_4(xmmword_21E354140);
    swift_willThrow();
    v78 = v77;
    v79 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v79, v80);
    sub_21E20EEC0(v84, v30, v33, v88, 1u);
    OUTLINED_FUNCTION_290();
    goto LABEL_9;
  }

  sub_21E343100();
  v36 = sub_21E3434C0();
  v83 = sub_21E343B50();
  v89 = v36;
  v37 = os_log_type_enabled(v36, v83);
  v38 = *(v0 + 168);
  v87 = *(v0 + 152);
  if (!v37)
  {
    v64 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v64, v65);

    v15(v38, v87);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_130();
  v85 = v30;
  v39 = swift_slowAlloc();
  OUTLINED_FUNCTION_135();
  v90 = swift_slowAlloc();
  *v39 = 136315138;
  *(v0 + 104) = &type metadata for TextOrEntityOutput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8990, &qword_21E354400);
  v40 = sub_21E343830();
  v82 = v38;
  v42 = v32;
  v43 = sub_21E1C80B4(v40, v41, &v90);

  *(v39 + 4) = v43;
  v32 = v42;
  OUTLINED_FUNCTION_355(&dword_21E1BD000, v89, v83, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s", v81);
  OUTLINED_FUNCTION_86();
  v30 = v85;
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x223D57360]();
  v44 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v44, v45);

  v15(v82, v87);
  OUTLINED_FUNCTION_290();
LABEL_25:

  v66 = *(v0 + 112);
  *v66 = v31 & 1;
  *(v66 + 8) = v30;
  *(v66 + 16) = v33;
  *(v66 + 24) = v32;

  OUTLINED_FUNCTION_46_1();
LABEL_10:

  return v28();
}

uint64_t sub_21E1EFB84()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EFC10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 784) = a6;
  *(v6 + 776) = a5;
  *(v6 + 1160) = a4;
  *(v6 + 768) = a3;
  *(v6 + 760) = a2;
  *(v6 + 752) = a1;
  sub_21E343820();
  *(v6 + 792) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v6 + 800) = v7;
  *(v6 + 808) = *(v7 - 8);
  *(v6 + 816) = swift_task_alloc();
  v8 = sub_21E343530();
  *(v6 + 824) = v8;
  *(v6 + 832) = *(v8 - 8);
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v6 + 904) = swift_task_alloc();
  v9 = sub_21E342F80();
  *(v6 + 912) = v9;
  *(v6 + 920) = *(v9 - 8);
  *(v6 + 928) = swift_task_alloc();
  v10 = sub_21E343610();
  *(v6 + 936) = v10;
  *(v6 + 944) = *(v10 - 8);
  *(v6 + 952) = swift_task_alloc();
  v11 = sub_21E3434D0();
  *(v6 + 960) = v11;
  *(v6 + 968) = *(v11 - 8);
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  v12 = sub_21E342CA0();
  *(v6 + 1016) = v12;
  *(v6 + 1024) = *(v12 - 8);
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = type metadata accessor for WFLanguageRecognizer(0);
  *(v6 + 1048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v6 + 1056) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F000C);
}

uint64_t sub_21E1F000C()
{
  v136 = v0;
  v4 = *(v0 + 752);
  if (v4)
  {
    v5 = *(v0 + 1048);
    v1 = *(v0 + 1032);
    v133 = *(v0 + 1016);
    v6 = *(v0 + 776);
    v132 = *(v0 + 1160);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_270(&v7[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation], v0 + 512);
    v4;
    v9 = v7;
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_30_2();
    *(v10 + 32) = v4;
    *(v10 + 40) = v132;
    *(v10 + 48) = 0;
    *&v7[v8] = v11;
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    v12 = OUTLINED_FUNCTION_54_0();
    v13(v12, v133);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_239(qword_282F4DEE8);
    v14 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
    OUTLINED_FUNCTION_95(v14, v15, v16);
    OUTLINED_FUNCTION_145(v17, v18);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v5);
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_328(*(v0 + 776) + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_responseCache, v0 + 536);
    OUTLINED_FUNCTION_167();
    swift_endAccess();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950, &unk_21E354390);
    if (OUTLINED_FUNCTION_380(v0 + 704, v20, v19, MEMORY[0x277D837D0]))
    {
      v21 = *(v0 + 704);
      v22 = *(v0 + 712);
      sub_21E343100();
      swift_bridgeObjectRetain_n();
      v23 = sub_21E3434C0();
      v24 = sub_21E343B50();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_130();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v26 = swift_slowAlloc();
        v135[0] = v26;
        *v25 = 136315138;
        *(v0 + 720) = v21;
        *(v0 + 728) = v22;
        v27 = sub_21E343830();
        v29 = sub_21E1C80B4(v27, v28, v135);

        *(v25 + 4) = v29;
        OUTLINED_FUNCTION_310(&dword_21E1BD000, v23, v24, "WFAskLLMModelSession using response from cache: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        v30 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v30);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();

        v31 = OUTLINED_FUNCTION_184();
        v32(v31);
      }

      else
      {

        v106 = OUTLINED_FUNCTION_184();
        v107(v106);
      }

      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_395();
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_166();

      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_339();

      __asm { BRAA            X3, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v0 + 1064) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v33 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v134 = swift_slowAlloc();
    v135[0] = v134;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v35 = OUTLINED_FUNCTION_29_3();
      v36(v35);
      sub_21E342C80();
      v37 = OUTLINED_FUNCTION_31_2();
      v38(v37);
    }

    v1 = *(v0 + 960);
    *(v0 + 688) = v2;
    *(v0 + 696) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780, &qword_21E3543E0);
    v39 = sub_21E343830();
    OUTLINED_FUNCTION_356(v39, v40);
    OUTLINED_FUNCTION_278();
    *(v34 + 4) = v3;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v41, v42, "Set request prompt locale to %{public}s");
    v43 = v134;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v44 = OUTLINED_FUNCTION_105();
    (v33)(v44);
  }

  else
  {
    v34 = *(v0 + 968);
    v43 = *(v0 + 960);

    v45 = OUTLINED_FUNCTION_104();
    (v33)(v45);
  }

  *(v0 + 1072) = v33;
  v46 = OUTLINED_FUNCTION_18_3(*(v0 + 776));
  if ((v47(v46) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), v48 = swift_beginAccess(), (v49 = sub_21E1D3A1C(v48)) != 0))
  {
    v50 = v49;
    v51 = OUTLINED_FUNCTION_193();
    sub_21E1D1464(v51, v52, v53);
    OUTLINED_FUNCTION_182();

    *(v0 + 1080) = v43;
    OUTLINED_FUNCTION_398();
    v54 = swift_task_alloc();
    v55 = OUTLINED_FUNCTION_353(v54);
    *v55 = v56;
    v55[1] = sub_21E1F0974;
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_339();

    return sub_21E205100(v57, v58, v59);
  }

  else
  {
    v62 = *(v0 + 952);
    v63 = *(v0 + 776);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v64 = *(v63 + 16);
    OUTLINED_FUNCTION_58_0(v64, v65, v66, v67, v68, v69, v70, v71, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v131);
    if (v62)
    {
      sub_21E1C377C(*(v0 + 1056), &qword_27CEB8260, &unk_21E3535C0);

      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_395();
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_339();

      __asm { BRAA            X1, X16 }
    }

    if (sub_21E206230(v74))
    {
      sub_21E342F50();
      v75 = sub_21E342F60();
      OUTLINED_FUNCTION_0_7(v75);
      OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v111, v113, v115, v117, v119, v121, v123, v125, v127, v129);
      OUTLINED_FUNCTION_271();
      v76 = sub_21E3434C0();
      v77 = sub_21E343B50();
      OUTLINED_FUNCTION_133(v77);
      OUTLINED_FUNCTION_392();
      if (v78)
      {
        v79 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v79);
        OUTLINED_FUNCTION_45_0();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v85 = OUTLINED_FUNCTION_70();
      v1(v85);
    }

    else
    {
      OUTLINED_FUNCTION_271();
      sub_21E3434C0();
      v86 = sub_21E343B50();
      if (OUTLINED_FUNCTION_156(v86))
      {
        v87 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_181(v87);
        OUTLINED_FUNCTION_90(&dword_21E1BD000, v88, v89, "Applying greedy decoding");
        v90 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v90);
      }

      OUTLINED_FUNCTION_332();
      v91 = OUTLINED_FUNCTION_71();
      v1(v91);
      v92 = sub_21E342F60();
      OUTLINED_FUNCTION_52(v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8, &unk_21E352720);
      inited = swift_initStackObject();
      v94 = OUTLINED_FUNCTION_89(inited, xmmword_21E3522F0);
      v96 = OUTLINED_FUNCTION_283(v94, v95);
      OUTLINED_FUNCTION_1_8(v96, v97, v98, v99, v100, v101, v102, v103, v111, v113, v115, v117, v119, v121, v123, v125);
    }

    v104 = swift_task_alloc();
    *(v0 + 1104) = v104;
    *v104 = v0;
    OUTLINED_FUNCTION_200(v104);
    OUTLINED_FUNCTION_339();

    return sub_21E2063A8();
  }
}

uint64_t sub_21E1F0974()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1096) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1F0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1056), &qword_27CEB8260, &unk_21E3535C0);

  v34 = *(v24 + 1096);
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1F0EDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1112) = v0;

  if (!v0)
  {
    *(v4 + 1120) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1F1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[132];
  (*(v24[115] + 8))(v24[116], v24[114]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[139];
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F14A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1152) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 808) + 8))(*(v5 + 816), *(v1 + 800));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1F1B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_403();
  v26(v25[112], v25[103]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260, &unk_21E3535C0);

  v40 = v25[144];
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1F1D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 768) = a7;
  *(v7 + 760) = a6;
  *(v7 + 1144) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  sub_21E343820();
  *(v7 + 776) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 784) = v8;
  *(v7 + 792) = *(v8 - 8);
  *(v7 + 800) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 808) = v9;
  *(v7 + 816) = *(v9 - 8);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 888) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 896) = v10;
  *(v7 + 904) = *(v10 - 8);
  *(v7 + 912) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 920) = v11;
  *(v7 + 928) = *(v11 - 8);
  *(v7 + 936) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 944) = v12;
  *(v7 + 952) = *(v12 - 8);
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1000) = v13;
  *(v7 + 1008) = *(v13 - 8);
  *(v7 + 1016) = swift_task_alloc();
  *(v7 + 1024) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1032) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F2110);
}

uint64_t sub_21E1F2988()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1080) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1F2D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = OUTLINED_FUNCTION_349();
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v35 = *(v24 + 1080);
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v35, a22, a23, a24);
}

uint64_t sub_21E1F2E94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1096) = v0;

  if (!v0)
  {
    *(v4 + 1104) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1F32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[130];
  (*(v24[113] + 8))(v24[114], v24[112]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[137];
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F3410()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1136) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 792) + 8))(*(v5 + 800), *(v1 + 784));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1F39FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = *(v24 + 1040);
  (*(v24 + 1112))(*(v24 + 880), *(v24 + 808));
  v26 = OUTLINED_FUNCTION_151();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v39 = *(v24 + 1136);
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v39, a22, a23, a24);
}

uint64_t sub_21E1F3B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 768) = a7;
  *(v7 + 760) = a6;
  *(v7 + 1144) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  sub_21E343820();
  *(v7 + 776) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 784) = v8;
  *(v7 + 792) = *(v8 - 8);
  *(v7 + 800) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 808) = v9;
  *(v7 + 816) = *(v9 - 8);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 888) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 896) = v10;
  *(v7 + 904) = *(v10 - 8);
  *(v7 + 912) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 920) = v11;
  *(v7 + 928) = *(v11 - 8);
  *(v7 + 936) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 944) = v12;
  *(v7 + 952) = *(v12 - 8);
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1000) = v13;
  *(v7 + 1008) = *(v13 - 8);
  *(v7 + 1016) = swift_task_alloc();
  *(v7 + 1024) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1032) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F3F7C);
}

uint64_t sub_21E1F47F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1080) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1F4BDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1096) = v0;

  if (!v0)
  {
    *(v4 + 1104) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1F4FF4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1136) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 792) + 8))(*(v5 + 800), *(v1 + 784));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1F55E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 744) = a7;
  *(v7 + 736) = a6;
  *(v7 + 1123) = a5;
  *(v7 + 728) = a4;
  *(v7 + 720) = a3;
  *(v7 + 712) = a2;
  *(v7 + 704) = a1;
  sub_21E343820();
  *(v7 + 752) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 760) = v8;
  *(v7 + 768) = *(v8 - 8);
  *(v7 + 776) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 784) = v9;
  *(v7 + 792) = *(v9 - 8);
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 864) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 872) = v10;
  *(v7 + 880) = *(v10 - 8);
  *(v7 + 888) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 896) = v11;
  *(v7 + 904) = *(v11 - 8);
  *(v7 + 912) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 920) = v12;
  *(v7 + 928) = *(v12 - 8);
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 976) = v13;
  *(v7 + 984) = *(v13 - 8);
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1016) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F59E0);
}

uint64_t sub_21E1F6248()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1F6630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = OUTLINED_FUNCTION_347();
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v35 = *(v24 + 1056);
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v35, a22, a23, a24);
}

uint64_t sub_21E1F6754()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1072) = v0;

  if (!v0)
  {
    *(v4 + 1080) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1F6B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[127];
  (*(v24[110] + 8))(v24[111], v24[109]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[134];
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F6CC0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1112) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 768) + 8))(*(v5 + 776), *(v1 + 760));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1F72BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = *(v24 + 1016);
  (*(v24 + 1088))(*(v24 + 856), *(v24 + 784));
  v26 = OUTLINED_FUNCTION_151();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v39 = *(v24 + 1112);
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v39, a22, a23, a24);
}

uint64_t sub_21E1F743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 744) = a7;
  *(v7 + 736) = a6;
  *(v7 + 1123) = a5;
  *(v7 + 728) = a4;
  *(v7 + 720) = a3;
  *(v7 + 712) = a2;
  *(v7 + 704) = a1;
  sub_21E343820();
  *(v7 + 752) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 760) = v8;
  *(v7 + 768) = *(v8 - 8);
  *(v7 + 776) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 784) = v9;
  *(v7 + 792) = *(v9 - 8);
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 864) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 872) = v10;
  *(v7 + 880) = *(v10 - 8);
  *(v7 + 888) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 896) = v11;
  *(v7 + 904) = *(v11 - 8);
  *(v7 + 912) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 920) = v12;
  *(v7 + 928) = *(v12 - 8);
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 976) = v13;
  *(v7 + 984) = *(v13 - 8);
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1016) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F783C);
}

uint64_t sub_21E1F80A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1F8488()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1072) = v0;

  if (!v0)
  {
    *(v4 + 1080) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1F8890()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1112) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 768) + 8))(*(v5 + 776), *(v1 + 760));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1F8E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 697) = a5;
  *(v7 + 760) = a4;
  *(v7 + 752) = a3;
  *(v7 + 744) = a2;
  *(v7 + 736) = a1;
  sub_21E343820();
  *(v7 + 784) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 792) = v8;
  *(v7 + 800) = *(v8 - 8);
  *(v7 + 808) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 816) = v9;
  *(v7 + 824) = *(v9 - 8);
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 896) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 904) = v10;
  *(v7 + 912) = *(v10 - 8);
  *(v7 + 920) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 928) = v11;
  *(v7 + 936) = *(v11 - 8);
  *(v7 + 944) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 952) = v12;
  *(v7 + 960) = *(v12 - 8);
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1008) = v13;
  *(v7 + 1016) = *(v13 - 8);
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1048) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F928C);
}

uint64_t sub_21E1F928C(uint64_t a1)
{
  v138 = v1;
  v5 = *(v1 + 744);
  if (v5)
  {
    v6 = *(v1 + 1040);
    v134 = *(v1 + 1032);
    v135 = *(v1 + 1048);
    v2 = *(v1 + 1024);
    v132 = *(v1 + 1008);
    v7 = *(v1 + 768);
    v131 = *(v1 + 697);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v8 = *(v7 + 16);
    v9 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_270(&v8[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation], v1 + 536);
    v133 = v5;
    v10 = v8;
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_30_2();
    *(v11 + 32) = v5;
    *(v11 + 40) = v131;
    *(v11 + 48) = 0;
    *&v8[v9] = v12;
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    v13 = OUTLINED_FUNCTION_54_0();
    v14(v13, v132);
    OUTLINED_FUNCTION_79(v134);
    OUTLINED_FUNCTION_239(qword_282F4DEE8);
    *(v6 + 24) = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
    LOBYTE(v137[0]) = 0;
    sub_21E1D1464(v137, v15, v16);
    v18 = v17;
    WFLanguageRecognizer.locale(for:)(v19, v17, v135);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v6);
    OUTLINED_FUNCTION_270(v7 + v18[194], v1 + 488);
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_167();
    swift_endAccess();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950, &unk_21E354390);
    if (OUTLINED_FUNCTION_380(v1 + 688, v21, v20, &type metadata for SimpleNumberOutput))
    {
      v22 = *(v1 + 688);
      sub_21E343100();
      v23 = sub_21E3434C0();
      sub_21E343B50();
      OUTLINED_FUNCTION_277();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_130();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v26 = swift_slowAlloc();
        v137[0] = v26;
        *v25 = 136315138;
        *(v1 + 728) = v22;
        v27 = sub_21E343830();
        v29 = sub_21E1C80B4(v27, v28, v137);

        *(v25 + 4) = v29;
        OUTLINED_FUNCTION_233(&dword_21E1BD000, v30, v31, "WFAskLLMModelSession using response from cache: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v32 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v32);

        v33 = OUTLINED_FUNCTION_190();
        v34(v33);
      }

      else
      {

        v105 = OUTLINED_FUNCTION_190();
        v106(v105);
      }

      **(v1 + 736) = v22;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_183();
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_220();

      OUTLINED_FUNCTION_46_1();
LABEL_31:
      OUTLINED_FUNCTION_361();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v1 + 1056) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v35 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v136 = swift_slowAlloc();
    v137[0] = v136;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v37 = OUTLINED_FUNCTION_29_3();
      v38(v37);
      sub_21E342C80();
      v39 = OUTLINED_FUNCTION_31_2();
      v40(v39);
    }

    v2 = *(v1 + 952);
    *(v1 + 672) = v3;
    *(v1 + 680) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780, &qword_21E3543E0);
    v41 = sub_21E343830();
    sub_21E1C80B4(v41, v42, v137);
    OUTLINED_FUNCTION_278();
    *(v36 + 4) = v4;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v43, v44, "Set request prompt locale to %{public}s");
    v45 = v136;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v46 = OUTLINED_FUNCTION_105();
    (v35)(v46);
  }

  else
  {
    v36 = *(v1 + 960);
    v45 = *(v1 + 952);

    v47 = OUTLINED_FUNCTION_104();
    (v35)(v47);
  }

  *(v1 + 1064) = v35;
  v48 = OUTLINED_FUNCTION_18_3(*(v1 + 768));
  if (v49(v48))
  {
    OUTLINED_FUNCTION_13_1();
    v50 = swift_beginAccess();
    v51 = sub_21E1D3A1C(v50);
    if (v51)
    {
      v54 = v51;
      v55 = *(v1 + 760);
      v56 = *(v1 + 752);
      LOBYTE(v137[0]) = 0;
      sub_21E1D1464(v137, v52, v53);
      OUTLINED_FUNCTION_182();

      *(v1 + 1072) = v45;
      *(v1 + 656) = v56;
      *(v1 + 664) = v55;
      v57 = swift_task_alloc();
      *(v1 + 1080) = v57;
      *v57 = v1;
      v57[1] = sub_21E1F9BE8;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_361();

      return sub_21E205100(v58, v59, v60);
    }
  }

  v63 = *(v1 + 944);
  v64 = *(v1 + 768);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v65 = *(v64 + 16);
  OUTLINED_FUNCTION_58_0(v65, v66, v67, v68, v69, v70, v71, v72, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130);
  if (v63)
  {
    sub_21E1C377C(*(v1 + 1048), &qword_27CEB8260, &unk_21E3535C0);

    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_171();

    OUTLINED_FUNCTION_8();
    goto LABEL_31;
  }

  if (sub_21E206230(v73))
  {
    sub_21E342F50();
    v74 = sub_21E342F60();
    OUTLINED_FUNCTION_0_7(v74);
    OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v110, v112, v114, v116, v118, v120, v122, v124, v126, v128);
    OUTLINED_FUNCTION_271();
    v75 = sub_21E3434C0();
    v76 = sub_21E343B50();
    OUTLINED_FUNCTION_133(v76);
    OUTLINED_FUNCTION_383();
    if (v77)
    {
      v78 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v78);
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v84 = OUTLINED_FUNCTION_70();
    v2(v84);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    sub_21E3434C0();
    v85 = sub_21E343B50();
    if (OUTLINED_FUNCTION_156(v85))
    {
      v86 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_181(v86);
      OUTLINED_FUNCTION_90(&dword_21E1BD000, v87, v88, "Applying greedy decoding");
      v89 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v89);
    }

    OUTLINED_FUNCTION_329();
    v90 = OUTLINED_FUNCTION_71();
    v2(v90);
    v91 = sub_21E342F60();
    OUTLINED_FUNCTION_52(v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8, &unk_21E352720);
    inited = swift_initStackObject();
    v93 = OUTLINED_FUNCTION_89(inited, xmmword_21E3522F0);
    v95 = OUTLINED_FUNCTION_283(v93, v94);
    OUTLINED_FUNCTION_1_8(v95, v96, v97, v98, v99, v100, v101, v102, v110, v112, v114, v116, v118, v120, v122, v124);
  }

  v103 = swift_task_alloc();
  *(v1 + 1096) = v103;
  *v103 = v1;
  OUTLINED_FUNCTION_198(v103);
  OUTLINED_FUNCTION_361();

  return sub_21E207270();
}

uint64_t sub_21E1F9BE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1088) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1FA02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1048), &qword_27CEB8260, &unk_21E3535C0);

  v34 = *(v24 + 1088);
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FA154()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1104) = v0;

  if (!v0)
  {
    *(v4 + 1112) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1FA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[131];
  (*(v24[114] + 8))(v24[115], v24[113]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[138];
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FA720()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1144) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 800) + 8))(*(v5 + 808), *(v1 + 792));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1FADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_396();
  v26(v25[111], v25[102]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260, &unk_21E3535C0);

  v40 = v25[143];
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FAF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 792) = a7;
  *(v7 + 784) = a6;
  *(v7 + 1168) = a5;
  *(v7 + 776) = a4;
  *(v7 + 768) = a3;
  *(v7 + 760) = a2;
  *(v7 + 752) = a1;
  sub_21E343820();
  *(v7 + 800) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 808) = v8;
  *(v7 + 816) = *(v8 - 8);
  *(v7 + 824) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 832) = v9;
  *(v7 + 840) = *(v9 - 8);
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  *(v7 + 904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 912) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 920) = v10;
  *(v7 + 928) = *(v10 - 8);
  *(v7 + 936) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 944) = v11;
  *(v7 + 952) = *(v11 - 8);
  *(v7 + 960) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 968) = v12;
  *(v7 + 976) = *(v12 - 8);
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1024) = v13;
  *(v7 + 1032) = *(v13 - 8);
  *(v7 + 1040) = swift_task_alloc();
  *(v7 + 1048) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1056) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1064) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FB34C);
}

uint64_t sub_21E1FBCBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1104) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1FC0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1064), &qword_27CEB8260, &unk_21E3535C0);

  v34 = *(v24 + 1104);
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FC210()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1120) = v0;

  if (!v0)
  {
    *(v4 + 1128) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1FC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[133];
  (*(v24[116] + 8))(v24[117], v24[115]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[140];
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FC7DC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1160) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 816) + 8))(*(v5 + 824), *(v1 + 808));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1FCEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_394();
  v26(v25[113], v25[104]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260, &unk_21E3535C0);

  v40 = v25[145];
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 896) = a7;
  *(v7 + 888) = a6;
  *(v7 + 106) = a5;
  *(v7 + 880) = a4;
  *(v7 + 872) = a3;
  *(v7 + 864) = a2;
  *(v7 + 856) = a1;
  sub_21E343820();
  *(v7 + 904) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 912) = v8;
  *(v7 + 920) = *(v8 - 8);
  *(v7 + 928) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 936) = v9;
  *(v7 + 944) = *(v9 - 8);
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 1016) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 1024) = v10;
  *(v7 + 1032) = *(v10 - 8);
  *(v7 + 1040) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 1048) = v11;
  *(v7 + 1056) = *(v11 - 8);
  *(v7 + 1064) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 1072) = v12;
  *(v7 + 1080) = *(v12 - 8);
  *(v7 + 1088) = swift_task_alloc();
  *(v7 + 1096) = swift_task_alloc();
  *(v7 + 1104) = swift_task_alloc();
  *(v7 + 1112) = swift_task_alloc();
  *(v7 + 1120) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1128) = v13;
  *(v7 + 1136) = *(v13 - 8);
  *(v7 + 1144) = swift_task_alloc();
  *(v7 + 1152) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FD420);
}

uint64_t sub_21E1FD420()
{
  v141 = v0;
  v4 = *(v0 + 864);
  if (v4)
  {
    v5 = *(v0 + 1160);
    v137 = *(v0 + 1152);
    v138 = *(v0 + 1168);
    v1 = *(v0 + 1144);
    v6 = *(v0 + 888);
    v135 = *(v0 + 106);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v7 = *(v6 + 16);
    OUTLINED_FUNCTION_270(v7 + OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation, v0 + 760);
    v136 = v4;
    v8 = v7;
    OUTLINED_FUNCTION_312();
    v9 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_12_5(v9, v10, v11, v12, v13, v14, v15, v16, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131, v132, v133, v134, v135);
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_282();
    v17();
    OUTLINED_FUNCTION_79(v137);
    OUTLINED_FUNCTION_239(qword_282F4DEE8);
    *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
    LOBYTE(__dst[0]) = 0;
    sub_21E1D1464(__dst, v18, v19);
    v21 = v20;
    WFLanguageRecognizer.locale(for:)(v22, v20, v138);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v5);
    OUTLINED_FUNCTION_270(v6 + v21[194], v0 + 784);
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_328(*(v0 + 888) + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_responseCache, v0 + 544);
    v23 = OUTLINED_FUNCTION_8_4();
    sub_21E1CB024(v24, v25, v23);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950, &unk_21E354390);
    if (swift_dynamicCast())
    {
      *(v0 + 105) = 0;
      memcpy(__dst, (v0 + 16), 0x5AuLL);
      sub_21E343100();
      v26 = sub_21E3434C0();
      sub_21E343B50();
      OUTLINED_FUNCTION_277();
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_130();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        __dst[12] = swift_slowAlloc();
        *v28 = 136315138;
        memcpy((v0 + 112), __dst, 0x59uLL);
        v29 = sub_21E343830();
        v31 = OUTLINED_FUNCTION_381(v29, v30);

        *(v28 + 4) = v31;
        OUTLINED_FUNCTION_233(&dword_21E1BD000, v32, v33, "WFAskLLMModelSession using response from cache: %s");
        OUTLINED_FUNCTION_348();
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v34 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v34);
      }

      v35 = OUTLINED_FUNCTION_190();
      v36(v35);

      memcpy(*(v0 + 856), __dst, 0x59uLL);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_265();

      OUTLINED_FUNCTION_46_1();
LABEL_30:
      OUTLINED_FUNCTION_408();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v0 + 1176) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v37 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v139 = swift_slowAlloc();
    __dst[0] = v139;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v39 = OUTLINED_FUNCTION_29_3();
      v40(v39);
      sub_21E342C80();
      v41 = OUTLINED_FUNCTION_31_2();
      v42(v41);
    }

    v1 = *(v0 + 1072);
    *(v0 + 824) = v2;
    *(v0 + 832) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780, &qword_21E3543E0);
    v43 = sub_21E343830();
    sub_21E1C80B4(v43, v44, __dst);
    OUTLINED_FUNCTION_278();
    *(v38 + 4) = v3;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v45, v46, "Set request prompt locale to %{public}s");
    v47 = v139;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v48 = OUTLINED_FUNCTION_105();
    (v37)(v48);
  }

  else
  {
    v38 = *(v0 + 1080);
    v47 = *(v0 + 1072);

    v49 = OUTLINED_FUNCTION_104();
    (v37)(v49);
  }

  *(v0 + 1184) = v37;
  v50 = OUTLINED_FUNCTION_18_3(*(v0 + 888));
  if (v51(v50))
  {
    OUTLINED_FUNCTION_13_1();
    v52 = swift_beginAccess();
    v53 = sub_21E1D3A1C(v52);
    if (v53)
    {
      v56 = v53;
      v57 = *(v0 + 880);
      v58 = *(v0 + 872);
      LOBYTE(__dst[0]) = 0;
      sub_21E1D1464(__dst, v54, v55);
      OUTLINED_FUNCTION_182();

      *(v0 + 1192) = v47;
      *(v0 + 808) = v58;
      *(v0 + 816) = v57;
      v59 = swift_task_alloc();
      *(v0 + 1200) = v59;
      *v59 = v0;
      v59[1] = sub_21E1FDD68;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_408();

      return sub_21E205100(v60, v61, v62);
    }
  }

  v65 = *(v0 + 1064);
  v66 = *(v0 + 888);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v67 = *(v66 + 16);
  OUTLINED_FUNCTION_58_0(v67, v68, v69, v70, v71, v72, v73, v74, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130);
  if (v65)
  {
    sub_21E1C377C(*(v0 + 1168), &qword_27CEB8260, &unk_21E3535C0);

    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_8();
    goto LABEL_30;
  }

  if (sub_21E206230(v75))
  {
    sub_21E342F50();
    v76 = sub_21E342F60();
    OUTLINED_FUNCTION_0_7(v76);
    OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v110, v112, v114, v116, v118, v120, v122, v124, v126, v128);
    OUTLINED_FUNCTION_271();
    v77 = sub_21E3434C0();
    v78 = sub_21E343B50();
    OUTLINED_FUNCTION_133(v78);
    OUTLINED_FUNCTION_388();
    if (v79)
    {
      v80 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v80);
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v86 = OUTLINED_FUNCTION_70();
    v1(v86);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    sub_21E3434C0();
    v87 = sub_21E343B50();
    if (OUTLINED_FUNCTION_156(v87))
    {
      v88 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_181(v88);
      OUTLINED_FUNCTION_90(&dword_21E1BD000, v89, v90, "Applying greedy decoding");
      v91 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v91);
    }

    OUTLINED_FUNCTION_331();
    v92 = OUTLINED_FUNCTION_71();
    v1(v92);
    v93 = sub_21E342F60();
    OUTLINED_FUNCTION_52(v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8, &unk_21E352720);
    OUTLINED_FUNCTION_387();
    v94 = swift_allocObject();
    v95 = OUTLINED_FUNCTION_89(v94, xmmword_21E3522F0);
    v97 = OUTLINED_FUNCTION_283(v95, v96);
    OUTLINED_FUNCTION_1_8(v97, v98, v99, v100, v101, v102, v103, v104, v110, v112, v114, v116, v118, v120, v122, v124);
  }

  v105 = swift_task_alloc();
  *(v0 + 1216) = v105;
  *v105 = v0;
  OUTLINED_FUNCTION_197(v105);
  OUTLINED_FUNCTION_408();

  return sub_21E207868();
}

uint64_t sub_21E1FDD68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1208) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E1FE1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1168), &qword_27CEB8260, &unk_21E3535C0);

  v34 = *(v24 + 1208);
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FE2C8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1224) = v0;

  if (!v0)
  {
    *(v4 + 1232) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E1FE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[146];
  (*(v24[129] + 8))(v24[130], v24[128]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  v37 = v24[153];
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FE90C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1264) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 920) + 8))(*(v5 + 928), *(v1 + 912));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E1FEFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_393();
  v26(v25[126], v25[117]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260, &unk_21E3535C0);

  v40 = v25[158];
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FF170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 968) = a7;
  *(v7 + 960) = a6;
  *(v7 + 1344) = a5;
  *(v7 + 952) = a4;
  *(v7 + 944) = a3;
  *(v7 + 936) = a2;
  *(v7 + 928) = a1;
  sub_21E343820();
  *(v7 + 976) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
  *(v7 + 984) = v8;
  *(v7 + 992) = *(v8 - 8);
  *(v7 + 1000) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 1008) = v9;
  *(v7 + 1016) = *(v9 - 8);
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = swift_task_alloc();
  *(v7 + 1040) = swift_task_alloc();
  *(v7 + 1048) = swift_task_alloc();
  *(v7 + 1056) = swift_task_alloc();
  *(v7 + 1064) = swift_task_alloc();
  *(v7 + 1072) = swift_task_alloc();
  *(v7 + 1080) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948, &qword_21E354388);
  *(v7 + 1088) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 1096) = v10;
  *(v7 + 1104) = *(v10 - 8);
  *(v7 + 1112) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 1120) = v11;
  *(v7 + 1128) = *(v11 - 8);
  *(v7 + 1136) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 1144) = v12;
  *(v7 + 1152) = *(v12 - 8);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();
  *(v7 + 1184) = swift_task_alloc();
  *(v7 + 1192) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1200) = v13;
  *(v7 + 1208) = *(v13 - 8);
  *(v7 + 1216) = swift_task_alloc();
  *(v7 + 1224) = type metadata accessor for WFLanguageRecognizer(0);
  *(v7 + 1232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  *(v7 + 1240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FF570);
}

uint64_t sub_21E1FFF28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1280) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E200324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1240), &qword_27CEB8260, &unk_21E3535C0);

  OUTLINED_FUNCTION_64_0(*(v24 + 1280));

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_21E200448()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1296) = v0;

  if (!v0)
  {
    *(v4 + 1304) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E200928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[155];
  (*(v24[138] + 8))(v24[139], v24[137]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260, &unk_21E3535C0);

  OUTLINED_FUNCTION_64_0(v24[162]);

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_21E200A88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 1336) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E200B80()
{
  v112 = v0;
  v106 = *(v0 + 1000);
  v109 = *(v0 + 1336);
  v1 = *(v0 + 992);
  v2 = *(v0 + 488);
  v3 = *(v0 + 504);
  v100 = *(v0 + 512);
  v103 = *(v0 + 984);
  *(v0 + 896) = *(v0 + 496);
  *(v0 + 904) = v3;
  OUTLINED_FUNCTION_14_4();
  *(v0 + 784) = v4;
  *(v0 + 792) = v5;
  *(v0 + 800) = 0;
  *(v0 + 808) = 0xE000000000000000;
  v6 = sub_21E1CB3C4();
  v7 = MEMORY[0x277D837D0];
  v91 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_68_0();
  *(v0 + 816) = OUTLINED_FUNCTION_420(v8, v9, v10, v11, v12, v13, v14, v15, v91, v6, v6, v6);
  *(v0 + 824) = v16;
  OUTLINED_FUNCTION_160();
  *(v0 + 832) = v17;
  OUTLINED_FUNCTION_159();
  *(v0 + 840) = v18;
  *(v0 + 848) = 0;
  *(v0 + 856) = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v27 = OUTLINED_FUNCTION_420(v19, v20, v21, v22, v23, v24, v25, v26, v7, v6, v6, v6);
  v29 = v28;

  *(v0 + 392) = v2;
  *(v0 + 400) = v27;
  *(v0 + 408) = v29;
  *(v0 + 416) = v100;
  (*(v1 + 8))(v106, v103);
  sub_21E342A20();
  OUTLINED_FUNCTION_234();
  swift_allocObject();
  sub_21E342A10();
  sub_21E20ECF0();
  sub_21E342A00();
  if (v109)
  {
    v30 = v109;
  }

  else
  {

    sub_21E343810();
    OUTLINED_FUNCTION_57();
    v50 = sub_21E343800();
    if (v51)
    {
      v52 = v50;
      v53 = v51;
      v108 = *(v0 + 936);
      v110 = (v0 + 392);
      v54 = *(*(v0 + 960) + 16);
      v104 = *(v0 + 1344) | 0x80;
      v55 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
      OUTLINED_FUNCTION_270(&v54[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation], v0 + 592);
      v56 = v54;
      sub_21E1C41D4();
      v57 = *(*&v54[v55] + 16);
      sub_21E1C4418(v57);
      v58 = *&v54[v55];
      *(v58 + 16) = v57 + 1;
      v59 = v58 + 24 * v57;
      *(v59 + 32) = v52;
      *(v59 + 40) = v53;
      *(v59 + 48) = v104;
      *&v54[v55] = v58;
      swift_endAccess();
      v60 = OUTLINED_FUNCTION_57();
      sub_21E1C99C4(v60, v61);

      v62 = *(v0 + 1312);
      v63 = *(v0 + 1240);
      v64 = *(v0 + 1136);
      v65 = *(v0 + 1128);
      v66 = *(v0 + 1120);
      v67 = *(v0 + 1104);
      v68 = *(v0 + 1080);
      v69 = *(v0 + 1008);
      if (v108)
      {
        v105 = *(v0 + 1112);
        v70 = *(v0 + 960);
        v71 = *(v0 + 952);
        v102 = *(v0 + 1096);
        v72 = *(v0 + 944);
        v111[3] = &type metadata for TextOrEntityOutput;
        v95 = v68;
        v97 = v62;
        v111[4] = sub_21E20ED44();
        OUTLINED_FUNCTION_387();
        v73 = swift_allocObject();
        v111[0] = v73;
        v98 = v63;
        v74 = *(v0 + 400);
        v75 = *(v0 + 408);
        v93 = v66;
        v76 = *(v0 + 416);
        *(v73 + 16) = *v110;
        *(v73 + 24) = v74;
        *(v73 + 32) = v75;
        *(v73 + 40) = v76;
        OUTLINED_FUNCTION_270(v70 + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_responseCache, v0 + 616);
        v77 = OUTLINED_FUNCTION_57();
        sub_21E1DF880(v77, v78);

        sub_21E1E89CC(v111, v72, v71);
        swift_endAccess();
        v97(v95, v69);
        (*(v67 + 8))(v105, v102);
        (*(v65 + 8))(v64, v93);
        sub_21E1C377C(v98, &qword_27CEB8260, &unk_21E3535C0);
      }

      else
      {
        v62(v68, v69);
        v83 = OUTLINED_FUNCTION_350();
        v84(v83);
        v85 = OUTLINED_FUNCTION_232();
        v86(v85);
        sub_21E1C377C(v63, &qword_27CEB8260, &unk_21E3535C0);
      }

      v87 = *(v0 + 928);
      v88 = *(v0 + 400);
      v89 = *(v0 + 408);
      *v87 = *v110;
      *(v87 + 8) = v88;
      *(v87 + 16) = v89;
      OUTLINED_FUNCTION_313();

      OUTLINED_FUNCTION_46_1();
      goto LABEL_12;
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v79, v80);
    swift_willThrow();
    v81 = OUTLINED_FUNCTION_57();
    sub_21E1C99C4(v81, v82);
  }

  sub_21E343100();
  v31 = v30;
  v32 = sub_21E3434C0();
  v33 = sub_21E343B50();

  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_130();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v30;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    OUTLINED_FUNCTION_123();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_21E1C377C(v35, &qword_27CEB80E0, qword_21E352360);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v96 = *(v0 + 1312);
  v43 = v32;
  v44 = *(v0 + 1256);
  v107 = *(v0 + 1240);
  v45 = *(v0 + 1128);
  v99 = *(v0 + 1120);
  v101 = *(v0 + 1136);
  v46 = *(v0 + 1104);
  v92 = *(v0 + 1096);
  v94 = *(v0 + 1112);

  v47 = OUTLINED_FUNCTION_155();
  v44(v47);
  swift_willThrow();

  v48 = OUTLINED_FUNCTION_134();
  v96(v48);
  (*(v46 + 8))(v94, v92);
  (*(v45 + 8))(v101, v99);
  sub_21E1C377C(v107, &qword_27CEB8260, &unk_21E3535C0);

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_8();
LABEL_12:

  return v49();
}

uint64_t sub_21E2013BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[164];
  v42 = v24[155];
  v26 = v24[141];
  v27 = v24[140];
  v40 = v24[142];
  v41 = v24[121];
  (*(v24[124] + 8))(v24[125], v24[123]);
  v28 = OUTLINED_FUNCTION_350();
  v25(v28);
  v29 = OUTLINED_FUNCTION_151();
  v30(v29);
  (*(v26 + 8))(v40, v27);
  sub_21E1C377C(v42, &qword_27CEB8260, &unk_21E3535C0);

  OUTLINED_FUNCTION_64_0(v24[167]);

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, v41, v42, a22, a23, a24);
}

uint64_t WFAskLLMModelSession.writeNewList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E201580()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F1D10(v3, v4, v5, 4, v6, v7, v7);
}

uint64_t sub_21E201614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_21E3434D0();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2016E4);
}

uint64_t sub_21E2016E4()
{
  OUTLINED_FUNCTION_20();
  if (sub_21E1E2280(v0[17] + 32))
  {
    sub_21E343100();
    v1 = sub_21E3434C0();
    v2 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v2))
    {
      v3 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v3);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v9 = OUTLINED_FUNCTION_7();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    v0[23] = v11;
    *v11 = v12;
    v11[1] = sub_21E201A54;
    v13 = v0[16];

    return sub_21E1EBD3C((v0 + 14), v13, 1);
  }

  else
  {
    sub_21E343100();
    v15 = sub_21E3434C0();
    v16 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v16))
    {
      v17 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v17);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v23 = OUTLINED_FUNCTION_7();
    v24(v23);
    v25 = swift_task_alloc();
    v0[22] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v26, v27, MEMORY[0x277D71A70]);
    sub_21E20F3D4();
    OUTLINED_FUNCTION_128();
    *v25 = v28;
    v25[1] = sub_21E20193C;
    OUTLINED_FUNCTION_40_0();

    return MEMORY[0x282165A90](v29);
  }
}

uint64_t sub_21E20193C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E201A54()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E201D1C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t WFAskLLMModelSession.writeEntityList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E201D9C()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F3B7C(v3, v4, v5, 0xE000000000000000, v6, v7, v7);
}

uint64_t sub_21E201E30(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E201F00);
}

uint64_t sub_21E2021CC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E20229C);
}

uint64_t sub_21E202568(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E202638);
}

uint64_t sub_21E202904(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2029D4);
}

uint64_t sub_21E202CA0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E202D70);
}

uint64_t sub_21E20303C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E203154()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E20326C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E20333C);
}

uint64_t WFAskLLMModelSession.writeAsBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203624()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F55E0(v3, v4, v5, 3, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E2036D4()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F743C(v3, v4, v5, 3, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsNumber(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203784()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F8E8C(v3, v4, v5, 2, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsDictionary(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203834()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FAF4C(v3, v4, v5, 5, v6, v7, v7);
}

uint64_t sub_21E2038C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_21E343820();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v5 = sub_21E3434D0();
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E203A38);
}

uint64_t sub_21E203A38(uint64_t a1)
{
  OUTLINED_FUNCTION_212();
  v2 = sub_21E1E2280(v1[40] + 32);
  v1[50] = *MEMORY[0x277D7A440];
  if (v2)
  {
    sub_21E343100();
    v3 = sub_21E3434C0();
    v4 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v4))
    {
      v5 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v5);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v11 = v1[45];

    v1[55] = *(v11 + 8);
    v12 = OUTLINED_FUNCTION_7();
    v13(v12);
    v14 = swift_task_alloc();
    v1[56] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v16, v17, MEMORY[0x277D71A40]);
    OUTLINED_FUNCTION_405();
    *v14 = v18;
    v19 = sub_21E204194;
  }

  else
  {
    sub_21E343100();
    v20 = sub_21E3434C0();
    v21 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v21))
    {
      v22 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v22);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v28 = OUTLINED_FUNCTION_7();
    v29(v28);
    v14 = swift_task_alloc();
    v1[51] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940, &qword_21E354380);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v30, v31, MEMORY[0x277D71A40]);
    OUTLINED_FUNCTION_405();
    *v14 = v32;
    v19 = sub_21E203CD0;
  }

  v14[1] = v19;

  return MEMORY[0x282165A78](v15);
}

uint64_t sub_21E203CD0(uint64_t a1)
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v3 = *v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  v3[52] = v5;
  v3[53] = v6;
  v3[54] = v1;

  if (v1)
  {

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_364();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v16);
  }
}

uint64_t sub_21E203E74()
{
  OUTLINED_FUNCTION_279();
  sub_21E343810();
  OUTLINED_FUNCTION_115();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_190();
  v4(v3);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v5 = objc_opt_self();
  OUTLINED_FUNCTION_8_4();
  v6 = sub_21E342BC0();
  v0[36] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v0 + 36];

  v8 = v0[36];
  if (!v7)
  {
    v14 = v8;

    sub_21E342B50();

    swift_willThrow();
    goto LABEL_7;
  }

  v9 = v8;
  sub_21E343CE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38, &unk_21E354498);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_8_4();
    sub_21E1D8430(v17, v18);
LABEL_9:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    v20 = v19;
    sub_21E343D20();
    MEMORY[0x223D55250](0xD00000000000003DLL, 0x800000021E35B8B0);
    v21 = OUTLINED_FUNCTION_3_0();
    MEMORY[0x223D55250](v21);

    MEMORY[0x223D55250](46, 0xE100000000000000);
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 56) = 2;
    swift_willThrow();
    goto LABEL_10;
  }

  v10 = v0[54];

  OUTLINED_FUNCTION_23();
  sub_21E204AD4(v11, v12, v13);
  if (v10)
  {

LABEL_7:
    v15 = OUTLINED_FUNCTION_8_4();
    sub_21E1D8430(v15, v16);
LABEL_10:

    OUTLINED_FUNCTION_8();
    goto LABEL_11;
  }

  v24 = OUTLINED_FUNCTION_8_4();
  sub_21E1D8430(v24, v25);

  v26 = v0[38];
  *v26 = v27;
  v26[1] = v28;

  OUTLINED_FUNCTION_8();
LABEL_11:

  return v22();
}

uint64_t sub_21E204194(uint64_t a1)
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v3 = *v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  v3[57] = v5;
  v3[58] = v6;
  v3[59] = v1;

  if (v1)
  {

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_364();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v16);
  }
}

uint64_t sub_21E204338()
{
  v82 = v0;
  v81[2] = *MEMORY[0x277D85DE8];
  sub_21E343100();

  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();

  if (os_log_type_enabled(v1, v2))
  {
    v79 = *(v0 + 440);
    OUTLINED_FUNCTION_130();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v4 = swift_slowAlloc();
    v81[0] = v4;
    *v3 = 136315138;
    v5 = OUTLINED_FUNCTION_137();
    *(v3 + 4) = sub_21E1C80B4(v5, v6, v7);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_355(v8, v9, v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v12 = OUTLINED_FUNCTION_7();
    v79(v12);
  }

  else
  {
    v13 = *(v0 + 440);

    v14 = OUTLINED_FUNCTION_7();
    v13(v14);
  }

  v15 = *(v0 + 328);
  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v16 = OUTLINED_FUNCTION_219();
  v17(v16, v15);
  OUTLINED_FUNCTION_268();
  if (!v28 & v18)
  {
    goto LABEL_22;
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_134();
  v20 = sub_21E342BC0();
  *(v0 + 272) = 0;
  v21 = [v19 JSONObjectWithData:v20 options:0 error:v0 + 272];

  v22 = *(v0 + 272);
  if (!v21)
  {
    v35 = v22;
    sub_21E342B50();

    goto LABEL_17;
  }

  v23 = v22;
  sub_21E343CE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38, &unk_21E354498);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v38, v39);
LABEL_22:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v44, v45);
    swift_willThrow();
    goto LABEL_23;
  }

  v24 = *(v0 + 280);
  v25 = OUTLINED_FUNCTION_75();
  sub_21E1CAF20(v24, (v0 + 48), v25);
  if (!*(v0 + 72))
  {
    v40 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v40, v41);

    sub_21E1C377C(v0 + 48, &unk_27CEB9230, &qword_21E353BD0);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v42, v43);

    goto LABEL_22;
  }

  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = v26 == 0x656661736E75 && v27 == 0xE600000000000000;
  if (v28 || (OUTLINED_FUNCTION_365(0x656661736E75, 0xE600000000000000) & 1) != 0)
  {

    v29 = *(v0 + 320);

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_303((v29 + 32));
    v30 = OUTLINED_FUNCTION_184();
    v31(v30);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v32 = *(v29 + 16);
    v33 = xmmword_21E354130;
LABEL_15:
    OUTLINED_FUNCTION_22_4(v33);
    swift_willThrow();
    v34 = v32;
LABEL_18:
    v36 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v36, v37);
LABEL_23:

    OUTLINED_FUNCTION_8();
    goto LABEL_24;
  }

  v48 = v26 == 0xD000000000000010 && 0x800000021E35B7F0 == v27;
  if (!v48 && (OUTLINED_FUNCTION_365(0xD000000000000010, 0x800000021E35B7F0) & 1) == 0)
  {
    if (v26 == 1701208435 && v27 == 0xE400000000000000)
    {

      goto LABEL_44;
    }

    v59 = OUTLINED_FUNCTION_365(1701208435, 0xE400000000000000);

    if (v59)
    {
      goto LABEL_44;
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v60, v61);
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  if ((sub_21E204D50(v49) & 1) == 0)
  {
    v55 = *(v0 + 320);

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_303((v55 + 32));
    v56 = OUTLINED_FUNCTION_184();
    v57(v56);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v32 = *(v55 + 16);
    v33 = xmmword_21E354140;
    goto LABEL_15;
  }

  sub_21E343100();
  v50 = sub_21E3434C0();
  v51 = sub_21E343B40();
  v52 = OUTLINED_FUNCTION_32(v51);
  v78 = *(v0 + 368);
  v80 = *(v0 + 440);
  v53 = *(v0 + 352);
  if (v52)
  {
    v54 = OUTLINED_FUNCTION_31();
    *v54 = 0;
    _os_log_impl(&dword_21E1BD000, v50, v51, "Ignoring handle_with_care in safety token v2 response due to feature flag enabled", v54, 2u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v80(v78, v53);
LABEL_44:
  v62 = *(v0 + 472);
  sub_21E204AD4(v24, 0xE800000000000000, v81);
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v63, v64);

    goto LABEL_23;
  }

  v65 = v81[1];
  *(v0 + 176) = v81[0];
  *(v0 + 184) = v65;
  OUTLINED_FUNCTION_14_4();
  *(v0 + 192) = 0xD000000000000012;
  *(v0 + 200) = v66;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  sub_21E1CB3C4();
  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_68_0();
  v67 = sub_21E343CB0();
  v69 = v68;

  *(v0 + 224) = v67;
  *(v0 + 232) = v69;
  OUTLINED_FUNCTION_160();
  *(v0 + 240) = v70;
  OUTLINED_FUNCTION_159();
  *(v0 + 248) = v71;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v72 = sub_21E343CB0();
  v74 = v73;
  v75 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v75, v76);

  v77 = *(v0 + 304);
  *v77 = v72;
  v77[1] = v74;

  OUTLINED_FUNCTION_8();
LABEL_24:

  return v46();
}

uint64_t sub_21E204AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v6 = sub_21E343820();
  v7 = OUTLINED_FUNCTION_28_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  if (!a2)
  {

    goto LABEL_6;
  }

  v8 = OUTLINED_FUNCTION_137();
  sub_21E1CAF20(a1, v9, v8);
  if (!v27[3])
  {
    sub_21E1C377C(v27, &unk_27CEB9230, &qword_21E353BD0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38, &unk_21E354498);
  if (!swift_dynamicCast())
  {
LABEL_10:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_8_5(v21, "Cannot get valid dictionary response");
    return swift_willThrow();
  }

LABEL_6:
  v10 = objc_opt_self();
  v11 = sub_21E343730();

  v27[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:v27];

  v13 = v27[0];
  if (!v12)
  {
    v22 = v13;
    sub_21E342B50();

    return swift_willThrow();
  }

  sub_21E342BF0();

  sub_21E343810();
  OUTLINED_FUNCTION_390();
  v14 = sub_21E343800();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = OUTLINED_FUNCTION_390();
    result = sub_21E1C99C4(v18, v19);
    *a3 = v16;
    a3[1] = v17;
  }

  else
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v23, v24);
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_390();
    return sub_21E1C99C4(v25, v26);
  }

  return result;
}

id sub_21E204D50(uint64_t a1)
{
  if (!VCIsInternalBuild())
  {
    return 0;
  }

  v1 = sub_21E3437E0();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_21E232D14(v1, v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178, &unk_21E3524C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000021E35B780;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_21E343760();
  v8 = sub_21E343730();

  [v6 registerDefaults_];

  v9 = sub_21E3437A0();
  v10 = [v6 BOOLForKey_];

  return v10;
}

uint64_t WFAskLLMModelSession.writeAsDate(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E204EDC()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FD020(v3, v4, v5, 7, v6, v7, v7);
}

uint64_t sub_21E204F70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t WFAskLLMModelSession.writeAsTextOrEntity(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E20506C()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FF170(v3, v4, v5, 6, v6, v7, v7);
}

uint64_t sub_21E205100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a2;
  v4[37] = v3;
  v4[35] = a1;
  v6 = sub_21E3434D0();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *(a3 + 8);
  v4[47] = v7;
  v4[48] = v8;

  return MEMORY[0x2822009F8](sub_21E205220);
}

uint64_t sub_21E205220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_407();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[37];
  __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  if (a12)
  {
    v30 = sub_21E343F80();

    if ((v30 & 1) == 0)
    {
      v31 = [objc_allocWithZone(MEMORY[0x277D4D368]) init];
      v24[49] = v31;
      OUTLINED_FUNCTION_236();
      v32 = sub_21E3437A0();
      [v31 setText_];

      [v31 setKeepGoing_];
      [v31 setStyle_];
      sub_21E20EE08();
      __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
      v33 = OUTLINED_FUNCTION_280();
      v34(v33);
      v35 = sub_21E20C5CC();
      v24[50] = v35;
      __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
      v36 = OUTLINED_FUNCTION_280();
      v37(v36);
      v38 = sub_21E3437A0();

      [v35 setModelManagerServicesUseCaseID_];

      [v35 setMode_];
      [v35 setBackends_];
      v24[51] = *MEMORY[0x277D7A440];
      sub_21E343100();

      v39 = sub_21E3434C0();
      v40 = sub_21E343B50();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v24[46];
      v43 = v24[38];
      v44 = v24[39];
      if (v41)
      {
        v77 = v24[36];
        v45 = v31;
        v46 = v24[35];
        OUTLINED_FUNCTION_130();
        v79 = v42;
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v78 = v43;
        v48 = swift_slowAlloc();
        a12 = v48;
        *v47 = 136315138;
        v49 = v46;
        v31 = v45;
        *(v47 + 4) = sub_21E1C80B4(v49, v77, &a12);
        _os_log_impl(&dword_21E1BD000, v39, v40, "sanitizeInputText: inputText=%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v50 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v50);

        v51 = *(v44 + 8);
        v51(v79, v78);
      }

      else
      {

        v51 = *(v44 + 8);
        v51(v42, v43);
      }

      v24[52] = v51;
      v62 = objc_allocWithZone(MEMORY[0x277D4D358]);
      v63 = sub_21E20D948(v35);
      v24[53] = v63;
      v73 = v63;
      v24[2] = v24;
      v24[7] = v24 + 32;
      v24[3] = sub_21E2058DC;
      v74 = swift_continuation_init();
      v24[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8988, &qword_21E3543E8);
      v24[10] = MEMORY[0x277D85DD0];
      v24[11] = 1107296256;
      v24[12] = sub_21E20C640;
      v24[13] = &block_descriptor_1;
      v24[14] = v74;
      [v73 sanitizeRequestAsynchronously:v31 completionHandler:v24 + 10];
      OUTLINED_FUNCTION_335();

      return MEMORY[0x282200938](v75);
    }
  }

  else
  {
  }

  sub_21E343100();
  v52 = sub_21E3434C0();
  v53 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v53))
  {
    v54 = OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_147(v54);
    OUTLINED_FUNCTION_45_0();
    _os_log_impl(v55, v56, v57, v58, v59, 2u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v60 = OUTLINED_FUNCTION_7();
  v61(v60);
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_335();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E2058DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = *(v3 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E2059D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void *, uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_407();
  v17 = *(v16 + 424);
  v18 = *(v16 + 256);

  LODWORD(v17) = [v18 adapterViolationCategory];
  if (v17 != 20)
  {
    goto LABEL_11;
  }

  if (sub_21E1E20BC())
  {
    v19 = sub_21E343F80();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  sub_21E1C4248(*(v16 + 296) + 32, v16 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  OUTLINED_FUNCTION_173();
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {

    if (sub_21E204D50(v20))
    {
      sub_21E343100();
      v21 = sub_21E3434C0();
      v22 = sub_21E343B40();
      v23 = OUTLINED_FUNCTION_32(v22);
      v25 = *(v16 + 416);
      v24 = *(v16 + 424);
      v26 = *(v16 + 392);
      v27 = *(v16 + 400);
      a11 = *(v16 + 336);
      v28 = *(v16 + 304);
      if (v23)
      {
        v29 = OUTLINED_FUNCTION_31();
        a10 = v25;
        OUTLINED_FUNCTION_400(v29);
        v31 = "v1 adapter: ignoring handleWithCare violation category from SCMLTextSanitizer due to feature flag enabled";
LABEL_10:
        OUTLINED_FUNCTION_367(&dword_21E1BD000, v30, v22, v31);
        v32 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v32);

        a10(a11, v28);
LABEL_13:
        OUTLINED_FUNCTION_414();

        OUTLINED_FUNCTION_46_1();
        goto LABEL_19;
      }
    }

    else
    {
      sub_21E343100();
      v62 = sub_21E3434C0();
      v63 = sub_21E343B60();
      if (OUTLINED_FUNCTION_162(v63))
      {
        *OUTLINED_FUNCTION_31() = 0;
        OUTLINED_FUNCTION_94();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v69 = *(v16 + 416);
      v70 = *(v16 + 384);

      v71 = OUTLINED_FUNCTION_190();
      v69(v71);
      if (v70 == 6 || v70 == 1)
      {
        v74 = *(v16 + 424);
        v76 = *(v16 + 392);
        v75 = *(v16 + 400);

        goto LABEL_13;
      }

      if (v70)
      {
        v77 = *(v16 + 424);
        a10 = *(v16 + 400);
        a11 = *(v16 + 392);
        v78 = *(v16 + 296);
        sub_21E1E8290();
        OUTLINED_FUNCTION_138();
        swift_allocError();
        v80 = v79;
        v81 = [v18 adapterViolationCategory];
        OUTLINED_FUNCTION_303((v78 + 32));
        v82 = OUTLINED_FUNCTION_184();
        v83(v82);
        OUTLINED_FUNCTION_13_1();
        swift_beginAccess();
        v84 = *(v78 + 16);
        *v80 = v81;
        *(v80 + 8) = 0;
        *(v80 + 16) = 1;
        *(v80 + 17) = HIBYTE(a12);
        *(v80 + 24) = v84;
        OUTLINED_FUNCTION_78(2);
        swift_willThrow();
        v85 = v84;

        goto LABEL_18;
      }

      sub_21E343100();
      v21 = sub_21E3434C0();
      v22 = sub_21E343B70();
      v72 = OUTLINED_FUNCTION_32(v22);
      v25 = *(v16 + 416);
      v24 = *(v16 + 424);
      v26 = *(v16 + 392);
      v27 = *(v16 + 400);
      a11 = *(v16 + 344);
      v28 = *(v16 + 304);
      if (v72)
      {
        v73 = OUTLINED_FUNCTION_31();
        a10 = v25;
        OUTLINED_FUNCTION_400(v73);
        v31 = "The text input sanitizer should never run with an automatic result type";
        goto LABEL_10;
      }
    }

    v25(a11, v28);
    goto LABEL_13;
  }

LABEL_11:
  if ([v18 safe])
  {
    v34 = *(v16 + 392);
    v33 = *(v16 + 400);

    goto LABEL_13;
  }

  sub_21E343100();
  v18 = v18;
  v35 = sub_21E3434C0();
  v36 = sub_21E343B60();
  if (OUTLINED_FUNCTION_162(v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    v37[1] = [v18 adapterViolationCategory];

    OUTLINED_FUNCTION_94();
    _os_log_impl(v38, v39, v40, v41, v42, 8u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  else
  {

    v35 = v18;
  }

  v43 = *(v16 + 416);
  a9 = *(v16 + 424);
  a10 = *(v16 + 400);
  a11 = *(v16 + 392);
  v44 = *(v16 + 296);

  v45 = OUTLINED_FUNCTION_190();
  v43(v45);
  sub_21E1E8290();
  OUTLINED_FUNCTION_138();
  swift_allocError();
  v47 = v46;
  v48 = [v18 &selRef__getWebArchiveDataWithCompletionHandler_ + 2];
  OUTLINED_FUNCTION_303((v44 + 32));
  v49 = OUTLINED_FUNCTION_184();
  v50(v49);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v51 = *(v44 + 16);
  *v47 = v48;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  *(v47 + 17) = BYTE6(a12);
  *(v47 + 24) = v51;
  OUTLINED_FUNCTION_78(2);
  swift_willThrow();
  v52 = v51;

LABEL_18:

  OUTLINED_FUNCTION_8();
LABEL_19:
  OUTLINED_FUNCTION_335();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E205FBC(uint64_t a1)
{
  v3 = v1[53];
  v2 = v1[54];
  swift_willThrow();

  OUTLINED_FUNCTION_271();
  v4 = v2;
  v5 = sub_21E3434C0();
  v6 = sub_21E343B60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[54];
    OUTLINED_FUNCTION_130();
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_205();
    *v2 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v10);
    _os_log_impl(&dword_21E1BD000, v5, v6, "SCMLTextSanitizer.sanitizeRequest failed with error: %@", v2, 0xCu);
    sub_21E1C377C(v8, &qword_27CEB80E0, qword_21E352360);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v12 = v1[53];
  v11 = v1[54];
  v13 = v1[52];
  v14 = v1[49];
  v15 = v1[50];
  v16 = v1[38];

  v17 = OUTLINED_FUNCTION_7();
  v13(v17);
  sub_21E1E8290();
  OUTLINED_FUNCTION_138();
  swift_allocError();
  OUTLINED_FUNCTION_182();
  sub_21E343D20();

  OUTLINED_FUNCTION_14_4();
  v22 = v18;
  swift_getErrorValue();
  v19 = sub_21E343FD0();
  MEMORY[0x223D55250](v19);

  *v16 = 0xD00000000000001FLL;
  *(v16 + 8) = v22;
  *(v16 + 56) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_8();

  return v20();
}

uint64_t sub_21E206230(uint64_t a1)
{
  if (!VCIsInternalBuild())
  {
    return 0;
  }

  v1 = sub_21E3437E0();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_21E232D14(v1, v3);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178, &unk_21E3524C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000021E35B810;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_21E343760();
  v8 = sub_21E343730();

  [v6 registerDefaults_];

  v9 = sub_21E3437A0();
  v10 = [v6 BOOLForKey_];

  return v10;
}

uint64_t sub_21E2063A8()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2064D0);
}

uint64_t sub_21E20669C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2067C4);
}

uint64_t sub_21E206990()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E206AB8);
}

uint64_t sub_21E206C8C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E206DB4);
}

uint64_t sub_21E206F84()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2070AC);
}

uint64_t sub_21E207270()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207398);
}

uint64_t sub_21E207568()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207690);
}

uint64_t sub_21E207868()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207990);
}

uint64_t sub_21E207B5C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207C84);
}

uint64_t sub_21E207E60(uint64_t a1)
{
  v2 = sub_21E3435D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21E1D5ADC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21E1D5ADC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D42DE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_21E1C2B8C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_21E20802C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_21E3430D0();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E342FC0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21E3430B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v16 + 56))(&v30, v17, v16);
  if (v31)
  {
    sub_21E1C2B8C(&v30, v32);
    v18 = v33;
    v19 = v34;
    v20 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v26 = v3;
    MEMORY[0x28223BE20](v20);
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    MEMORY[0x223D54900](v22, v18, v19);
    sub_21E3430A0();
    (*(v10 + 16))(v13, v15, v9);
    sub_21E3430C0();
    sub_21E343530();
    sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
    sub_21E343640();
    (*(v27 + 8))(v7, v28);
    (*(v10 + 8))(v15, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_21E1C377C(&v30, &qword_27CEB89F0, &unk_21E354448);
    v25 = sub_21E343530();
    return (*(*(v25 - 8) + 16))(v29, v3, v25);
  }
}

uint64_t sub_21E2083EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21E343090();
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E343000();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21E342FE0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21E343030();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_21E343050();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if ((*(v14 + 40))(v13, v14))
  {
    v26 = v2;
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 64))(&v30, v15, v16);
    if (v31)
    {
      sub_21E1C2B8C(&v30, v32);
      v17 = v33;
      v18 = v34;
      v19 = __swift_project_boxed_opaque_existential_1(v32, v33);
      MEMORY[0x28223BE20](v19);
      v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      MEMORY[0x223D54920](v21, v17, v18);
      sub_21E343020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89E8, &qword_21E354440);
      sub_21E343080();
      *(swift_allocObject() + 16) = xmmword_21E3522F0;
      sub_21E343070();
      sub_21E343060();
      sub_21E342FF0();
      sub_21E343040();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    else
    {
      sub_21E1C377C(&v30, &qword_27CEB89E0, &qword_21E354438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89E8, &qword_21E354440);
      sub_21E343080();
      *(swift_allocObject() + 16) = xmmword_21E3522F0;
      sub_21E343070();
      sub_21E343060();
      sub_21E342FF0();
      sub_21E343010();
    }

    sub_21E343530();
    sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
    sub_21E343660();
    return (*(v27 + 8))(v12, v28);
  }

  else
  {
    v23 = sub_21E343530();
    v24 = *(*(v23 - 8) + 16);

    return v24(a2, v2, v23);
  }
}

uint64_t sub_21E20897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21E343420();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v45 - v10);
  v12 = sub_21E3434D0();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  if (sub_21E1E1F98())
  {
    v46 = a2;
    v47 = v2;
    sub_21E1C4248(a1, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
    type metadata accessor for WFAFMDevice3BModel();
    if (swift_dynamicCast())
    {

      sub_21E343100();
      v24 = sub_21E3434C0();
      v25 = sub_21E343B50();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_21E1BD000, v24, v25, "Not applying any constraint for Text output using 3B model", v26, 2u);
        MEMORY[0x223D57360](v26, -1, -1);
      }

      (*(v51 + 8))(v23, v52);
LABEL_17:
      v39 = sub_21E343530();
      return (*(*(v39 - 8) + 16))(v46, v47, v39);
    }

    v30 = sub_21E1E21F0(a1);
    if (!v30)
    {
      sub_21E343100();
      v36 = sub_21E3434C0();
      v37 = sub_21E343B50();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_21E1BD000, v36, v37, "Not applying any constraint", v38, 2u);
        MEMORY[0x223D57360](v38, -1, -1);
      }

      (*(v51 + 8))(v21, v52);
      goto LABEL_17;
    }

    if (v30 == 1)
    {
      sub_21E343100();
      v31 = sub_21E3434C0();
      v32 = sub_21E343B50();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v53[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_21E1C80B4(0x7074754F74786554, 0xEA00000000007475, v53);
        _os_log_impl(&dword_21E1BD000, v31, v32, "Applying schema identifier to server %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x223D57360](v34, -1, -1);
        MEMORY[0x223D57360](v33, -1, -1);
      }

      (*(v51 + 8))(v18, v52);
      v35 = v48;
      *v11 = 0x7074754F74786554;
      v11[1] = 0xEA00000000007475;
      (*(v35 + 104))(v11, *MEMORY[0x277D0E548], v9);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v35 + 8))(v11, v9);
    }

    else
    {
      sub_21E343100();
      v40 = sub_21E3434C0();
      v41 = sub_21E343B50();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_21E1BD000, v40, v41, "Applying schema directly", v42, 2u);
        MEMORY[0x223D57360](v42, -1, -1);
      }

      (*(v51 + 8))(v15, v52);
      v43 = sub_21E1E2280(a1);
      v44 = (v50 + 8);
      if (v43)
      {
        sub_21E20D014();
      }

      else
      {
        sub_21E343890();
      }

      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343690();
      return (*v44)(v8, v49);
    }
  }

  else
  {
    v27 = sub_21E343530();
    v28 = *(*(v27 - 8) + 16);

    return v28(a2, v2, v27);
  }
}

uint64_t sub_21E209098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7074754F7473694CLL, 0xEA00000000007475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0x7074754F7473694CLL;
      v9[1] = 0xEA00000000007475;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for ListOutput, &qword_27CEB8B08, &qword_21E354570, sub_21E20F3D4);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FA8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B28);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E209748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7365697469746E45, 0xEE0074757074754FLL, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      strcpy(v9, "EntitiesOutput");
      v9[15] = -18;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for EntitiesOutput, &qword_27CEB8AD0, &qword_21E354540, sub_21E20F32C);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B40);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E209E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x4F6E61656C6F6F42, 0xED00007475707475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      strcpy(v9, "BooleanOutput");
      *(v9 + 7) = -4864;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for BooleanOutput, &qword_27CEB8AA8, &qword_21E354518, sub_21E20F284);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FC0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B70);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20A4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000015, 0x800000021E35B990, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000015;
      v9[1] = 0x800000021E35B990;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for AdvancedBooleanOutput, &qword_27CEB8A80, &qword_21E3544F0, sub_21E20F1DC);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FB8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8B58);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20AB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000012, 0x800000021E35B970, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000012;
      v9[1] = 0x800000021E35B970;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for SimpleNumberOutput, &qword_27CEB8A58, &qword_21E3544C8, sub_21E20F134);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FD0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8BA0);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_21E343420();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v34 - v7);
  v39 = sub_21E3434D0();
  v9 = *(v39 - 8);
  v10 = MEMORY[0x28223BE20](v39);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_21E1C4248(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v18 = sub_21E1E21F0(a1);
  if (v18)
  {
    if (v18 == 1)
    {
      sub_21E343100();
      v19 = sub_21E3434C0();
      v20 = sub_21E343B50();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_21E1C80B4(0xD000000000000010, 0x800000021E35B950, v40);
        _os_log_impl(&dword_21E1BD000, v19, v20, "Applying schema identifier to server %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x223D57360](v22, -1, -1);
        MEMORY[0x223D57360](v21, -1, -1);
      }

      (*(v9 + 8))(v15, v39);
      v23 = v35;
      *v8 = 0xD000000000000010;
      v8[1] = 0x800000021E35B950;
      (*(v23 + 104))(v8, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v23 + 8))(v8, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v9 + 8))(v12, v39);
      v32 = sub_21E1E2280(a1);
      v33 = (v36 + 8);
      if (v32)
      {
        sub_21E20D4FC(&type metadata for DictionaryOutput, &qword_27CEB8A40, &qword_21E3544A8, sub_21E20F08C);
      }

      else
      {
        static DictionaryOutput.schema.getter(v5);
      }

      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343690();
      return (*v33)(v5, v3);
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v9 + 8))(v17, v39);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v37, v38, v28);
  }
}

uint64_t sub_21E20B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7074754F65746144, 0xEA00000000007475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0x7074754F65746144;
      v9[1] = 0xEA00000000007475;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for DateOutput, &qword_27CEB8A10, &qword_21E354478, sub_21E20EFE4);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FE0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8BD0);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8, &unk_21E354410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498, &qword_21E3543C0);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000012, 0x800000021E35B7D0, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000012;
      v9[1] = 0x800000021E35B7D0;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for TextOrEntityOutput, &qword_27CEB8990, &qword_21E354400, sub_21E20ED44);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8BB8);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

id sub_21E20C5CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21E3437A0();

  v2 = [v0 initWithModelManagerServicesUseCaseID_];

  return v2;
}

uint64_t *sub_21E20C640(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_21E20C6D0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_21E20C73C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E20C6D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8, &qword_21E355570);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t WFAskLLMModelSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  sub_21E1C377C(v0 + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale, &qword_27CEB8260, &unk_21E3535C0);

  return v0;
}

uint64_t WFAskLLMModelSession.__deallocating_deinit()
{
  WFAskLLMModelSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21E20C840(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E20C8E8;

  return WFAskLLMModelSession.generateTextResponse(userPrompt:isFinalRequest:)(a1, a2);
}

uint64_t sub_21E20C8E8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_294();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_3_0();
  }

  return v5(v4);
}

uint64_t sub_21E20C9DC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeNewList(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CA90(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeEntityList(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CB44(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsBoolean(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CBF8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CCAC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsDictionary(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CD60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsNumber(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CE14(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsTextOrEntity(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CEC8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C7A24;

  return WFAskLLMModelSession.writeAsDate(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return WFAskLLMModelSession.registerDocuments(_:)();
}

uint64_t sub_21E20D014()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8B20, &qword_21E354598);
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0, &unk_21E3545C0);
  sub_21E343420();
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8, &unk_21E354420);
  sub_21E343410();
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0, &qword_21E3545D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8, &qword_21E354430);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343400();
  sub_21E343380();
  return sub_21E343390();
}

uint64_t sub_21E20D4FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0, &unk_21E3545C0);
  v4 = sub_21E343420();
  OUTLINED_FUNCTION_62_0(v4);
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8, &unk_21E354420);
  v5 = sub_21E343410();
  OUTLINED_FUNCTION_62_0(v5);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0, &qword_21E3545D0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8, &qword_21E354430);
  OUTLINED_FUNCTION_62_0(v6);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  v7 = sub_21E343400();
  a4(v7);
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  OUTLINED_FUNCTION_13_1();
  return sub_21E343390();
}

id sub_21E20D948(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithConfiguration:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_21E342B50();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_21E20DA10()
{
  result = qword_27CEB8910;
  if (!qword_27CEB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8910);
  }

  return result;
}

unint64_t sub_21E20DAB0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21E20DAD4(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v4 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0, &qword_21E352528);
  result = _swift_isClassOrObjCExistentialType();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a3;
  }

  if (*(v5 + 16) <= v4)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21E20DB3C(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0, &qword_21E352528);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = sub_21E343E00();
    v18 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_21E343D20();
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v18 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21E343D20();
  v15 = "utput";
  v16 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x223D55250](v16, v15 | 0x8000000000000000);
  MEMORY[0x223D55250](0xD000000000000057, 0x800000021E35BA10);
  MEMORY[0x223D55250](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v17 = sub_21E3440B0();
  MEMORY[0x223D55250](v17);

  result = sub_21E343DE0();
  __break(1u);
  return result;
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.generateTextResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_240();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = (*(v1 + 16) + **(v1 + 16));
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_21E20DF38;

  return v11(v8, v6, v4, v2);
}

uint64_t sub_21E20DF38()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_294();
  v3 = OUTLINED_FUNCTION_3_0();

  return v4(v3);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeNewList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeEntityList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsDictionary(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsNumber(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsTextOrEntity(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsDate(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.registerDocuments(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_96();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21E1C9060;

  return v11(v7, v5, v3);
}

uint64_t type metadata accessor for WFAskLLMModelSession(uint64_t a1)
{
  result = qword_27CEB8930;
  if (!qword_27CEB8930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E20E918(uint64_t a1)
{
  sub_21E1DDBB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21E20EA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_21E20EA60@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_21E1E7780(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8860, &qword_21E3543F0);
    sub_21E343DA0();
    sub_21E1DFA50(*(*(v8 + 48) + 16 * v6), *(*(v8 + 48) + 16 * v6 + 8));
    sub_21E1C2B8C((*(v8 + 56) + 40 * v6), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8908, &unk_21E354178);
    sub_21E20DA10();
    sub_21E343DC0();
    *v2 = v8;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21E20EB60(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89F8, &qword_21E354458);
  result = sub_21E343D00();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_21E344020();

    sub_21E3438A0();
    result = sub_21E344040();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_21E343F80() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21E20ECF0()
{
  result = qword_27CEB8970;
  if (!qword_27CEB8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8970);
  }

  return result;
}

unint64_t sub_21E20ED44()
{
  result = qword_27CEB8978;
  if (!qword_27CEB8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8978);
  }

  return result;
}

uint64_t sub_21E20ED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260, &unk_21E3535C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E20EE08()
{
  result = qword_27CEB8980;
  if (!qword_27CEB8980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8980);
  }

  return result;
}

uint64_t sub_21E20EE78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E20EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

void sub_21E20EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21E20EF90()
{
  result = qword_27CEB8A00;
  if (!qword_27CEB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A00);
  }

  return result;
}

unint64_t sub_21E20EFE4()
{
  result = qword_27CEB8A08;
  if (!qword_27CEB8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A08);
  }

  return result;
}

unint64_t sub_21E20F038()
{
  result = qword_27CEB8A28;
  if (!qword_27CEB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A28);
  }

  return result;
}

unint64_t sub_21E20F08C()
{
  result = qword_27CEB8A30;
  if (!qword_27CEB8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A30);
  }

  return result;
}

unint64_t sub_21E20F0E0()
{
  result = qword_27CEB8A48;
  if (!qword_27CEB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A48);
  }

  return result;
}

unint64_t sub_21E20F134()
{
  result = qword_27CEB8A50;
  if (!qword_27CEB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A50);
  }

  return result;
}

unint64_t sub_21E20F188()
{
  result = qword_27CEB8A70;
  if (!qword_27CEB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A70);
  }

  return result;
}

unint64_t sub_21E20F1DC()
{
  result = qword_27CEB8A78;
  if (!qword_27CEB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A78);
  }

  return result;
}

unint64_t sub_21E20F230()
{
  result = qword_27CEB8A98;
  if (!qword_27CEB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A98);
  }

  return result;
}

unint64_t sub_21E20F284()
{
  result = qword_27CEB8AA0;
  if (!qword_27CEB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AA0);
  }

  return result;
}

unint64_t sub_21E20F2D8()
{
  result = qword_27CEB8AC0;
  if (!qword_27CEB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AC0);
  }

  return result;
}

unint64_t sub_21E20F32C()
{
  result = qword_27CEB8AC8;
  if (!qword_27CEB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AC8);
  }

  return result;
}

unint64_t sub_21E20F380()
{
  result = qword_27CEB8AE8;
  if (!qword_27CEB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AE8);
  }

  return result;
}

unint64_t sub_21E20F3D4()
{
  result = qword_27CEB8AF0;
  if (!qword_27CEB8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AF0);
  }

  return result;
}

uint64_t sub_21E20F428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21E20F47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21E20F494(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(a16) = 16908801;
  LOBYTE(a14) = v17;
  LOBYTE(a12) = v17;
  LOBYTE(a9) = v17;

  return MEMORY[0x2821D9B98](v16, 0, 1, 0, 1, 0, 1, 0, a9, a1, 0, a12, 0, a14, 0, a16, 0, 0);
}

uint64_t OUTLINED_FUNCTION_3_9@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(a2) = v12;

  return MEMORY[0x2821D9B98](v11, 0x3FE3333333333333, 0, 0, 1, 0, 1, 0, a2, a1, 0, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return v2;
}

__n128 *OUTLINED_FUNCTION_6_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E6F4372657375;
  result[2].n128_u64[1] = 0xEB00000000746E65;
  return result;
}

void OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v26 = *(v25 + v23);
  *(v26 + 16) = v24 + 1;
  v27 = v26 + 24 * v24;
  *(v27 + 32) = v21;
  *(v27 + 40) = v22;
  *(v27 + 48) = a21;
  *(v25 + v23) = v26;
}

void OUTLINED_FUNCTION_8_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = (a2 - 32) | 0x8000000000000000;
  *(a1 + 56) = 2;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

void OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v26 + v28);
  *(v29 + 16) = v27 + 1;
  v30 = v29 + 24 * v27;
  *(v30 + 32) = v25;
  *(v30 + 40) = a25;
  *(v30 + 48) = 0;
  *(v26 + v28) = v29;
}

void OUTLINED_FUNCTION_13_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = a2;
  *(a1 + 56) = 2;
}

uint64_t OUTLINED_FUNCTION_14_5()
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_4()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_3@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 32), v1);
  return v1;
}

void OUTLINED_FUNCTION_20_4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 56) = 2;
}

void OUTLINED_FUNCTION_22_4(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u8[0] = 2;
  v2[1].n128_u8[1] = v1;
  v2[1].n128_u64[1] = v3;
  v2[2].n128_u8[0] = 2;
  v2[3].n128_u8[8] = 6;
}

uint64_t OUTLINED_FUNCTION_25_3()
{
}

uint64_t OUTLINED_FUNCTION_26_2()
{
}

uint64_t OUTLINED_FUNCTION_27_2()
{
}

uint64_t OUTLINED_FUNCTION_28_3()
{
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1)
{
  v4 = v1[100];
  *(v2 - 128) = v1[101];
  *(v2 - 120) = v4;
  v5 = v1[94];
  *(v2 - 112) = v1[97];
  *(v2 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1)
{
  v4 = v1[103];
  *(v2 - 128) = v1[104];
  *(v2 - 120) = v4;
  v5 = v1[97];
  *(v2 - 112) = v1[100];
  *(v2 - 104) = v5;
}

void OUTLINED_FUNCTION_39_1(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u8[0] = 2;
  v2[1].n128_u8[1] = v1;
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  v4 = v1[100];
  *(v2 - 128) = v1[101];
  *(v2 - 120) = v4;
  v5 = v1[94];
  *(v2 - 112) = v1[97];
  *(v2 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{
  v4 = v1[103];
  *(v2 - 128) = v1[104];
  *(v2 - 120) = v4;
  v5 = v1[97];
  *(v2 - 112) = v1[100];
  *(v2 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_21E1D3A90(v21 + 32, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821D9FC8](a1, v9, a9);
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

uint64_t OUTLINED_FUNCTION_74()
{
  v4 = v0 + *(*(v2 - 120) + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_79@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(a1 + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

void OUTLINED_FUNCTION_81()
{

  JUMPOUT(0x223D55250);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_21E1D3A90(v21 + 32, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return MEMORY[0x2821A3E28](v2, v1, a1);
}

void OUTLINED_FUNCTION_86()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223D57360);
}

uint64_t OUTLINED_FUNCTION_89(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return MEMORY[0x2821FBF50](32, 0xE100000000000000, 100);
}

void OUTLINED_FUNCTION_90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v4 - 96) = 0;

  sub_21E1D1464(v4 - 96, a2, a3);
}

void OUTLINED_FUNCTION_107(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_21E3437F0();
}

uint64_t OUTLINED_FUNCTION_116()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_21E1C4418(v3);
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1)
{

  return MEMORY[0x2821D9FF0](a1, v1, v2);
}

void OUTLINED_FUNCTION_119(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_124()
{
  sub_21E1C2B8C((v0 + 272), v0 + 232);

  return sub_21E1C4248(v0 + 232, v0 + 352);
}

uint64_t OUTLINED_FUNCTION_126()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 192));

  return sub_21E20802C((v1 + 32), v0);
}

uint64_t OUTLINED_FUNCTION_131()
{
  v3 = *(*(v1 + v0) + 16);

  return sub_21E1C4418(v3);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return MEMORY[0x2821FBF38](32034, 0xE200000000000000, v0, v1);
}

BOOL OUTLINED_FUNCTION_133(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_140()
{
}

void OUTLINED_FUNCTION_141()
{
}

uint64_t OUTLINED_FUNCTION_145(void *a1, void *a2)
{
  v4 = *(v2 - 112);

  return WFLanguageRecognizer.locale(for:)(a1, a2, v4);
}

BOOL OUTLINED_FUNCTION_156(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_162(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_167()
{
  v5 = *(v1 + v3);

  return sub_21E1CB024(v5, v2 + 152, v0);
}

uint64_t OUTLINED_FUNCTION_176()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_177()
{
}

void OUTLINED_FUNCTION_179()
{
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_205()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1)
{
  v4 = v1[128];
  *(v2 - 128) = v1[129];
  *(v2 - 120) = v4;
  v5 = v1[122];
  *(v2 - 112) = v1[125];
  *(v2 - 104) = v5;
}

void OUTLINED_FUNCTION_207(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1)
{

  return MEMORY[0x2821D9FB0](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_209(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return MEMORY[0x282166D90]();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return MEMORY[0x2821A3C78](v0);
}

uint64_t OUTLINED_FUNCTION_211()
{

  return sub_21E2083EC((v0 + 32), v1);
}

uint64_t OUTLINED_FUNCTION_214()
{
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1, uint64_t a2)
{

  return sub_21E1E3438(v2 + 352, a2);
}

double OUTLINED_FUNCTION_226()
{

  return sub_21E1C60D4(v0, v1 + 272);
}

uint64_t OUTLINED_FUNCTION_227()
{

  return sub_21E343540();
}

uint64_t OUTLINED_FUNCTION_228()
{

  return sub_21E343540();
}

uint64_t OUTLINED_FUNCTION_230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return sub_21E1E89CC(va, v22, v21);
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return sub_21E1E89CC(va, v22, v21);
}

void OUTLINED_FUNCTION_233(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_237(uint64_t a1)
{
  v2 = MEMORY[0x277D71A90];

  return MEMORY[0x2821FEA68](a1, v2, 1);
}

BOOL OUTLINED_FUNCTION_238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_239(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v3;
}

uint64_t OUTLINED_FUNCTION_241(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_271()
{

  return sub_21E343100();
}

BOOL OUTLINED_FUNCTION_273(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return os_log_type_enabled(v13, a1);
}

uint64_t OUTLINED_FUNCTION_274(uint64_t a1, __n128 a2)
{
  *v4 = a2;
  v4[1].n128_u8[0] = 2;
  v4[1].n128_u8[1] = v3;
  v4[1].n128_u64[1] = v2;
  v4[2].n128_u8[0] = 2;
  v4[3].n128_u8[8] = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_278()
{
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_21E20EB60(v2);
}

uint64_t OUTLINED_FUNCTION_284()
{

  return sub_21E343100();
}

id OUTLINED_FUNCTION_285(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_286(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_287(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21E1C80B4(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_290()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return sub_21E20EEC0(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_292@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 696) = *(a1 + 24);

  return sub_21E342F00();
}

uint64_t OUTLINED_FUNCTION_299()
{
}

uint64_t OUTLINED_FUNCTION_300()
{
  sub_21E1DF880(v1, v0);
}

void OUTLINED_FUNCTION_310(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_311()
{

  return sub_21E20ED98(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_21E1C41D4();
}

uint64_t OUTLINED_FUNCTION_314()
{
}

uint64_t OUTLINED_FUNCTION_319()
{
}

uint64_t OUTLINED_FUNCTION_322()
{
}

BOOL OUTLINED_FUNCTION_326()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_327()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_328(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_329()
{
}

void OUTLINED_FUNCTION_330()
{
}

void OUTLINED_FUNCTION_331()
{
}

void OUTLINED_FUNCTION_332()
{
}

void OUTLINED_FUNCTION_333()
{
}

uint64_t OUTLINED_FUNCTION_334()
{

  return sub_21E1C41D4();
}

uint64_t OUTLINED_FUNCTION_336()
{

  return sub_21E1DF880(v1, v0);
}

uint64_t OUTLINED_FUNCTION_337()
{

  return sub_21E343100();
}

void OUTLINED_FUNCTION_338()
{
}

id OUTLINED_FUNCTION_340(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_341()
{
}

uint64_t OUTLINED_FUNCTION_343()
{
}

void OUTLINED_FUNCTION_355(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_356(uint64_t a1, unint64_t a2)
{

  return sub_21E1C80B4(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_357()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
}

uint64_t OUTLINED_FUNCTION_358()
{

  return sub_21E1C4248(v1 + 192, v0 + 48);
}

uint64_t *OUTLINED_FUNCTION_359@<X0>(uint64_t a1@<X8>)
{
  v2[27] = v1;
  v2[28] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_360()
{
}

uint64_t OUTLINED_FUNCTION_362()
{

  return sub_21E1C4248(v0 + 32, v1 + 312);
}

uint64_t OUTLINED_FUNCTION_363()
{

  return sub_21E1DD8B4(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_365(uint64_t a1, uint64_t a2)
{

  return sub_21E343F80();
}

uint64_t OUTLINED_FUNCTION_366(uint64_t a1)
{

  return sub_21E343450();
}

void OUTLINED_FUNCTION_367(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_368(uint64_t a1)
{

  return sub_21E343830();
}

uint64_t OUTLINED_FUNCTION_369(uint64_t a1)
{

  return sub_21E343830();
}

uint64_t OUTLINED_FUNCTION_370()
{
  v2 = *(v0 + 48) + 32;

  return sub_21E1E2280(v2);
}

uint64_t OUTLINED_FUNCTION_371(uint64_t a1)
{

  return sub_21E343100();
}

void OUTLINED_FUNCTION_372()
{
}

void OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_374(uint64_t a1)
{

  return sub_21E343100();
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_21E1C80B4(a1, a2, va);
}

void OUTLINED_FUNCTION_377(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log)
{

  _os_log_impl(a1, log, v13, a4, v14, 0xCu);
}

uint64_t OUTLINED_FUNCTION_378()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v4;
}

uint64_t OUTLINED_FUNCTION_380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_381(uint64_t a1, unint64_t a2)
{

  return sub_21E1C80B4(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_409(uint64_t a1)
{
  *(v2 + 360) = a1;

  return MEMORY[0x282200510](v1, a1);
}

uint64_t OUTLINED_FUNCTION_410()
{
}

uint64_t OUTLINED_FUNCTION_411()
{

  return sub_21E20EA1C(v2, v1, v0);
}

void OUTLINED_FUNCTION_412()
{
}

uint64_t OUTLINED_FUNCTION_413()
{
}

uint64_t OUTLINED_FUNCTION_414()
{
}

uint64_t OUTLINED_FUNCTION_415()
{
  *(v0 + 712) = 0;
}

uint64_t OUTLINED_FUNCTION_416()
{
}

uint64_t OUTLINED_FUNCTION_417(unint64_t *a1)
{

  return sub_21E20F428(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_418(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_419()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  return sub_21E20F47C(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_21E343CB0();
}

uint64_t sub_21E211FA4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    OUTLINED_FUNCTION_120();
  }

  sub_21E3438A0();
}

uint64_t sub_21E212014(uint64_t a1, unsigned __int8 a2)
{
  sub_21E3438A0();
}

uint64_t sub_21E212090(uint64_t a1, char a2)
{
  sub_21E3438A0();
}

uint64_t sub_21E2120F8(uint64_t a1, char a2)
{
  sub_21E344020();
  sub_21E3438A0();

  return sub_21E344040();
}

uint64_t sub_21E212174(uint64_t a1, char a2)
{
  sub_21E344020();
  sub_21E3438A0();

  return sub_21E344040();
}

uint64_t sub_21E212204(uint64_t a1, char a2)
{
  sub_21E344020();
  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    OUTLINED_FUNCTION_120();
  }

  sub_21E3438A0();

  return sub_21E344040();
}

ContentKit::TextOrEntityOutput __swiftcall TextOrEntityOutput.init(responseType:text:uuidList:)(ContentKit::TextOrEntityOutput::ResponseType responseType, Swift::String text, Swift::OpaquePointer uuidList)
{
  *v3 = *responseType;
  *(v3 + 8) = text;
  *(v3 + 24) = uuidList;
  result.text = text;
  result.uuidList = uuidList;
  result.responseType = responseType;
  return result;
}

uint64_t static Response.schema.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getMetatypeMetadata();
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0, &unk_21E3545C0);
  v3 = sub_21E343420();
  OUTLINED_FUNCTION_62_0(v3);
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8, &unk_21E354420);
  v4 = sub_21E343410();
  OUTLINED_FUNCTION_62_0(v4);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0, &qword_21E3545D0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8, &qword_21E354430);
  OUTLINED_FUNCTION_62_0(v5);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E223754(a1);
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E223754(a1);
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  OUTLINED_FUNCTION_13_1();
  return sub_21E343390();
}

uint64_t ListOutput.Streaming.init(objectID:decoder:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_93_0(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
  OUTLINED_FUNCTION_7_7(v4);
  *(v0 + 48) = v5;
  v6 = OUTLINED_FUNCTION_378();
  v7 = OUTLINED_FUNCTION_121(v6);
  v8 = type metadata accessor for ListOutput.Streaming(v7);
  OUTLINED_FUNCTION_28_0(v8);
  *(v0 + 64) = OUTLINED_FUNCTION_378();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E212854()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_50_1(v1);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282165FA8](v3);
}

uint64_t sub_21E21290C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E212A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_1_3();
  (*(v12 + 8))(v10);
  v13 = OUTLINED_FUNCTION_24_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67_1();
  sub_21E223910(v15, v11);
  OUTLINED_FUNCTION_117_0();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_104_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_21E212ABC()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_21E342C60();
  OUTLINED_FUNCTION_1_3();
  (*(v3 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_21E212B64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return ListOutput.Streaming.init(objectID:decoder:)();
}

uint64_t static ListOutput.collect(_:)()
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF8, &qword_21E3545E8);
  swift_allocBox();
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C00, &qword_21E3545F0);
  sub_21E343AD0();
  v0 = OUTLINED_FUNCTION_32_3();

  return MEMORY[0x2822005C0](v0);
}

uint64_t sub_21E212CA0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8DC0, &qword_21E354898);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9210, &unk_21E356140);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ListOutput.Streaming(0);
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF8, &qword_21E3545E8);
  v2[16] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21E212DFC);
}

uint64_t sub_21E212DFC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_73(*(v0 + 128));
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 136) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_103_0(v1);

  return MEMORY[0x2822005B0](v3);
}

uint64_t sub_21E212E8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E212F8C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_33_3(v2, v3, *(v0 + 104));
  if (v4)
  {
    sub_21E227B54(v1, &unk_27CEB9210);
    OUTLINED_FUNCTION_161();
    **(v0 + 64) = 0;

    OUTLINED_FUNCTION_46_1();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_60_1();
    sub_21E223910(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
    sub_21E343AD0();
    *(v0 + 152) = MEMORY[0x277D84F90];
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_54_1(v9);
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x2822005A8](v11);
  }
}

uint64_t sub_21E2130EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E2131E8()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v1 = *(v0 + 152);
  if (*(v0 + 48))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_123_0();
    }

    OUTLINED_FUNCTION_132_0();
    if (v6)
    {
      OUTLINED_FUNCTION_122();
      v5 = v2;
    }

    OUTLINED_FUNCTION_131_0(v2, v3, v4, v5);
    *(v0 + 152) = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_54_1(v8);
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822005A8](v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_36_1();
    v13(v12);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_160_0();
    **(v0 + 64) = v1;

    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_364();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_21E213330()
{
  OUTLINED_FUNCTION_20();
  swift_endAccess();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_21E2133AC()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_36_1();
  v1(v0);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_21E213434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C77656ELL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E2134C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E213434(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E2134F4(uint64_t a1)
{
  v2 = sub_21E223830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E213530(uint64_t a1)
{
  v2 = sub_21E223830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E213668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0, &qword_21E3527A0);
  OUTLINED_FUNCTION_10_7();
  sub_21E223884(v6, v7, v8);
  sub_21E343310();
  sub_21E343330();
  OUTLINED_FUNCTION_1_3();
  result = (*(v9 + 8))(v4);
  if (!v5)
  {
    *v3 = v11;
  }

  return result;
}

uint64_t sub_21E213788()
{
  v1 = OUTLINED_FUNCTION_173_0();
  __swift_allocate_value_buffer(v1, v0);
  __swift_project_value_buffer(v1, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB91C8, &qword_21E3560F8);
  v2 = sub_21E3433E0();
  OUTLINED_FUNCTION_62_0(v2);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0, &qword_21E3527A0);
  OUTLINED_FUNCTION_10_7();
  sub_21E223884(v3, v4, v5);
  OUTLINED_FUNCTION_60_1();
  sub_21E3433D0();
  return sub_21E3433F0();
}

uint64_t _s10ContentKit10ListOutputV9StreamingV03newC0ScsySSs5Error_pGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
  OUTLINED_FUNCTION_13_0();
  v0 = OUTLINED_FUNCTION_8_4();

  return v1(v0);
}

uint64_t EntitiesOutput.Streaming.init(objectID:decoder:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_93_0(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0, &qword_21E3545D8);
  OUTLINED_FUNCTION_7_7(v4);
  *(v0 + 48) = v5;
  v6 = OUTLINED_FUNCTION_378();
  v7 = OUTLINED_FUNCTION_121(v6);
  v8 = type metadata accessor for EntitiesOutput.Streaming(v7);
  OUTLINED_FUNCTION_28_0(v8);
  *(v0 + 64) = OUTLINED_FUNCTION_378();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E213A00()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_50_1(v1);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282165FA8](v3);
}

uint64_t sub_21E213AAC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E213BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_1_3();
  (*(v12 + 8))(v10);
  v13 = OUTLINED_FUNCTION_24_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67_1();
  sub_21E223910(v15, v11);
  OUTLINED_FUNCTION_117_0();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_104_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_21E213C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return EntitiesOutput.Streaming.init(objectID:decoder:)();
}

uint64_t static EntitiesOutput.collect(_:)()
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C30, &qword_21E354620);
  swift_allocBox();
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C38, &qword_21E354628);
  sub_21E343AD0();
  v0 = OUTLINED_FUNCTION_32_3();

  return MEMORY[0x2822005C0](v0);
}