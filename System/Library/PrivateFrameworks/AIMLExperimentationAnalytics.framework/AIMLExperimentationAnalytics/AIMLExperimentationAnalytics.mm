id ExperimentationAnalyticsManager.init()()
{
  v1 = v0;
  sub_23C568224();
  OUTLINED_FUNCTION_23();
  v15 = v3;
  v16 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_22();
  v14 = v5 - v4;
  v6 = sub_23C568214();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  v7 = sub_23C568044();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_22();
  v8 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace] = v8;
  v9 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v10 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) 0x278BC0B78];
  type metadata accessor for Instrumentation();
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_opt_self() sharedStream];
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_instrumentation] = v11;
  type metadata accessor for Experimentation();
  swift_allocObject();
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation] = sub_23C55CCA4();
  v12 = [objc_opt_self() standardUserDefaults];
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults] = v12;
  sub_23C55CD08(0, &qword_280BD2E78, 0x277D85C78);
  sub_23C568034();
  v18 = MEMORY[0x277D84F90];
  sub_23C55CC14(&unk_280BD2E80, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8078, &qword_23C568C60);
  sub_23C55CD48(&qword_280BD2E90, &unk_27E1F8078, &qword_23C568C60, MEMORY[0x277D83970]);
  sub_23C568284();
  (*(v15 + 104))(v14, *MEMORY[0x277D85260], v16);
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_queue] = sub_23C568234();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ExperimentationAnalyticsManager();
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_23C55CB80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23C55CBB8()
{
  sub_23C55CBEC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23C55CBEC()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23C55CC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C55CCA4()
{
  *(v0 + 16) = [objc_opt_self() defaultProvider];
  *(v0 + 24) = [objc_opt_self() clientWithIdentifier_];
  return v0;
}

uint64_t sub_23C55CD08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23C55CD48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23C55CDB4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_23C55CE1C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23C55CE78(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_23C55CEB4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C55CEFC()
{
  MEMORY[0x23EED61F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C55CF84()
{
  v0 = sub_23C567FC4();
  __swift_allocate_value_buffer(v0, qword_27E1F8020);
  __swift_project_value_buffer(v0, qword_27E1F8020);
  return sub_23C567F94();
}

uint64_t sub_23C55CFD4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23C55D06C, 0, 0);
}

uint64_t sub_23C55D06C()
{
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0 + 11;
  v2 = v0 + 2;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v1[2];
  v29 = *(v1 + 10);
  v7 = *(v4 + 16);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v3;
  v8[6] = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23C55EFF0;
  *(v9 + 24) = v8;
  *(v1 - 5) = sub_23C55F000;
  *(v1 - 4) = v9;
  *(v1 - 9) = MEMORY[0x277D85DD0];
  *(v1 - 8) = 1107296256;
  *(v1 - 7) = sub_23C55DD1C;
  *(v1 - 6) = &block_descriptor_6;
  v10 = _Block_copy(v2);

  v11 = v5;

  *(v1 - 9) = 0;
  v12 = [v7 enumerateActiveExperimentsForEnvironment:v29 error:v2 block:v10];
  _Block_release(v10);
  v13 = *(v1 - 9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12)
  {
    v5 = v28;
    if (qword_280BD2E68 == -1)
    {
LABEL_4:
      v14 = sub_23C568014();
      OUTLINED_FUNCTION_11(v14, qword_280BD2F10);
      v15 = sub_23C568004();
      v16 = sub_23C5681E4();
      if (os_log_type_enabled(v15, v16))
      {
        OUTLINED_FUNCTION_5();
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        swift_beginAccess();
        *(v17 + 4) = sub_23C567148();
        OUTLINED_FUNCTION_9();
        _os_log_impl(v18, v19, v20, v21, v22, v23);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }

      swift_beginAccess();
      v24 = v5[11];

      v25 = v5[1];

      return v25(v24);
    }

LABEL_13:
    OUTLINED_FUNCTION_0();
    swift_once();
    goto LABEL_4;
  }

  sub_23C567F64();

  swift_willThrow();

  v27 = *(v28 + 8);

  return v27();
}

void sub_23C55D3F4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_23C55D468(a1, a4, a5, a6);
  if (v9)
  {
    v10 = a1;
    MEMORY[0x23EED5B80]();
    sub_23C55EDB8(*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_23C5681A4();
  }
}

void sub_23C55D468(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 namespaces];
  sub_23C55EEF4();
  sub_23C568184();

  v8 = sub_23C567148();

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [a1 namespaces];
  v10 = sub_23C568184();

  if (!sub_23C567148())
  {

LABEL_16:
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v54 = sub_23C568014();
    OUTLINED_FUNCTION_11(v54, qword_280BD2F10);
    v55 = a1;
    v12 = sub_23C568004();
    v56 = sub_23C5681E4();

    if (os_log_type_enabled(v12, v56))
    {
      OUTLINED_FUNCTION_5();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v58 = swift_slowAlloc();
      v102[0] = v58;
      *v57 = 136315138;
      v59 = [v55 experimentId];
      v60 = sub_23C5680E4();
      v62 = v61;

      v63 = sub_23C5643D0(v60, v62, v102);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_23C55B000, v12, v56, "No namespaces for experiment %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    goto LABEL_33;
  }

  sub_23C567D54(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EED5CC0](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = *(v4 + 24);
  OUTLINED_FUNCTION_6();
  v14 = sub_23C5680D4();
  v15 = [v12 name];
  if (!v15)
  {
    sub_23C5680E4();
    v15 = sub_23C5680D4();
  }

  v16 = [v13 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v64 = sub_23C568014();
    OUTLINED_FUNCTION_11(v64, qword_280BD2F10);
    v65 = a1;
    v12 = v12;

    v29 = sub_23C568004();
    v66 = sub_23C5681E4();

    if (!os_log_type_enabled(v29, v66))
    {

      return;
    }

    OUTLINED_FUNCTION_3();
    v67 = swift_slowAlloc();
    v102[0] = swift_slowAlloc();
    *v67 = 136315650;
    v68 = [v65 experimentId];
    sub_23C5680E4();
    OUTLINED_FUNCTION_12();

    v73 = OUTLINED_FUNCTION_4(v69, v70, v71, v72);

    *(v67 + 4) = v73;
    *(v67 + 12) = 2080;
    v74 = [v12 name];
    sub_23C5680E4();
    OUTLINED_FUNCTION_12();

    v79 = OUTLINED_FUNCTION_4(v75, v76, v77, v78);

    *(v67 + 14) = v79;
    *(v67 + 22) = 2080;
    v80 = OUTLINED_FUNCTION_6();
    *(v67 + 24) = sub_23C5643D0(v80, v81, v82);
    _os_log_impl(&dword_23C55B000, v29, v66, "No TRILevel in experiment %s with namespace %s, for factor %s", v67, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
LABEL_32:

LABEL_33:
    return;
  }

  sub_23C55EE30(v16);
  if (v17)
  {
    v18 = sub_23C568104();
    v20 = v19;

    v102[0] = v18;
    v102[1] = v20;
    v21 = [a2 UUIDString];
    sub_23C5680E4();

    OUTLINED_FUNCTION_8();
    v22 = sub_23C568104();
    v24 = v23;

    v100 = v22;
    v101 = v24;
    sub_23C55EF9C();
    LOBYTE(v22) = sub_23C568274();

    if (v22)
    {
      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v25 = sub_23C568014();
      OUTLINED_FUNCTION_11(v25, qword_280BD2F10);
      v26 = a2;
      v27 = a1;
      v28 = v16;
      v29 = sub_23C568004();
      v30 = sub_23C5681E4();

      if (!os_log_type_enabled(v29, v30))
      {

        return;
      }

      OUTLINED_FUNCTION_3();
      v31 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v31 = 136315650;
      v32 = [v26 UUIDString];
      sub_23C5680E4();
      OUTLINED_FUNCTION_12();

      v37 = OUTLINED_FUNCTION_4(v33, v34, v35, v36);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = [v27 experimentId];
      sub_23C5680E4();
      v40 = v39;

      v41 = OUTLINED_FUNCTION_10();
      v43 = sub_23C5643D0(v41, v40, v42);

      *(v31 + 14) = v43;
      *(v31 + 22) = 2080;
      sub_23C55EE30(v28);
      v45 = v44;

      if (v45)
      {
LABEL_14:
        v46 = OUTLINED_FUNCTION_10();
        v48 = sub_23C5643D0(v46, v45, v47);

        *(v31 + 24) = v48;
        OUTLINED_FUNCTION_7();
        _os_log_impl(v49, v50, v51, v52, v53, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();

        return;
      }

      goto LABEL_36;
    }

    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v83 = sub_23C568014();
    OUTLINED_FUNCTION_11(v83, qword_280BD2F10);
    v84 = a2;
    v85 = a1;
    v28 = v16;
    v29 = sub_23C568004();
    v86 = sub_23C5681E4();

    if (os_log_type_enabled(v29, v86))
    {
      OUTLINED_FUNCTION_3();
      v31 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v31 = 136315650;
      v87 = [v84 UUIDString];
      sub_23C5680E4();
      OUTLINED_FUNCTION_12();

      v92 = OUTLINED_FUNCTION_4(v88, v89, v90, v91);

      *(v31 + 4) = v92;
      *(v31 + 12) = 2080;
      v93 = [v85 experimentId];
      sub_23C5680E4();
      v95 = v94;

      v96 = OUTLINED_FUNCTION_10();
      v98 = sub_23C5643D0(v96, v95, v97);

      *(v31 + 14) = v98;
      *(v31 + 22) = 2080;
      sub_23C55EE30(v28);
      v45 = v99;

      if (v45)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_23C55DD1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_23C55DD78(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23C5682E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_23C55DD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v7 = sub_23C567FC4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C55DE64, 0, 0);
}

uint64_t sub_23C55DE64()
{
  v1 = v0[7];
  v49 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v40 = (v0[12] + 16);
    v3 = v1 + 40;
    v46 = MEMORY[0x277D84F90];
    v4 = *(v0[10] + 24);
    v5 = 0x278BC0000uLL;
    v48 = v4;
    while (1)
    {

      v6 = sub_23C5680D4();
      OUTLINED_FUNCTION_8();
      v7 = sub_23C5680D4();
      v8 = [v4 *(v5 + 2136)];

      if (v8)
      {
        if ([v8 levelOneOfCase] == 11)
        {
          result = sub_23C55EE30(v8);
          if (!v10)
          {
            __break(1u);
            return result;
          }

          v11 = v0[6];
          v12 = sub_23C568104();
          v14 = v13;

          v0[2] = v12;
          v0[3] = v14;
          v15 = [v11 UUIDString];
          sub_23C5680E4();

          v16 = sub_23C568104();
          v18 = v17;

          v0[4] = v16;
          v0[5] = v18;
          sub_23C55EF9C();
          LOBYTE(v16) = sub_23C568274();

          if (v16)
          {
            OUTLINED_FUNCTION_8();
            v19 = sub_23C5680D4();
            v4 = v48;
            v20 = [v48 experimentIdentifiersWithNamespaceName_];

            if (v20)
            {
              OUTLINED_FUNCTION_8();
              v21 = sub_23C5680D4();
              v47 = [v48 compatibilityVersionWithNamespaceName_];

              if (qword_27E1F7EF0 != -1)
              {
                OUTLINED_FUNCTION_2();
                swift_once();
              }

              v22 = v0[13];
              v45 = v22;
              v23 = v0[11];
              v24 = __swift_project_value_buffer(v23, qword_27E1F8020);
              (*v40)(v22, v24, v23);
              v25 = [v20 experimentId];
              v26 = sub_23C5680E4();
              v43 = v27;
              v44 = v26;

              v42 = [v20 deploymentId];
              v28 = [v20 treatmentId];
              v29 = sub_23C5680E4();
              v41 = v30;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_23C568BA0;
              sub_23C55EEF4();
              v32 = OUTLINED_FUNCTION_8();
              *(v31 + 32) = sub_23C55E388(v32, v33, v47);
              v34 = objc_allocWithZone(MEMORY[0x277D736B8]);
              sub_23C55EC88(2u, v45, v44, v43, v42, v29, v41, v31);
              MEMORY[0x23EED5B80]();
              if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23C568194();
              }

              sub_23C5681A4();
              v46 = v49;

LABEL_16:
              v4 = v48;
            }

            else
            {
            }

            v5 = 0x278BC0000;
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

LABEL_18:
      v3 += 16;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_22:
  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v35 = sub_23C568014();
  OUTLINED_FUNCTION_11(v35, qword_280BD2F10);

  v36 = sub_23C568004();
  v37 = sub_23C5681E4();
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_5();
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = sub_23C55DD78(v46);

    _os_log_impl(&dword_23C55B000, v36, v37, "%ld experiment/s with factor", v38, 0xCu);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  else
  {
  }

  v39 = v0[1];

  return v39(v46);
}

id sub_23C55E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_23C5680D4();

  v6 = [v4 initWithName:v5 compatibilityVersion:a3];

  return v6;
}

id sub_23C55E404(uint64_t a1, uint64_t a2)
{
  v3 = sub_23C567FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 24);
  OUTLINED_FUNCTION_6();
  v8 = sub_23C5680D4();
  v9 = [v7 experimentIdentifiersWithNamespaceName_];

  if (v9)
  {
    v10 = OUTLINED_FUNCTION_6();
    v12 = sub_23C55E818(v10, v11);
    if ((v12 & 0x100000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23C568BB0;
      *(inited + 32) = sub_23C5680E4();
      *(inited + 40) = v42;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0xD000000000000023;
      *(inited + 56) = 0x800000023C568FA0;
      v43 = sub_23C5680B4();
      v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v43);
      swift_willThrow();
    }

    else
    {
      v13 = v12;
      if (qword_27E1F7EF0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v14 = __swift_project_value_buffer(v3, qword_27E1F8020);
      (*(v4 + 16))(v6, v14, v3);
      v15 = [v9 experimentId];
      v16 = sub_23C5680E4();
      v47 = v17;
      v48 = v16;

      v46 = [v9 deploymentId];
      v18 = [v9 treatmentId];
      v19 = sub_23C5680E4();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23C568BA0;
      sub_23C55EEF4();

      v23 = OUTLINED_FUNCTION_6();
      *(v22 + 32) = sub_23C55E388(v23, v24, v13);
      v25 = objc_allocWithZone(MEMORY[0x277D736B8]);
      v26 = sub_23C55EC88(2u, v6, v48, v47, v46, v19, v21, v22);
    }
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v27 = sub_23C568014();
    __swift_project_value_buffer(v27, qword_280BD2F10);

    v28 = sub_23C568004();
    v29 = sub_23C5681E4();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_5();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      v32 = OUTLINED_FUNCTION_6();
      *(v30 + 4) = sub_23C5643D0(v32, v33, v34);
      OUTLINED_FUNCTION_9();
      _os_log_impl(v35, v36, v37, v38, v39, v40);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    return 0;
  }

  return v26;
}

unint64_t sub_23C55E818(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_23C5680D4();
  v7 = [v5 compatibilityVersionWithNamespaceName_];

  if (!v7)
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v8 = sub_23C568014();
    OUTLINED_FUNCTION_11(v8, qword_280BD2F10);

    v9 = sub_23C568004();
    v10 = sub_23C5681F4();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_5();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_23C5643D0(a1, a2, &v14);
      _os_log_impl(&dword_23C55B000, v9, v10, "%s doesn't exist on the device.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }
  }

  return v7 | ((v7 == 0) << 32);
}

id sub_23C55E98C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_23C5680D4();
  v7 = [v5 rolloutIdentifiersWithNamespaceName_];

  if (v7)
  {
    sub_23C567D78(v7);
    if (v8)
    {

      return v7;
    }
  }

  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v9 = sub_23C568014();
  OUTLINED_FUNCTION_11(v9, qword_280BD2F10);

  v10 = sub_23C568004();
  v11 = sub_23C5681F4();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_5();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_3();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_23C5643D0(a1, a2, &v20);
    OUTLINED_FUNCTION_7();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  return 0;
}

id sub_23C55EB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 24);
  v10 = sub_23C5680D4();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23C55EBF0;
  v14[3] = &block_descriptor;
  v11 = _Block_copy(v14);

  v12 = [v9 addUpdateHandlerForNamespaceName:v10 queue:a3 usingBlock:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_23C55EBF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_23C55EC88(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_23C567F84();
  v14 = sub_23C5680D4();

  v15 = sub_23C5680D4();

  sub_23C55EEF4();
  v16 = sub_23C568174();

  v17 = [v9 initWithType:a1 date:v13 experimentId:v14 deploymentId:a5 treatmentId:v15 namespaces:v16];

  v18 = sub_23C567FC4();
  (*(*(v18 - 8) + 8))(a2, v18);
  return v17;
}

uint64_t sub_23C55EDB8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_23C568194();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_23C55EE30(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23C5680E4();

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23C55EEF4()
{
  result = qword_27E1F8038;
  if (!qword_27E1F8038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F8038);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_23C55EF9C()
{
  result = qword_280BD2E50;
  if (!qword_280BD2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD2E50);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_23C5643D0(v4, v5, va);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTrigger(for:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalytics.cacheTrialExperiments(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  *v7 = v8;
  v7[1] = sub_23C55F930;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTriggerFromCache(for:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalytics.cacheTrialExperimentIdentifiers(for:namespaces:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalytics.startRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalytics.endRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTrigger(for:namespace:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_0();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  *v14 = v15;
  v14[1] = sub_23C55F83C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C55F83C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id ExperimentationAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23C55F9C8()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_17(v4);

  return sub_23C56110C(v3);
}

uint64_t sub_23C55FA58()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C55FB7C, 0, 0);
  }
}

id sub_23C55FB7C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *&v3[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock];
  v6 = v3;
  v7 = v4;

  [v5 lock];
  sub_23C56032C(v6, v7, v1);
  if (!v2)
  {
    v13 = v0[2];
    v12 = v0[3];
    [v5 unlock];

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_38();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38();

  return [v8 v9];
}

void sub_23C55FC84(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  [a1 lock];
  sub_23C563204(a2, a3, a4);
  [a1 unlock];
}

void *sub_23C55FD10(void *a1, void *a2, void *a3)
{
  [a1 lock];
  sub_23C560780(a2, a3, &v8);
  [a1 unlock];
  if (v3)
  {
  }

  else
  {

    a2 = v8;
  }

  return a2;
}

uint64_t sub_23C55FE38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23C55FEFC;

  return sub_23C55F9C8();
}

uint64_t sub_23C55FEFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v6 = OUTLINED_FUNCTION_6_0();
    v7(v6, v2);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_0();
    v9(v8, 0);
  }

  _Block_release(*(v2 + 32));
  OUTLINED_FUNCTION_5_0();

  return v10();
}

uint64_t sub_23C560060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_23C5681D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_23C568E28;
  v9[5] = v8;
  sub_23C563D48(0, 0, v6, &unk_23C568E38, v9);
}

uint64_t sub_23C560170()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_21();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_17(v3);
  v4 = OUTLINED_FUNCTION_15();

  return sub_23C56136C(v4, v5);
}

uint64_t sub_23C560208()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C56622C, 0, 0);
  }
}

uint64_t sub_23C56032C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  sub_23C5654F8(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v9;
  return swift_endAccess();
}

uint64_t sub_23C560464(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_23C568184();
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_23C560548;

  return sub_23C560170();
}

uint64_t sub_23C560548()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v6 = OUTLINED_FUNCTION_6_0();
    v7(v6, v2);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_0();
    v9(v8, 0);
  }

  _Block_release(*(v2 + 32));
  OUTLINED_FUNCTION_5_0();

  return v10();
}

uint64_t sub_23C5606D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C5606E4()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_23C55FD10(*(*(v0 + 24) + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock), *(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23C560780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_23C5651CC(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      *a3 = v10;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C568BB0;
  *(inited + 32) = sub_23C5680E4();
  *(inited + 40) = v13;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x800000023C569240;
  v14 = sub_23C5680B4();
  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v14);
  return swift_willThrow();
}

uint64_t sub_23C5608F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_23C565210(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C560940()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v2;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_17(v5);

  return sub_23C56110C(v3);
}

uint64_t sub_23C5609D4()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23C560AF8()
{
  OUTLINED_FUNCTION_11_0();
  sub_23C5615D0(*(v0 + 16), *(v0 + 48), *(v0 + 24));

  OUTLINED_FUNCTION_7_0();

  return v1();
}

uint64_t sub_23C560B84(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23C560C58;

  return sub_23C560940();
}

uint64_t sub_23C560C58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v7 = OUTLINED_FUNCTION_6_0();
    v8(v7, v2);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_0();
    v10(v9, 0);
  }

  _Block_release(*(v2 + 40));
  OUTLINED_FUNCTION_5_0();

  return v11();
}

uint64_t sub_23C560DDC()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v2;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_17(v5);

  return sub_23C5606D0(v3);
}

uint64_t sub_23C560E70()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23C560FB4(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_30();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_23C560060(a7, v12);
}

uint64_t sub_23C561038(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23C566224;

  return sub_23C560DDC();
}

uint64_t sub_23C56110C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561120()
{
  OUTLINED_FUNCTION_11_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_23C5611DC;
  v2 = *(v0 + 16);

  return sub_23C55CFD4(0, v2, 0x6874617065646F63, 0xEB00000000736469);
}

uint64_t sub_23C5611DC()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23C561300()
{
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for Experimentation();
  v0 = OUTLINED_FUNCTION_27();
  sub_23C5672D0(v0);
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

uint64_t sub_23C56136C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561384()
{
  OUTLINED_FUNCTION_11_0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23C561440;
  v2 = v0[2];
  v3 = v0[3];

  return sub_23C55DD9C(0, v2, v3, 0x6874617065646F63, 0xEB00000000736469);
}

uint64_t sub_23C561440()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_23C561564()
{
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for Experimentation();
  v0 = OUTLINED_FUNCTION_27();
  sub_23C5672D0(v0);
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

void sub_23C5615D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v8 = a3;
    v3 = OUTLINED_FUNCTION_15();
    sub_23C5668D0(v3, v4, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15();
    sub_23C566508(v6, v7);
  }
}

uint64_t sub_23C561660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C56167C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_23C55E404(v0[8], v0[9]);
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[7];
    type metadata accessor for Experimentation();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C568BA0;
    *(inited + 32) = v1;
    v5 = v1;
    v6 = sub_23C5672D0(inited);
    swift_setDeallocating();
    sub_23C5641EC();
    sub_23C5615D0(v3, v6, v2);
  }

  OUTLINED_FUNCTION_7_0();

  return v7();
}

uint64_t sub_23C561848(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = sub_23C5680E4();
  v11 = v10;
  v5[6] = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_23C561948;

  return sub_23C561660(v12, v9, v11, a3);
}

uint64_t sub_23C561948()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v7 = OUTLINED_FUNCTION_6_0();
    v8(v7, v2);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_0();
    v10(v9, 0);
  }

  _Block_release(*(v2 + 40));
  OUTLINED_FUNCTION_5_0();

  return v11();
}

uint64_t sub_23C561AE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561B00()
{
  v20 = v0;
  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_23C568014();
  __swift_project_value_buffer(v2, qword_280BD2F10);

  v3 = sub_23C568004();
  v4 = sub_23C5681E4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    OUTLINED_FUNCTION_5();
    swift_slowAlloc();
    OUTLINED_FUNCTION_29();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v1 = 136315138;
    *(v1 + 4) = sub_23C5643D0(v6, v5, &v19);
    OUTLINED_FUNCTION_28();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  sub_23C562330(*(v0 + 16), *(v0 + 24));
  sub_23C561CF4(*(v0 + 16));
  v14 = sub_23C568004();
  v15 = sub_23C5681E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23C55B000, v14, v15, "Finished starting tracking for namespace", v16, 2u);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  OUTLINED_FUNCTION_7_0();

  return v17();
}

uint64_t sub_23C561CF4(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = OUTLINED_FUNCTION_15();
  sub_23C5620B8(v2, v3, v4, v1);
}

void sub_23C561D74(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 namespaceName];
    v6 = sub_23C5680E4();
    v8 = v7;

    sub_23C562330(v6, v8);
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      swift_once();
    }

    v9 = sub_23C568014();
    __swift_project_value_buffer(v9, qword_280BD2F10);
    v4 = sub_23C568004();
    v10 = sub_23C5681F4();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23C55B000, v4, v10, "ExperimentationAnalyticsManager object is not retained in memory of the process", v11, 2u);
      MEMORY[0x23EED6180](v11, -1, -1);
    }
  }
}

void sub_23C5620B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock];
  v10 = v4;

  [v9 lock];
  sub_23C562180(v10, a1, a2, a3, a4);
  [v9 unlock];
}

uint64_t sub_23C562180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace;
  swift_beginAccess();
  v10 = *(a1 + v9);

  v11 = sub_23C5608F0(a2, a3, v10);
  v13 = v12;

  if (!v11)
  {
    v16 = sub_23C55EB04(a2, a3, *(a1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_queue), a4, a5);
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v9);
    sub_23C565634(v16, 1, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + v9) = v20;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  if (!__OFADD__(v13, 1))
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + v9);
    sub_23C565634(v11, v13 + 1, a2, a3, v15);
    *(a1 + v9) = v19;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_23C562330(uint64_t a1, uint64_t a2)
{
  [*(*(v2 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation) + 24) refresh];
  v5 = OUTLINED_FUNCTION_6();
  v7 = sub_23C5625D4(v5, v6);
  if (!v3)
  {
    v8 = v7;
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_6();
      sub_23C562820(v9, v10, v8);
      v24 = v11;
      if (v11)
      {
        v25 = OUTLINED_FUNCTION_6();
        sub_23C5628DC(v25, v26, v8, v27, v24);

        return;
      }

      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v28 = sub_23C568014();
      __swift_project_value_buffer(v28, qword_280BD2F10);

      v13 = sub_23C568004();
      v29 = sub_23C5681F4();

      if (os_log_type_enabled(v13, v29))
      {
        OUTLINED_FUNCTION_5();
        v30 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v30 = 136315138;
        v31 = OUTLINED_FUNCTION_6();
        *(v30 + 4) = sub_23C5643D0(v31, v32, v33);
        _os_log_impl(&dword_23C55B000, v13, v29, "No update to %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }
    }

    else
    {
      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v12 = sub_23C568014();
      __swift_project_value_buffer(v12, qword_280BD2F10);

      v13 = sub_23C568004();
      v14 = sub_23C568204();

      if (os_log_type_enabled(v13, v14))
      {
        OUTLINED_FUNCTION_5();
        swift_slowAlloc();
        OUTLINED_FUNCTION_29();
        v34 = swift_slowAlloc();
        *v4 = 136315138;
        v15 = OUTLINED_FUNCTION_6();
        *(v4 + 4) = sub_23C5643D0(v15, v16, v17);
        OUTLINED_FUNCTION_28();
        _os_log_impl(v18, v19, v20, v21, v22, v23);
        __swift_destroy_boxed_opaque_existential_0(v34);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }
    }
  }
}

id sub_23C5625D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C55E818(a1, a2);
  if ((v3 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C568BB0;
    *(inited + 32) = sub_23C5680E4();
    *(inited + 40) = v14;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x800000023C568FA0;
    v15 = sub_23C5680B4();
    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v15);
    swift_willThrow();
  }

  else
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_6();
    v7 = sub_23C55E98C(v5, v6);
    if (v7)
    {
      v8 = v7;
      type metadata accessor for Experimentation();
      v9 = OUTLINED_FUNCTION_6();
      v11 = sub_23C567418(v9, v10, v8, v4);

      return v11;
    }

    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v17 = sub_23C568014();
    __swift_project_value_buffer(v17, qword_280BD2F10);

    v18 = sub_23C568004();
    v19 = sub_23C568204();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_29();
      v29 = swift_slowAlloc();
      *v2 = 136315138;
      v20 = OUTLINED_FUNCTION_6();
      *(v2 + 4) = sub_23C5643D0(v20, v21, v22);
      OUTLINED_FUNCTION_28();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }
  }

  return 0;
}

uint64_t sub_23C562820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23C562BE4(a3);
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_23C56299C();
    if (v9)
    {
      if (v6 == v8 && v9 == v7)
      {

LABEL_10:

        return OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_6();
      v11 = sub_23C5682F4();

      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  return OUTLINED_FUNCTION_6();
}

void sub_23C5628DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C568BA0;
  *(v7 + 32) = a3;
  v8 = a3;
  sub_23C566DD0(v7);

  sub_23C562B4C(a1);
}

uint64_t sub_23C56299C()
{
  sub_23C5630E4();
  v1 = *(v0 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults);
  v2 = sub_23C5680D4();
  v3 = [v1 stringForKey_];

  if (v3)
  {

    v4 = sub_23C5680E4();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v5 = sub_23C568014();
    __swift_project_value_buffer(v5, qword_280BD2F10);
    OUTLINED_FUNCTION_27();

    v6 = sub_23C568004();
    v7 = sub_23C5681F4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_5();
      v8 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v8 = 136315138;
      v9 = OUTLINED_FUNCTION_15();
      v12 = sub_23C5643D0(v9, v10, v11);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_23C55B000, v6, v7, "Couldn't find %s key in UserDefaults", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void sub_23C562B4C(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults);
  v3 = sub_23C5680D4();
  OUTLINED_FUNCTION_15();
  sub_23C5630E4();
  v4 = sub_23C5680D4();

  [v2 setObject:v3 forKey:v4];
}

char *sub_23C562BE4(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = sub_23C568094();
  OUTLINED_FUNCTION_23();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  v9 = v8 - v7;
  v10 = sub_23C568084();
  OUTLINED_FUNCTION_23();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v50 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - v16;
  v18 = objc_opt_self();
  v51 = 0;
  v19 = [v18 archivedDataWithRootObject:a1 requiringSecureCoding:0 error:&v51];
  v20 = v51;
  if (v19)
  {
    v21 = sub_23C567F74();
    v46 = v17;
    v22 = v5;
    v23 = v21;
    v49 = v1;
    v25 = v24;

    sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_23C568074();
    sub_23C5658B4(v23, v25);
    v26 = v49;
    sub_23C565818(v23, v25, v9);
    v42[1] = v26;
    v43 = v25;
    v44 = v23;
    sub_23C56590C(v23, v25);
    v27 = v46;
    sub_23C568064();
    (*(v22 + 8))(v9, v3);
    (*(v12 + 16))(v50, v27, v10);
    sub_23C55CC14(qword_280BD2D28, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    v45 = v10;
    sub_23C568154();
    v28 = v52;
    v50 = v51;
    v49 = *(v51 + 2);
    if (v52 == v49)
    {
      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v48 = v50 + 32;
      v29 = MEMORY[0x277D84F90];
      v47 = xmmword_23C568BB0;
      v32 = v52;
      do
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
        }

        if (v32 >= *(v50 + 2))
        {
          goto LABEL_17;
        }

        v33 = v12;
        v34 = v48[v32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8100, &qword_23C568DE0);
        v35 = swift_allocObject();
        *(v35 + 16) = v47;
        *(v35 + 56) = MEMORY[0x277D84B78];
        *(v35 + 64) = MEMORY[0x277D84BC0];
        *(v35 + 32) = v34;
        v36 = sub_23C5680F4();
        v38 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_23C564234(0, *(v29 + 2) + 1, 1, v29);
        }

        v40 = *(v29 + 2);
        v39 = *(v29 + 3);
        if (v40 >= v39 >> 1)
        {
          v29 = sub_23C564234((v39 > 1), v40 + 1, 1, v29);
        }

        ++v32;
        *(v29 + 2) = v40 + 1;
        v41 = &v29[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        v12 = v33;
      }

      while (v49 != v32);
    }

    (*(v12 + 8))(v27, v45);

    v51 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8108, &qword_23C568DE8);
    sub_23C55CD48(&unk_280BD2D10, &unk_27E1F8108, &qword_23C568DE8, MEMORY[0x277D83958]);
    v30 = sub_23C5680C4();
    sub_23C56590C(v44, v43);
  }

  else
  {
    v30 = v20;
    sub_23C567F64();

    swift_willThrow();
  }

  return v30;
}

uint64_t sub_23C563130(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C563148()
{
  OUTLINED_FUNCTION_11_0();
  sub_23C5631A4(*(v0 + 16));
  OUTLINED_FUNCTION_7_0();

  return v1();
}

void sub_23C5631A4(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v4 = *&v2[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock];
  v5 = v2;
  OUTLINED_FUNCTION_27();

  sub_23C55FC84(v4, v2, v3, v1);
}

void sub_23C563204(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_23C5608F0(a2, a3, v7);
  v10 = v9;

  if (v8)
  {
    if (!__OFSUB__(v10, 1))
    {
      if (v10 == 1)
      {
        [*(*(a1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation) + 24) removeUpdateHandlerForToken_];
        swift_beginAccess();
        sub_23C565414(a2, a3);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(a1 + v6);
        sub_23C565634(v8, v10 - 1, a2, a3, isUniquelyReferenced_nonNull_native);
        *(a1 + v6) = v17;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_280BD2E68 != -1)
  {
LABEL_12:
    swift_once();
  }

  v12 = sub_23C568014();
  __swift_project_value_buffer(v12, qword_280BD2F10);

  v13 = sub_23C568004();
  v14 = sub_23C5681F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23C5643D0(a2, a3, v18);
    _os_log_impl(&dword_23C55B000, v13, v14, "%s is not being tracked", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EED6180](v16, -1, -1);
    MEMORY[0x23EED6180](v15, -1, -1);
  }
}

id ExperimentationAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C5634B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23C566220;

  return sub_23C560940();
}

uint64_t sub_23C56355C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23C566220;

  return sub_23C55F9C8();
}

uint64_t sub_23C5635F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23C566220;

  return sub_23C560DDC();
}

uint64_t sub_23C56369C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23C566220;

  return sub_23C560170();
}

uint64_t sub_23C563744(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C566220;

  return sub_23C561AE8(a1, a2);
}

uint64_t sub_23C5637EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C566220;

  return sub_23C563130(a1, a2);
}

uint64_t sub_23C563894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23C563954;

  return sub_23C561660(a1, a2, a3, a4);
}

uint64_t sub_23C563954()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_23C563A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23C5680D4();

  if (a4)
  {
    v8 = sub_23C5680A4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_23C563B2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23C563B78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23C566220;

  return v6();
}

uint64_t sub_23C563C60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23C563954;

  return v7();
}

uint64_t sub_23C563D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_23C565D7C(a3, v22 - v10);
  v12 = sub_23C5681D4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23C5661C0(v11, &qword_27E1F8130, &qword_23C568E18);
  }

  else
  {
    sub_23C5681C4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_23C5681B4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_23C568114() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_23C5661C0(a3, &qword_27E1F8130, &qword_23C568E18);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C5661C0(a3, &qword_27E1F8130, &qword_23C568E18);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_23C564014(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C56410C;

  return v6(a1);
}

uint64_t sub_23C56410C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_7_0();

  return v3();
}

uint64_t sub_23C5641EC()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

char *sub_23C564234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8118, &unk_23C568DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **sub_23C56433C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23C564374(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23C5643D0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23C5643D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C564D20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_23C56615C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperiments(for:)()
{
  OUTLINED_FUNCTION_19();
  v1 = v0;
  OUTLINED_FUNCTION_25();
  v7 = (*(v2 + 200) + **(v2 + 200));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17(v4);

  return v7(v1);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTrigger(for:requestID:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTrigger(for:namespace:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_25();
  v13 = (*(v8 + 264) + **(v8 + 264));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_17(v10);

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.startRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.endRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C564C94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23C564CD4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_23C564D20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C564E20(a5, a6);
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
    result = sub_23C5682B4();
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

uint64_t sub_23C564E20(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C564E6C(a1, a2);
  sub_23C564F84(&unk_284F2A340);
  return v3;
}

uint64_t sub_23C564E6C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_23C568144())
  {
    result = sub_23C565068(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23C568294();
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
          result = sub_23C5682B4();
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

uint64_t sub_23C564F84(uint64_t result)
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

    result = sub_23C5650D8(result, v7, 1, v3);
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

void *sub_23C565068(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8138, &qword_23C568E98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_23C5650D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8138, &qword_23C568E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23C5651CC(uint64_t a1)
{
  v2 = sub_23C568244();

  return sub_23C565288(a1, v2);
}

unint64_t sub_23C565210(uint64_t a1, uint64_t a2)
{
  sub_23C568314();
  sub_23C568124();
  v4 = sub_23C568324();

  return sub_23C565360(a1, a2, v4);
}

unint64_t sub_23C565288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_23C55CD08(0, &qword_280BD2E48, 0x277CCAD78);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_23C568254();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_23C565360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23C5682F4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23C565414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23C565210(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8128, &qword_23C568E00);
  sub_23C5682C4();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_23C5682D4();
  *v3 = v9;
  return v7;
}

id sub_23C5654F8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23C5651CC(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8150, &qword_23C568EA8);
  if ((sub_23C5682C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_23C5651CC(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_23C55CD08(0, &qword_280BD2E48, 0x277CCAD78);
    result = sub_23C568304();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_23C565788(v9, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_23C565634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_23C565210(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8128, &qword_23C568E00);
  if ((sub_23C5682C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_23C565210(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_23C568304();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_23C5657CC(v14, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_23C565788(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23C5657CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_23C565818(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_23C565A3C(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_23C565968(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_23C5658B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_23C56590C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_23C565968(uint64_t a1, uint64_t a2)
{
  sub_23C568094();
  sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_23C568054();
}

uint64_t sub_23C565A3C(uint64_t a1, uint64_t a2)
{
  result = sub_23C567F24();
  if (!result || (result = sub_23C567F44(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23C567F34();
      sub_23C568094();
      sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_23C568054();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C565B1C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v1[1] = sub_23C563954;
  OUTLINED_FUNCTION_33();

  return v3();
}

void sub_23C565BF8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_30();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23C565CC4()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v1[1] = sub_23C566220;
  OUTLINED_FUNCTION_33();

  return v3();
}

uint64_t sub_23C565D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C565E14()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26(v1);

  return v4(v3);
}

void sub_23C565EAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

void sub_23C565F40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t objectdestroy_49Tm()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_23C56601C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t sub_23C5660B0()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v5[1] = sub_23C566220;

  return sub_23C55FE38(v1, v2, v3);
}

uint64_t sub_23C56615C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C5661C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_37()
{
}

uint64_t sub_23C566430()
{
  v0 = sub_23C568014();
  __swift_allocate_value_buffer(v0, qword_280BD2F10);
  __swift_project_value_buffer(v0, qword_280BD2F10);
  sub_23C5664C4();
  sub_23C568264();
  return sub_23C568024();
}

unint64_t sub_23C5664C4()
{
  result = qword_280BD2E58;
  if (!qword_280BD2E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD2E58);
  }

  return result;
}

void sub_23C566508(unint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  sub_23C567FF4();
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  if (sub_23C55DD78(a1))
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D57260]) init];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      sub_23C567064(a1, v19, &qword_27E1F8178, 0x277D57228, &selRef_setAllocations_);
    }

    v20 = [a2 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v7);
    if (v21)
    {
      sub_23C5670E0(v7);
    }

    else
    {
      (*(v9 + 32))(v16, v7, v2);
      if (v18)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        (*(v9 + 16))(v13, v16, v2);
        v29 = v18;
        v30 = sub_23C5675C4(v13);
        [v29 setCodepathId_];
      }

      (*(v9 + 8))(v16, v2);
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v31 setExperimentTriggered_];
    sub_23C566F8C(v31);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v32 = sub_23C568014();
    v33 = OUTLINED_FUNCTION_13_0(v32, qword_280BD2F10);
    v34 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v34))
    {
      v35 = OUTLINED_FUNCTION_4_2();
      *v35 = 0;
      OUTLINED_FUNCTION_10_0(&dword_23C55B000, v36, v37, "experimentTriggered event emitted");
      MEMORY[0x23EED6180](v35, -1, -1);
    }

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v22 = sub_23C568014();
    v39 = OUTLINED_FUNCTION_13_0(v22, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(v39, v23))
    {
      v24 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v24);
      OUTLINED_FUNCTION_11_1(&dword_23C55B000, v25, v26, "experimentTriggered event no emitted. Trial experiments empty.");
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23C5668D0(unint64_t a1, void *a2, NSObject *a3)
{
  v59 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  sub_23C567FF4();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  if (sub_23C55DD78(a1))
  {
    v57 = v19;
    v58 = v3;
    v26 = [objc_allocWithZone(MEMORY[0x277D57268]) init];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      sub_23C567064(a1, v28, &qword_27E1F8178, 0x277D57228, &selRef_setAllocations_);
    }

    v29 = [a2 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v13);
    if (v30)
    {
      sub_23C5670E0(v13);
      v31 = v27;
    }

    else
    {
      (*(v15 + 32))(v25, v13, v4);
      v31 = v27;
      if (v27)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        v39 = OUTLINED_FUNCTION_8_1();
        v40(v39, v25, v4);
        v41 = v27;
        v42 = sub_23C5675C4(v23);
        [v41 setCodepathId_];
      }

      (*(v15 + 8))(v25, v4);
    }

    v43 = [v59 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v10);
    if (v30)
    {
      sub_23C5670E0(v10);
    }

    else
    {
      v44 = v57;
      (*(v15 + 32))(v57, v10, v4);
      if (v31)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        v45 = OUTLINED_FUNCTION_8_1();
        v46(v45, v44, v4);
        v47 = v31;
        v48 = sub_23C5675C4(v23);
        [v47 setRequestId_];
      }

      (*(v15 + 8))(v44, v4);
    }

    v49 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v49 setSiriRequestExperimentTriggered_];
    sub_23C566F8C(v49);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v50 = sub_23C568014();
    v51 = OUTLINED_FUNCTION_13_0(v50, qword_280BD2F10);
    v52 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v52))
    {
      v53 = OUTLINED_FUNCTION_4_2();
      *v53 = 0;
      OUTLINED_FUNCTION_10_0(&dword_23C55B000, v54, v55, "SiriRequestExperimentTriggered event emitted.");
      MEMORY[0x23EED6180](v53, -1, -1);
    }

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v32 = sub_23C568014();
    v59 = OUTLINED_FUNCTION_13_0(v32, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(v59, v33))
    {
      v34 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v34);
      OUTLINED_FUNCTION_11_1(&dword_23C55B000, v35, v36, "SiriRequestExperimentTriggered event no emitted. Trial experiments empty.");
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23C566DD0(unint64_t a1)
{
  if (sub_23C55DD78(a1))
  {
    oslog = [objc_allocWithZone(MEMORY[0x277D57270]) init];
    if (oslog)
    {
      sub_23C567064(a1, oslog, &qword_27E1F8160, 0x277D57230, &selRef_setRollouts_);
    }

    v2 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v2 setRolloutChangeSnapshot_];
    sub_23C566F8C(v2);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v3 = sub_23C568014();
    v4 = OUTLINED_FUNCTION_13_0(v3, qword_280BD2F10);
    v5 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v5))
    {
      v6 = OUTLINED_FUNCTION_4_2();
      *v6 = 0;
      _os_log_impl(&dword_23C55B000, v4, OS_LOG_TYPE_DEFAULT, "RolloutChangeSnapshot event emitted", v6, 2u);
      MEMORY[0x23EED6180](v6, -1, -1);
    }
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v7 = sub_23C568014();
    oslog = OUTLINED_FUNCTION_13_0(v7, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v9);
      OUTLINED_FUNCTION_12_1(&dword_23C55B000, v10, v11, "RolloutChangeSnapshot event not emitted. Trial rollouts empty.", v12, v13, v14, v15, v16, oslog);
      OUTLINED_FUNCTION_1_2();
    }
  }
}

void sub_23C566F8C(uint64_t a1)
{
  if (a1)
  {
    v3 = *(v1 + 16);

    [v3 emitMessage_];
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280BD2E68);
    }

    v4 = sub_23C568014();
    oslog = OUTLINED_FUNCTION_13_0(v4, qword_280BD2F10);
    sub_23C568204();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_12_1(&dword_23C55B000, v7, v8, "EXPSiriSchemaEXPSiriClientEvent nil", v9, v10, v11, v12, v13, oslog);
      OUTLINED_FUNCTION_1_2();
    }
  }
}

void sub_23C567064(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_23C55CD08(0, a3, a4);
  v7 = sub_23C568174();
  [a2 *a5];
}

uint64_t sub_23C5670E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_2()
{

  JUMPOUT(0x23EED6180);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_5_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_12_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_23C568004();
}

uint64_t sub_23C5672D0(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = sub_23C5682E4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  result = type metadata accessor for Experimentation();
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED5CC0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = sub_23C567660(v6);
      if (v8)
      {
        v9 = v8;
        MEMORY[0x23EED5B80]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23C568194();
        }

        sub_23C5681A4();

        v5 = v10;
      }

      else
      {
      }

      ++v4;
    }

    while (v2 != v4);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_23C567418(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D57230]) init];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [a3 rolloutId];
    v12 = sub_23C5680E4();
    v14 = v13;

    sub_23C567EB8(v12, v14, v10, &selRef_setRolloutId_);
    v15 = v10;
    sub_23C567D78(a3);
    if (v16)
    {
      v17 = sub_23C5680D4();
    }

    else
    {
      v17 = 0;
    }

    [v15 setRampId_];

    v18 = v15;
    result = [a3 deploymentId];
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    [v18 setDeploymentId_];
  }

  type metadata accessor for Experimentation();
  v20 = sub_23C567C80(a1, a2, a3, a4);
  if (v20)
  {
    v21 = v20;
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23C568BA0;
      *(v22 + 32) = v21;
      sub_23C567E34(v22, v9);
    }

    else
    {
    }
  }

  return v9;
}

id sub_23C5675C4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23C567FE4();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_23C567FF4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *sub_23C567660(id a1)
{
  v2 = sub_23C567FC4();
  OUTLINED_FUNCTION_23();
  v60 = v3;
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_23C567FF4();
  OUTLINED_FUNCTION_23();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D57228]) init];
  v19 = v18;
  v61 = a1;
  if (v18)
  {
    v58 = v18;
    v20 = v8;
    v21 = v9;
    v22 = v15;
    v23 = v17;
    v24 = v11;
    v25 = v2;
    v26 = [v61 experimentId];
    v27 = sub_23C5680E4();
    v29 = v28;

    v2 = v25;
    v11 = v24;
    v17 = v23;
    v15 = v22;
    v9 = v21;
    v8 = v20;
    v30 = v27;
    v31 = v58;
    sub_23C567EB8(v30, v29, v58, &selRef_setExperimentId_);

    a1 = v61;
  }

  v32 = [a1 treatmentId];
  sub_23C5680E4();

  sub_23C567FD4();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_23C5670E0(v8);
    v33 = v61;
    v34 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  (*(v11 + 32))(v17, v8, v9);
  v34 = v19;
  if (v19)
  {
    sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
    (*(v11 + 16))(v15, v17, v9);
    v35 = v19;
    v36 = sub_23C5675C4(v15);
    [v35 setTreatmentId_];
  }

  (*(v11 + 8))(v17, v9);
  v33 = v61;
  if (v19)
  {
LABEL_9:
    v37 = v34;
    [v37 setDeploymentId_];

    v38 = v37;
    v39 = [v33 type];
    if (v39 - 1 < 3)
    {
      v40 = (v39 - 1) + 1;
    }

    else
    {
      v40 = 0;
    }

    [v38 setAllocationStatus_];
  }

LABEL_13:
  v41 = [v33 namespaces];
  sub_23C55CD08(0, &qword_27E1F8038, 0x277D73808);
  sub_23C568184();

  v42 = sub_23C567148();

  if (!v42)
  {
LABEL_21:
    if (v34)
    {
      goto LABEL_22;
    }

    return v34;
  }

  v43 = [v33 namespaces];
  v44 = sub_23C568184();

  result = sub_23C567148();
  if (!result)
  {

    goto LABEL_21;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v44 + 32); ; i = MEMORY[0x23EED5CC0](0, v44))
    {
      v47 = i;

      if (!v34)
      {
LABEL_26:

        return v34;
      }

      v48 = v34;
      v49 = [v47 name];
      v50 = sub_23C5680E4();
      v52 = v51;

      sub_23C567EB8(v50, v52, v48, &selRef_setExperimentNamespace_);
      v53 = v48;
      [v53 setCompatibilityVersion_];

LABEL_22:
      v47 = v34;
      v54 = [v33 date];
      v44 = v59;
      sub_23C567FB4();

      sub_23C567FA4();
      v56 = v55;
      (*(v60 + 8))(v44, v2);
      v57 = v56 * 1000.0;
      if (COERCE__INT64(fabs(v56 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v57 <= -1.0)
      {
        goto LABEL_29;
      }

      if (v57 < 1.84467441e19)
      {
        [v47 setLastUpdatedAtInMs_];
        goto LABEL_26;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C567C6C(char a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_23C567C80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D57238]) init];
  if (v8)
  {
    sub_23C567DDC(a1, a2, v8);
    v9 = v8;
    v10 = [a3 factorPackId];
    v11 = sub_23C5680E4();
    v13 = v12;

    sub_23C567EB8(v11, v13, v9, &selRef_setFactorPackId_);
  }

  [v8 setCompatibilityVersion_];
  return v8;
}

unint64_t sub_23C567D54(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_23C567D78(void *a1)
{
  v1 = [a1 rampId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23C5680E4();

  return v3;
}

void sub_23C567DDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23C5680D4();
  [a3 setName_];
}

void sub_23C567E34(uint64_t a1, void *a2)
{
  sub_23C55CD08(0, &unk_280BD2D00, 0x277D57238);
  v3 = sub_23C568174();

  [a2 setNamespaces_];
}

void sub_23C567EB8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_23C5680D4();

  [a3 *a4];
}