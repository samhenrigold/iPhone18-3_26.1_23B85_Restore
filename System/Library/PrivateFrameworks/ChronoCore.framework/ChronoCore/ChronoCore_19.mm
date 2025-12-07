void sub_224BF0A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    BSDispatchQueueAssert();
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v14 = sub_224DAB258();
      __swift_project_value_buffer(v14, qword_281364E50);
      v15 = a4;
      v16 = sub_224DAB228();
      v17 = sub_224DAF2A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v20 = [v15 extensionIdentity];
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&dword_224A2F000, v16, v17, "Lifetime assertion prewarm request for widget %{public}@ timed out - notifying!", v18, 0xCu);
        sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        MEMORY[0x22AA5EED0](v18, -1, -1);
      }

      swift_beginAccess();
      *(a5 + 16) = 1;
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_beginAccess();

        sub_224B0279C(v21);
        swift_endAccess();

        swift_beginAccess();
        *(a6 + 16) = 0;
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v22 = sub_224CBC42C(12, 0, 0);
      a7(0, v22);
    }
  }
}

char *sub_224BF0D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id, void), uint64_t a11)
{
  v73 = a8;
  v72 = a7;
  v71 = a6;
  v70 = a5;
  v75 = sub_224DA9908();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAC268();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DABE18();
  v76 = *(v77 - 8);
  v22 = MEMORY[0x28223BE20](v77, v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v65 - v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v69 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
    BSDispatchQueueAssert();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v30);
    (*(v17 + 16))(v20, a3, v16);
    sub_224DABD88();
    if (MEMORY[0x22AA5A130](v27, v24))
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v31 = sub_224DAB258();
      __swift_project_value_buffer(v31, qword_281364E50);
      v32 = a4;
      v33 = sub_224DAB228();
      v34 = sub_224DAF2A8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        v37 = [v32 extensionIdentity];
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&dword_224A2F000, v33, v34, "Lifetime assertion prewarm request for widget %{public}@ completed!", v35, 0xCu);
        sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v36, -1, -1);
        MEMORY[0x22AA5EED0](v35, -1, -1);
      }

      v67 = a11;
      v68 = a10;

      v38 = v70;
      swift_beginAccess();
      *(v38 + 16) = 0;
      v39 = v71;
      swift_beginAccess();
      *(v39 + 16) = 1;
      v40 = v72;
      swift_beginAccess();
      if (*(v40 + 16))
      {
        swift_beginAccess();

        sub_224B0279C(v41);
        swift_endAccess();

        swift_beginAccess();
        *(v40 + 16) = 0;
      }

      sub_224A3796C(v73, &aBlock, &qword_27D6F3AE8, &unk_224DB9600);
      v66 = v32;
      if (v82)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v82);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_224A3311C(&aBlock, &qword_27D6F3AE8, &unk_224DB9600);
      }

      aBlock = sub_224DABD98();
      v80 = v42;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v44 = aBlock;
      v43 = v80;
      v45 = sub_224DA98F8();
      v46 = MEMORY[0x22AA57C10](v45);
      v48 = v47;
      (*(v74 + 8))(v15, v75);
      aBlock = v44;
      v80 = v43;

      MEMORY[0x22AA5D210](v46, v48);

      v50 = aBlock;
      v49 = v80;
      v51 = swift_allocObject();
      v52 = v66;
      v51[2] = v29;
      v51[3] = v52;
      v51[4] = a9;
      v51[5] = v50;
      v51[6] = v49;
      v83 = sub_224BFD808;
      v84 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = sub_224A3837C;
      v82 = &block_descriptor_147;
      v53 = _Block_copy(&aBlock);
      v54 = objc_opt_self();
      v55 = v52;
      v56 = v29;

      v57 = [v54 responderWithHandler_];
      _Block_release(v53);

      [v57 setQueue_];
      v58 = objc_allocWithZone(MEMORY[0x277CF0B58]);
      v59 = v57;
      v60 = [v58 initWithInfo:0 responder:v59];
      v61 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *&v56[v61];
      *&v56[v61] = 0x8000000000000000;
      sub_224B21930(v59, v50, v49, isUniquelyReferenced_nonNull_native);

      *&v56[v61] = v78;
      swift_endAccess();
      v29 = v60;
      v68(v60, 0);
    }

    v63 = *(v76 + 8);
    v64 = v77;
    v63(v24, v77);
    return (v63)(v27, v64);
  }

  return result;
}

uint64_t sub_224BF152C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281364E50);
  v11 = a3;
  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = [v11 extensionIdentity];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_224A2F000, v12, v13, "Lifetime assertion for widget %{public}@ invalidated.", v14, 0xCu);
    sub_224A3311C(v15, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  swift_beginAccess();
  if (*(a4 + 40))
  {
    sub_224A3317C(a4 + 16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  swift_beginAccess();

  sub_224B08BC0(0, a5, a6);
  return swift_endAccess();
}

id sub_224BF1818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v181 = a3;
  v171 = sub_224DA9908();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v4);
  v169 = &v157[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = sub_224DA9878();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v6);
  v166 = &v157[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v176 = &v157[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v165 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v165, v11);
  v175 = &v157[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v174 = &v157[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v178 = *(v16 - 8);
  v179 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v177 = &v157[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v164 = &v157[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v173 = &v157[-v26];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v157[-v29];
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v157[-v33];
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v157[-v36];
  BSDispatchQueueAssert();
  v180 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v54 = sub_224DAB258();
    __swift_project_value_buffer(v54, qword_281364E50);
    v55 = sub_224DAB228();
    v56 = sub_224DAF288();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v186 = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v186);
      _os_log_impl(&dword_224A2F000, v55, v56, "%{public}s rejected because not yet unlocked from boot.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x22AA5EED0](v58, -1, -1);
      MEMORY[0x22AA5EED0](v57, -1, -1);
    }

    return 0;
  }

  sub_224DA9FF8();
  v38 = v37;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  v40 = __swift_project_value_buffer(v39, qword_281364DF0);
  v41 = *(v20 + 16);
  v162 = v20 + 16;
  v161 = v41;
  v41(v34, v37, v19);
  v172 = v40;
  v42 = sub_224DAB228();
  v43 = sub_224DAF2A8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v186 = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v186);
    *(v44 + 12) = 2082;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v46 = sub_224DAFD28();
    v47 = v19;
    v49 = v48;
    v50 = v34;
    v51 = v47;
    v163 = *(v20 + 8);
    v163(v50, v47);
    v52 = sub_224A33F74(v46, v49, &v186);

    *(v44 + 14) = v52;
    _os_log_impl(&dword_224A2F000, v42, v43, "%{public}s - bundle identifier: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    v53 = v45;
    v38 = v37;
    MEMORY[0x22AA5EED0](v53, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);
  }

  else
  {

    v59 = v34;
    v51 = v19;
    v163 = *(v20 + 8);
    v163(v59, v19);
  }

  v61 = sub_224BFBD94(v60);
  v63 = v62;
  v158 = v61;
  v159 = v64;

  v65 = sub_224DAB228();
  v66 = sub_224DAF268();

  v67 = os_log_type_enabled(v65, v66);
  v181 = v63;
  v160 = v20;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v186 = v69;
    *v68 = 136446466;
    *(v68 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v186);
    *(v68 + 12) = 2082;
    v70 = sub_224BF305C(v158 & 1, v159, v63);
    v72 = sub_224A33F74(v70, v71, &v186);

    *(v68 + 14) = v72;
    _os_log_impl(&dword_224A2F000, v65, v66, "%{public}s - info: [%{public}s]", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v69, -1, -1);
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  v73 = v180;
  __swift_project_boxed_opaque_existential_1((v180 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v180 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v74 = v161;
  v161(v30, v38, v51);
  v75 = v38;
  v76 = v177;
  sub_224DAA278();
  sub_224DAC6C8();
  v178[1](v76, v179);
  if (!v185)
  {

    sub_224A3311C(&v184, &unk_27D6F4700, &unk_224DB3A10);
    v133 = v164;
    v74(v164, v75, v51);
    v134 = sub_224DAB228();
    v135 = sub_224DAF288();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v186 = v137;
      *v136 = 136446466;
      *(v136 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v186);
      *(v136 + 12) = 2082;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
      v138 = sub_224DAFD28();
      v140 = v139;
      v141 = v133;
      v142 = v163;
      v163(v141, v51);
      v143 = sub_224A33F74(v138, v140, &v186);

      *(v136 + 14) = v143;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v137, -1, -1);
      MEMORY[0x22AA5EED0](v136, -1, -1);

      v142(v75, v51);
    }

    else
    {

      v155 = v163;
      v163(v133, v51);
      v155(v75, v51);
    }

    return 0;
  }

  v179 = v51;
  sub_224A36F98(&v184, &v186);
  sub_224A3317C(v73 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService, &v184);
  __swift_project_boxed_opaque_existential_1(&v184, v185);
  __swift_project_boxed_opaque_existential_1(&v186, v187);
  v77 = sub_224DAE338();
  v78 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v79 = v174;
  sub_224A3796C(v77 + v78, v174, &unk_27D6F5060, &qword_224DB5620);

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v81 = *(v80 - 8);
  result = (*(v81 + 48))(v79, 1, v80);
  if (result != 1)
  {
    v83 = sub_224DAC808();
    (*(v81 + 8))(v79, v80);
    __swift_destroy_boxed_opaque_existential_1(&v184);
    v84 = v173;
    v85 = v75;
    if (v83 >> 62)
    {
      v86 = sub_224DAF838();
    }

    else
    {
      v86 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v86)
    {
      v178 = [objc_allocWithZone(MEMORY[0x277CFA348]) init];
      __swift_project_boxed_opaque_existential_1(&v186, v187);
      v87 = sub_224DAE338();
      v88 = v175;
      *v175 = v87;
      swift_storeEnumTagMultiPayload();
      __swift_project_boxed_opaque_existential_1(&v186, v187);
      v89 = sub_224DAE338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
      v90 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
      v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_224DB3100;
      v93 = sub_224DAE8B8();
      (*(*(v93 - 8) + 56))(v92 + v91, 3, 5, v93);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
      v95 = v176;
      (*(*(v94 - 8) + 56))(v176, 1, 1, v94);
      v96 = type metadata accessor for ExtensionTask(0);
      v97 = objc_allocWithZone(v96);
      sub_224DAE908();
      v98 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      *&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
      v99 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
      v100 = sub_224DAC938();
      (*(*(v100 - 8) + 56))(&v97[v99], 1, 1, v100);
      v101 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
      *v101 = 0;
      v101[1] = 0;
      v102 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      *v102 = 0;
      v102[1] = 0;
      v103 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      *v103 = 0;
      v103[1] = 0;
      v104 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
      *v104 = 0;
      v104[1] = 0;
      v105 = v166;
      sub_224DA9868();
      (*(v167 + 32))(&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v105, v168);
      *&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v89;
      v177 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
      sub_224A3F63C(v95, &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
      swift_beginAccess();
      *&v97[v98] = v92;
      v173 = v89;

      v106 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
      *v106 = 1;
      v106[8] = 0;
      v172 = type metadata accessor for ExtensionTask.Identifier;
      sub_224A3F63C(v88, &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
      v107 = v169;
      sub_224DA98F8();
      v108 = v170;
      v109 = v171;
      (*(v170 + 16))(&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v107, v171);
      v183 = sub_224DA98E8();
      sub_224A3F6A4();
      v110 = sub_224DAEF18();
      v112 = sub_224A3D19C(8, v110, v111);
      v174 = v85;
      v114 = v113;
      v116 = v115;
      v118 = v117;

      v119 = MEMORY[0x22AA5D1C0](v112, v114, v116, v118);
      v121 = v120;

      v122 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      *v122 = v119;
      v122[1] = v121;
      v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
      v182.receiver = v97;
      v182.super_class = v96;
      v123 = objc_msgSendSuper2(&v182, sel_init);

      (*(v108 + 8))(v107, v109);
      sub_224A3D238(v176, v177);
      sub_224A3D238(v175, v172);
      v124 = swift_allocObject();
      v125 = v178;
      *(v124 + 16) = v178;
      *(v124 + 24) = v158 & 1;
      v126 = v181;
      *(v124 + 32) = v159;
      *(v124 + 40) = v126;
      v127 = &v123[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      v128 = *&v123[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      v129 = *&v123[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
      *v127 = sub_224BFD5B8;
      v127[1] = v124;
      v130 = v125;
      sub_224A3D418(v128, v129);
      v131 = *(v180 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService + 24);
      v132 = *(v180 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService + 32);
      __swift_project_boxed_opaque_existential_1((v180 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService), v131);
      (*(v132 + 16))(v123, v131, v132);

      (*(v160 + 8))(v174, v179);
      __swift_destroy_boxed_opaque_existential_1(&v186);
      return v130;
    }

    v144 = v179;
    v161(v84, v75, v179);
    v145 = sub_224DAB228();
    v146 = sub_224DAF288();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v184 = v148;
      *v147 = 136446466;
      *(v147 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v184);
      *(v147 + 12) = 2082;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
      v149 = sub_224DAFD28();
      v151 = v150;
      v152 = v84;
      v153 = v163;
      v163(v152, v144);
      v154 = sub_224A33F74(v149, v151, &v184);

      *(v147 + 14) = v154;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v148, -1, -1);
      MEMORY[0x22AA5EED0](v147, -1, -1);

      v153(v75, v144);
    }

    else
    {

      v156 = v163;
      v163(v84, v144);
      v156(v75, v144);
    }

    __swift_destroy_boxed_opaque_existential_1(&v186);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_224BF305C(char a1, uint64_t a2, uint64_t a3)
{
  sub_224DAF938();

  strcpy(v9, "identifier: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x22AA5D210](a2, a3);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DCA690);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v6, v7);

  return v9[0];
}

void sub_224BF3140(uint64_t a1, void (*a2)(void), uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([a4 isValid])
  {
    sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
      if (swift_dynamicCast())
      {
        v10 = v25;
        v11 = swift_allocObject();
        v11[2] = v10;
        v11[3] = a2;
        v11[4] = a3;
        swift_unknownObjectRetain();

        v12 = sub_224DAEDE8();
        v13 = swift_allocObject();
        *(v13 + 16) = sub_224BFD61C;
        *(v13 + 24) = v11;
        v23 = sub_224BFDE18;
        v24 = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224BC6D2C;
        v22 = &block_descriptor_111;
        v14 = _Block_copy(aBlock);

        [v10 handleURLSessionEventsFor:v12 completion:v14];
        _Block_release(v14);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281364DF0);
    v16 = sub_224DAB228();
    v17 = sub_224DAF288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224A2F000, v16, v17, "unable to obtain widget extension session", v18, 2u);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    sub_224BFD5C8();
    v19 = swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

id sub_224BF34DC()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v0 + v1, &v6, &unk_27D6F5050, &unk_224DBAE08);
  if (v7)
  {
    sub_224A36F98(&v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_224BDFC24();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_224A3311C(&v6, &unk_27D6F5050, &unk_224DBAE08);
  }

  v2 = objc_allocWithZone(MEMORY[0x277CFA308]);
  sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
  v3 = sub_224DAEFF8();

  v4 = [v2 initWithDevices_];

  return v4;
}

uint64_t sub_224BF3664(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_224BF3708(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v2 + v4, &v6, &unk_27D6F5050, &unk_224DBAE08);
  if (v7)
  {
    sub_224A36F98(&v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_224CFBE00(a1);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_224A3311C(&v6, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(18, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_224BF39A4()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v0 + v1, &v3, &unk_27D6F5050, &unk_224DBAE08);
  if (v4)
  {
    sub_224A36F98(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_224CFC354();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_224A3311C(&v3, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(18, 0, 0);
    return swift_willThrow();
  }
}

id sub_224BF3B28()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider;
  swift_beginAccess();
  sub_224A3317C(v0 + v1, v12);
  v2 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = *v2;
  v4 = *(*v2 + 56);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    goto LABEL_5;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v7 = result;
    v8 = [result isiPhoneWidgetsOnMacAllowed];

    if (v8)
    {
      v9 = *(v3 + 72);

      v11 = v9(v10);

LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(v12);
      return (v11 & 1);
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_224BF3CCC(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

char *sub_224BF3D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC0, &unk_224DBADD8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v51 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v46 - v19;
  v47 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  (*(v13 + 16))(v17, v20, v12);
  sub_224DAA278();
  v21 = v4;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  sub_224DAC6C8();
  if (*(&v57 + 1))
  {
    v52 = v11;
    v53 = v8;
    v54 = v12;
    v55 = v20;
    sub_224A36F98(&v56, &v59);
    __swift_project_boxed_opaque_existential_1(&v59, v61);
    v22 = sub_224DAE268();
    if (v22 && (v23 = v22, v24 = [v22 canKeepAlive], v23, v24))
    {
      __swift_project_boxed_opaque_existential_1(&v59, v61);
      v25 = sub_224DAE8B8();
      v26 = v51;
      (*(*(v25 - 8) + 56))(v51, 1, 1, v25);
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v27 = sub_224DAE258();
      sub_224A3311C(&v56, &qword_27D6F4FC8, &unk_224DBADE8);
      sub_224A3311C(v26, &qword_27D6F4FC0, &unk_224DBADD8);
      v28 = v62;
      v29 = v55;
      if (v27)
      {
        if ([v27 respondsToSelector_])
        {
          v51 = v27;
          v30 = [objc_opt_self() targetWithPid_];
          v31 = *(v21 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider + 24);
          v32 = *(v21 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider + 32);
          __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider), v31);
          v33 = v52;
          v34 = v50;
          v35 = (*(v32 + 8))(v52, v30, v47, v48, v49, v31, v32);
          v36 = v53;
          if (!v34)
          {
            v21 = v35;

            [v51 invalidate];
            swift_unknownObjectRelease();
            (*(v28 + 8))(v33, v36);
            (*(v13 + 8))(v55, v54);
            __swift_destroy_boxed_opaque_existential_1(&v59);
            return v21;
          }

          [v51 invalidate];
          swift_unknownObjectRelease();
          (*(v28 + 8))(v33, v36);
          (*(v13 + 8))(v55, v54);
          goto LABEL_14;
        }

        v51 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        sub_224DAEE18();
        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_224DAF938();

        *&v56 = 0xD000000000000016;
        *(&v56 + 1) = 0x8000000224DCA5C0;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
        v37 = v54;
        v44 = sub_224DAFD28();
        v21 = v27;
        MEMORY[0x22AA5D210](v44);

        MEMORY[0x22AA5D210](0x206F6E2073616820, 0xEB00000000646970);
        sub_224DAF648();
        swift_willThrow();
        [v27 invalidate];
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        sub_224DAEE18();
        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        sub_224DAF938();

        *&v56 = 0xD000000000000025;
        *(&v56 + 1) = 0x8000000224DCA590;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
        v37 = v54;
        v43 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v43);

        sub_224DAF648();
        swift_willThrow();
      }

      (*(v28 + 8))(v52, v53);
      v40 = *(v13 + 8);
      v41 = v29;
    }

    else
    {
      v21 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      sub_224DAEE18();
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_224DAF938();

      *&v56 = 0x6F69736E65747845;
      *(&v56 + 1) = 0xEA0000000000206ELL;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
      v37 = v54;
      v38 = v55;
      v39 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v39);

      MEMORY[0x22AA5D210](0xD000000000000025, 0x8000000224DCA560);
      sub_224DAF648();
      swift_willThrow();
      (*(v62 + 8))(v52, v53);
      v40 = *(v13 + 8);
      v41 = v38;
    }

    v40(v41, v37);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(&v59);
    return v21;
  }

  sub_224A3311C(&v56, &unk_27D6F4700, &unk_224DB3A10);
  v21 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v55 = sub_224DAEE18();
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_224DAF938();

  v59 = 0xD000000000000019;
  v60 = 0x8000000224DCA540;
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
  v42 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v42);

  sub_224DAF648();
  swift_willThrow();
  (*(v62 + 8))(v11, v8);
  (*(v13 + 8))(v20, v12);
  return v21;
}

unint64_t sub_224BF49E8()
{
  result = qword_28135CCE0;
  if (!qword_28135CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCE0);
  }

  return result;
}

uint64_t sub_224BF4A3C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_224CB24FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_224BF4AB8(v6);
  return sub_224DAF9C8();
}

void sub_224BF4AB8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_224DAFD18();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
        v6 = sub_224DAF058();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_224BF4D04(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_224BF4BCC(0, v2, 1, a1);
  }
}

void sub_224BF4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = [v11 pairingState];
      v14 = [v12 pairingState];
      if (v14 == 2)
      {
LABEL_4:

LABEL_5:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      if (v13 == 2)
      {
        goto LABEL_13;
      }

      if (v14 == 1)
      {
        goto LABEL_4;
      }

      if (v13 == 1)
      {
        goto LABEL_13;
      }

      if (v14 == 3)
      {
        goto LABEL_4;
      }

      if (v13 == 3)
      {
LABEL_13:
      }

      else
      {
        if (!v14)
        {
          goto LABEL_4;
        }

        if (v13)
        {
          goto LABEL_5;
        }
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_224BF4D04(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_127:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_165;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_129:
      v99 = *(v9 + 2);
      if (v99 >= 2)
      {
        do
        {
          v100 = *v6;
          if (!*v6)
          {
            goto LABEL_163;
          }

          v6 = (v99 - 1);
          v101 = *&v9[16 * v99];
          v102 = *&v9[16 * v99 + 24];
          sub_224BF5490((v100 + 8 * v101), (v100 + 8 * *&v9[16 * v99 + 16]), (v100 + 8 * v102), v10);
          if (v5)
          {
            break;
          }

          if (v102 < v101)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_224CB23F0(v9);
          }

          if (v99 - 2 >= *(v9 + 2))
          {
            goto LABEL_153;
          }

          v103 = &v9[16 * v99];
          *v103 = v101;
          *(v103 + 1) = v102;
          sub_224CB2364(v99 - 1);
          v99 = *(v9 + 2);
          v6 = a3;
        }

        while (v99 > 1);
      }

LABEL_137:

      return;
    }

LABEL_159:
    v9 = sub_224CB23F0(v9);
    goto LABEL_129;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 >= v7)
  {
    goto LABEL_48;
  }

  v109 = v7;
  v12 = *v6;
  v13 = *(*v6 + 8 * v11);
  v14 = *(*v6 + 8 * v10);
  v15 = v13;
  v16 = v14;
  v17 = [v15 pairingState];
  v18 = [v16 pairingState];
  if (v18 == 2)
  {
    goto LABEL_6;
  }

  if (v17 == 2)
  {
LABEL_8:
    v112 = 1;
    goto LABEL_9;
  }

  if (v18 != 1)
  {
    if (v17 == 1)
    {
      goto LABEL_8;
    }

    if (v18 != 3)
    {
      if (v17 != 3)
      {
        v28 = v18;

        if (v28)
        {
          v29 = v17 == 0;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v112 = v30;
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

LABEL_6:
  v112 = 0;
LABEL_9:

LABEL_10:
  v11 = v10 + 2;
  if (v10 + 2 >= v109)
  {
    goto LABEL_40;
  }

  v105 = v10;
  v19 = (v12 + 8 * v10 + 16);
  do
  {
    v20 = v11;
    v21 = *(v19 - 1);
    v22 = *v19;
    v23 = v21;
    v6 = a3;
    v24 = v23;
    v25 = [v22 pairingState];
    v26 = [v24 pairingState];
    if (v26 == 2)
    {
      goto LABEL_12;
    }

    if (v25 == 2)
    {
      goto LABEL_16;
    }

    if (v26 == 1)
    {
      goto LABEL_12;
    }

    if (v25 == 1)
    {
      goto LABEL_16;
    }

    if (v26 == 3)
    {
LABEL_12:

      if (v112)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v25 == 3)
      {
LABEL_16:

        if ((v112 & 1) == 0)
        {
          v10 = v105;
          goto LABEL_48;
        }

        goto LABEL_13;
      }

      v27 = v26;

      if (v27)
      {
        v6 = a3;
        if ((v112 ^ (v25 == 0)))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v6 = a3;
        if (v112)
        {
LABEL_26:
          v10 = v105;
          goto LABEL_41;
        }
      }
    }

LABEL_13:
    ++v11;
    ++v19;
  }

  while (v109 != v20 + 1);
  v11 = v109;
LABEL_39:
  v10 = v105;
LABEL_40:
  if (v112)
  {
LABEL_41:
    if (v11 < v10)
    {
      goto LABEL_156;
    }

    if (v10 < v11)
    {
      v31 = 8 * v11 - 8;
      v32 = 8 * v10;
      v33 = v11;
      v34 = v10;
      do
      {
        if (v34 != --v33)
        {
          v35 = *v6;
          if (!*v6)
          {
            goto LABEL_162;
          }

          v36 = *(v35 + v32);
          *(v35 + v32) = *(v35 + v31);
          *(v35 + v31) = v36;
        }

        v34 = (v34 + 1);
        v31 -= 8;
        v32 += 8;
      }

      while (v34 < v33);
    }
  }

LABEL_48:
  v37 = v6[1];
  if (v11 >= v37)
  {
    goto LABEL_76;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_155;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_76;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_157;
  }

  if (v10 + a4 >= v37)
  {
    v38 = v6[1];
  }

  else
  {
    v38 = v10 + a4;
  }

  if (v38 < v10)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v11 == v38)
  {
    goto LABEL_76;
  }

  v104 = v5;
  v39 = v10;
  v40 = *v6;
  v41 = *v6 + 8 * v11 - 8;
  v106 = v39;
  v42 = v39 - v11;
  v110 = v38;
  while (2)
  {
    v113 = v11;
    v43 = *(v40 + 8 * v11);
    v44 = v42;
    v45 = v41;
LABEL_61:
    v46 = *v45;
    v47 = v43;
    v48 = v46;
    v49 = [v47 pairingState];
    v50 = [v48 pairingState];
    if (v50 == 2)
    {
LABEL_58:

LABEL_59:
      v11 = v113 + 1;
      v41 += 8;
      --v42;
      if ((v113 + 1) != v110)
      {
        continue;
      }

      v11 = v110;
      v5 = v104;
      v6 = a3;
      v10 = v106;
LABEL_76:
      if (v11 < v10)
      {
        goto LABEL_154;
      }

      v114 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_224AD92E0(0, *(v9 + 2) + 1, 1, v9);
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v9 = sub_224AD92E0((v53 > 1), v54 + 1, 1, v9);
      }

      *(v9 + 2) = v55;
      v56 = &v9[16 * v54];
      *(v56 + 4) = v10;
      *(v56 + 5) = v11;
      v57 = *a1;
      if (!*a1)
      {
        goto LABEL_164;
      }

      if (!v54)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v114;
        if (v114 >= v7)
        {
          goto LABEL_127;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v9 + 4);
          v60 = *(v9 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_96:
          if (v62)
          {
            goto LABEL_143;
          }

          v75 = &v9[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_146;
          }

          v81 = &v9[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_149;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_150;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_117;
          }

          goto LABEL_110;
        }

        v85 = &v9[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_110:
        if (v80)
        {
          goto LABEL_145;
        }

        v88 = &v9[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_148;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_117:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (!*v6)
        {
          goto LABEL_161;
        }

        v97 = *&v9[16 * v96 + 32];
        v10 = *&v9[16 * v58 + 40];
        sub_224BF5490((*v6 + 8 * v97), (*v6 + 8 * *&v9[16 * v58 + 32]), (*v6 + 8 * v10), v57);
        if (v5)
        {
          goto LABEL_137;
        }

        if (v10 < v97)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_224CB23F0(v9);
        }

        if (v96 >= *(v9 + 2))
        {
          goto LABEL_140;
        }

        v98 = &v9[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v10;
        sub_224CB2364(v58);
        v55 = *(v9 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v9[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_141;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_142;
      }

      v70 = &v9[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_144;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_147;
      }

      if (v74 >= v66)
      {
        v92 = &v9[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_151;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_117;
      }

      goto LABEL_96;
    }

    break;
  }

  if (v49 == 2)
  {
    goto LABEL_67;
  }

  if (v50 == 1)
  {
    goto LABEL_58;
  }

  if (v49 == 1)
  {
    goto LABEL_67;
  }

  if (v50 == 3)
  {
    goto LABEL_58;
  }

  if (v49 == 3)
  {
LABEL_67:
  }

  else
  {
    if (!v50)
    {
      goto LABEL_58;
    }

    if (v49)
    {
      goto LABEL_59;
    }
  }

  if (v40)
  {
    v51 = *v45;
    v43 = *(v45 + 8);
    *v45 = v43;
    *(v45 + 8) = v51;
    v45 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
}

uint64_t sub_224BF5490(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_59;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      v18 = [v16 pairingState];
      v19 = [v17 pairingState];
      if (v19 == 2)
      {
        break;
      }

      if (v18 == 2)
      {
        goto LABEL_19;
      }

      if (v19 == 1)
      {
        break;
      }

      if (v18 == 1)
      {
        goto LABEL_19;
      }

      if (v19 == 3)
      {
        break;
      }

      if (v18 == 3)
      {
LABEL_19:
      }

      else
      {
        v36 = v19;

        if (!v36 || v18)
        {
          goto LABEL_13;
        }
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_59;
      }
    }

LABEL_13:
    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v20;
    goto LABEL_15;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v35 = v4;
    while (1)
    {
      v22 = v6 - 1;
      --v5;
      v23 = v14;
      while (1)
      {
        v37 = v14;
        v24 = v6;
        v25 = *--v23;
        v26 = v22;
        v27 = *v22;
        v28 = v25;
        v29 = v27;
        v30 = [v28 pairingState];
        v31 = [v29 pairingState];
        if (v31 == 2)
        {
          goto LABEL_43;
        }

        if (v30 == 2)
        {
          break;
        }

        if (v31 == 1)
        {
          goto LABEL_43;
        }

        if (v30 == 1)
        {
          break;
        }

        if (v31 == 3)
        {
LABEL_43:

          goto LABEL_44;
        }

        if (v30 == 3)
        {
          break;
        }

        v32 = v31;

        if (v32 && !v30)
        {
          goto LABEL_51;
        }

LABEL_44:
        v6 = v24;
        v22 = v26;
        if (v5 + 1 != v37)
        {
          *v5 = *v23;
        }

        --v5;
        v14 = v23;
        v4 = v35;
        if (v23 <= v35)
        {
          v14 = v23;
          goto LABEL_59;
        }
      }

LABEL_51:
      v33 = v26;
      if (v5 + 1 != v24)
      {
        *v5 = *v26;
      }

      v14 = v37;
      v4 = v35;
      if (v37 > v35)
      {
        v6 = v33;
        if (v33 > v7)
        {
          continue;
        }
      }

      v6 = v33;
      break;
    }
  }

LABEL_59:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_224BF57EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06E54(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_224BF587C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_224DAF838();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_224A869E4(v3, 0);
  sub_224B43614((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_224BF5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v17[3] = type metadata accessor for ConcreteManagedConfigurationPrimitives();
  v17[4] = &off_2838304D8;
  v17[0] = a1;
  a6[7] = a2;
  a6[8] = a3;
  a6[9] = a4;
  a6[10] = a5;
  sub_224A3317C(v17, (a6 + 2));
  swift_beginAccess();
  v12 = a6[5];
  v13 = a6[6];
  __swift_mutable_project_boxed_opaque_existential_1((a6 + 2), v12);
  v14 = *(v13 + 16);

  v14(v15, &off_283834AC0, v12, v13);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a6;
}

double sub_224BF5A0C(void *a1)
{
  v69 = a1;
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService], v70);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_taskService], v91);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService], v90);
  v2 = type metadata accessor for ConcreteManagedConfigurationPrimitives();
  v3 = [objc_allocWithZone(v2) init];
  v89[3] = v2;
  v89[4] = &off_2838304D8;
  v89[0] = v3;
  v4 = type metadata accessor for RemoteWidgetsEnablementProvider();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v89, v2);
  MEMORY[0x28223BE20](v6, v6);
  v8 = (v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_224BF5910(*v8, sub_224D16170, 0, sub_224D161C0, 0, v5);
  __swift_destroy_boxed_opaque_existential_1(v89);
  v11 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
  swift_beginAccess();
  sub_224A3796C(&v1[v11], v89, &unk_27D6F5050, &unk_224DBAE08);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_extensionService], v88);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetHostService], v87);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider], v86);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_powerlogSuggestionService], v85);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_duetService], v84);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_stuckPairedRelationshipRepairer], v83, &qword_27D6F5180, &unk_224DBAEA8);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keepAliveAssertionProvider], v82);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], v81, &unk_27D6F4FB0, &unk_224DBADC8);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_remoteActivityLaunchService], v80, &qword_27D6F5110, &qword_224DBAE50);
  v67[0] = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v84, v84[3]);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v78 = v4;
  v79 = &off_283834AD0;
  v77[0] = v10;
  v67[1] = v10;
  v17 = type metadata accessor for _DuetBudgetServiceImpl();
  v75 = v17;
  v76 = &off_283830A00;
  v74[0] = v16;
  v68 = type metadata accessor for ChronoServicesClient();
  v18 = objc_allocWithZone(v68);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v21;
  v28 = *v25;
  v73[3] = v4;
  v73[4] = &off_283834AD0;
  v72[4] = &off_283830A00;
  v73[0] = v27;
  v72[3] = v17;
  v72[0] = v28;
  v67[2] = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__server;
  swift_unknownObjectWeakInit();
  v29 = &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService];
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;
  v30 = &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService];
  *(v30 + 4) = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v31 = MEMORY[0x277D84FA0];
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetHostIdentities] = MEMORY[0x277D84FA0];
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetFetchSubscriptions] = v31;
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadSubscriptions] = v31;
  v32 = MEMORY[0x277D84F98];
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders] = MEMORY[0x277D84F98];
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetLifetimeAssertionResponders] = v32;
  v33 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  v34 = v67[0];

  v35 = MEMORY[0x277D84F90];
  *&v18[v33] = sub_224DA1AE0(MEMORY[0x277D84F90]);
  v36 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  *&v18[v36] = sub_224DA1BD4(v35);
  v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated] = 0;
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_subscriptions] = v31;
  v37 = v69;
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] = v69;
  sub_224A3317C(v70, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService]);
  sub_224A3317C(v91, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService]);
  sub_224A3317C(v90, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService]);
  sub_224A3317C(v73, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider]);
  swift_beginAccess();
  v38 = v37;
  sub_224BFDC78(v89, v29);
  swift_endAccess();
  sub_224A3317C(v88, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService]);
  sub_224A3317C(v87, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService]);
  sub_224A3317C(v86, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider]);
  sub_224A3317C(v85, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService]);
  sub_224A3317C(v72, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService]);
  sub_224A3796C(v83, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_stuckPairedRelationshipRepairer], &qword_27D6F5180, &unk_224DBAEA8);
  sub_224A3317C(v82, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider]);
  sub_224A3796C(v81, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
  sub_224A3796C(v80, &v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_remoteActivityLaunchService], &qword_27D6F5110, &qword_224DBAE50);
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue] = v34;
  swift_unknownObjectWeakAssign();
  v39 = objc_allocWithZone(MEMORY[0x277CFA3C0]);
  v40 = v34;
  v41 = [v39 initWithWidgetsPredicate:0 controlsPredicate:0 includeIntents:0];
  *&v18[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions] = v41;
  v71.receiver = v18;
  v71.super_class = v68;
  v42 = objc_msgSendSuper2(&v71, sel_init);

  sub_224A3311C(v80, &qword_27D6F5110, &qword_224DBAE50);
  sub_224A3311C(v81, &unk_27D6F4FB0, &unk_224DBADC8);
  __swift_destroy_boxed_opaque_existential_1(v82);
  sub_224A3311C(v83, &qword_27D6F5180, &unk_224DBAEA8);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v88);
  sub_224A3311C(v89, &unk_27D6F5050, &unk_224DBAE08);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v84);
  v43 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
  swift_beginAccess();
  sub_224A3796C(&v1[v43], v70, &unk_27D6F4FD0, &qword_224DB75F0);
  v44 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService;
  swift_beginAccess();
  sub_224A838C0(v70, v42 + v44, &unk_27D6F4FD0, &qword_224DB75F0);
  swift_endAccess();
  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = v42;
  v46 = swift_allocObject();
  v46[2] = sub_224BFDCE8;
  v46[3] = v45;
  v70[4] = sub_224A75AA4;
  v70[5] = v46;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 1107296256;
  v70[2] = sub_224A37E38;
  v70[3] = &block_descriptor_259;
  v47 = _Block_copy(v70);
  v48 = v1;
  v49 = v42;

  v50 = v38;
  [v38 configureConnection_];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v46 = [v38 remoteProcess];
  v51 = sub_224DAEDE8();
  v52 = [v46 hasEntitlement_];

  if (v52)
  {
    v53 = *&v48[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
    v54 = *(v53 + 16);

    os_unfair_lock_lock(v54);
    swift_beginAccess();
    sub_224ADC20C(v90, v49);
    swift_endAccess();

    os_unfair_lock_unlock(*(v53 + 16));

    v55 = &selRef_activate;
    goto LABEL_8;
  }

  if (qword_2813514B8 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v56 = sub_224DAB258();
  __swift_project_value_buffer(v56, qword_281364E50);
  v57 = v46;
  v58 = sub_224DAB228();
  v59 = sub_224DAF2A8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v69 = v50;
    v70[0] = v62;
    v63 = v62;
    *v60 = 138543618;
    *(v60 + 4) = v57;
    *v61 = v57;
    *(v60 + 12) = 2082;
    v64 = v57;
    *(v60 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, v70);
    _os_log_impl(&dword_224A2F000, v58, v59, "Chrono widget service connection from %{public}@ failed to authenticate <entitled: %{public}s>", v60, 0x16u);
    sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v61, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v63);
    v65 = v63;
    v50 = v69;
    MEMORY[0x22AA5EED0](v65, -1, -1);
    MEMORY[0x22AA5EED0](v60, -1, -1);
  }

  v55 = &selRef_invalidate;
LABEL_8:
  [v50 *v55];

  return result;
}

unint64_t sub_224BF66C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

double sub_224BF670C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  BSDispatchQueueAssert();
  v7 = sub_224BE8AF0(a1);
  if (v7)
  {
    v8 = v7;
    BSDispatchQueueAssert();
    v9 = [*(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
    v10 = sub_224DAEDE8();
    v11 = [v9 valueForEntitlement_];

    if (v11)
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
      sub_224A33E0C(v64, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      if (swift_dynamicCast())
      {
        v59 = a2;
        v60 = v6;
        v62 = v63[6];
        v12 = v8 & 0xFFFFFFFFFFFFFF8;
        v58 = a3;
        if (v8 >> 62)
        {
          v13 = sub_224DAF838();
          if (v13)
          {
LABEL_6:
            a3 = 0;
            v61 = v8 & 0xC000000000000001;
            while (1)
            {
              if (v61)
              {
                v14 = MEMORY[0x22AA5DCC0](a3, v8);
              }

              else
              {
                if (a3 >= *(v12 + 16))
                {
                  goto LABEL_35;
                }

                v14 = *(v8 + 8 * a3 + 32);
              }

              v15 = v14;
              v16 = a3 + 1;
              if (__OFADD__(a3, 1))
              {
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              v17 = v8;
              v18 = [v14 extensionBundleIdentifier];
              v19 = sub_224DAEE18();
              v21 = v20;

              v63[0] = v19;
              v63[1] = v21;
              MEMORY[0x28223BE20](v22, v23);
              v57[2] = v63;
              LOBYTE(v19) = sub_224B3E818(sub_224AC2330, v57, v62);

              if ((v19 & 1) == 0)
              {
                break;
              }

              ++a3;
              v8 = v17;
              if (v16 == v13)
              {
                goto LABEL_38;
              }
            }

            v42 = v17;
            if (qword_2813514B8 != -1)
            {
              swift_once();
            }

            v43 = sub_224DAB258();
            __swift_project_value_buffer(v43, qword_281364E50);

            v44 = sub_224DAB228();
            v45 = sub_224DAF288();

            v46 = os_log_type_enabled(v44, v45);
            v47 = v58;
            if (v46)
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v63[0] = v49;
              *v48 = 136446210;
              v50 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
              v51 = MEMORY[0x22AA5D380](v42, v50);
              v53 = v52;

              v54 = sub_224A33F74(v51, v53, v63);

              *(v48 + 4) = v54;
              _os_log_impl(&dword_224A2F000, v44, v45, "Client not authorized to modify descriptor enablement for requests (mismatching request identifiers): %{public}s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v49);
              MEMORY[0x22AA5EED0](v49, -1, -1);
              MEMORY[0x22AA5EED0](v48, -1, -1);
            }

            else
            {
            }

            sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
            v55 = sub_224CBC42C(3, 0, 0);
            v56 = sub_224DA9518();
            (*(v47 + 16))(v47, v56);

            __swift_destroy_boxed_opaque_existential_1(v64);
            goto LABEL_39;
          }
        }

        else
        {
          v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_6;
          }
        }

LABEL_38:

        sub_224A3317C(v59 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v63);
        __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        sub_224DACA68();

        __swift_destroy_boxed_opaque_existential_1(v64);
        __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_39:

        return result;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    if (qword_2813514B8 != -1)
    {
LABEL_36:
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281364E50);

    v31 = sub_224DAB228();
    v32 = sub_224DAF288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63[0] = v34;
      *v33 = 136446210;
      v35 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
      v36 = MEMORY[0x22AA5D380](v8, v35);
      v38 = v37;

      v39 = sub_224A33F74(v36, v38, v63);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_224A2F000, v31, v32, "Client not authorized to modify descriptor enablement for requests: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v40 = sub_224CBC42C(3, 0, 0);
    v41 = sub_224DA9518();
    (*(a3 + 16))(a3, v41);
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281364E50);
    v25 = sub_224DAB228();
    v26 = sub_224DAF288();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_224A2F000, v25, v26, "Client requested descriptor modification, but couldn't understand types", v27, 2u);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v28 = sub_224CBC42C(2, 0, 0);
    v62 = sub_224DA9518();
    (*(a3 + 16))(a3, v62);
  }

  return result;
}

void sub_224BF6EFC(void *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v104 - v6;
  v121 = sub_224DAF3B8();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v8);
  v117 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v10);
  v111 = &v104 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F64F0, &unk_224DC0270);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v12);
  v112 = &v104 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5130, &unk_224DBAE70);
  v123 = *(v128 - 1);
  MEMORY[0x28223BE20](v128, v14);
  v118 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6500, &unk_224DC0280);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v129 = &v104 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v20);
  v133 = &v104 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v23 = MEMORY[0x28223BE20](v127, v22);
  v131 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v126 = &v104 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v132 = &v104 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  v31 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  v110 = a2;
  _Block_copy(a2);
  BSDispatchQueueAssert();
  v32 = a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService;
  v33 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24);
  v34 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService), v33);
  (*(v34 + 32))(v135, 768, v33, v34);
  v119 = v30;
  if (!v135[5])
  {
    sub_224A3311C(v135, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_26:
    if (qword_281351668 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v35 = sub_224A86CAC();
  sub_224A699F0(v135);
  if (!v35)
  {
    goto LABEL_26;
  }

  a1 = sub_224DA1DE8(MEMORY[0x277D84F90]);
  v36 = v35 + 8;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v16 = v38 & v35[8];
  v39 = (v37 + 63) >> 6;
  v118 = v124 + 16;
  v123 = (v124 + 8);

  v17 = 0;
  v121 = (v35 + 8);
  v120 = v39;
  v122 = v35;
  v31 = v132;
  while (v16)
  {
    v130 = a1;
LABEL_14:
    v43 = __clz(__rbit64(v16)) | (v17 << 6);
    v44 = v35[6];
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v45 = *(a1 - 1);
    (*(v45 + 16))(v31, v44 + *(v45 + 72) * v43, a1);
    v46 = *(v35[7] + 8 * v43);
    v48 = v126;
    v47 = v127;
    *&v31[*(v127 + 12)] = v46;
    sub_224A3796C(v31, v48, &qword_27D6F38A8, &unk_224DB4650);
    v49 = *(v48 + *(v47 + 12));
    v50 = v46;

    v32 = v133;
    sub_224DAA238();
    v128 = *(v45 + 8);
    v129 = a1;
    (v128)(v48, a1);
    v51 = v131;
    sub_224A3796C(v31, v131, &qword_27D6F38A8, &unk_224DB4650);
    v7 = *(v51 + *(v47 + 12));
    v52 = v130;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135[0] = v52;
    v54 = sub_224B0BB84(v32);
    v56 = v52[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_33;
    }

    v32 = v55;
    if (v52[3] < v59)
    {
      sub_224B13FB0(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_224B0BB84(v133);
      if ((v32 & 1) != (v60 & 1))
      {

        _Block_release(v110);
        sub_224DAFDD8();
        __break(1u);
        return;
      }

LABEL_19:
      a1 = v135[0];
      if (v32)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v66 = v54;
    sub_224B2801C();
    v54 = v66;
    a1 = v135[0];
    if (v32)
    {
LABEL_6:
      v40 = a1[7];
      v41 = *(v40 + 8 * v54);
      *(v40 + 8 * v54) = v7;

      (*v123)(v133, v125);
      sub_224A3311C(v132, &qword_27D6F38A8, &unk_224DB4650);
      goto LABEL_7;
    }

LABEL_20:
    a1[(v54 >> 6) + 8] |= 1 << v54;
    v32 = v124;
    v61 = v54;
    v62 = v133;
    v63 = v125;
    (*(v124 + 2))(a1[6] + *(v124 + 9) * v54, v133, v125);
    *(a1[7] + 8 * v61) = v7;
    (*(v32 + 8))(v62, v63);
    sub_224A3311C(v132, &qword_27D6F38A8, &unk_224DB4650);
    v64 = a1[2];
    v58 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v58)
    {
      goto LABEL_34;
    }

    a1[2] = v65;
LABEL_7:
    v16 &= v16 - 1;
    (v128)(v131, v129);
    v35 = v122;
    v36 = v121;
    v39 = v120;
  }

  while (1)
  {
    v42 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      sub_224A3B79C(0, &qword_281350888, 0x277CFA368);
      v67 = sub_224BEB984(a1);
      (*(v110 + 2))(v110, v67, 0);

      return;
    }

    v16 = v36[v42];
    ++v17;
    if (v16)
    {
      v130 = a1;
      v17 = v42;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_27:
  v125 = v17;
  v126 = v16;
  v127 = a1;
  v68 = sub_224DAB258();
  __swift_project_value_buffer(v68, qword_281365078);
  v69 = sub_224DAB228();
  v70 = sub_224DAF2A8();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_224A2F000, v69, v70, "Widget configuration requested before it's available to the server... waiting.", v71, 2u);
    MEMORY[0x22AA5EED0](v71, -1, -1);
  }

  v72 = swift_allocObject();
  v109 = v72;
  *(v72 + 16) = 0;
  v122 = (v72 + 16);
  v73 = swift_allocObject();
  v110 = v73;
  v73[16] = 0;
  v124 = v73 + 16;
  v133 = swift_allocObject();
  *(v133 + 16) = 1;
  v74 = *(v32 + 24);
  v75 = *(v32 + 32);
  __swift_project_boxed_opaque_existential_1(v32, v74);
  v108 = (*(*(v75 + 8) + 40))(768, v74);
  v135[0] = v108;
  v76 = v117;
  sub_224DAF388();
  v134[1] = v31;
  v131 = sub_224DAF358();
  v77 = *(v131 - 8);
  v78 = *(v77 + 56);
  v132 = (v77 + 56);
  v78(v7, 1, 1, v131);
  v106 = v78;
  v105 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v130 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  v79 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v80 = v111;
  v107 = v79;
  sub_224DAB468();
  sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);
  v81 = *(v120 + 8);
  v82 = v121;
  v81(v76, v121);

  sub_224DAF388();
  v83 = v105;
  v135[0] = v105;
  v78(v7, 1, 1, v131);
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60, MEMORY[0x277CBCCF8]);
  v84 = v112;
  v85 = v115;
  sub_224DAB458();
  sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

  v81(v76, v82);
  v86 = v80;
  v87 = v109;
  (*(v113 + 8))(v86, v85);
  sub_224A33088(&unk_27D6F6520, &unk_27D6F64F0, &unk_224DC0270, MEMORY[0x277CBCCE8]);
  v88 = v118;
  v89 = v116;
  sub_224DAB418();
  (*(v114 + 8))(v84, v89);
  v135[0] = v83;
  v106(v7, 1, 1, v131);
  sub_224A33088(&unk_27D6F5150, &unk_27D6F5130, &unk_224DBAE70, MEMORY[0x277CBCC58]);
  v90 = v128;
  v91 = v129;
  sub_224DAB448();
  v92 = v7;
  v93 = v110;
  sub_224A3311C(v92, &qword_27D6F5090, &qword_224DB5C30);

  v123[1](v88, v90);
  v94 = swift_allocObject();
  v95 = v127;
  swift_unknownObjectWeakInit();
  v96 = swift_allocObject();
  v96[2] = v94;
  v96[3] = v93;
  v97 = v133;
  v96[4] = v87;
  v96[5] = v97;
  v98 = v119;
  v96[6] = sub_224A5A398;
  v96[7] = v98;
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = v95;
  v99[4] = sub_224A5A398;
  v99[5] = v98;
  sub_224A33088(&unk_27D6F6530, &unk_27D6F6500, &unk_224DC0280, MEMORY[0x277CBCD60]);
  swift_retain_n();
  swift_retain_n();

  v95;
  v100 = v126;
  v101 = sub_224DAB408();

  (*(v125 + 8))(v91, v100);
  v102 = v122;
  swift_beginAccess();
  *v102 = v101;

  v103 = v124;
  swift_beginAccess();
  if (*v103 != 1)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_224ADC248(v134, v101);
    swift_endAccess();
  }
}

double sub_224BF8024(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC0, &unk_224DBADD8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v61 - v20;
  v65 = v22;
  MEMORY[0x28223BE20](v19, v23);
  v25 = &v61 - v24;
  v70 = swift_allocObject();
  *(v70 + 16) = a4;
  v26 = *&a3[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  v63 = a4;
  _Block_copy(a4);
  v64 = v26;
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281364E50);
  v67 = *(v14 + 16);
  v67(v21, v25, v13);
  v28 = a3;
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  v31 = os_log_type_enabled(v29, v30);
  v74 = v12;
  v71 = v14;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62 = v25;
    v34 = v33;
    v61 = swift_slowAlloc();
    v78[0] = v61;
    *v32 = 136446466;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v35 = v28;
    v36 = sub_224DAFD28();
    v37 = v14;
    v39 = v38;
    v68 = *(v37 + 8);
    v68(v21, v13);
    v40 = sub_224A33F74(v36, v39, v78);

    *(v32 + 4) = v40;
    v28 = v35;
    *(v32 + 12) = 2114;
    BSDispatchQueueAssert();
    v41 = [*&v35[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v32 + 14) = v41;
    *v34 = v41;
    _os_log_impl(&dword_224A2F000, v29, v30, "Getting an App Intents listener endpoint for %{public}s for process %{public}@", v32, 0x16u);
    sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
    v42 = v34;
    v25 = v62;
    MEMORY[0x22AA5EED0](v42, -1, -1);
    v43 = v61;
    __swift_destroy_boxed_opaque_existential_1(v61);
    v12 = v74;
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  else
  {

    v68 = *(v14 + 8);
    v68(v21, v13);
  }

  v44 = v69;
  v45 = v67;
  v67(v69, v25, v13);
  sub_224DAA278();
  __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService], *&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24]);
  sub_224DAC6C8();
  if (*(&v76 + 1))
  {
    sub_224A36F98(&v75, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5118, &qword_224DBAE58);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    *(v46 + 16) = 0;
    v64 = v79;
    v69 = v80;
    v63 = __swift_project_boxed_opaque_existential_1(v78, v79);
    v47 = *MEMORY[0x277CE3D18];
    v48 = v45;
    v49 = sub_224DAE8B8();
    v50 = *(v49 - 8);
    v51 = v66;
    (*(v50 + 104))(v66, v47, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v48(v44, v25, v13);
    v52 = v71;
    v53 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v54 = (v65 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_224BFDAC0;
    *(v55 + 24) = v46;
    (*(v52 + 32))(v55 + v53, v44, v13);
    v56 = (v55 + v54);
    v57 = v70;
    *v56 = sub_224BFDAB8;
    v56[1] = v57;
    swift_retain_n();

    sub_224DAE2A8();

    sub_224A3311C(&v75, &qword_27D6F4FC8, &unk_224DBADE8);
    sub_224A3311C(v51, &qword_27D6F4FC0, &unk_224DBADD8);
    (*(v72 + 8))(v74, v73);
    v68(v25, v13);
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    sub_224A3311C(&v75, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v58 = sub_224CBC42C(0, 0, 0);
    v59 = sub_224DA9518();
    (v63[2])(v63, 0, 0, v59);

    (*(v72 + 8))(v12, v73);
    v68(v25, v13);
  }

  return result;
}

void sub_224BF886C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  isUniquelyReferenced_nonNull_native = sub_224DAD738();
  v70 = *(isUniquelyReferenced_nonNull_native - 8);
  v8 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v7);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v69 = &v57 - v11;
  v12 = sub_224DAB7B8();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB848();
  v64 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v63 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v65 = a2;
  _Block_copy(a3);
  BSDispatchQueueAssert();
  v21 = [a1 value];
  if (!v21 || (v22 = v21, v23 = sub_224DAF008(), v22, v24 = sub_224BE8BFC(v23), , !v24))
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v45 = 2;
LABEL_23:
    v46 = sub_224CBC42C(v45, 0, 0);
    v72 = sub_224DA9518();
    (a3)[2](a3, 0, v72);

LABEL_24:
    v47 = v72;

    return;
  }

  v68 = v24;
  v62 = v16;
  if (qword_2813513E8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364CE8);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_224A2F000, v26, v27, "Suggested budgets requested.", v28, 2u);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v65 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v45 = 10;
    goto LABEL_23;
  }

  v29 = v68;
  v67 = *(v68 + 16);
  if (!v67)
  {

    v55 = objc_opt_self();
    sub_224D9F53C(MEMORY[0x277D84F98]);
    v56 = sub_224DAECC8();

    v72 = [v55 boxedValue_];

    (a3)[2](a3, v72, 0);

    goto LABEL_24;
  }

  v58 = v17;
  v59 = v13;
  v57 = a3;
  v60 = v12;
  v61 = v20;
  v20 = 0;
  v71 = (v70 + 32);
  v66 = v70 + 40;
  v30 = (v68 + 40);
  v31 = MEMORY[0x277D84F98];
  do
  {
    if (v20 >= *(v29 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v32 = *(v30 - 1);
    a3 = *v30;
    swift_bridgeObjectRetain_n();
    v33 = v69;
    sub_224DAD718();
    v12 = *v71;
    v17 = isUniquelyReferenced_nonNull_native;
    (*v71)(v72, v33, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v31;
    v13 = sub_224A3A40C(v32, a3);
    v35 = v31[2];
    v36 = (v34 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_32;
    }

    v38 = v34;
    if (v31[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28040();
      }
    }

    else
    {
      sub_224B14390(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_224A3A40C(v32, a3);
      if ((v38 & 1) != (v40 & 1))
      {

        _Block_release(v57);
        sub_224DAFDD8();
        __break(1u);
        return;
      }

      v13 = v39;
    }

    isUniquelyReferenced_nonNull_native = v17;
    v31 = aBlock[0];
    if (v38)
    {
      (*(v70 + 40))(*(aBlock[0] + 56) + *(v70 + 72) * v13, v72, v17);
    }

    else
    {
      *(aBlock[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v41 = (v31[6] + 16 * v13);
      *v41 = v32;
      v41[1] = a3;
      (v12)(v31[7] + *(v70 + 72) * v13, v72, v17);
      v42 = v31[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_33;
      }

      v31[2] = v44;
    }

    ++v20;
    v30 += 2;
    v29 = v68;
  }

  while (v67 != v20);

  if (qword_27D6F2CC8 != -1)
  {
    swift_once();
  }

  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = v31;
  v50 = v61;
  v49[4] = sub_224A5A37C;
  v49[5] = v50;
  aBlock[4] = sub_224BFDA3C;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_196;
  v51 = _Block_copy(aBlock);

  v52 = v63;
  sub_224DAB7E8();
  v73 = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v53 = v62;
  v54 = v60;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v52, v53, v51);
  _Block_release(v51);
  (*(v59 + 8))(v53, v54);
  (*(v64 + 8))(v52, v58);
}

uint64_t sub_224BF915C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a1;

    return v5;
  }

  v6 = a4;
  if (!a4)
  {
    return 0;
  }

  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
    goto LABEL_44;
  }

  v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  v10 = 0;
  v51 = v6 + 32;
  v52 = v6 & 0xC000000000000001;
  v47 = v8;
  v48 = v6;
  v46 = v9;
  while (1)
  {
    if (v52)
    {
      v12 = MEMORY[0x22AA5DCC0](v10, v6);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_43;
      }

      v12 = *(v51 + 8 * v10);
    }

    v11 = v12;
    if (__OFADD__(v10++, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v9 = sub_224DAF838();
      if (!v9)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if ([v12 isStack])
    {
      break;
    }

LABEL_10:

    v5 = 0;
    if (v10 == v9)
    {
      return v5;
    }
  }

  v6 = [v11 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v14 = sub_224DAF008();

  v49 = v10;
  v50 = v11;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v15 = sub_224DAF838();
  if (!v15)
  {
LABEL_9:

    v10 = v49;
    v11 = v50;
    v8 = v47;
    v6 = v48;
    v9 = v46;
    goto LABEL_10;
  }

LABEL_18:
  v16 = 0;
  v54 = v14 & 0xFFFFFFFFFFFFFF8;
  v55 = v14 & 0xC000000000000001;
  v53 = v14;
  while (1)
  {
    if (v55)
    {
      v17 = MEMORY[0x22AA5DCC0](v16, v14);
    }

    else
    {
      if (v16 >= *(v54 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v6 = v17;
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v8 = &off_27853F000;
    v19 = [v6 extensionIdentity];
    v20 = [a3 extensionIdentity];
    v21 = sub_224DAF6A8();

    if ((v21 & 1) == 0)
    {

      goto LABEL_20;
    }

    v22 = v15;
    v23 = [v6 kind];
    v24 = sub_224DAEE18();
    v26 = v25;

    v27 = a3;
    v28 = [a3 kind];
    v29 = sub_224DAEE18();
    v31 = v30;

    if (v24 == v29 && v26 == v31)
    {
      break;
    }

    v8 = sub_224DAFD88();

    a3 = v27;
    v15 = v22;
    v14 = v53;
    if (v8)
    {

      goto LABEL_35;
    }

LABEL_20:
    ++v16;
    if (v18 == v15)
    {
      goto LABEL_9;
    }
  }

  a3 = v27;
LABEL_35:
  v32 = [v50 uniqueIdentifier];
  v5 = sub_224DAEE18();
  v34 = v33;

  v35 = qword_2813513E8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281364CE8);

  v37 = a3;
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v42;
    *v40 = 138543618;
    *(v40 + 4) = v37;
    *v41 = v37;
    *(v40 + 12) = 2082;
    v43 = v37;
    v44 = sub_224A33F74(v5, v34, &v56);

    *(v40 + 14) = v44;
    _os_log_impl(&dword_224A2F000, v38, v39, "%{public}@ resolved prewarm stack identifier to %{public}s", v40, 0x16u);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {
  }

  return v5;
}

void sub_224BF96A4(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  v75 = a6;
  v85 = a5;
  v87 = a3;
  v88 = a4;
  v76 = a2;
  v11 = sub_224DAB7B8();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_224DAB848();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v14);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DAD548();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v16);
  v86 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAD8A8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  _Block_copy(a8);
  BSDispatchQueueAssert();
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v29 = sub_224CBC42C(10, 0, 0);
    v89 = sub_224DA9518();
    a8[2](a8, 0, 0, v89);

    v30 = v89;

    return;
  }

  v89 = v23;
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v24 = [a1 extensionIdentity];
  sub_224DAC6D8();

  v25 = v91;
  sub_224A3311C(aBlock, &unk_27D6F4700, &unk_224DB3A10);
  if (!v25)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v31 = sub_224CBC42C(0, 0, 0);
    v32 = sub_224DA9518();
    (a8)[2](a8, 0, 0, v32);
LABEL_49:

    return;
  }

  sub_224A3317C(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v91);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_13;
  }

  sub_224DACA18();
  sub_224DACF08();

  (*(v19 + 8))(v22, v18);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (!v94[0])
  {
LABEL_13:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v33 = 1;
LABEL_48:
    v31 = sub_224CBC42C(v33, 0, 0);
    v32 = sub_224DA9518();
    (a8)[2](a8, 0, 0, v32);
    goto LABEL_49;
  }

  v26 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24);
  v27 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService), v26);
  (*(v27 + 32))(aBlock, 768, v26, v27);
  if (!v93)
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    sub_224BF915C(v87, v88, a1, 0);
LABEL_47:

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v33 = 13;
    goto LABEL_48;
  }

  if (v93[2])
  {
    v28 = sub_224A79FA8(v93);
  }

  else
  {
    v28 = 0;
  }

  sub_224A699F0(aBlock);
  v34 = sub_224BF915C(v87, v88, a1, v28);
  if (!v35 || !v28)
  {
    goto LABEL_47;
  }

  v74 = v34;
  v87 = v35;
  v36 = v28 & 0xFFFFFFFFFFFFFF8;
  if (!(v28 >> 62))
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v37 = sub_224DAF838();
  if (!v37)
  {
LABEL_46:

    goto LABEL_47;
  }

LABEL_20:
  v38 = 0;
  v73 = v28 & 0xC000000000000001;
  v72 = v28;
  while (1)
  {
    if (v73)
    {
      v39 = MEMORY[0x22AA5DCC0](v38, v28);
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v38 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v39 = *(v28 + 8 * v38 + 32);
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_34;
      }
    }

    v41 = v37;
    v88 = v39;
    v42 = [v39 uniqueIdentifier];
    v43 = sub_224DAEE18();
    v45 = v44;

    v46 = v43 == v74 && v87 == v45;
    if (v46)
    {
      break;
    }

    v47 = sub_224DAFD88();

    if (v47)
    {
      goto LABEL_37;
    }

    ++v38;
    v37 = v41;
    v46 = v40 == v41;
    v28 = v72;
    if (v46)
    {
      goto LABEL_46;
    }
  }

LABEL_37:

  v48 = a1;
  v49 = v87;

  sub_224DAD538();
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService + 24));
  sub_224DADAD8();
  if (qword_2813513E8 != -1)
  {
    swift_once();
  }

  v50 = sub_224DAB258();
  __swift_project_value_buffer(v50, qword_281364CE8);
  v51 = v48;

  v52 = v75;

  v53 = sub_224DAB228();
  v54 = sub_224DAF2A8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v55 = 138543874;
    *(v55 + 4) = v51;
    *v56 = v51;
    *(v55 + 12) = 2082;
    v58 = v51;
    *(v55 + 14) = sub_224A33F74(v74, v49, aBlock);
    *(v55 + 22) = 2082;
    *(v55 + 24) = sub_224A33F74(v85, v52, aBlock);
    sub_224A3311C(v56, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v56, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v57, -1, -1);
    MEMORY[0x22AA5EED0](v55, -1, -1);
  }

  if (qword_27D6F2CC8 != -1)
  {
    swift_once();
  }

  v73 = qword_27D6F4DB0;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  v61 = v74;
  v60[2] = v59;
  v60[3] = v61;
  v62 = v88;
  v60[4] = v87;
  v60[5] = sub_224BFD818;
  v60[6] = v89;
  v60[7] = v51;
  v63 = v76;
  v60[8] = v76;
  v60[9] = v62;
  v60[10] = v85;
  v60[11] = v52;
  v92 = sub_224BFD820;
  v93 = v60;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v91 = &block_descriptor_157_0;
  v64 = _Block_copy(aBlock);
  v65 = v51;

  v66 = v63;
  v67 = v62;
  v68 = v78;
  sub_224DAB7E8();
  v94[0] = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v69 = v81;
  v70 = v84;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v68, v69, v64);
  _Block_release(v64);

  (*(v83 + 8))(v69, v70);
  (*(v80 + 8))(v68, v82);
  (*(v77 + 8))(v86, v79);
}

uint64_t sub_224BFA2A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_224DAD158();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v39 - v12;
  v14 = [a2 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v15 = sub_224DAF008();

  if (v15 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v40 = v5;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x22AA5DCC0](0, v15);
      goto LABEL_6;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 32);
LABEL_6:
      v17 = v16;

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_224DAF938();

      v41 = 0xD000000000000014;
      v42 = 0x8000000224DCA6D0;
      v18 = sub_224DAC248();
      v19 = [v18 description];
      v20 = sub_224DAEE18();
      v22 = v21;

      MEMORY[0x22AA5D210](v20, v22);

      v23 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
      v24 = sub_224DAE068();

      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      sub_224DAC7D8();
      v25 = v40;
      (*(v6 + 16))(v10, v13, v40);
      sub_224DADCB8();
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v26 = sub_224DAC248();
      sub_224DAC7E8();

      (*(v6 + 8))(v13, v25);
      return v24;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_2813513E8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281364CE8);
  v28 = a2;
  v29 = sub_224DAB228();
  v30 = sub_224DAF288();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    v33 = [v28 uniqueIdentifier];
    v34 = sub_224DAEE18();
    v36 = v35;

    v37 = sub_224A33F74(v34, v36, &v41);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_224A2F000, v29, v30, "Trying to prewarm a stack that has no widgets %s, prewarm will use default environment.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x22AA5EED0](v32, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  return 0;
}

void sub_224BFA70C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void (**a6)(const void *, void, void *))
{
  v154 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v150 = &v134 - v13;
  v145 = sub_224DAF3B8();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v14);
  v143 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5098, &qword_224DBAE18);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v16);
  v147 = &v134 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50A0, &unk_224DBAE20);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v18);
  v157 = &v134 - v19;
  v159 = sub_224DA9908();
  v162 = *(v159 - 8);
  v21 = MEMORY[0x28223BE20](v159, v20);
  v142 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v153 = &v134 - v25;
  v141 = v26;
  MEMORY[0x28223BE20](v24, v27);
  v160 = &v134 - v28;
  v161 = sub_224DAC268();
  v158 = *(v161 - 8);
  v30 = MEMORY[0x28223BE20](v161, v29);
  v156 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v31;
  MEMORY[0x28223BE20](v30, v32);
  v163 = &v134 - v33;
  v34 = sub_224DAD8A8();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = swift_allocObject();
  *(v166 + 16) = a6;
  v165 = a6;
  _Block_copy(a6);
  LODWORD(v164) = [a3 BOOLValue];
  [a4 doubleValue];
  v40 = v39;
  v155 = *(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v41 = sub_224DAB258();
  __swift_project_value_buffer(v41, qword_281364E50);
  v42 = a1;
  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543874;
    *(v45 + 4) = v42;
    *v46 = v42;
    *(v45 + 12) = 1026;
    *(v45 + 14) = v164;
    *(v45 + 18) = 2050;
    *(v45 + 20) = v40;
    v47 = v42;
    _os_log_impl(&dword_224A2F000, v43, v44, "Request to acquire lifetime assertion for %{public}@ (prewarm: %{BOOL,public}d, timeout: %{public}fs)", v45, 0x1Cu);
    sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v48 = [v42 extensionIdentity];
  sub_224DAC6D8();

  v49 = v171;
  sub_224A3311C(aBlock, &unk_27D6F4700, &unk_224DB3A10);
  if (!v49)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v72 = 0;
LABEL_13:
    v73 = sub_224CBC42C(v72, 0, 0);
    v74 = sub_224DA9518();
    v165[2](v165, 0, v74);

    return;
  }

  sub_224A3317C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v171);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_12;
  }

  sub_224DACA18();
  sub_224DACF08();

  (*(v35 + 8))(v38, v34);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (!*&v168[0])
  {
LABEL_12:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v72 = 1;
    goto LABEL_13;
  }

  v140 = a5;

  v50 = v42;
  v51 = v154;
  v52 = v163;
  v138 = v51;
  sub_224DAC238();
  v53 = v160;
  sub_224DA98F8();
  v54 = v162;
  v55 = *(v162 + 16);
  v56 = v153;
  v57 = v159;
  v137 = v162 + 16;
  v136 = v55;
  (v55)(v153, v53, v159);
  v58 = v50;
  v59 = sub_224DAB228();
  v60 = sub_224DAF2A8();
  v154 = v58;

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v154;
    v65 = v63;
    aBlock[0] = v63;
    *v61 = 138543874;
    *(v61 + 4) = v64;
    *v62 = v64;
    *(v61 + 12) = 2082;
    sub_224A80F90(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = v64;
    v67 = sub_224DAFD28();
    v69 = v68;
    v139 = *(v54 + 8);
    v139(v56, v57);
    v70 = sub_224A33F74(v67, v69, aBlock);

    *(v61 + 14) = v70;
    *(v61 + 22) = 1026;
    *(v61 + 24) = v164;
    _os_log_impl(&dword_224A2F000, v59, v60, "Acquired lifetime assertion for %{public}@: uuid=%{public}s (prewarm: %{BOOL,public}d)", v61, 0x1Cu);
    sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v71 = v65;
    v52 = v163;
    MEMORY[0x22AA5EED0](v71, -1, -1);
    MEMORY[0x22AA5EED0](v61, -1, -1);
  }

  else
  {

    v139 = *(v54 + 8);
    v139(v56, v57);
  }

  v75 = swift_allocObject();
  *(v75 + 16) = 0u;
  v76 = (v75 + 16);
  *(v75 + 32) = 0u;
  *(v75 + 48) = 0;
  v77 = [v154 kind];
  sub_224DAEE18();

  LOBYTE(v77) = sub_224DAEEE8();

  if (v77 & 1) != 0 || (v78 = [v154 kind], sub_224DAEE18(), v78, LOBYTE(v78) = sub_224DAEEE8(), , (v78))
  {
    sub_224A3311C(v76, &qword_27D6F3AE8, &unk_224DB9600);
    *v76 = 0u;
    *(v75 + 32) = 0u;
    *(v75 + 48) = 0;
  }

  else
  {
    if (qword_281352038 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1((qword_2813651B0 + 88), *(qword_2813651B0 + 112));
    sub_224CCDCE8(v52, aBlock);
    sub_224A838C0(aBlock, v76, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v79 = v140;
  v153 = v75;
  if (v164)
  {
    v80 = (v140 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService);
    __swift_project_boxed_opaque_existential_1((v140 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(v140 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
    sub_224DAD7C8();
    v81 = swift_allocObject();
    v142 = v81;
    *(v81 + 16) = 0;
    v141 = (v81 + 16);
    v164 = swift_allocObject();
    *(v164 + 16) = 1;
    v82 = swift_allocObject();
    v165 = v82;
    *(v82 + 16) = 0;
    v139 = (v82 + 16);
    v83 = v80[3];
    v135 = v80;
    __swift_project_boxed_opaque_existential_1(v80, v83);
    v138 = sub_224DAD7B8();
    *&v168[0] = v138;
    v84 = v143;
    sub_224DAF368();
    v85 = v155;
    v167[1] = v155;
    v86 = sub_224DAF358();
    v87 = *(v86 - 8);
    v136 = *(v87 + 56);
    v137 = v87 + 56;
    v88 = v150;
    v136(v150, 1, 1, v86);
    v155 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
    sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
    v89 = v147;
    sub_224DAB458();
    sub_224A3311C(v88, &qword_27D6F5090, &qword_224DB5C30);
    (*(v144 + 8))(v84, v145);

    v90 = v155;
    *&v168[0] = v155;
    v136(v88, 1, 1, v86);
    sub_224A33088(&qword_27D6F50C0, &qword_27D6F5098, &qword_224DBAE18, MEMORY[0x277CBCCE8]);
    v91 = v149;
    sub_224DAB448();
    sub_224A3311C(v88, &qword_27D6F5090, &qword_224DB5C30);

    (*(v148 + 8))(v89, v91);
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = swift_allocObject();
    v94 = v164;
    v93[2] = v92;
    v93[3] = v94;
    v95 = v142;
    v93[4] = v154;
    v93[5] = v95;
    v155 = sub_224A5A398;
    v93[6] = v165;
    v93[7] = sub_224A5A398;
    v93[8] = v166;
    v150 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = v158;
    (*(v158 + 16))(v156, v163, v161);
    sub_224A3796C(aBlock, v168, &qword_27D6F3AE8, &unk_224DB9600);
    v97 = (*(v96 + 80) + 24) & ~*(v96 + 80);
    v98 = (v146 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
    v149 = (v102 + 47) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    *(v104 + 16) = v150;
    (*(v96 + 32))(v104 + v97, v156, v161);
    v105 = v154;
    *(v104 + v98) = v154;
    *(v104 + v99) = v164;
    *(v104 + v100) = v142;
    *(v104 + v101) = v165;
    v106 = v163;
    v107 = v104 + v102;
    v108 = v168[1];
    *v107 = v168[0];
    *(v107 + 16) = v108;
    *(v107 + 32) = v169;
    *(v104 + v149) = v153;
    v109 = (v104 + v103);
    v110 = v166;
    *v109 = v155;
    v109[1] = v110;
    v156 = sub_224A33088(&unk_27D6F50C8, &unk_27D6F50A0, &unk_224DBAE20, MEMORY[0x277CBCD60]);
    v111 = v105;
    v112 = v106;
    v113 = v111;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v114 = v113;

    v115 = v152;
    v116 = v157;
    v117 = sub_224DAB408();

    (*(v151 + 8))(v116, v115);
    v118 = v139;
    swift_beginAccess();
    *v118 = v117;

    v119 = v141;
    swift_beginAccess();
    if ((*v119 & 1) == 0)
    {
      swift_beginAccess();
      swift_retain_n();
      sub_224ADC248(v167, v117);
      swift_endAccess();

      __swift_project_boxed_opaque_existential_1(v135, v135[3]);
      sub_224DAC7F8();
    }

    sub_224A3311C(aBlock, &qword_27D6F3AE8, &unk_224DB9600);
    (*(v162 + 8))(v160, v159);
    (*(v158 + 8))(v112, v161);
  }

  else
  {
    v120 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v121 = v142;
    v122 = v160;
    (v136)(v142, v160, v57);
    v123 = v162;
    v124 = (*(v162 + 80) + 24) & ~*(v162 + 80);
    v125 = &v141[v124 + 7] & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *(v126 + 16) = v120;
    (*(v123 + 32))(v126 + v124, v121, v57);
    *(v126 + v125) = v153;
    v172 = sub_224BFD664;
    v173 = v126;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    v171 = &block_descriptor_126;
    v127 = _Block_copy(aBlock);
    v128 = objc_opt_self();

    v129 = [v128 responderWithHandler_];
    _Block_release(v127);

    [v129 setQueue_];
    v130 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetLifetimeAssertionResponders;
    swift_beginAccess();
    v131 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v168[0] = *(v79 + v130);
    *(v79 + v130) = 0x8000000000000000;
    sub_224B21AE0(v131, v122, isUniquelyReferenced_nonNull_native);
    *(v79 + v130) = *&v168[0];
    swift_endAccess();
    v133 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v131];
    (v165)[2](v165, v133, 0);

    v139(v122, v57);
    (*(v158 + 8))(v163, v161);
  }
}

uint64_t sub_224BFBD94(void *a1)
{
  v2 = sub_224DAEE18();
  if (!a1[2])
  {

    goto LABEL_12;
  }

  v4 = sub_224A3A40C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_224A33E0C(a1[7] + 32 * v4, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = sub_224DAEE18();
  if (!a1[2])
  {

    goto LABEL_11;
  }

  v9 = sub_224A3A40C(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_224A33E0C(a1[7] + 32 * v9, v18);

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v12 = sub_224DAEE18();
    v14 = v13;
    sub_224BFD5C8();
    swift_allocError();
    *v15 = v12;
    v15[1] = v14;
    swift_willThrow();
    return v12 & 1;
  }

  LOBYTE(v12) = [v17 BOOLValue];

  return v12 & 1;
}

void sub_224BFBF7C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  BSDispatchQueueAssert();
  v9 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(a3 + v9, &v12, &unk_27D6F5050, &unk_224DBAE08);
  if (v13)
  {
    sub_224A36F98(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_224CFB4FC(a1, a2, sub_224BFDE1C, v8);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_224A3311C(&v12, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v10 = sub_224CBC42C(18, 0, 0);
    v11 = sub_224DA9518();
    (a4)[2](a4, v11);
  }
}

void sub_224BFC108(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  v4 = sub_224A5D694(0, 0, 0);
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(a1 + v5, v15, &unk_27D6F5050, &unk_224DBAE08);
  v6 = v16;
  if (v16)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v8 + 16))(v10);
    sub_224A3311C(v15, &unk_27D6F5050, &unk_224DBAE08);
    sub_224CFAFFC();
    (*(v8 + 8))(v10, v6);
  }

  else
  {
    sub_224A3311C(v15, &unk_27D6F5050, &unk_224DBAE08);
  }

  v11 = objc_allocWithZone(MEMORY[0x277CFA308]);
  sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
  v12 = sub_224DAEFF8();

  v13 = [v11 initWithDevices_];

  (*(a2 + 16))(a2, v13, v4, 0);
}

void sub_224BFC3CC(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  v3 = sub_224A5D694(2, 0, 0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_224BE64D8();
  }

  else
  {
    v6 = 0;
  }

  (*(a2 + 16))(a2, v6, v3, 0);
}

void sub_224BFC4EC(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  sub_224A3796C(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &v13, &unk_27D6F4FB0, &unk_224DBADC8);
  v4 = *(&v14 + 1);
  sub_224A3311C(&v13, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v4)
  {
    v7 = sub_224A5D694(3, 0, 0);
    (*(a2 + 16))(a2, v7, 0);

    if ([*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteTarget])
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
      if (swift_dynamicCast())
      {
        v9 = [objc_opt_self() reloadEvent];
        [v10 handleWidgetRelevanceEvent_];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_224A3311C(&v13, &qword_27D6F4760, &unk_224DB3680);
    }
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224DAEE18();
    v5 = sub_224DAF648();
    v6 = sub_224DA9518();
    (*(a2 + 16))(a2, 0, v6);
  }
}

void sub_224BFC780(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService;
  swift_beginAccess();
  sub_224A3796C(a1 + v4, v9, &unk_27D6F4FD0, &qword_224DB75F0);
  v5 = v10;
  sub_224A3311C(v9, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v5)
  {
    v8 = sub_224A5D694(5, 0, 0);
    (*(a2 + 16))(a2, v8, 0);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224DAEE18();
    v6 = sub_224DAF648();
    v7 = sub_224DA9518();
    (*(a2 + 16))(a2, 0, v7);
  }
}

void sub_224BFC938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  _Block_copy(a5);
  BSDispatchQueueAssert();
  sub_224A3796C(a4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &v14, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v15)
  {
    sub_224A36F98(&v14, v16);
    if (a3)
    {
      v11 = *__swift_project_boxed_opaque_existential_1(v16, v17);
      _Block_copy(a5);
      sub_224B66C04(a1, a2, a3, v11, a5);
      _Block_release(a5);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v16, v17);
      sub_224B5CF4C(a1, sub_224BFDE1C, v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_224A3311C(&v14, &unk_27D6F4FB0, &unk_224DBADC8);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224DAEE18();
    v12 = sub_224DAF648();
    v13 = sub_224DA9518();
    (a5)[2](a5, v13);
  }

  _Block_release(a5);
}

double sub_224BFCB40(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v79 = a3;
  v80 = a1;
  v10 = sub_224DAB7B8();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_224DAB848();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v13);
  v69 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v77 = &v66 - v18;
  v19 = sub_224DADE98();
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v76 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  _Block_copy(a6);
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  v24 = __swift_project_value_buffer(v23, qword_281364CD0);

  v75 = v24;
  v25 = sub_224DAB228();
  v26 = sub_224DAF288();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v68 = v19;
    v67 = v15;
    v28 = a5;
    v29 = v27;
    v30 = a6;
    v31 = v22;
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v29 = 136446466;
    *(v29 + 4) = sub_224A33F74(v79, a4, &aBlock);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_224A33F74(v80, a2, &aBlock);
    _os_log_impl(&dword_224A2F000, v25, v26, "ChronoServices request to invalidate relevance for %{public}s-%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v33 = v32;
    v22 = v31;
    a6 = v30;
    MEMORY[0x22AA5EED0](v33, -1, -1);
    v34 = v29;
    a5 = v28;
    v15 = v67;
    v19 = v68;
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  sub_224A3796C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!v83)
  {
    sub_224A3311C(&aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224DAEE18();
    v55 = sub_224DAF648();
    v56 = sub_224DA9518();
    (a6)[2](a6, v56);

    return result;
  }

  sub_224A36F98(&aBlock, v87);
  sub_224A3317C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v83);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_12;
  }

  v35 = v77;
  sub_224DA9FF8();
  v36 = v76;
  sub_224DACA08();
  (*(v16 + 8))(v35, v15);
  sub_224DACF08();

  (v78)[1](v36, v19);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v37 = v86;
  if (!v86)
  {
LABEL_12:
    v58 = sub_224DAB228();
    v59 = sub_224DAF288();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_224A2F000, v58, v59, "No matching descriptors found", v60, 2u);
      MEMORY[0x22AA5EED0](v60, -1, -1);
    }

    sub_224BFD554();
    v61 = swift_allocError();
    *v62 = 1;
    v63 = sub_224DA9518();
    (a6)[2](a6, v63);

    goto LABEL_15;
  }

  v38 = a6;
  v39 = __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v40 = v37;
  v41 = [v40 extensionIdentity];
  v42 = [v40 kind];
  v43 = sub_224DAEE18();
  v45 = v44;

  v46 = swift_allocObject();
  *(v46 + 16) = sub_224B67834;
  *(v46 + 24) = v22;
  v47 = *v39;
  swift_retain_n();
  sub_224B5BA90(v41);
  if (v48)
  {
    v49 = v48;
    v80 = *(v47 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v50 = swift_allocObject();
    v50[2] = v47;
    v50[3] = v49;
    v50[4] = v43;
    v50[5] = v45;
    v50[6] = sub_224B9D69C;
    v50[7] = v46;
    v84 = sub_224BFD5A8;
    v85 = v50;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v82 = sub_224A39F40;
    v83 = &block_descriptor_26;
    v51 = _Block_copy(&aBlock);

    v78 = v49;

    v79 = v41;
    v52 = v69;
    sub_224DAB7E8();
    v86 = MEMORY[0x277D84F90];
    sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v53 = v71;
    v54 = v74;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v52, v53, v51);
    _Block_release(v51);

    (*(v73 + 8))(v53, v54);
    (*(v70 + 8))(v52, v72);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v64 = sub_224CBC42C(24, 0xD000000000000025, 0x8000000224DC72C0);
    v65 = sub_224DA9518();
    (v38)[2](v38, v65);
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v87);

  return result;
}

unint64_t sub_224BFD554()
{
  result = qword_28135CCC0;
  if (!qword_28135CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCC0);
  }

  return result;
}

unint64_t sub_224BFD5C8()
{
  result = qword_27D6F5078;
  if (!qword_27D6F5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5078);
  }

  return result;
}

uint64_t sub_224BFD61C(uint64_t a1)
{
  v3 = *(v1 + 24);
  [*(v1 + 16) invalidate];
  return v3(a1);
}

void sub_224BFD664(uint64_t a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224BF0754(a1, v5, v1 + v4, v6);
}

char *sub_224BFD718(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224BF0D60(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), v1 + v9, *(v1 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

char *sub_224BFD898(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224BEF4C8(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), *(v1 + v9), v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double sub_224BFD990()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_224BF04A8(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_224BFDA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50F8, &qword_224DBAE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224BFDAC8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_224BEC94C(a1, v5, v6, v1 + v4, v8, v9);
}

void sub_224BFDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_224BECF5C(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224BFDC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5050, &unk_224DBAE08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_272Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

void *sub_224BFDE80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224BFE0B8();
  swift_dynamicCast();
  v10 = v16[1];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v6 + 16))(v9, &v11[v12], v5);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v4);
  sub_224DA9898();
  v14 = sub_224DAF508();

  [v10 setExtensionIdentity_];
  return v10;
}

unint64_t sub_224BFE0B8()
{
  result = qword_27D6F5228;
  if (!qword_27D6F5228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F5228);
  }

  return result;
}

uint64_t sub_224BFE104(void *a1)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v91 = &v89 - v4;
  v5 = sub_224DA9688();
  v92 = *(v5 - 8);
  v93 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v96 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v95 = &v89 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v99 = &v89 - v13;
  v14 = sub_224DA9908();
  v103 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v105 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v108 = &v89 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v89 = &v89 - v22;
  v23 = sub_224DAAE38();
  v24 = *(v23 - 1);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v106 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v104 = (&v89 - v30);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v89 - v32;
  v34 = v1[3];
  v94 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v34);
  v35 = sub_224DAAC78();
  v36 = v35;
  v37 = *(v35 + 16);
  v38 = MEMORY[0x277D84F90];
  v109 = v14;
  v102 = v37;
  if (!v37)
  {
LABEL_12:

    v46 = *(v38 + 16);
    if (v46)
    {
      v110 = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v46, 0);
      v47 = v110;
      v104 = v24[2];
      v48 = v24 + 2;
      v49 = v38 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v50 = v48[7];
      v107 = v48;
      v51 = (v48 - 1);
      v101 = (v103 + 32);
      v102 = v50;
      v52 = v89;
      do
      {
        v53 = v106;
        (v104)(v106, v49, v23);
        sub_224DAAD98();
        (*v51)(v53, v23);
        v110 = v47;
        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_224ADA3D0((v54 > 1), v55 + 1, 1);
          v47 = v110;
        }

        *(v47 + 16) = v55 + 1;
        (*(v103 + 32))(v47 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v52, v109);
        v49 += v102;
        --v46;
      }

      while (v46);

      v14 = v109;
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    v56 = sub_224AE9AE8(v47);

    __swift_project_boxed_opaque_existential_1(v90 + 1, v90[4]);
    type metadata accessor for UnpairedRelationshipURLProposer(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_224DB3100;
    v58 = *MEMORY[0x277CBE7B0];
    *(v57 + 32) = *MEMORY[0x277CBE7B0];
    v59 = v58;
    v68 = sub_224DAA3C8();

    v110 = MEMORY[0x277D84FA0];
    v102 = *(v68 + 16);
    if (!v102)
    {

      return MEMORY[0x277D84FA0];
    }

    v69 = 0;
    v70 = v92;
    v100 = (v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)));
    v97 = (v103 + 48);
    v98 = v92 + 16;
    v94 = (v103 + 32);
    v104 = (v103 + 16);
    v101 = (v92 + 8);
    v106 = (v56 + 56);
    v107 = (v103 + 8);
    v90 = ((v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v23 = v91;
    v71 = v93;
    v72 = v108;
    v89 = v68;
    while (1)
    {
      if (v69 >= *(v68 + 16))
      {
        goto LABEL_44;
      }

      (*(v70 + 16))(v99, v100 + *(v70 + 72) * v69, v71);
      sub_224DA95E8();
      sub_224DA9888();

      if ((*v97)(v23, 1, v14) == 1)
      {
        sub_224A3311C(v23, &unk_27D6F5630, &unk_224DB34C0);
      }

      else
      {
        (*v94)(v72, v23, v14);
        if (*(v56 + 16))
        {
          sub_224A43A94(&qword_281351A18, MEMORY[0x277CC9600]);
          v77 = sub_224DAED88();
          v78 = -1 << *(v56 + 32);
          v79 = v77 & ~v78;
          if ((*&v106[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79))
          {
            v80 = ~v78;
            v81 = *(v103 + 72);
            v82 = *(v103 + 16);
            while (1)
            {
              v83 = v56;
              v84 = *(v56 + 48) + v81 * v79;
              v85 = v105;
              v82(v105, v84, v14);
              sub_224A43A94(&qword_281351A10, MEMORY[0x277CC9610]);
              v86 = sub_224DAEDD8();
              v87 = *v107;
              (*v107)(v85, v14);
              if (v86)
              {
                break;
              }

              v79 = (v79 + 1) & v80;
              v56 = v83;
              if (((*&v106[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) == 0)
              {
                v23 = v91;
                v72 = v108;
                v68 = v89;
                goto LABEL_37;
              }
            }

            v72 = v108;
            v87(v108, v14);
            v71 = v93;
            (*v101)(v99, v93);
            v23 = v91;
            v70 = v92;
            v56 = v83;
            v68 = v89;
            goto LABEL_26;
          }

          v87 = *v107;
LABEL_37:
          v87(v72, v14);
          v70 = v92;
          v71 = v93;
        }

        else
        {
          (*v107)(v72, v14);
        }
      }

      v73 = v96;
      v74 = v99;
      sub_224DA9548();
      v75 = v95;
      sub_224ADB390(v95, v73);
      v76 = *v101;
      (*v101)(v75, v71);
      v76(v74, v71);
      v72 = v108;
      v14 = v109;
LABEL_26:
      if (++v69 == v102)
      {

        return v110;
      }
    }
  }

  v39 = 0;
  v97 = (v24 + 1);
  v98 = v35;
  v100 = (v24 + 4);
  v101 = v24 + 2;
  v107 = v24;
  while (v39 < *(v36 + 16))
  {
    v40 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v41 = v24[9];
    (v24[2])(v33, v36 + v40 + v41 * v39, v23);
    if (sub_224DAAE28())
    {
      v42 = *v100;
      (*v100)(v104, v33, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA1C0(0, *(v38 + 16) + 1, 1);
        v38 = v110;
      }

      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_224ADA1C0((v44 > 1), v45 + 1, 1);
        v38 = v110;
      }

      *(v38 + 16) = v45 + 1;
      v42((v38 + v40 + v45 * v41), v104, v23);
      v14 = v109;
      v24 = v107;
      v36 = v98;
    }

    else
    {
      (*v97)(v33, v23);
    }

    if (v102 == ++v39)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  swift_once();
  v60 = sub_224DAB258();
  __swift_project_value_buffer(v60, qword_281364DD8);
  v61 = v23;
  v62 = sub_224DAB228();
  v63 = sub_224DAF288();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138543362;
    v66 = v23;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v64 + 4) = v67;
    *v65 = v67;
    _os_log_impl(&dword_224A2F000, v62, v63, "Failed to get list of remote archive URLs: %{public}@", v64, 0xCu);
    sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v65, -1, -1);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_224BFEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v58 = v43 - v4;
  v5 = sub_224DA9688();
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v53 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v57 = v43 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v56 = v43 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v55 = v43 - v16;
  v17 = sub_224DA9878();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v46 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DA9908();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v47 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v43 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v43 - v30;
  v32 = sub_224DACDC8();
  sub_224DAF538();
  v33 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v28 + 16))(v31, &v32[v33], v27);
  v34 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v32[v34], v26);
  sub_224DA9898();
  v52 = sub_224DAF508();

  v35 = sub_224DACE08();
  v50 = v36;
  v51 = v35;
  v37 = sub_224DACD38();
  v48 = v38;
  v49 = v37;
  sub_224DACCB8();
  sub_224DACD08();
  v45 = sub_224DACCA8();
  sub_224DACE28();
  sub_224DACCF8();
  sub_224DACD68();
  sub_224DACD78();
  v44 = sub_224DACCE8();
  sub_224DACD28();
  v43[6] = sub_224DACDD8();
  v43[5] = v39;
  v43[4] = sub_224DACD98();
  v43[3] = v40;
  v43[2] = sub_224DACD58();
  v43[1] = v41;
  sub_224DACCC8();
  sub_224DACE18();
  sub_224DACC98();
  sub_224DACD48();
  sub_224DACD88();
  sub_224DACDE8();
  sub_224DACCD8();
  return sub_224DACDB8();
}

uint64_t sub_224BFF164@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v57 = v42 - v3;
  v4 = sub_224DA9688();
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v52 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v56 = v42 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v55 = v42 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v54 = v42 - v15;
  v16 = sub_224DA9878();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v45 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DA9908();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v46 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v42 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v42 - v29;
  v31 = sub_224DACDC8();
  sub_224DAF538();
  v32 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v27 + 16))(v30, &v31[v32], v26);
  v33 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v31[v33], v25);
  v51 = sub_224DAF508();

  v34 = sub_224DACE08();
  v49 = v35;
  v50 = v34;
  v36 = sub_224DACD38();
  v47 = v37;
  v48 = v36;
  sub_224DACCB8();
  sub_224DACD08();
  v44 = sub_224DACCA8();
  sub_224DACE28();
  sub_224DACCF8();
  sub_224DACD68();
  sub_224DACD78();
  v43 = sub_224DACCE8();
  sub_224DACD28();
  v42[6] = sub_224DACDD8();
  v42[5] = v38;
  v42[4] = sub_224DACD98();
  v42[3] = v39;
  v42[2] = sub_224DACD58();
  v42[1] = v40;
  sub_224DACCC8();
  sub_224DACE18();
  sub_224DACC98();
  sub_224DACD48();
  sub_224DACD88();
  sub_224DACDE8();
  sub_224DACCD8();
  return sub_224DACDB8();
}

uint64_t sub_224BFF638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_224DAAF28();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - v18;
  v20 = &v2[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  if (!*(v20 + 1))
  {
    v24 = sub_224DA9908();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    goto LABEL_5;
  }

  v26 = a2;

  sub_224DA9888();
  v21 = sub_224DA9908();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v7, 1, v21);
  if (result != 1)
  {

    (*(v22 + 32))(v16, v7, v21);
    (*(v22 + 56))(v16, 0, 1, v21);
LABEL_5:
    sub_224BFF92C(v16, v19);
    v25 = [v2 tokenString];
    sub_224DAEE18();

    sub_224ACFD88(v19, v12);

    sub_224DAAEE8();
    return sub_224ACFD2C(v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BFF92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BFF990()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5530, &unk_224DBB320);
    sub_224A33088(&qword_281350F10, &qword_27D6F5530, &unk_224DBB320, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224BFFA54()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_224DAC0D8();
    *(v0 + 48) = v1;
  }

  return v1;
}

void sub_224BFFABC(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C04BE8(a1, a3);
  }

  else
  {
    v5 = sub_224DAE4F8();
    (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }
}

uint64_t sub_224BFFB70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_224DB2780;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v8);
  v9 = sub_224DAC2A8();
  result = (*(v3 + 8))(v6, v2);
  *(v7 + 32) = v9;
  *a1 = v7;
  return result;
}

double sub_224BFFC98(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_224DAB348();
  }

  return result;
}

double sub_224BFFD18(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAE918();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - v9;
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v12 + 16))(v15, Strong + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v11);

    (*(v4 + 16))(v10, a1, v3);
    v17 = v4;
    v18 = sub_224DAB228();
    v19 = sub_224DAF278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v3;
      v21 = v20;
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v21 = 136446210;
      sub_224C086C4(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v32 = v11;
      v22 = v17;
      v23 = sub_224DAFD28();
      v33 = a1;
      v25 = v24;
      (*(v22 + 8))(v10, v34);
      v26 = sub_224A33F74(v23, v25, v36);
      a1 = v33;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v18, v19, "Protection Type changed to %{public}s", v21, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      v28 = v21;
      v3 = v34;
      MEMORY[0x22AA5EED0](v28, -1, -1);

      (*(v12 + 8))(v15, v32);
      v4 = v22;
    }

    else
    {

      (*(v17 + 8))(v10, v3);
      (*(v12 + 8))(v15, v11);
      v4 = v17;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    (*(v4 + 16))(v35, a1, v3);
    sub_224DAC0A8();
  }

  return result;
}

double sub_224C000FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C00154();
  }

  return result;
}

void sub_224C00154()
{
  v1 = sub_224DAD158();
  v214 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v201 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v209 = &v175 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v202 = &v175 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v208 = &v175 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v207 = &v175 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v227 = &v175 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v231 = &v175 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v213 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v175 - v31;
  v228 = sub_224DAC2B8();
  v220 = *(v228 - 8);
  v34 = MEMORY[0x28223BE20](v228, v33);
  v226 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v229 = &v175 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v232 = &v175 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v179 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41, v42);
  v198 = &v175 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v215 = &v175 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v177 = &v175 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v52 = MEMORY[0x28223BE20](v50 - 8, v51);
  v182 = &v175 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v181 = &v175 - v55;
  v57 = v0[10];
  v56 = v0[11];
  v189 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 7, v57);
  v58 = (*(*(v56 + 8) + 24))(768, v57);
  v192 = v11;
  v206 = v32;
  if (v58)
  {
    v59 = sub_224CFEA64(v58);
  }

  else
  {
    v59 = sub_224DA08CC(MEMORY[0x277D84F90]);
  }

  v60 = 0;
  v197 = 0;
  v178 = v59;
  v61 = v59 + 64;
  v62 = 1 << *(v59 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v59 + 64);
  v188 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue;
  v176 = (v62 + 63) >> 6;
  v193 = (v179 + 16);
  v196 = (v179 + 32);
  v205 = (v179 + 56);
  v204 = (v179 + 48);
  v195 = (v179 + 8);
  v219 = (v214 + 56);
  v187 = v214 + 16;
  v203 = (v214 + 48);
  v218 = (v214 + 32);
  v191 = (v214 + 8);
  v230 = (v220 + 16);
  v186 = v214 + 40;
  v225 = (v220 + 8);
  v200 = v220 + 32;
  v65 = MEMORY[0x277D84F98];
  v233 = MEMORY[0x277D84F90];
  v199 = MEMORY[0x277D84F90];
  v217 = v1;
  v66 = v232;
  v216 = v41;
  v180 = v59 + 64;
  while (v64)
  {
    v67 = v65;
    v185 = v60;
    v68 = v60;
LABEL_18:
    v184 = (v64 - 1) & v64;
    v71 = __clz(__rbit64(v64)) | (v68 << 6);
    v72 = v178;
    v73 = v179;
    v74 = v177;
    (*(v179 + 16))(v177, *(v178 + 48) + *(v179 + 72) * v71, v41);
    v75 = *(*(v72 + 56) + 8 * v71);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
    v77 = *(v76 + 48);
    v78 = *(v73 + 32);
    v79 = v182;
    v80 = v74;
    v81 = v41;
    v78(v182, v80, v41);
    *(v79 + v77) = v75;
    (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
    v82 = v75;
    v65 = v67;
LABEL_19:
    v83 = v181;
    sub_224C08978(v79, v181);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
    if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
    {

      v173 = v189;
      v174 = *(v189 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock);

      os_unfair_lock_lock(v174 + 4);
      *(v173 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions) = v199;

      os_unfair_lock_unlock(v174 + 4);

      return;
    }

    v85 = *(v83 + *(v84 + 48));
    v86 = v81;
    v194 = *v196;
    v194(v215, v83, v81);
    v183 = v85;
    v87 = [v85 controlItems];
    sub_224DAF5D8();
    v88 = sub_224DAF008();

    v89 = v88;
    if (v88 >> 62)
    {
      v172 = sub_224DAF838();
      v89 = v88;
      v90 = v172;
    }

    else
    {
      v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v213;
    if (v90)
    {
      v92 = 0;
      v212 = v89 & 0xC000000000000001;
      v190 = v89 & 0xFFFFFFFFFFFFFF8;
      v211 = v89;
      v210 = v90;
      while (1)
      {
        if (v212)
        {
          v93 = MEMORY[0x22AA5DCC0](v92);
        }

        else
        {
          if (v92 >= *(v190 + 16))
          {
            goto LABEL_88;
          }

          v93 = *(v89 + 8 * v92 + 32);
        }

        v234 = v93;
        v94 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          break;
        }

        v95 = v65;
        v96 = v1;
        v222 = v92;
        v97 = v234;
        v224 = [v234 canAppearInSecureEnvironment];
        v98 = v215;
        sub_224DAA1F8();
        v99 = sub_224DAA048();

        v100 = [v97 controlIdentity];
        if (v99)
        {
          v101 = v206;
          (*v193)(v206, v98, v86);
          v102 = 0;
        }

        else
        {
          v102 = 1;
          v101 = v206;
        }

        (*v205)(v101, v102, 1, v86);
        sub_224DAC298();
        sub_224DAC288();
        v103 = v96;
        if ((*v204)(v91, 1, v86) == 1)
        {
          sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
          v104 = v219;
          v105 = v203;
          v106 = v65;
        }

        else
        {
          v107 = v198;
          v194(v198, v91, v86);
          sub_224DAA1F8();
          v106 = v95;
          if (v108)
          {

            MEMORY[0x28223BE20](v109, v110);
            *(&v175 - 2) = v111;
            *(&v175 - 1) = v66;
            v113 = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
            v114 = v197;
            sub_224DAF3E8();

            sub_224A3317C(&v236, &v235);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v197 = v114;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v199 = sub_224AD97A8(0, v199[2] + 1, 1, v199);
            }

            v104 = v219;
            v105 = v203;
            v117 = v199[2];
            v116 = v199[3];
            v66 = v232;
            v118 = v216;
            if (v117 >= v116 >> 1)
            {
              v199 = sub_224AD97A8((v116 > 1), v117 + 1, 1, v199);
            }

            __swift_destroy_boxed_opaque_existential_1(&v236);
            (*v195)(v198, v118);
            v119 = v199;
            v199[2] = v117 + 1;
            sub_224A39D14(&v235, &v119[5 * v117 + 4]);
          }

          else
          {
            (*v195)(v107, v86);
            v104 = v219;
            v105 = v203;
          }
        }

        v120 = v209;
        v121 = v106[2];
        v223 = v106;
        v221 = v94;
        if (v121 && (v122 = sub_224B0BBA8(v66), (v123 & 1) != 0))
        {
          (*(v214 + 16))(v231, v106[7] + *(v214 + 72) * v122, v103);
          v124 = 0;
        }

        else
        {
          v124 = 1;
        }

        v125 = v207;
        v126 = *v104;
        v127 = v231;
        (*v104)(v231, v124, 1, v103);
        v128 = v227;
        v126(v227, 1, 1, v103);
        sub_224A3796C(v127, v125, &qword_27D6F5238, &qword_224DBB1E0);
        v129 = *v105;
        if ((*v105)(v125, 1, v103) == 1)
        {
          sub_224A3311C(v125, &qword_27D6F5238, &qword_224DBB1E0);
          v130 = v208;
          sub_224DAD148();
          v126(v130, 0, 1, v103);
          sub_224C089E8(v130, v128);
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_94;
          }

          sub_224DACFF8();
          v131 = v234;
          [v234 supportedColorSchemes];
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_91;
          }

          sub_224DAD098();
          [v131 supportsLowLuminance];
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_95;
          }

          sub_224DAD108();
          v132 = v228;
        }

        else
        {
          (*v218)(v120, v125, v103);
          v133 = v208;
          sub_224DAD148();
          v126(v133, 0, 1, v103);
          sub_224C089E8(v133, v128);
          sub_224DACFE8();
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_97;
          }

          sub_224DACFF8();
          sub_224DAD088();
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_92;
          }

          sub_224DAD098();
          v134 = v234;
          v135 = [v234 supportedColorSchemes];
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_96;
          }

          v137 = sub_224DAD078();
          if ((v135 & ~*v136) != 0)
          {
            *v136 |= v135;
          }

          v137(&v236, 0);
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v134 supportsLowLuminance];
          }

          v132 = v228;
          if (v129(v128, 1, v103) == 1)
          {
            goto LABEL_93;
          }

          sub_224DAD108();
          (*v191)(v120, v103);
        }

        v138 = v229;
        v139 = *v230;
        (*v230)(v229, v232, v132);
        v140 = v202;
        sub_224A3796C(v128, v202, &qword_27D6F5238, &qword_224DBB1E0);
        if (v129(v140, 1, v103) == 1)
        {
          v141 = v220;
          sub_224A3311C(v140, &qword_27D6F5238, &qword_224DBB1E0);
          v65 = v223;
          v142 = sub_224B0BBA8(v138);
          if (v143)
          {
            v144 = v142;
            v145 = swift_isUniquelyReferenced_nonNull_native();
            v236 = v65;
            v66 = v232;
            if (!v145)
            {
              sub_224B285C8();
              v65 = v236;
            }

            v146 = *(v141 + 8);
            v147 = v228;
            v146(v65[6] + *(v141 + 72) * v144, v228);
            v148 = v192;
            v149 = v217;
            (*(v214 + 32))(v192, v65[7] + *(v214 + 72) * v144, v217);
            sub_224B1CFB4(v144, v65);
            v146(v229, v147);
            v150 = 0;
          }

          else
          {
            v146 = *v225;
            v147 = v228;
            (*v225)(v138, v228);
            v150 = 1;
            v148 = v192;
            v149 = v217;
            v66 = v232;
          }

          v126(v148, v150, 1, v149);
          sub_224A3311C(v148, &qword_27D6F5238, &qword_224DBB1E0);
          v162 = v226;
          v86 = v216;
        }

        else
        {
          v151 = *v218;
          (*v218)(v201, v140, v103);
          v152 = v223;
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v236 = v152;
          v154 = sub_224B0BBA8(v138);
          v156 = v152[2];
          v157 = (v155 & 1) == 0;
          v158 = __OFADD__(v156, v157);
          v159 = v156 + v157;
          if (v158)
          {
            goto LABEL_87;
          }

          v160 = v155;
          if (v152[3] >= v159)
          {
            v66 = v232;
            if ((v153 & 1) == 0)
            {
              v170 = v154;
              sub_224B285C8();
              v154 = v170;
            }
          }

          else
          {
            sub_224B14F0C(v159, v153);
            v154 = sub_224B0BBA8(v229);
            v66 = v232;
            if ((v160 & 1) != (v161 & 1))
            {
              goto LABEL_98;
            }
          }

          v86 = v216;
          v65 = v236;
          if (v160)
          {
            (*(v214 + 40))(v236[7] + *(v214 + 72) * v154, v201, v103);
            v147 = v228;
          }

          else
          {
            v236[(v154 >> 6) + 8] |= 1 << v154;
            v163 = v154;
            v147 = v228;
            v139(v65[6] + *(v220 + 72) * v154, v229, v228);
            v151((v65[7] + *(v214 + 72) * v163), v201, v103);
            v164 = v65[2];
            v158 = __OFADD__(v164, 1);
            v165 = v164 + 1;
            if (v158)
            {
              goto LABEL_90;
            }

            v65[2] = v165;
          }

          v146 = *v225;
          (*v225)(v229, v147);
          v162 = v226;
        }

        v139(v162, v66, v147);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_224AD990C(0, v233[2] + 1, 1, v233);
        }

        v166 = v217;
        v168 = v233[2];
        v167 = v233[3];
        if (v168 >= v167 >> 1)
        {
          v233 = sub_224AD990C((v167 > 1), v168 + 1, 1, v233);
        }

        sub_224A3311C(v231, &qword_27D6F5238, &qword_224DBB1E0);
        v169 = v233;
        v233[2] = v168 + 1;
        (*(v220 + 32))(v169 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v168, v226, v147);
        v146(v66, v147);
        sub_224A3311C(v227, &qword_27D6F5238, &qword_224DBB1E0);
        v92 = v222 + 1;
        v91 = v213;
        v1 = v166;
        v89 = v211;
        if (v221 == v210)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_7:

    v41 = v86;
    (*v195)(v215, v86);
    v60 = v185;
    v61 = v180;
    v64 = v184;
  }

  if (v176 <= v60 + 1)
  {
    v69 = v60 + 1;
  }

  else
  {
    v69 = v176;
  }

  v70 = v69 - 1;
  while (1)
  {
    v68 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v68 >= v176)
    {
      v81 = v41;
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v79 = v182;
      (*(*(v171 - 8) + 56))(v182, 1, 1, v171);
      v184 = 0;
      v185 = v70;
      goto LABEL_19;
    }

    v64 = *(v61 + 8 * v68);
    ++v60;
    if (v64)
    {
      v67 = v65;
      v185 = v68;
      goto LABEL_18;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  sub_224DAFDD8();
  __break(1u);
}

double sub_224C01838(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C031B4(a1);
  }

  return result;
}

double sub_224C01898(char *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C01968(a1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B3E234(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224C01968(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - v11;
  sub_224DAC288();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &qword_27D6F56C0, &unk_224DB3580);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_224DAA1F8();
  if (v14)
  {
  }

  else
  {
    v15 = sub_224DAC2A8();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v18 = *(v17 + 1);

    if (v18)
    {

      __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
      sub_224AB2FC8(a1);
    }
  }

  return (*(v9 + 8))(v12, v8);
}

double sub_224C01B9C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong, v3);
    sub_224DAC128();
  }

  return result;
}

void sub_224C01C48()
{
  v1 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue;
  v2 = *&v0[OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_224C088A8;
  *(v3 + 24) = v0;
  v8[4] = sub_224A8A838;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224A9B6F8;
  v8[3] = &block_descriptor_27;
  v4 = _Block_copy(v8);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);

    __swift_destroy_boxed_opaque_existential_1(v0 + 23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 28);

    __swift_destroy_boxed_opaque_existential_1(v0 + 34);
    __swift_destroy_boxed_opaque_existential_1(v0 + 39);
    v6 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
    v7 = sub_224DAB258();
    (*(*(v7 - 8) + 8))(&v0[v6], v7);
  }
}

uint64_t sub_224C01E88(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v6 != v4);
  }
}

uint64_t sub_224C01F94()
{
  sub_224C01C48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewControlService(uint64_t a1)
{
  result = qword_281357D38;
  if (!qword_281357D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C02040(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_224C0212C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v7);
  v9 = &v22 - v8;
  v10 = sub_224DAB258();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, &a1[OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger], v10);
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224A2F000, v15, v16, "Start", v17, 2u);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_project_boxed_opaque_existential_1(a1 + 17, *(a1 + 20));
  v24 = sub_224DAC698();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v18 = sub_224DAF3D8();
  v25 = v18;
  v19 = sub_224DAF358();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, MEMORY[0x277CBCD60]);
  v20 = v23;
  sub_224DAB488();

  (*(v6 + 8))(v9, v20);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
  sub_224DAB318();
  swift_endAccess();

  return result;
}

void sub_224C025B8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DAC2B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v42 = *(v8 + 16);
  if (!v42)
  {
LABEL_32:

    return;
  }

  v9 = 0;
  v43 = v8 + 32;
  v56 = "Reloading all content: ";
  v10 = (v4 + 8);
  v48 = v4;
  v49 = v3;
  v46 = v4 + 16;
  v47 = v7;
  v41 = v8;
  v45 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_36;
    }

    v44 = v9;
    sub_224A3317C(v43 + 40 * v9, v59);
    v12 = sub_224DAC108();
    v55 = *(v12 + 16);
    if (v55)
    {
      break;
    }

LABEL_5:
    v11 = v44 + 1;
    __swift_destroy_boxed_opaque_existential_1(v59);
    v9 = v11;
    if (v11 == v42)
    {
      goto LABEL_32;
    }
  }

  v13 = v12;
  v54 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v14 = v13;
  v15 = 0;
  v16 = *(v4 + 80);
  v52 = v13;
  v53 = v13 + ((v16 + 32) & ~v16);
LABEL_11:
  if (v15 >= *(v14 + 16))
  {
    goto LABEL_35;
  }

  (*(v4 + 16))(v7, v53 + *(v4 + 72) * v15, v3);
  v17 = sub_224DAC2A8();
  v18 = [v17 extensionIdentity];

  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v19 = sub_224DAE338();
  LOBYTE(v17) = sub_224DAF6A8();

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = sub_224DAC168();
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = sub_224DAFA68();
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = v22 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v23 = v20 + 64;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 64);
  }

  v29 = 0;
  v51 = v24;
  v30 = (v24 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v31 = v29;
    v32 = v25;
    v33 = v29;
    if (!v25)
    {
      break;
    }

LABEL_25:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v21 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));

    if (!v35)
    {
LABEL_9:
      sub_224A3B7E4(v21);
      v4 = v48;
      v3 = v49;
      v7 = v47;
      v10 = v45;
LABEL_10:
      ++v15;
      (*v10)(v7, v3);
      v14 = v52;
      if (v15 == v55)
      {

        v8 = v41;
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    while (1)
    {

      sub_224DABF38();
      sub_224DABEA8();

      v29 = v33;
      v25 = v34;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v36 = sub_224DAFB18();
      if (v36)
      {
        v38 = v37;
        v57 = v36;
        type metadata accessor for EmptyKey();
        swift_dynamicCast();
        v39 = v58;
        v57 = v38;
        sub_224DABF48();
        swift_dynamicCast();
        v33 = v29;
        v34 = v25;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      goto LABEL_9;
    }

    v32 = *(v23 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_224C02A5C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224DACB08();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v79 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_224DACB28();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v9);
  v74 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DACC88();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v72 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v66 = &v57[-v16];
  v17 = sub_224DAC2B8();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v68 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_224DACB98();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v67 = &v57[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v57[-v26];
  v28 = sub_224DAB258();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v57[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *(v29 + 16);
  v63 = v34;
  v33(v32, v3 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger);
  v35 = *(v21 + 16);
  v80 = v20;
  v64 = v35;
  v65 = v21 + 16;
  v35(v27, a2, v20);
  v36 = a1;
  v37 = sub_224DAB228();
  v38 = sub_224DAF2A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v62 = v3;
    v40 = v39;
    v41 = swift_slowAlloc();
    v59 = v41;
    v60 = swift_slowAlloc();
    v81 = v60;
    *v40 = 138543618;
    *(v40 + 4) = v36;
    *v41 = v36;
    *(v40 + 12) = 2082;
    sub_224C086C4(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v61 = a2;
    v42 = v36;
    v58 = v38;
    v43 = v36;
    v44 = v80;
    v45 = sub_224DAFD28();
    v47 = v46;
    v48 = v44;
    v36 = v43;
    (*(v21 + 8))(v27, v48);
    v49 = sub_224A33F74(v45, v47, &v81);
    a2 = v61;

    *(v40 + 14) = v49;
    _os_log_impl(&dword_224A2F000, v37, v58, "Reload preview control: %{public}@ for reason: %{public}s", v40, 0x16u);
    v50 = v59;
    sub_224A3311C(v59, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v50, -1, -1);
    v51 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x22AA5EED0](v51, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v27, v80);
  }

  (*(v29 + 8))(v32, v63);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v53 = v66;
  (*(*(v52 - 8) + 56))(v66, 1, 1, v52);
  v54 = v68;
  sub_224C07F90(v36, v53, v68);
  sub_224A3311C(v53, &qword_27D6F56C0, &unk_224DB3580);
  swift_getObjectType();
  sub_224DAC468();
  (*(v71 + 104))(v74, *MEMORY[0x277CF9B50], v73);
  (*(v77 + 104))(v79, *MEMORY[0x277CF9B40], v78);
  v64(v67, a2, v80);
  sub_224DACC48();
  v55 = v72;
  sub_224DACC38();
  sub_224DAC138();
  (*(v75 + 8))(v55, v76);
  return (*(v69 + 8))(v54, v70);
}

uint64_t sub_224C031B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v44 = &v34 - v6;
  v45 = sub_224DAF3B8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v34 - v13;
  v14 = sub_224DAC2B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v42 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v20 = *(v15 + 16);
  v47 = &v34 - v21;
  v41 = v20;
  v20();
  v22 = sub_224DAC168();
  if (v22 && (v40 = a1, v23 = sub_224D5D150(v22), , v23))
  {
    sub_224DABEB8();

    v39 = v2;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v36 = sub_224DAD178();
    v49 = v36;
    sub_224DAF378();
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v35 = sub_224DAF3D8();
    v48 = v35;
    v24 = sub_224DAF358();
    v25 = v44;
    (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
    v37 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v38 = v11;
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v25, &qword_27D6F5090, &qword_224DB5C30);

    (*(v43 + 8))(v9, v45);

    __swift_destroy_boxed_opaque_existential_1(v50);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v42;
    (v41)(v42, v40, v14);
    v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    (*(v15 + 32))(v29 + v28, v27, v14);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
    v30 = v37;
    v31 = v46;
    v32 = sub_224DAB488();

    (*(v38 + 8))(v31, v30);
  }

  else
  {
    v32 = 0;
  }

  swift_beginAccess();
  sub_224B08CD8(v32, v47);
  return swift_endAccess();
}

double sub_224C03704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DAC2B8();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v45 = v6;
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v43 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;

    v49 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v23, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    v30 = *(v11 + 48);
    sub_224A3796C(v26, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v23, &v14[v30], &qword_27D6F4C30, &unk_224DBB310);
    v31 = *(v8 + 48);
    if (v31(v14, 1, v7) == 1)
    {
      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
LABEL_10:
        v49 = *(v29 + 176);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v46;
        v39 = v47;
        v40 = v48;
        (*(v47 + 16))(v46, v32, v48);
        v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v37;
        (*(v39 + 32))(v42 + v41, v38, v40);

        sub_224DAC0B8();

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);

        return result;
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) != 1)
      {
        v33 = &v14[v30];
        v34 = v44;
        (*(v8 + 32))(v44, v33, v7);
        sub_224C086C4(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
        v35 = sub_224DAEDD8();
        v36 = *(v8 + 8);
        v36(v34, v7);
        sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
        v36(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
        if (v35)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224C03D78(v32);

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);
        return result;
      }

      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v32 = v49;
    goto LABEL_8;
  }

  return result;
}

double sub_224C03D18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C03D78(a2);
  }

  return result;
}

void sub_224C03D78(uint64_t a1)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DACB08();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v8);
  v115 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_224DACB28();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v10);
  v110 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_224DACC88();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v12);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DAC2B8();
  v14 = *(v116 - 8);
  v16 = MEMORY[0x28223BE20](v116, v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v104 = &v91 - v20;
  v121 = sub_224DAB258();
  v127 = *(v121 - 8);
  v22 = MEMORY[0x28223BE20](v121, v21);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v105 = &v91 - v26;
  v126 = sub_224DAB728();
  v119 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v27);
  v125 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_224DAE4F8();
  v29 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v30);
  v123 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v1;
  v106 = *(v1 + 176);
  v32 = sub_224DAC168();
  if (v32)
  {
    v33 = v32;
    v102 = v4;
    v103 = v7;
    v34 = sub_224DAC2A8();
    v35 = [v34 extensionIdentity];

    swift_beginAccess();

    v36 = sub_224DAA048();

    if (v36)
    {

      v37 = v127;
      v38 = v121;
      (*(v127 + 16))(v24, v117 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v121);
      v39 = v116;
      (*(v14 + 16))(v18, a1, v116);
      v40 = sub_224DAB228();
      v41 = sub_224DAF278();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v37;
        v44 = swift_slowAlloc();
        v129[0] = v44;
        *v42 = 136446210;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v45 = sub_224DAFD28();
        v46 = v39;
        v48 = v47;
        (*(v14 + 8))(v18, v46);
        v49 = sub_224A33F74(v45, v48, v129);

        *(v42 + 4) = v49;
        _os_log_impl(&dword_224A2F000, v40, v41, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x22AA5EED0](v44, -1, -1);
        MEMORY[0x22AA5EED0](v42, -1, -1);

        (*(v43 + 8))(v24, v121);
      }

      else
      {

        (*(v14 + 8))(v18, v39);
        (*(v37 + 8))(v24, v38);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_224DBB050;
      *(v50 + 32) = swift_getKeyPath();
      *(v50 + 40) = swift_getKeyPath();
      *(v50 + 48) = swift_getKeyPath();
      *(v50 + 56) = swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v122 = v50;
      *(v50 + 64) = KeyPath;
      v101 = a1;
      v99 = v3;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v53 = sub_224DAFA68();
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v33 = v53 | 0x8000000000000000;
      }

      else
      {
        v57 = -1 << *(v33 + 32);
        v54 = v33 + 64;
        v55 = ~v57;
        v58 = -v57;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v56 = v59 & *(v33 + 64);
      }

      v100 = 0;
      v60 = 0;
      v98 = v55;
      v61 = (v55 + 64) >> 6;
      ++v119;
      v118 = (v29 + 8);
      v97 = (v127 + 16);
      v96 = (v14 + 16);
      v95 = (v14 + 8);
      v94 = (v127 + 8);
      *&v52 = 136446210;
      v93 = v52;
      v120 = v54;
LABEL_13:
      v62 = v60;
      if ((v33 & 0x8000000000000000) != 0)
      {
LABEL_16:
        v63 = sub_224DAFB18();
        if (v63)
        {
          v65 = v64;
          v128[0] = v63;
          type metadata accessor for EmptyKey();
          swift_dynamicCast();
          v66 = v129[0];
          v128[0] = v65;
          sub_224DABF48();
          swift_dynamicCast();
          v60 = v62;
          v67 = v56;
          if (v66)
          {
            goto LABEL_24;
          }
        }

LABEL_32:
        sub_224A3B7E4(v33);

        v87 = v99;
        v88 = v103;
        v89 = v102;
        if (v100)
        {
          (*(v107 + 104))(v110, *MEMORY[0x277CF9B50], v108);
          (*(v113 + 104))(v115, *MEMORY[0x277CF9B40], v114);
          (*(v89 + 104))(v88, *MEMORY[0x277CF9BA8], v87);
          sub_224DACC48();
          v90 = v109;
          sub_224DACC38();
          sub_224DAC138();
          (*(v111 + 8))(v90, v112);
        }
      }

      else
      {
        while (1)
        {
          v68 = v62;
          v69 = v56;
          v60 = v62;
          if (!v56)
          {
            break;
          }

LABEL_23:
          v67 = (v69 - 1) & v69;
          v70 = *(*(v33 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v69)))));

          if (!v70)
          {
            goto LABEL_32;
          }

LABEL_24:

          if (sub_224DABF28())
          {
            v127 = v67;
            v71 = v33;
            sub_224DAC9F8();
            __swift_project_boxed_opaque_existential_1(v129, v129[3]);
            v72 = v123;
            sub_224DAE7E8();
            sub_224DABEB8();
            __swift_project_boxed_opaque_existential_1(v128, v128[3]);
            v73 = v125;
            sub_224DAD168();

            v74 = sub_224DAE4E8();

            (*v119)(v73, v126);
            (*v118)(v72, v124);
            __swift_destroy_boxed_opaque_existential_1(v128);
            __swift_destroy_boxed_opaque_existential_1(v129);
            if ((v74 & 1) == 0)
            {
              v75 = v121;
              (*v97)(v105, v117 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v121);
              v76 = v104;
              v77 = v116;
              (*v96)(v104, v101, v116);
              v78 = sub_224DAB228();
              v100 = sub_224DAF2A8();
              v33 = v71;
              if (os_log_type_enabled(v78, v100))
              {
                v79 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v129[0] = v92;
                *v79 = v93;
                sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
                v80 = v78;
                v81 = sub_224DAFD28();
                v82 = v76;
                v84 = v83;
                (*v95)(v82, v77);
                v85 = sub_224A33F74(v81, v84, v129);

                *(v79 + 4) = v85;
                _os_log_impl(&dword_224A2F000, v80, v100, "Proactively reloading timeline for %{public}s because environment no longer matches.", v79, 0xCu);
                v86 = v92;
                __swift_destroy_boxed_opaque_existential_1(v92);
                MEMORY[0x22AA5EED0](v86, -1, -1);
                MEMORY[0x22AA5EED0](v79, -1, -1);

                (*v94)(v105, v121);
              }

              else
              {

                (*v95)(v76, v77);
                (*v94)(v105, v75);
              }

              v100 = 1;
              v54 = v120;
              v56 = v127;
              goto LABEL_13;
            }

            v62 = v60;
            v56 = v127;
            v33 = v71;
            v54 = v120;
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_16;
            }
          }

          else
          {

            v62 = v60;
            v56 = v67;
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_16;
            }
          }
        }

        while (1)
        {
          v60 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v60 >= v61)
          {
            goto LABEL_32;
          }

          v69 = *(v54 + 8 * v60);
          ++v68;
          if (v69)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_224C04BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = sub_224DAC2B8();
  v161 = *(v155 - 8);
  v6 = MEMORY[0x28223BE20](v155, v5);
  v150 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v144 = &v133 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v152 = &v133 - v12;
  v13 = sub_224DAB258();
  v156 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v151 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v145 = &v133 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v153 = &v133 - v21;
  v154 = sub_224DAD158();
  v157 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v22);
  v24 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_224DAE4F8();
  v166 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v25);
  v165 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB728();
  v159 = *(v27 - 8);
  v160 = v27;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v158 = &v133 - v33;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v35 = MEMORY[0x28223BE20](v148, v34);
  v149 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v133 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v133 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = &v133 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v167 = &v133 - v50;
  v163 = v2;
  KeyPath = a1;
  v51 = sub_224DAC168();
  if (v51)
  {
    v52 = sub_224D5D26C(v51);
    v54 = v53;

    if (v52)
    {
      v147 = v13;
      v143 = a2;

      v55 = v167;
      sub_224DADDE8();

      v142 = v54;
      sub_224DABEB8();
      __swift_project_boxed_opaque_existential_1(v169, v169[3]);
      v56 = v158;
      sub_224DAD168();
      __swift_destroy_boxed_opaque_existential_1(v169);
      (*(v159 + 16))(v31, v56, v160);
      sub_224DAE4D8();
      sub_224A3796C(v55, v48, &qword_27D6F5238, &qword_224DBB1E0);
      v57 = v157;
      v58 = *(v157 + 48);
      v59 = v154;
      v141 = v157 + 48;
      v146 = v58;
      v60 = v58(v48, 1, v154);
      v135 = v40;
      if (v60 == 1)
      {
        sub_224A3311C(v48, &qword_27D6F5238, &qword_224DBB1E0);
        swift_getKeyPath();
        sub_224DAB518();
        sub_224DAE4B8();
      }

      else
      {
        (*(v57 + 32))(v24, v48, v59);
        swift_getKeyPath();
        sub_224DAD038();
        sub_224DAE4B8();
        (*(v57 + 8))(v24, v59);
      }

      v64 = v147;
      v65 = v161;
      v66 = v156;
      v67 = *(v156 + 16);
      v136 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
      v68 = v153;
      v138 = v156 + 16;
      v137 = v67;
      v67(v153, v163 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v147);
      v69 = *(v65 + 16);
      v70 = v152;
      v71 = v155;
      v140 = v65 + 16;
      v139 = v69;
      v69(v152, KeyPath, v155);
      sub_224A3796C(v167, v44, &qword_27D6F5238, &qword_224DBB1E0);
      v72 = sub_224DAB228();
      v134 = sub_224DAF278();
      if (os_log_type_enabled(v72, v134))
      {
        v73 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v168 = v133;
        *v73 = 136446722;
        swift_getKeyPath();
        swift_beginAccess();
        v74 = sub_224DAE4A8();
        if (v74)
        {
          v75 = v74;
          swift_endAccess();

          v76 = sub_224DAB528();
          v77 = MEMORY[0x22AA5D380](v75, v76);
          v79 = v78;
        }

        else
        {
          swift_endAccess();

          v79 = 0xE300000000000000;
          v77 = 7104878;
        }

        v83 = v152;
        v84 = v72;
        v82 = v135;
        v85 = sub_224A33F74(v77, v79, &v168);

        *(v73 + 4) = v85;
        *(v73 + 12) = 2082;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v86 = v83;
        v87 = v155;
        v88 = sub_224DAFD28();
        v90 = v89;
        v152 = *(v161 + 8);
        (v152)(v86, v87);
        v91 = sub_224A33F74(v88, v90, &v168);

        *(v73 + 14) = v91;
        *(v73 + 22) = 2082;
        v92 = sub_224DAF708();
        v94 = v93;
        v95 = v44;
        v80 = v87;
        sub_224A3311C(v95, &qword_27D6F5238, &qword_224DBB1E0);
        v96 = sub_224A33F74(v92, v94, &v168);

        *(v73 + 24) = v96;
        _os_log_impl(&dword_224A2F000, v84, v134, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v73, 0x20u);
        v97 = v133;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v97, -1, -1);
        MEMORY[0x22AA5EED0](v73, -1, -1);

        v98 = v153;
        v81 = v147;
        v153 = *(v156 + 8);
        (v153)(v98, v147);
        v59 = v154;
      }

      else
      {

        sub_224A3311C(v44, &qword_27D6F5238, &qword_224DBB1E0);
        v152 = *(v65 + 8);
        (v152)(v70, v71);
        v153 = *(v66 + 8);
        (v153)(v68, v64);
        v80 = v71;
        v81 = v64;
        v82 = v135;
      }

      swift_getKeyPath();
      sub_224A3796C(v167, v82, &qword_27D6F5238, &qword_224DBB1E0);
      v99 = v146(v82, 1, v59);
      v100 = v151;
      if (v99 == 1)
      {
        sub_224A3311C(v82, &qword_27D6F5238, &qword_224DBB1E0);
      }

      else
      {
        sub_224DAD0F8();
        (*(v157 + 8))(v82, v59);
      }

      v101 = v150;
      swift_beginAccess();
      sub_224DAE4B8();
      swift_endAccess();
      v102 = v149;
      sub_224A3796C(v167, v149, &qword_27D6F5238, &qword_224DBB1E0);
      if (v146(v102, 1, v59) == 1)
      {
        sub_224A3311C(v102, &qword_27D6F5238, &qword_224DBB1E0);
      }

      else
      {
        v103 = sub_224DACFE8();
        (*(v157 + 8))(v102, v59);
        if (v103)
        {
          v104 = v145;
          v137(v145, v163 + v136, v81);
          v105 = v144;
          v139(v144, KeyPath, v80);
          v106 = sub_224DAB228();
          v107 = sub_224DAF278();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = v104;
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v169[0] = v110;
            *v109 = 136446210;
            sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
            v111 = sub_224DAFD28();
            v112 = v80;
            v114 = v113;
            (v152)(v105, v112);
            v115 = sub_224A33F74(v111, v114, v169);

            *(v109 + 4) = v115;
            __swift_destroy_boxed_opaque_existential_1(v110);
            MEMORY[0x22AA5EED0](v110, -1, -1);
            MEMORY[0x22AA5EED0](v109, -1, -1);

            v116 = v108;
            v117 = v147;
          }

          else
          {

            (v152)(v105, v80);
            v116 = v104;
            v117 = v81;
          }

          (v153)(v116, v117);
          KeyPath = swift_getKeyPath();
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
          sub_224DAB558();
          *(swift_allocObject() + 16) = xmmword_224DB30F0;
          v169[0] = MEMORY[0x277D84F90];
          sub_224C086C4(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
          sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
          sub_224DAF788();
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_224DB3100;
          sub_224DAB548();
          v169[0] = v130;
          sub_224DAF788();
          v129 = v165;
          swift_beginAccess();
          goto LABEL_29;
        }
      }

      v137(v100, v163 + v136, v81);
      v139(v101, KeyPath, v80);
      v118 = sub_224DAB228();
      v119 = sub_224DAF278();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v169[0] = v121;
        *v120 = 136446210;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v122 = sub_224DAFD28();
        v123 = v80;
        v125 = v124;
        (v152)(v101, v123);
        v126 = sub_224A33F74(v122, v125, v169);

        *(v120 + 4) = v126;
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x22AA5EED0](v121, -1, -1);
        MEMORY[0x22AA5EED0](v120, -1, -1);

        v127 = v100;
        v128 = v147;
      }

      else
      {

        (v152)(v101, v80);
        v127 = v100;
        v128 = v81;
      }

      (v153)(v127, v128);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
      sub_224DAB558();
      *(swift_allocObject() + 16) = xmmword_224DB3100;
      v169[0] = MEMORY[0x277D84F90];
      sub_224C086C4(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
      sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
      sub_224DAF788();
      v129 = v165;
      swift_beginAccess();
LABEL_29:
      sub_224DAE4B8();
      swift_endAccess();

      (*(v159 + 8))(v158, v160);
      sub_224A3311C(v167, &qword_27D6F5238, &qword_224DBB1E0);
      v131 = v143;
      v132 = v162;
      (*(v166 + 16))(v143, v129, v162);
      (*(v166 + 56))(v131, 0, 1, v132);
      return (*(v166 + 8))(v129, v132);
    }
  }

  v61 = *(v166 + 56);
  v62 = v162;

  return v61(a2, 1, 1, v62);
}

uint64_t sub_224C05F9C(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_224DACB98();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v6);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DACB08();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v8);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DACB28();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v10);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DACC88();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v12);
  v109 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAC2B8();
  v112 = *(v115 - 8);
  v15 = MEMORY[0x28223BE20](v115, v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v83 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v101 = &v83 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v102 = (&v83 - v26);
  v27 = sub_224DAB258();
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v36 = &v83 - v34;
  v100 = a3;
  v107 = a1;
  v108 = v33;
  v110 = v21;
  v114 = v31;
  v95 = v35;
  if (a2)
  {
    v83 = v17;

    v38 = sub_224A3DADC(v37);

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v40 = *(result + 16);
    v113 = v38;
    v106 = v40;
    if (v40)
    {
      v41 = 0;
      v103 = (v38 & 0xC000000000000001);
      v104 = (v112 + 16);
      if (v38 < 0)
      {
        v42 = v38;
      }

      else
      {
        v42 = v38 & 0xFFFFFFFFFFFFFF8;
      }

      v111 = v38 + 56;
      v97 = v42;
      *&v98 = v112 + 32;
      v96 = (v112 + 8);
      v99 = MEMORY[0x277D84F90];
      v31 = v114;
      v43 = v115;
      v44 = v102;
      v105 = result;
      while (1)
      {
        if (v41 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v45 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v46 = *(v112 + 72);
        (*(v112 + 16))(v44, result + v45 + v46 * v41, v43);
        v47 = sub_224DAC2A8();
        v48 = [v47 extensionIdentity];

        if (v103)
        {
          v49 = v48;
          v50 = sub_224DAF888();

          if (v50)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v56 = v113;
          if (*(v113 + 16))
          {
            sub_224DAF538();
            v57 = sub_224DAF698();
            v58 = -1 << *(v56 + 32);
            v59 = v57 & ~v58;
            if ((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
            {
              v60 = ~v58;
              while (1)
              {
                v61 = *(*(v56 + 48) + 8 * v59);
                v62 = sub_224DAF6A8();

                if (v62)
                {
                  break;
                }

                v59 = (v59 + 1) & v60;
                v56 = v113;
                if (((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              a3 = v100;
              v21 = v110;
              v44 = v102;
LABEL_13:
              v51 = *v98;
              (*v98)(v101, v44, v115);
              v52 = v99;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = v52;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA520(0, *(v52 + 16) + 1, 1);
                v52 = v116;
              }

              v55 = *(v52 + 16);
              v54 = *(v52 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_224ADA520((v54 > 1), v55 + 1, 1);
                v52 = v116;
              }

              *(v52 + 16) = v55 + 1;
              v99 = v52;
              v43 = v115;
              v51(v52 + v45 + v55 * v46, v101, v115);
              v31 = v114;
              v44 = v102;
              goto LABEL_9;
            }
          }

LABEL_7:

          a3 = v100;
          v21 = v110;
          v31 = v114;
          v44 = v102;
        }

        v43 = v115;
        (*v96)(v44, v115);
LABEL_9:
        ++v41;
        result = v105;
        if (v41 == v106)
        {
          goto LABEL_29;
        }
      }
    }

    v99 = MEMORY[0x277D84F90];
    v31 = v114;
    v43 = v115;
LABEL_29:

    v17 = v83;
    v67 = v99;
  }

  else
  {
    (*(v35 + 16))(&v83 - v34, a3 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger);
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_224A2F000, v63, v64, "Locale change detected - reloading all controls", v65, 2u);
      v66 = v65;
      v31 = v114;
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    (*(v95 + 8))(v36, v108);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v67 = sub_224DAD3C8();
    v43 = v115;
  }

  (*(v84 + 104))(v86, *MEMORY[0x277CF9B50], v85);
  (*(v87 + 104))(v89, *MEMORY[0x277CF9B40], v88);
  (*(v90 + 104))(v91, *MEMORY[0x277CF9BA8], v92);
  sub_224DACC48();
  sub_224DACC38();
  v69 = *(v67 + 16);
  if (v69)
  {
    v111 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
    v106 = *(v112 + 16);
    v70 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v99 = v67;
    v71 = v67 + v70;
    v105 = *(v112 + 72);
    v104 = (v95 + 16);
    v112 += 16;
    v102 = (v95 + 8);
    *&v68 = 138543362;
    v98 = v68;
    v103 = (v112 - 8);
    v101 = ((v112 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v72 = v108;
    do
    {
      v113 = v69;
      v74 = v106;
      v106(v21, v71, v43);
      (*v104)(v31, a3 + v111, v72);
      v74(v17, v21, v43);
      v75 = sub_224DAB228();
      v76 = v17;
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v98;
        v80 = sub_224DAC2A8();
        v81 = [v80 extensionIdentity];

        v73 = *v103;
        (*v103)(v76, v115);
        *(v78 + 4) = v81;
        *v79 = v81;
        a3 = v100;
        _os_log_impl(&dword_224A2F000, v75, v77, "Locale change detected - reloading controls for %{public}@", v78, 0xCu);
        sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
        v82 = v79;
        v31 = v114;
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v78, -1, -1);
      }

      else
      {

        v73 = *v103;
        (*v103)(v76, v43);
      }

      v17 = v76;
      v72 = v108;
      (*v102)(v31, v108);
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v21 = v110;
      v31 = v114;
      sub_224DAD3E8();
      v43 = v115;
      v73(v21, v115);
      v71 += v105;
      v69 = v113 - 1;
    }

    while (v113 != 1);
  }

  return (*(v93 + 8))(v109, v94);
}

void sub_224C06B14(uint64_t a1)
{
  v40 = sub_224DAC2B8();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB258();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB8C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_224DAB8F8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    type metadata accessor for EmptyKey();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0xE000000000000000;
    v19 = *(v1 + 176);
    v43 = v18;
    sub_224DAD288();
    v20 = *(v41 + 16);
    v39 = v1;
    v20(v10, v1 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v42);
    v21 = *(v3 + 16);
    v38 = a1;
    v22 = v40;
    v21(v6, a1, v40);
    v23 = sub_224DAB228();
    v24 = sub_224DAF278();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v19;
      v27 = v26;
      v43 = v26;
      *v25 = 136446210;
      sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v28 = sub_224DAFD28();
      v29 = v22;
      v31 = v30;
      (*(v3 + 8))(v6, v29);
      v32 = sub_224A33F74(v28, v31, &v43);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_224A2F000, v23, v24, "making preview control entry if needed for %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v22);
    }

    v33 = (*(v41 + 8))(v10, v42);
    LOBYTE(v43) = 0;
    MEMORY[0x28223BE20](v33, v34);
    v36 = v38;
    v35 = v39;
    *(&v37 - 4) = v38;
    *(&v37 - 3) = v18;
    *(&v37 - 2) = v35;
    *(&v37 - 1) = &v43;
    sub_224DAC128();
    if (v43 == 1)
    {
      sub_224C06FA4(v36);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_224C06FA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - v14;
  v16 = sub_224DAC2B8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v39 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v37 - v22;
  v24 = sub_224DAC2A8();
  v25 = [v24 extensionIdentity];

  v26 = &v25[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v27 = *(v26 + 1);

  if (v27)
  {
    v38 = v2;

    (*(v17 + 16))(v23, a1, v16);
    sub_224DAC288();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v15, 1, v28);
    sub_224A3311C(v15, &qword_27D6F56C0, &unk_224DB3580);
    if (v30 == 1)
    {
      sub_224DAC2A8();
      if (qword_27D6F2C58 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v28, qword_27D6F7180);
      (*(v29 + 16))(v12, v31, v28);
      (*(v29 + 56))(v12, 0, 1, v28);
      v32 = v39;
      sub_224DAC298();
      (*(v17 + 8))(v23, v16);
      (*(v17 + 32))(v23, v32, v16);
    }

    sub_224DA98F8();
    sub_224DA9898();
    (*(v40 + 8))(v7, v41);
    v33 = sub_224DAC2A8();
    v34 = objc_allocWithZone(MEMORY[0x277CFA200]);
    v35 = sub_224DAEDE8();

    v36 = [v34 initWithUniqueIdentifier:v35 controlIdentity:v33 location:0];

    __swift_project_boxed_opaque_existential_1((v38 + 56), *(v38 + 80));
    sub_224AB2B00(v23, v36);

    (*(v17 + 8))(v23, v16);
  }
}

void sub_224C07424(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v100 = a5;
  v101 = a4;
  v97 = sub_224DACB98();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v8);
  v96 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DACB08();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v10);
  v94 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v12);
  v91 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_224DACC88();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v14);
  v108 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v88 = &v78 - v18;
  v19 = sub_224DAE918();
  v106 = *(v19 - 8);
  v107 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v78 - v25;
  v105 = sub_224DAC2B8();
  v102 = *(v105 - 8);
  v28 = MEMORY[0x28223BE20](v105, v27);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v86 = &v78 - v32;
  v87 = sub_224DAB258();
  v104 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v33);
  v103 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v112[0] = a3;
  sub_224DAD3D8();
  if (v112[7])
  {

    return;
  }

  v81 = v30;
  v82 = v23;
  v84 = v26;
  v83 = a1;
  v35 = v101;
  v36 = v87;
  (v104)[2](v103, v101 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v87);
  v37 = *(v102 + 16);
  v38 = v86;
  v85 = a2;
  v39 = v105;
  v80 = v102 + 16;
  v79 = v37;
  v37(v86, a2, v105);

  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();

  v42 = os_log_type_enabled(v40, v41);
  v43 = a3;
  v44 = v39;
  v78 = v43;
  if (v42)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v112[0] = v46;
    *v45 = 136446466;
    sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v47 = v41;
    v48 = sub_224DAFD28();
    v49 = v38;
    v51 = v50;
    (*(v102 + 8))(v49, v44);
    v52 = sub_224A33F74(v48, v51, v112);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2082;
    v54 = *(v43 + 16);
    v53 = *(v43 + 24);

    v55 = sub_224A33F74(v54, v53, v112);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_224A2F000, v40, v47, "%{public}s:%{public}s Creating preview control entry", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v46, -1, -1);
    v56 = v45;
    v35 = v101;
    MEMORY[0x22AA5EED0](v56, -1, -1);
  }

  else
  {

    (*(v102 + 8))(v38, v39);
  }

  (v104[1])(v103, v36);
  v57 = v83;
  v58 = v88;
  v59 = sub_224DAC2A8();
  v60 = [v59 extensionIdentity];

  sub_224A3317C((v35 + 28), v112);
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  v104 = v60;
  v61 = v109;
  sub_224DADBE8();
  v109 = v61;
  v62 = v94;
  if (v61)
  {

    __swift_destroy_boxed_opaque_existential_1(v112);
    v64 = v106;
    v63 = v107;
    (*(v106 + 56))(v58, 1, 1, v107);
    v109 = 0;
    v65 = v84;
    v66 = v95;
    goto LABEL_10;
  }

  v64 = v106;
  v63 = v107;
  (*(v106 + 56))(v58, 0, 1, v107);
  __swift_destroy_boxed_opaque_existential_1(v112);
  v67 = (*(v64 + 48))(v58, 1, v63);
  v66 = v95;
  if (v67 == 1)
  {
    v65 = v84;
LABEL_10:
    (*(v64 + 104))(v65, *MEMORY[0x277CE3D50], v63);
    if ((*(v64 + 48))(v58, 1, v63) != 1)
    {
      sub_224A3311C(v58, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_13;
  }

  (*(v64 + 32))(v84, v58, v63);
LABEL_13:
  v68 = v97;
  v69 = v96;
  (*(v89 + 104))(v91, *MEMORY[0x277CF9B50], v90);
  (*(v92 + 104))(v62, *MEMORY[0x277CF9B40], v93);
  (*(v66 + 104))(v69, *MEMORY[0x277CF9BF0], v68);
  sub_224DACC48();
  sub_224DACC38();
  __swift_project_boxed_opaque_existential_1(v35 + 12, v35[15]);
  v70 = v85;
  v71 = sub_224DAC2A8();
  v72 = [v71 extensionIdentity];

  sub_224DADA58();
  sub_224DABF48();
  v79(v81, v70, v105);
  sub_224A3317C(v112, &v111);
  v74 = v106;
  v73 = v107;
  v75 = v84;
  (*(v106 + 16))(v82, v84, v107);
  v76 = sub_224DABEF8();
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v110 = v76;
  v111 = v78;
  sub_224DAD3B8();
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v77 = v108;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v112);
  (*(v98 + 8))(v77, v99);
  (*(v74 + 8))(v75, v73);

  *v100 = 1;
}

uint64_t sub_224C07F90@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v24 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  v20 = *(v4 + 56);
  v20(&v24 - v18, 1, 1, v3);
  sub_224A3796C(v25, v16, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v4 + 48))(v16, 1, v3) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v25 = *(v4 + 32);
    v25(v7, v16, v3);
    sub_224DAA1F8();
    v21 = sub_224DAA048();

    if (v21)
    {
      sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
      v25(v19, v7, v3);
      v20(v19, 0, 1, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  sub_224A3796C(v19, v12, &qword_27D6F56C0, &unk_224DB3580);
  v22 = v26;
  sub_224DAC298();
  return sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
}

uint64_t sub_224C082D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_224DADDD8();

  return v3;
}

uint64_t sub_224C08334(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17[-v5];
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_224C07F90(a1, v6, v11);
  sub_224A3311C(v6, &qword_27D6F56C0, &unk_224DB3580);
  v14 = *(v12 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  v18 = v12;
  v19 = v11;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C085B8(uint64_t a1)
{
  result = sub_224C086C4(&qword_281357D60, type metadata accessor for PreviewControlService, &unk_224DBB170);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C08660(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];

  v5 = sub_224C08CD0(v4, v2, v3);

  return v5;
}

uint64_t sub_224C086C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_224C0870C(uint64_t a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224C03704(a1, v4, v5);
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_224C08844()
{
  v1 = *(sub_224DAC2B8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224C03D18(v2, v3);
}

unint64_t *sub_224C088D4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_224C08A68(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224C08978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C089E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C08A68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v37 = a4;
  v38 = a5;
  v30 = a1;
  v36 = sub_224DA9688();
  result = MEMORY[0x28223BE20](v36, v6);
  v34 = v8;
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v39 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = v8 + 16;
  v31 = 0;
  v32 = v8 + 8;
  v18 = v35;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_11:
    v22 = v34;
    v23 = v19 | (v10 << 6);
    v24 = v36;
    (*(v34 + 16))(v18, *(v39 + 48) + *(v34 + 72) * v23, v36);
    v42 = sub_224DA95A8();
    v43 = v25;
    v40 = v37;
    v41 = v38;
    sub_224AFC154();
    v26 = sub_224DAF748();

    result = (*(v22 + 8))(v18, v24);
    v16 = v44;
    if (v26)
    {
      *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_15:
        v28 = v39;

        return sub_224B04F30(v30, v29, v31, v28);
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C08CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v40 = sub_224DA9688();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v39 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v34 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v34;
  v43 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33[0] = v33;
    v33[1] = v4;
    MEMORY[0x28223BE20](v12, v13);
    v35 = v33 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v11);
    v4 = 0;
    v42 = a1;
    v15 = *(a1 + 56);
    a1 += 56;
    v14 = v15;
    v16 = 1 << *(a1 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v19 = (v16 + 63) >> 6;
    v38 = v7 + 16;
    v36 = 0;
    v37 = v7 + 8;
    v20 = v40;
    while (v18)
    {
      v21 = __clz(__rbit64(v18));
      v44 = (v18 - 1) & v18;
LABEL_12:
      v24 = v21 | (v4 << 6);
      v25 = v39;
      (*(v7 + 16))(v39, *(v42 + 48) + *(v7 + 72) * v24, v20);
      v47 = sub_224DA95A8();
      v48 = v26;
      v45 = v41;
      v46 = v43;
      sub_224AFC154();
      v11 = sub_224DAF748();

      (*(v7 + 8))(v25, v20);
      v18 = v44;
      if (v11)
      {
        *&v35[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v28 = sub_224B04F30(v35, v34, v36, v42);

          return v28;
        }
      }
    }

    v22 = v4;
    while (1)
    {
      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v4 >= v19)
      {
        goto LABEL_16;
      }

      v23 = *(a1 + 8 * v4);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  v31 = a1;
  v32 = v43;

  v28 = sub_224C088D4(v30, v34, v31, v41, v32);

  MEMORY[0x22AA5EED0](v30, -1, -1);

  return v28;
}

uint64_t sub_224C09088(uint64_t a1)
{
  v2 = sub_224C15F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224C090C4(uint64_t a1)
{
  v2 = sub_224C15F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224C09100(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5298, &qword_224DBB5D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224C15F9C();
  sub_224DAFF08();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224C09214()
{
  v0 = sub_224DAB0F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAAB88();
  __swift_allocate_value_buffer(v5, qword_27D6F5248);
  __swift_project_value_buffer(v5, qword_27D6F5248);
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v6 = qword_2813652C8;
  if (*(qword_2813652C8 + 16))
  {

    v7 = sub_224B0B668(0);
    if (v8)
    {
      (*(v1 + 16))(v4, *(v6 + 56) + *(v1 + 72) * v7, v0);

      sub_224DAB0C8();
      return (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_224C093A0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  sub_224C09558();
  v6 = sub_224DAF128();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v8[5] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DBB440, v8);

  v7(v5, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v9[5] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DBB450, v9);

  return result;
}

double sub_224C09558()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5260, &qword_224DBB468);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v19 = sub_224BCE2D4();
  v9 = v0[3];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
  sub_224AC319C();
  sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470, MEMORY[0x277CBCD90]);
  sub_224C15EDC(&qword_281350A80, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  sub_224A33088(&qword_281351280, &qword_27D6F5260, &qword_224DBB468, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224C098C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));

  return v0;
}

uint64_t sub_224C0992C()
{
  sub_224C098C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(uint64_t a1)
{
  result = qword_2813533B0;
  if (!qword_2813533B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C099F8(uint64_t a1)
{
  result = sub_224DAB018();
  if (v2 <= 0x3F)
  {
    result = sub_224DAD9C8();
    if (v3 <= 0x3F)
    {
      result = sub_224DA9878();
      if (v4 <= 0x3F)
      {
        result = sub_224DAAC58();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_224C09AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DAB0B8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_224DADE68();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_224DAAF28();
  v4[9] = swift_task_alloc();
  v7 = sub_224DAAF48();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_224DA9908();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_224DAD9C8();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[27] = v11;
  v4[28] = *(v11 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C09E40, 0, 0);
}

uint64_t sub_224C09E40()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 136), *(*(v0 + 16) + 160));
  v4 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v4();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 256) = *MEMORY[0x277D46828];
  *(v0 + 240) = 0;
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_224C09F88;
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);

  return MEMORY[0x2822003E8](v7, 0, 0, v6);
}

uint64_t sub_224C09F88()
{

  return MEMORY[0x2822009F8](sub_224C0A084, 0, 0);
}

uint64_t sub_224C0A084()
{
  v119 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[22];
    v8 = v0[17];
    v111 = v0[15];
    v113 = v0[16];
    v9 = v0[2];
    (*(v3 + 32))(v0[21], v1, v2);
    v116 = v0;
    v11 = v9[20];
    v10 = v9[21];
    __swift_project_boxed_opaque_existential_1(v9 + 17, v11);
    sub_224DAD988();
    v12 = v10;
    v13 = v116;
    sub_224D2F410(v8, v11, v12, v7);
    v14 = *(v113 + 8);
    v14(v8, v111);
    v15 = v4(v7, 1, v2);
    v16 = v116[22];
    if (v15 == 1)
    {
      v17 = v14;
      v19 = v116[16];
      v18 = v116[17];
      v20 = v116[15];
      v21 = v116[9];
      sub_224A3311C(v16, &qword_27D6F3BD8, &qword_224DB9C20);
      sub_224DAD988();
      sub_224DA9898();
      v112 = v17;
      v17(v18, v20);
      (*(v19 + 56))(v21, 1, 1, v20);
      sub_224DAAEE8();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v23 = v116[20];
      v22 = v116[21];
      v25 = v116[18];
      v24 = v116[19];
      v27 = v116[13];
      v26 = v116[14];
      v28 = v116[10];
      v29 = v116[11];
      v30 = sub_224DAB258();
      __swift_project_value_buffer(v30, qword_281365120);
      (*(v24 + 16))(v23, v22, v25);
      v31 = v26;
      v32 = *(v29 + 16);
      v32(v27, v31, v28);
      v33 = sub_224DAB228();
      v108 = sub_224DAF2A8();
      v34 = os_log_type_enabled(v33, v108);
      v36 = v116[19];
      v35 = v116[20];
      v37 = v116[18];
      v38 = v116[13];
      v40 = v116[10];
      v39 = v116[11];
      v100 = v32;
      if (v34)
      {
        v41 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v118[0] = v105;
        *v41 = 136446466;
        sub_224C15EDC(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
        v42 = sub_224DAFD28();
        v43 = v33;
        v45 = v44;
        v101 = *(v36 + 8);
        v101(v35, v37);
        v46 = sub_224A33F74(v42, v45, v118);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2082;
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v47 = sub_224DAFD28();
        v49 = v48;
        v102 = *(v39 + 8);
        v102(v38, v40);
        v50 = sub_224A33F74(v47, v49, v118);

        *(v41 + 14) = v50;
        _os_log_impl(&dword_224A2F000, v43, v108, "Subscription %{public}s deleted; removing record %{public}s and budgets", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v105, -1, -1);
        MEMORY[0x22AA5EED0](v41, -1, -1);
      }

      else
      {

        v102 = *(v39 + 8);
        v102(v38, v40);
        v101 = *(v36 + 8);
        v101(v35, v37);
      }

      v52 = v116;

      v53 = sub_224DADE58();
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = v116[7];
        v56 = v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v103 = *(v55 + 16);
        v106 = *(v55 + 72);
        do
        {
          v57 = v52[17];
          v58 = v52[15];
          v59 = v52[7];
          v60 = v52[8];
          v61 = v116[6];
          v103(v60, v56, v61);
          sub_224DAD988();
          sub_224DADB58();
          v112(v57, v58);
          sub_224DADED8();

          v62 = v61;
          v52 = v116;
          (*(v59 + 8))(v60, v62);
          v56 += v106;
          --v54;
        }

        while (v54);
      }

      v109 = *(v52 + 64);
      v63 = v52[14];
      v65 = v52[10];
      v64 = v52[11];
      v67 = v52[4];
      v66 = v52[5];
      v68 = v52[3];
      v13 = v52;
      v114 = v52[30];
      __swift_project_boxed_opaque_existential_1((v52[2] + 32), *(v52[2] + 56));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v69 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_224DB3100;
      v100(v70 + v69, v63, v65);
      (*(v67 + 104))(v66, v109, v68);
      v71 = v114;
      sub_224DAABF8();
      if (v114)
      {
        v72 = v52[14];
        v73 = v52[12];
        v74 = v52[10];
        (*(v52[4] + 8))(v52[5], v52[3]);

        v100(v73, v72, v74);
        v75 = v114;
        v76 = sub_224DAB228();
        v77 = sub_224DAF288();

        v78 = os_log_type_enabled(v76, v77);
        v79 = v13[21];
        v80 = v13[18];
        v115 = v13[14];
        v81 = v13[12];
        v82 = v13[10];
        if (v78)
        {
          v110 = v13[18];
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v118[0] = v104;
          *v83 = 136446466;
          sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v107 = v79;
          v85 = sub_224DAFD28();
          v87 = v86;
          v102(v81, v82);
          v88 = sub_224A33F74(v85, v87, v118);

          *(v83 + 4) = v88;
          *(v83 + 12) = 2114;
          v89 = v71;
          v90 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 14) = v90;
          *v84 = v90;
          _os_log_impl(&dword_224A2F000, v76, v77, "Failed to delete activity archive record %{public}s: %{public}@", v83, 0x16u);
          sub_224A3311C(v84, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v84, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x22AA5EED0](v104, -1, -1);
          MEMORY[0x22AA5EED0](v83, -1, -1);

          v102(v115, v82);
          v101(v107, v110);
        }

        else
        {

          v102(v81, v82);
          v102(v115, v82);
          v101(v79, v80);
        }

        v51 = 0;
        v13 = v116;
      }

      else
      {
        v117 = v52[21];
        v91 = v52[18];
        v92 = v52[14];
        v93 = v52[10];
        v95 = v52[4];
        v94 = v52[5];
        v96 = v52[3];

        (*(v95 + 8))(v94, v96);
        v102(v92, v93);
        v101(v117, v91);
        v51 = 0;
      }
    }

    else
    {
      (*(v116[19] + 8))(v116[21], v116[18]);
      sub_224A3311C(v16, &qword_27D6F3BD8, &qword_224DB9C20);
      v51 = v116[30];
    }

    v13[30] = v51;
    v97 = swift_task_alloc();
    v13[31] = v97;
    *v97 = v13;
    v97[1] = sub_224C09F88;
    v98 = v13[27];
    v99 = v13[23];

    return MEMORY[0x2822003E8](v99, 0, 0, v98);
  }
}

uint64_t sub_224C0ABDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C09AAC(a1, v4, v5, v6);
}

void sub_224C0AC9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAAC58();
  v630 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v471 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v553 = sub_224DAB0B8();
  v614 = *(v553 - 8);
  v8 = MEMORY[0x28223BE20](v553, v7);
  v10 = &v471 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v471 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C08, &qword_224DB48D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v548 = &v471 - v16;
  v549 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v570 = *(v549 - 8);
  v18 = MEMORY[0x28223BE20](v549, v17);
  v533 = &v471 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v527 = &v471 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v526 = &v471 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v547 = &v471 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v546 = &v471 - v30;
  v545 = sub_224DAEC58();
  v613 = *(v545 - 8);
  v32 = MEMORY[0x28223BE20](v545, v31);
  v532 = &v471 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v534 = &v471 - v35;
  v544 = sub_224DACC88();
  v608 = *(v544 - 8);
  MEMORY[0x28223BE20](v544, v36);
  v543 = &v471 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v542 = sub_224DACB98();
  v604 = *(v542 - 8);
  MEMORY[0x28223BE20](v542, v38);
  v541 = &v471 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
  v603 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40, v41);
  v552 = &v471 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v530 = &v471 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v540 = &v471 - v48;
  v539 = sub_224DAAFC8();
  v602 = *(v539 - 8);
  MEMORY[0x28223BE20](v539, v49);
  v538 = &v471 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224DAAF28();
  MEMORY[0x28223BE20](v51 - 8, v52);
  v554 = &v471 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v557 = sub_224DAAF48();
  v601 = *(v557 - 8);
  v55 = MEMORY[0x28223BE20](v557, v54);
  v529 = &v471 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v555 = &v471 - v59;
  MEMORY[0x28223BE20](v58, v60);
  v558 = &v471 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v64 = MEMORY[0x28223BE20](v62 - 8, v63);
  v537 = &v471 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v66);
  v562 = &v471 - v67;
  v563 = sub_224DA9878();
  v568 = *(v563 - 8);
  v69 = MEMORY[0x28223BE20](v563, v68);
  v531 = &v471 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v69, v71);
  v550 = &v471 - v73;
  MEMORY[0x28223BE20](v72, v74);
  v561 = &v471 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v78 = MEMORY[0x28223BE20](v76 - 8, v77);
  v536 = &v471 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78, v80);
  v566 = &v471 - v81;
  v567 = sub_224DA9688();
  v629 = *(v567 - 8);
  MEMORY[0x28223BE20](v567, v82);
  v564 = &v471 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v551 = sub_224DAB018();
  v569 = *(v551 - 8);
  MEMORY[0x28223BE20](v551, v84);
  v556 = &v471 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v626 = *(v586 - 8);
  v87 = MEMORY[0x28223BE20](v586, v86);
  v571 = &v471 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87, v89);
  v583 = &v471 - v90;
  v582 = sub_224DAC918();
  v623 = *(v582 - 8);
  v92 = MEMORY[0x28223BE20](v582, v91);
  v581 = &v471 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92, v94);
  v589 = &v471 - v95;
  v598 = sub_224DAE7A8();
  v620 = *(v598 - 8);
  v97 = MEMORY[0x28223BE20](v598, v96);
  v580 = &v471 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97, v99);
  v594 = &v471 - v100;
  v597 = sub_224DAEB68();
  v609 = *(v597 - 8);
  v102 = MEMORY[0x28223BE20](v597, v101);
  v579 = &v471 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102, v104);
  v596 = &v471 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v106 - 8, v107);
  v607 = &v471 - v108;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v605 = *(v625 - 8);
  v110 = MEMORY[0x28223BE20](v625, v109);
  v578 = &v471 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x28223BE20](v110, v112);
  v593 = &v471 - v114;
  MEMORY[0x28223BE20](v113, v115);
  v615 = &v471 - v116;
  v628 = sub_224DAD9C8();
  v618 = *(v628 - 8);
  v118 = MEMORY[0x28223BE20](v628, v117);
  v606 = &v471 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x28223BE20](v118, v120);
  v535 = &v471 - v122;
  v124 = MEMORY[0x28223BE20](v121, v123);
  v528 = &v471 - v125;
  v127 = MEMORY[0x28223BE20](v124, v126);
  v565 = &v471 - v128;
  v130 = MEMORY[0x28223BE20](v127, v129);
  v632 = &v471 - v131;
  MEMORY[0x28223BE20](v130, v132);
  v610 = &v471 - v133;
  v631 = sub_224DA9908();
  v619 = *(v631 - 8);
  v135 = MEMORY[0x28223BE20](v631, v134);
  v560 = &v471 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x28223BE20](v135, v137);
  v599 = &v471 - v139;
  MEMORY[0x28223BE20](v138, v140);
  v621 = &v471 - v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v144 = MEMORY[0x28223BE20](v142 - 8, v143);
  v617 = &v471 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v144, v146);
  v627 = &v471 - v147;
  v587 = sub_224DABCC8();
  v148 = *(v587 - 8);
  v150 = MEMORY[0x28223BE20](v587, v149);
  v588 = &v471 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x28223BE20](v150, v152);
  v600 = &v471 - v154;
  MEMORY[0x28223BE20](v153, v155);
  v157 = &v471 - v156;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v159 = Strong;
  v509 = v13;
  v491 = v10;
  v492 = v6;
  v505 = v3;
  v518 = v40;
  v507 = a1;
  MEMORY[0x22AA5BB00](v40);
  v160 = v159[20];
  v161 = v159[21];
  __swift_project_boxed_opaque_existential_1(v159 + 17, v160);
  v622 = v157;
  v162 = sub_224DABC78();
  v164 = sub_224D2F628(v162, v163, v160, v161);

  v165 = *(v164 + 64);
  v616 = v164 + 64;
  v611 = v164;
  v166 = 1 << *(v164 + 32);
  v167 = -1;
  if (v166 < 64)
  {
    v167 = ~(-1 << v166);
  }

  v168 = v167 & v165;
  v595 = v159;
  swift_beginAccess();
  v169 = 0;
  v612 = 0;
  v170 = (v166 + 63) >> 6;
  v624 = (v605 + 1);
  v592 = (v620 + 1);
  v591 = (v609 + 1);
  v577 = (v609 + 2);
  v576 = (v620 + 2);
  v575 = (v605 + 2);
  v574 = (v148 + 16);
  v573 = (v623 + 16);
  v584 = (v626 + 1);
  v572 = (v623 + 8);
  v585 = (v148 + 8);
  v559 = (v629 + 7);
  v524 = (v629 + 4);
  v523 = (v629 + 1);
  v515 = "ate.HeartRateWidgetExtension";
  v514 = "liveControlReplicator";
  v504 = (v629 + 2);
  v490 = *MEMORY[0x277D46820];
  *&v171 = 136446466;
  v590 = v171;
  *&v171 = 136446210;
  v521 = v171;
  *(&v171 + 1) = 2;
  v517 = xmmword_224DB3100;
  *&v171 = 136446722;
  v481 = v171;
  *&v171 = 136446978;
  v483 = v171;
  v489 = *MEMORY[0x277D46828];
  v503 = *MEMORY[0x277D46558];
  v609 = (v619 + 16);
  v172 = v618;
  v626 = (v618 + 16);
  v620 = (v619 + 32);
  v629 = (v618 + 32);
  v605 = (v619 + 48);
  v623 = v619 + 8;
  v522 = (v568 + 48);
  v519 = (v568 + 32);
  v520 = (v568 + 8);
  v513 = (v619 + 56);
  v516 = v601 + 1;
  v502 = v601 + 2;
  v501 = (v602 + 4);
  v506 = (v568 + 16);
  v500 = (v568 + 56);
  v499 = (v602 + 2);
  v512 = (v603 + 2);
  v511 = (v603 + 1);
  v494 = (v608 + 8);
  v493 = (v604 + 1);
  v510 = (v613 + 48);
  v484 = (v613 + 32);
  v485 = (v613 + 8);
  v482 = (v613 + 16);
  v488 = (v614 + 13);
  v487 = (v614 + 2);
  v508 = (v614 + 1);
  v614 = (v618 + 8);
  v498 = (v570 + 56);
  v497 = (v569 + 16);
  v496 = (v630 + 104);
  v486 = (v630 + 8);
  v495 = (v569 + 8);
  v173 = v631;
  v174 = v632;
  v175 = v619;
  v176 = v627;
  v613 = v170;
  while (v168)
  {
    v177 = v169;
    v178 = v169;
LABEL_17:
    v630 = (v168 - 1) & v168;
    v182 = __clz(__rbit64(v168)) | (v178 << 6);
    v183 = v611;
    v184 = v621;
    v185 = v175;
    (*(v175 + 16))(v621, *(v611 + 48) + *(v175 + 72) * v182, v173);
    v186 = *(v183 + 56) + *(v172 + 72) * v182;
    v187 = v610;
    v188 = v628;
    (*(v172 + 16))(v610, v186, v628);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    v190 = v173;
    v191 = *(v189 + 48);
    v192 = *(v185 + 32);
    v193 = v617;
    v192(v617, v184, v190);
    v194 = &v193[v191];
    v195 = v193;
    v196 = v188;
    (*(v172 + 32))(v194, v187, v188);
    (*(*(v189 - 8) + 56))(v195, 0, 1, v189);
    v176 = v627;
    v181 = v622;
    v169 = v177;
    v174 = v632;
LABEL_18:
    sub_224A44E4C(v195, v176, &qword_27D6F4C60, &unk_224DBA3D0);
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    if ((*(*(v197 - 8) + 48))(v176, 1, v197) == 1)
    {

      sub_224C0F5C4();

      (*v585)(v181, v587);
      return;
    }

    (*v629)(v174, v176 + *(v197 + 48), v196);
    v198 = v615;
    sub_224DAD958();
    v199 = v625;
    sub_224DAA1F8();
    v201 = v200;
    v202 = v174;
    v203 = *v624;
    (*v624)(v198, v199);
    if (!v201)
    {
      (*v614)(v202, v196);
      v173 = v631;
      (*v623)(v176, v631);
      v172 = v618;
      v174 = v202;
      goto LABEL_6;
    }

    v204 = v607;
    sub_224DA9888();

    v205 = v631;
    if ((*v605)(v204, 1, v631) == 1)
    {
      sub_224A3311C(v204, &unk_27D6F5630, &unk_224DB34C0);
      sub_224C15C8C();
      v206 = swift_allocError();
      *v207 = 1;
      swift_willThrow();
      v173 = v631;
LABEL_22:
      v208 = v606;
      goto LABEL_25;
    }

    v604 = v203;
    v209 = v599;
    (*v620)(v599, v204, v205);
    __swift_project_boxed_opaque_existential_1(v595 + 11, v595[14]);
    v210 = sub_224DAD938();
    v212 = v211;
    v213 = v596;
    sub_224DAD9B8();
    v214 = v594;
    sub_224DAD9A8();
    v215 = v593;
    sub_224DAD958();
    v216 = v210;
    v217 = v205;
    v218 = v612;
    sub_224BD7040(v216, v212, v600);
    v206 = v218;
    if (v218)
    {

      (v604)(v215, v625);
      (*v592)(v214, v598);
      (*v591)(v213, v597);
      (*v623)(v209, v217);
      v196 = v628;
      v208 = v606;
      v173 = v217;
      goto LABEL_25;
    }

    (*v577)(v579, v213, v597);
    (*v576)(v580, v214, v598);
    v245 = *v575;
    v608 = 0;
    v245(v578, v215, v625);
    v246 = v589;
    sub_224DAC908();
    v247 = v587;
    (*v574)(v588, v600, v587);
    v248 = v246;
    v249 = v582;
    (*v573)(v581, v248, v582);
    v250 = MEMORY[0x277CF9880];
    v612 = sub_224C15EDC(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    sub_224C15EDC(&unk_281350EB0, v250, MEMORY[0x277CF9888]);
    v251 = MEMORY[0x277CF9A98];
    sub_224C15EDC(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
    v252 = v251;
    v253 = v247;
    sub_224C15EDC(&qword_281350D70, v252, MEMORY[0x277CF9AA0]);
    v254 = v583;
    v255 = v249;
    sub_224DAC848();
    v256 = v608;
    sub_224BD746C(v254, 0);
    if (v256)
    {
      (*v584)(v254, v586);
      (*v572)(v589, v249);
      (*v585)(v600, v253);
      (v604)(v215, v625);
      (*v592)(v214, v598);
      (*v591)(v596, v597);
      v258 = v631;
      (*v623)(v599, v631);
      v206 = v256;
      v173 = v258;
      v196 = v628;
      goto LABEL_22;
    }

    v259 = v257;
    v260 = v253;
    v261 = *v584;
    (*v584)(v254, v586);
    (*v572)(v589, v255);
    (*v585)(v600, v260);
    (v604)(v215, v625);
    (*v592)(v214, v598);
    (*v591)(v596, v597);
    v262 = v571;
    if (v259)
    {
      v612 = v261;
      v602 = v169;
      v263 = v595;
      v264 = v259;
      v265 = v595[31];
      v525 = v595[32];
      v266 = __swift_project_boxed_opaque_existential_1(v595 + 28, v265);
      v603 = &v471;
      MEMORY[0x28223BE20](v266, v266);
      v268 = (&v471 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0));
      v568 = v269;
      (*(v269 + 16))(v268);
      v270 = v263[7];
      v480 = v263[9];
      v271 = __swift_project_boxed_opaque_existential_1(v263 + 4, v270);
      v601 = &v471;
      v272 = *(v270 - 8);
      MEMORY[0x28223BE20](v271, v271);
      v274 = &v471 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v272 + 16))(v274);
      v608 = v264;
      sub_224DABF98();
      v275 = v566;
      v604 = v268;
      sub_224DACEA8();
      v479 = v274;
      v525 = v272;
      v478 = v270;
      v295 = v568;
      v477 = v265;
      (v612)(v262, v586);
      v296 = *v559;
      v297 = v567;
      (*v559)(v275, 0, 1, v567);
      v298 = v564;
      (*v524)(v564, v275, v297);
      v299 = v562;
      sub_224C15AC4();
      if ((*v522)(v299, 1, v563) == 1)
      {
        sub_224A3311C(v299, &qword_27D6F32B0, &qword_224DB3EA0);
        sub_224C15C8C();
        v206 = swift_allocError();
        *v300 = 0;
        swift_willThrow();

        (*v523)(v298, v297);
        (v525[1].isa)(v479, v478);
        (*(v295 + 1))(v604, v477);
        v173 = v631;
        (*v623)(v599, v631);
        v196 = v628;
        v169 = v602;
        goto LABEL_22;
      }

      v476 = v296;
      (*v519)();
      sub_224C15EDC(&qword_281351A48, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      sub_224DAAE48();
      v169 = v602;
      v302 = v295;
      v303 = v621;
      sub_224DAD988();
      v612 = sub_224DA9898();
      v304 = v631;
      v475 = *v623;
      v475(v303, v631);
      (*v513)(v554, 1, 1, v304);
      sub_224DAAEE8();
      sub_224C15CE0();
      sub_224C15D34();
      v305 = sub_224DAAB38();
      v612 = 0;
      v306 = *v504;
      v307 = v305;
      v473 = v305;
      v308 = v536;
      v310 = v309;
      isa = v309;
      v311 = v567;
      v472 = v312;
      v306(v536, v564, v567);
      (v476)(v308, 0, 1, v311);
      sub_224A77FD0(v307, v310);
      v313 = v538;
      sub_224DAAFB8();
      v314 = v550;
      sub_224DA9768();
      v315 = v558;
      (v502->isa)(v555, v558, v557);
      v480 = *v609;
      v480(v303, v560, v304);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v316 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v317 = (*(*v316 + 80) + 32) & ~*(*v316 + 80);
      v318 = swift_allocObject();
      *(v318 + 16) = v517;
      v319 = v318 + v317;
      v320 = v316[14];
      *(v318 + v317) = v472;
      v321 = v318 + v317 + v320;
      v322 = v539;
      (*v501)(v321, v313, v539);
      sub_224DA06F0(v318);
      swift_setDeallocating();
      sub_224A3311C(v319, &unk_27D6F6FE0, &unk_224DB9C50);
      swift_deallocClassInstance();
      v323 = v537;
      v324 = v563;
      v472 = *v506;
      v472(v537, v314, v563);
      (*v500)(v323, 0, 1, v324);
      sub_224DAAF68();
      sub_224A78024(v473, isa);
      v325 = *v520;
      (*v520)(v314, v324);
      (*v499)(v313, v322);
      isa = v516->isa;
      isa(v315, v557);
      v475(v560, v304);
      v476 = v325;
      v325(v561, v324);
      (*v523)(v564, v567);
      (v525[1].isa)(v479, v478);
      (*(v302 + 1))(v604, v477);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v326 = sub_224DAB258();
      v327 = __swift_project_value_buffer(v326, qword_281365120);
      v328 = *v512;
      v329 = v540;
      v330 = v507;
      v331 = v518;
      (*v512)(v540, v507, v518);
      v332 = sub_224DAB228();
      v333 = sub_224DAF2A8();
      v334 = os_log_type_enabled(v332, v333);
      v603 = v327;
      v601 = v328;
      if (v334)
      {
        v335 = v329;
        v336 = swift_slowAlloc();
        v568 = swift_slowAlloc();
        v633 = v568;
        *v336 = v521;
        v337 = v543;
        v338 = v335;
        sub_224DAD788();
        v339 = v541;
        sub_224DACC68();
        (*v494)(v337, v544);
        sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
        v340 = v542;
        v341 = sub_224DAFD28();
        v342 = v331;
        v344 = v343;
        (*v493)(v339, v340);
        v604 = *v511;
        (v604)(v338, v342);
        v345 = sub_224A33F74(v341, v344, &v633);

        *(v336 + 4) = v345;
        _os_log_impl(&dword_224A2F000, v332, v333, "Got replication request with reason %{public}s", v336, 0xCu);
        v346 = v568;
        __swift_destroy_boxed_opaque_existential_1(v568);
        v330 = v507;
        MEMORY[0x22AA5EED0](v346, -1, -1);
        MEMORY[0x22AA5EED0](v336, -1, -1);
      }

      else
      {

        v604 = *v511;
        (v604)(v329, v331);
      }

      v347 = v570;
      v348 = v547;
      v349 = v546;
      sub_224DABFB8();
      v350 = *v510;
      v351 = v545;
      if ((*v510)(v349, 1, v545) == 1)
      {
        sub_224A3311C(v349, &qword_27D6F4668, &unk_224DB75E0);
      }

      else
      {
        v352 = v534;
        (*v484)(v534, v349, v351);
        v353 = sub_224DAEC28();
        (*v485)(v352, v351);
        if (v353)
        {
          v354 = 1;
          v355 = v518;
          goto LABEL_55;
        }
      }

      sub_224DABFB8();
      v356 = v350(v348, 1, v351);
      v355 = v518;
      if (!v356)
      {
        v413 = v532;
        (*v482)(v532, v348, v351);
        sub_224A3311C(v348, &qword_27D6F4668, &unk_224DB75E0);
        v414 = sub_224DAEC38();
        (*v485)(v413, v351);
        v358 = v632;
        if (v414)
        {
          v415 = v529;
          sub_224DAAF88();
          v416 = v595[33];
          if (*(v416 + 16))
          {

            v417 = sub_224B0B3CC(v415);
            if (v418)
            {
              v419 = v527;
              sub_224C15D88(*(v416 + 56) + *(v347 + 72) * v417, v527, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
              isa(v415, v557);

              v420 = v526;
              sub_224C15DF0(v419, v526);
              v421 = v531;
              v422 = v563;
              v423 = v472;
              v472(v531, (v420 + *(v549 + 24)), v563);
              v424 = v420;
              v425 = v422;
              sub_224C15E54(v424, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
              goto LABEL_73;
            }
          }

          isa(v415, v557);
          v426 = v550;
          sub_224DA9808();
          v421 = v531;
          sub_224DA9768();
          v427 = v426;
          v425 = v563;
          v476(v427, v563);
          v423 = v472;
LABEL_73:
          v428 = v533;
          (*v497)(v533, v556, v551);
          v429 = v549;
          v430 = *(v549 + 20);
          v568 = *v626;
          v568((v428 + v430), v358, v628);
          swift_beginAccess();
          v423(v428 + *(v429 + 24), v421, v425);
          v431 = *(v429 + 28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
          v432 = (*(v619 + 80) + 32) & ~*(v619 + 80);
          v433 = swift_allocObject();
          *(v433 + 16) = v517;
          v480((v433 + v432), v599, v631);
          *(v428 + v431) = v433;
          (*v496)(v428 + v431, v503, v505);
          v434 = v555;
          sub_224DAAF88();
          v435 = v548;
          sub_224C15D88(v428, v548, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          (*v498)(v435, 0, 1, v429);
          swift_beginAccess();
          sub_224B08F00(v435, v434);
          swift_endAccess();
          v436 = v528;
          v568(v528, v358, v628);
          v437 = v530;
          v438 = v518;
          (v601)(v530, v330, v518);
          v439 = sub_224DAB228();
          v440 = sub_224DAF2A8();
          v441 = v440;
          if (os_log_type_enabled(v439, v440))
          {
            v442 = swift_slowAlloc();
            LODWORD(v601) = v441;
            v443 = v442;
            v603 = swift_slowAlloc();
            v633 = v603;
            *v443 = v481;
            v444 = v621;
            v568 = v439;
            sub_224DAD988();
            sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v445 = v631;
            v446 = sub_224DAFD28();
            v447 = v436;
            v449 = v448;
            v475(v444, v445);
            v525 = *v614;
            (v525)(v447, v628);
            v450 = sub_224A33F74(v446, v449, &v633);

            *(v443 + 4) = v450;
            *(v443 + 12) = 2082;
            v451 = v543;
            sub_224DAD788();
            v452 = v541;
            sub_224DACC68();
            (*v494)(v451, v544);
            sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
            v453 = v542;
            v454 = sub_224DAFD28();
            v456 = v455;
            (*v493)(v452, v453);
            (v604)(v437, v438);
            v457 = sub_224A33F74(v454, v456, &v633);

            *(v443 + 14) = v457;
            *(v443 + 22) = 2082;
            sub_224C15EDC(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v458 = v531;
            v459 = v563;
            v460 = sub_224DAFD28();
            v462 = sub_224A33F74(v460, v461, &v633);

            *(v443 + 24) = v462;
            v463 = v568;
            _os_log_impl(&dword_224A2F000, v568, v601, "Delaying activity archive replication for remote subscription %{public}s reason: %{public}s until %{public}s", v443, 0x20u);
            v464 = v603;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v464, -1, -1);
            v465 = v443;
            v412 = v475;
            MEMORY[0x22AA5EED0](v465, -1, -1);

            sub_224C15E54(v533, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
            (*v495)(v556, v551);
            v466 = v631;
            v412(v599, v631);
            v174 = v632;
            (v525)(v632, v628);
            v476(v458, v459);
            v172 = v618;
            v173 = v466;
          }

          else
          {

            (v604)(v437, v438);
            v467 = *v614;
            v468 = v436;
            v469 = v628;
            (*v614)(v468, v628);
            sub_224C15E54(v533, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
            (*v495)(v556, v551);
            v470 = v631;
            v412 = v475;
            v475(v599, v631);
            v174 = v632;
            (v467)(v632, v469);
            v476(v531, v563);
            v172 = v618;
            v173 = v470;
          }

          goto LABEL_65;
        }

        v354 = 0;
        v357 = v552;
        v359 = v595;
        v360 = v553;
        v355 = v518;
        goto LABEL_56;
      }

      sub_224A3311C(v348, &qword_27D6F4668, &unk_224DB75E0);
      v354 = 0;
LABEL_55:
      v357 = v552;
      v358 = v632;
      v359 = v595;
      v360 = v553;
LABEL_56:

      v361 = sub_224DA4EBC(v358, v354);

      if (v361)
      {
        v362 = v489;
      }

      else
      {
        v362 = v490;
      }

      v363 = v509;
      (*v488)(v509, v362, v360);
      v364 = v535;
      v365 = v358;
      v366 = v628;
      (*v626)(v535, v365, v628);
      (v601)(v357, v330, v355);
      v367 = v491;
      (*v487)(v491, v363, v360);
      v368 = sub_224DAB228();
      v369 = sub_224DAF2A8();
      v370 = v369;
      if (os_log_type_enabled(v368, v369))
      {
        v371 = swift_slowAlloc();
        v568 = swift_slowAlloc();
        v633 = v568;
        *v371 = v483;
        v372 = v621;
        v525 = v368;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        LODWORD(v603) = v354;
        v373 = v631;
        v374 = sub_224DAFD28();
        LODWORD(v479) = v370;
        v375 = v364;
        v377 = v376;
        v475(v372, v373);
        v601 = *v614;
        (v601)(v375, v366);
        v378 = sub_224A33F74(v374, v377, &v633);

        *(v371 + 4) = v378;
        *(v371 + 12) = 2082;
        v379 = v543;
        v380 = v518;
        v381 = v552;
        sub_224DAD788();
        v382 = v541;
        sub_224DACC68();
        (*v494)(v379, v544);
        sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
        v383 = v542;
        v384 = sub_224DAFD28();
        v386 = v385;
        (*v493)(v382, v383);
        (v604)(v381, v380);
        v387 = sub_224A33F74(v384, v386, &v633);

        *(v371 + 14) = v387;
        *(v371 + 22) = 1026;
        *(v371 + 24) = v603;
        *(v371 + 28) = 2082;
        sub_224C15EDC(&qword_27D6F5280, MEMORY[0x277D46830], MEMORY[0x277D46838]);
        v388 = sub_224DAFD28();
        v390 = v389;
        v603 = *v508;
        (v603)(v367, v360);
        v391 = sub_224A33F74(v388, v390, &v633);

        *(v371 + 30) = v391;
        v392 = v525;
        _os_log_impl(&dword_224A2F000, v525, v479, "Adding activity archive for remote subscription: %{public}s reason: %{public}s alerting: %{BOOL,public}d with schedule: %{public}s", v371, 0x26u);
        v393 = v568;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v393, -1, -1);
        v394 = v371;
        v359 = v595;
        MEMORY[0x22AA5EED0](v394, -1, -1);
      }

      else
      {

        v603 = *v508;
        (v603)(v367, v360);
        (v604)(v357, v518);
        v601 = *v614;
        (v601)(v364, v366);
      }

      v395 = v555;
      v396 = v556;
      sub_224DAAF88();
      v397 = v548;
      (*v498)(v548, 1, 1, v549);
      swift_beginAccess();
      sub_224B08F00(v397, v395);
      swift_endAccess();
      v398 = v359[7];
      v604 = v359[10];
      __swift_project_boxed_opaque_existential_1(v359 + 4, v398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
      v399 = v569;
      v400 = (*(v569 + 80) + 32) & ~*(v569 + 80);
      v401 = swift_allocObject();
      *(v401 + 16) = v517;
      v402 = v551;
      (*(v399 + 16))(v401 + v400, v396, v551);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
      v403 = (*(v619 + 80) + 32) & ~*(v619 + 80);
      v404 = swift_allocObject();
      *(v404 + 16) = v517;
      v405 = v599;
      v480((v404 + v403), v599, v631);
      v406 = v492;
      *v492 = v404;
      v407 = v505;
      (*v496)(v406, v503, v505);
      v408 = v509;
      v409 = v612;
      sub_224DAABD8();
      if (!v409)
      {
        v612 = 0;

        (*v486)(v406, v407);
        (v603)(v408, v553);
        (*v495)(v556, v402);
        v411 = v405;
        v173 = v631;
        v412 = v475;
        v475(v411, v631);
        v174 = v632;
        (v601)(v632, v628);
        v172 = v618;
LABEL_65:
        v176 = v627;
        v412(v627, v173);
        goto LABEL_6;
      }

      (*v486)(v406, v407);
      (v603)(v408, v553);
      (*v495)(v556, v402);
      v410 = v631;
      v475(v405, v631);
      v206 = v409;
      v196 = v628;
      v208 = v606;
      v173 = v410;
LABEL_25:
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v612 = 0;
      v219 = sub_224DAB258();
      __swift_project_value_buffer(v219, qword_281365120);
      v220 = v632;
      (*v626)(v208, v632, v196);
      v221 = v206;
      v222 = sub_224DAB228();
      v223 = sub_224DAF2A8();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v608 = v206;
        v225 = v224;
        v603 = swift_slowAlloc();
        v604 = swift_slowAlloc();
        v633 = v604;
        *v225 = v590;
        v226 = v621;
        LODWORD(v602) = v223;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v227 = sub_224DAFD28();
        v228 = v208;
        v230 = v229;
        v231 = *v623;
        v601 = v222;
        v232 = v196;
        v231(v226, v631);
        v233 = *v614;
        v234 = v228;
        v173 = v631;
        (*v614)(v234, v232);
        v235 = sub_224A33F74(v227, v230, &v633);

        *(v225 + 4) = v235;
        *(v225 + 12) = 2114;
        v236 = v608;
        v237 = v608;
        v238 = _swift_stdlib_bridgeErrorToNSError();
        *(v225 + 14) = v238;
        v239 = v603;
        *v603 = v238;
        v240 = v601;
        _os_log_impl(&dword_224A2F000, v601, v602, "Cannot replicate activity archive for remote subscription: %{public}s: %{public}@", v225, 0x16u);
        sub_224A3311C(v239, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v239, -1, -1);
        v241 = v604;
        __swift_destroy_boxed_opaque_existential_1(v604);
        MEMORY[0x22AA5EED0](v241, -1, -1);
        MEMORY[0x22AA5EED0](v225, -1, -1);

        v174 = v632;
        (v233)(v632, v628);
        v242 = v231;
      }

      else
      {

        v243 = *v614;
        (*v614)(v208, v196);
        (v243)(v220, v196);
        v242 = *v623;
        v174 = v220;
      }

      v176 = v627;
      v242(v627, v173);
      v172 = v618;
LABEL_6:
      v175 = v619;
      v170 = v613;
      v168 = v630;
    }

    else
    {
      v276 = v628;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v612 = 0;
      v277 = sub_224DAB258();
      __swift_project_value_buffer(v277, qword_281365120);
      v278 = v565;
      v279 = v632;
      (*v626)(v565, v632, v276);
      v280 = sub_224DAB228();
      v281 = sub_224DAF2A8();
      v282 = os_log_type_enabled(v280, v281);
      v283 = v623;
      v608 = (v623 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v282)
      {
        v284 = swift_slowAlloc();
        v602 = v284;
        v604 = swift_slowAlloc();
        v633 = v604;
        *v284 = v521;
        v285 = v621;
        LODWORD(v603) = v281;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v173 = v631;
        v286 = sub_224DAFD28();
        v288 = v287;
        v289 = *v283;
        (*v283)(v285, v173);
        v290 = *v614;
        (*v614)(v278, v628);
        v291 = sub_224A33F74(v286, v288, &v633);

        v292 = v602;
        *(v602 + 1) = v291;
        v293 = v292;
        _os_log_impl(&dword_224A2F000, v280, v603, "Cannot fetch activity entry for remote subscription: %{public}s", v292, 0xCu);
        v294 = v604;
        __swift_destroy_boxed_opaque_existential_1(v604);
        MEMORY[0x22AA5EED0](v294, -1, -1);
        MEMORY[0x22AA5EED0](v293, -1, -1);

        v289(v599, v173);
        (v290)(v632, v628);
      }

      else
      {

        v301 = *v614;
        (*v614)(v278, v276);
        v289 = *v283;
        v173 = v631;
        (*v283)(v599, v631);
        (v301)(v279, v276);
      }

      v176 = v627;
      v168 = v630;
      v289(v627, v173);
      v172 = v618;
      v174 = v632;
      v175 = v619;
      v170 = v613;
    }
  }

  if (v170 <= v169 + 1)
  {
    v179 = v169 + 1;
  }

  else
  {
    v179 = v170;
  }

  v180 = v179 - 1;
  v181 = v622;
  while (1)
  {
    v178 = v169 + 1;
    if (__OFADD__(v169, 1))
    {
      break;
    }

    if (v178 >= v170)
    {
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v195 = v617;
      (*(*(v244 - 8) + 56))(v617, 1, 1, v244);
      v630 = 0;
      v169 = v180;
      v196 = v628;
      goto LABEL_18;
    }

    v168 = *(v616 + 8 * v178);
    v169 = (v169 + 1);
    if (v168)
    {
      v177 = v178;
      goto LABEL_17;
    }
  }

  __break(1u);
}