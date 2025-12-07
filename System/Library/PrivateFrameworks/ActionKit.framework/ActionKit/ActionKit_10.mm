uint64_t sub_23DF3A2F4()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBC0, &qword_23E22AED8);
  v2 = sub_23DF3BD40();
  v3 = sub_23DE66434(&qword_27E32DBC8, &qword_27E32DBC0, &qword_23E22AED8, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_23DF3A3C0, 0, v1, v2, v3);
}

uint64_t sub_23DF3A3C0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBD0, &qword_23E22AEE0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBD8, &qword_23E22AEE8);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v21 = sub_23DF3BD40();
  sub_23DF3961C();
  sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0, MEMORY[0x277CBA2C0]);
  v22 = v11;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32DBF0, &qword_27E32DBD8, &qword_23E22AEE8, MEMORY[0x277CBA488]);
  v12 = v6;
  sub_23E1FB91C();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32DBF8, &qword_27E32DBD0, &qword_23E22AEE0, MEMORY[0x277CBA4C8]);
  v14 = v25;
  v15 = v26;
  sub_23E1FB91C();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_23E1FB90C();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_23DF3A7A0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC00, &qword_23E22AEF8);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC08, &qword_23E22AF00);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DF3BD40();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC10, &qword_23E22AF08);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC20, &unk_23E22AF68);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC18, &qword_23E22AF38);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for ToggleCellularPlanAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for ToggleCellularPlanAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DF3AB38@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC00, &qword_23E22AEF8);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC08, &qword_23E22AF00);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DF3BD40();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC10, &qword_23E22AF08);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC18, &qword_23E22AF38);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for ToggleCellularPlanAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for ToggleCellularPlanAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DF3AE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v2 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  *v8 = sub_23E1FDC1C();
  v8[1] = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D7BF38], v2);
  sub_23E1FC82C();
  v10 = sub_23E1FC81C();
  OUTLINED_FUNCTION_9_0(v10);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v11 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DF3B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[44] = a3;
  v4[45] = a4;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_23E1FD03C();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF3B120, 0, 0);
}

uint64_t sub_23DF3B120(uint64_t a1)
{
  v29 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  sub_23E1FB5DC();
  v2 = *(v1 + 24);
  if (!v2)
  {
    sub_23DE99EEC();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
LABEL_11:

    v23 = *(v1 + 8);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  *(v1 + 88) = *(v1 + 16);
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  v4 = *(v1 + 56);
  *(v1 + 112) = *(v1 + 40);
  *(v1 + 128) = v4;
  *(v1 + 144) = *(v1 + 72);
  sub_23DED4C08((v1 + 88));
  if (!v5)
  {
    sub_23E1FCB9C();
    memcpy((v1 + 160), (v1 + 16), 0x48uLL);
    sub_23DE99F40(v1 + 160, v1 + 232);
    v13 = sub_23E1FD02C();
    v14 = sub_23E1FE1BC();
    sub_23DF3BD94(v1 + 16);
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v1 + 376);
    v16 = *(v1 + 384);
    v18 = *(v1 + 368);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      sub_23E1FB55C();
      v21 = sub_23DE56B40(*(v1 + 304), *(v1 + 312), v28);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_23DE30000, v13, v14, "Could not find cellular plan with matching label %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EF074C0](v20, -1, -1);
      MEMORY[0x23EF074C0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    sub_23DE99EEC();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(WFCellularPlansManager) init];
  sub_23E1FB5DC();
  if (*(v1 + 392))
  {
    v8 = [v6 isActive];
    *(v1 + 320) = 0;
    v9 = [v7 setPlanStatus:v8 ^ 1 forPlan:v6 error:v1 + 320];
    v10 = *(v1 + 320);
    if (!v9)
    {
LABEL_5:
      v11 = v10;
      sub_23E1FBECC();

      swift_willThrow();
LABEL_10:
      sub_23DF3BD94(v1 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    sub_23E1FB5DC();
    v25 = *(v1 + 393);
    *(v1 + 328) = 0;
    v26 = [v7 setPlanStatus:v25 forPlan:v6 error:v1 + 328];
    v10 = *(v1 + 328);
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v27 = v10;
  sub_23E1FB54C();

  sub_23DF3BD94(v1 + 16);

  v23 = *(v1 + 8);
LABEL_12:

  return v23();
}

void sub_23DF3B4C0()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA58, &unk_23E229D50);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_4();
  v79 = v2;
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v87 = v3;
  v88 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v86 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v8 = OUTLINED_FUNCTION_25(v7);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v73 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v13);
  v84 = sub_23E1FBEEC();
  v14 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_23E1FC1DC();
  v19 = OUTLINED_FUNCTION_25(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = sub_23E1FDBCC();
  v24 = OUTLINED_FUNCTION_25(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  v28 = sub_23E1FBF0C();
  v77 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA68, &qword_23E22AE90);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v82 = *MEMORY[0x277CC9110];
  v29 = *(v14 + 104);
  v83 = v14 + 104;
  v85 = v29;
  v80 = v17;
  v29(v17);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_12(v27, v30, 0xEA00000000007374, v22, v17);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v28);
  v34 = sub_23E1FB51C();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0;
  v73[1] = v11;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  v74 = *MEMORY[0x277CBA308];
  v41 = v87;
  v42 = *(v88 + 104);
  v88 += 104;
  v81 = v42;
  (v42)(v86);
  sub_23DE99E98();
  v78 = sub_23E1FB61C();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBB8, &unk_23E22AE98);
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v43 = v80;
  v85(v80, v82, v84);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12(v44, v45, v46, v22, v43);
  OUTLINED_FUNCTION_18_0();
  v47 = v77;
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v77);
  LOBYTE(v89) = 0;
  OUTLINED_FUNCTION_18_0();
  v76 = v34;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v34);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v34);
  v57 = v86;
  v58 = v74;
  v81(v86, v74, v41);
  sub_23DF3971C();
  v75 = sub_23E1FB60C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA70, &qword_23E226300);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v59 = v80;
  v85(v80, v82, v84);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12(v60, v61, v62, v22, v59);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v47);
  LOBYTE(v89) = 1;
  sub_23E1FDE4C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v76);
  v81(v57, v58, v87);
  sub_23E1FB64C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF3BB34(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DE662F0;

  return sub_23DF3B030(a1, v4, v5, v6);
}

void sub_23DF3BBE8(void *a1@<X8>)
{
  sub_23DF3B4C0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_23DF3BC18(uint64_t a1)
{
  v2 = sub_23DF3BD40();

  return MEMORY[0x28210B538](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for ToggleCellularPlanAction.ToggleCellularPlanOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DF3BD40()
{
  result = qword_280DAF1D8;
  if (!qword_280DAF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1D8);
  }

  return result;
}

uint64_t sub_23DF3BD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA80, &qword_23E229D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23E1FBF1C();
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_23E1FBF1C();
}

id sub_23DF3BEE4(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  a2(0);
  sub_23DE5D888(a3, a4, a5);
  v10 = sub_23E1FDA9C();

  v11 = [v9 initWithDictionary_];

  return v11;
}

id sub_23DF3C018()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v192 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFCountAction");
  *(inited + 54) = -4864;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("get|number|length|list|file|document", 36);
  v14 = v13;
  sub_23E1FDCBC("get|number|length|list|file|document", 36);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v208 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v17 = v2;
  sub_23DE477A0(v12, v14);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v206 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v205 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC20];
  *(v22 + 32) = *MEMORY[0x277D7CC20];
  v24 = v21;
  v25 = v23;
  v204 = sub_23E1FDCBC("This is just like the Count in Sesame Street, but instead of a vampire, it's a Shortcuts action.", 96);
  v27 = v26;
  sub_23E1FDCBC("This is just like the Count in Sesame Street, but instead of a vampire, it's a Shortcuts action.", 96);
  sub_23E1FC14C();
  v28 = v208;
  v29 = [v208 bundleURL];
  v207 = v17;
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v31 = v5;
  sub_23DE477A0(v204, v27);
  *(v22 + 40) = v32;
  v33 = *MEMORY[0x277D7CC30];
  v34 = v206;
  *(v22 + 64) = v206;
  *(v22 + 72) = v33;
  v35 = v33;
  v204 = sub_23E1FDCBC("Counts the number of items, characters, words, sentences, or lines passed as input.", 83);
  v37 = v36;
  sub_23E1FDCBC("Counts the number of items, characters, words, sentences, or lines passed as input.", 83);
  sub_23E1FC14C();
  v38 = [v28 bundleURL];
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v40 = v31;
  sub_23DE477A0(v204, v37);
  *(v22 + 104) = v34;
  *(v22 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v42 = sub_23E1FDABC();
  v43 = v205;
  *(inited + 120) = sub_23DF3BEE4(v42, type metadata accessor for DescriptionKey, &unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v44 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v43;
  *(inited + 152) = v44;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v45 = *MEMORY[0x277D7CB60];
  v46 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v45;
  *(inited + 200) = 7173491;
  *(inited + 208) = 0xE300000000000000;
  v47 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v46;
  *(inited + 232) = v47;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v48 = swift_initStackObject();
  v200 = xmmword_23E222350;
  *(v48 + 16) = xmmword_23E222350;
  v49 = v40;
  *(v48 + 32) = 0x656C7069746C754DLL;
  *(v48 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x277D839B0];
  *(v48 + 48) = 1;
  *(v48 + 72) = v50;
  strcpy((v48 + 80), "ParameterKey");
  *(v48 + 93) = 0;
  *(v48 + 94) = -5120;
  *(v48 + 96) = 0x7475706E49;
  *(v48 + 104) = 0xE500000000000000;
  *(v48 + 120) = v46;
  *(v48 + 128) = 0x6465726975716552;
  *(v48 + 136) = 0xE800000000000000;
  *(v48 + 144) = 1;
  *(v48 + 168) = v50;
  *(v48 + 176) = 0x7365707954;
  *(v48 + 184) = 0xE500000000000000;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v48 + 216) = v205;
  *(v48 + 192) = &unk_285026050;
  v51 = v44;
  v52 = v45;
  v53 = v47;
  v54 = sub_23E1FDABC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v204 = v55;
  *(inited + 240) = v54;
  v56 = *MEMORY[0x277D7CB88];
  *(inited + 264) = v55;
  *(inited + 272) = v56;
  *(inited + 280) = 1;
  v57 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v50;
  *(inited + 312) = v57;
  v58 = v56;
  v59 = v57;
  v60 = sub_23E1FDCBC("Count (Action Name)", 19);
  v62 = v61;
  sub_23E1FDCBC("Count", 5);
  sub_23E1FC14C();
  v63 = v208;
  v64 = [v208 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v66 = v49;
  sub_23DE477A0(v60, v62);
  *(inited + 320) = v67;
  v68 = *MEMORY[0x277D7CDD0];
  v69 = v206;
  *(inited + 344) = v206;
  *(inited + 352) = v68;
  v70 = swift_allocObject();
  *(v70 + 16) = v200;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x277D837D0];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 0;
  *(v70 + 120) = MEMORY[0x277D839B0];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = v68;
  v202 = sub_23E1FDCBC("Count (Default Output Name)", 27);
  v73 = v72;
  sub_23E1FDCBC("Count", 5);
  v203 = v66;
  sub_23E1FC14C();
  v74 = [v63 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v202, v73);
  *(v70 + 144) = v76;
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v205;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_285026090;
  v77 = MEMORY[0x277D837D0];
  v78 = sub_23E1FDABC();
  v198 = inited;
  *(inited + 360) = v78;
  v79 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v204;
  *(inited + 392) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_23E2246F0;
  v204 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_23E224C10;
  v81 = *MEMORY[0x277D7CDF8];
  *(v80 + 32) = *MEMORY[0x277D7CDF8];
  *(v80 + 40) = 0xD000000000000016;
  v82 = MEMORY[0x277D7CE00];
  *(v80 + 48) = 0x800000023E24FDA0;
  v83 = *v82;
  *(v80 + 64) = v77;
  *(v80 + 72) = v83;
  *(v80 + 80) = 0x736D657449;
  *(v80 + 88) = 0xE500000000000000;
  v84 = *MEMORY[0x277D7CE38];
  *(v80 + 104) = v77;
  *(v80 + 112) = v84;
  v202 = swift_allocObject();
  v202[1] = xmmword_23E22A520;
  v199 = v81;
  v85 = v79;
  v86 = v83;
  v87 = v84;
  v88 = sub_23E1FDCBC("Items (WFCountType)", 19);
  v90 = v89;
  sub_23E1FDCBC("Items", 5);
  sub_23E1FC14C();
  v91 = v208;
  v92 = [v208 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v88, v90);
  v94 = v202;
  *(v202 + 4) = v95;
  v96 = sub_23E1FDCBC("Characters (WFCountType)", 24);
  v197 = v97;
  sub_23E1FDCBC("Characters", 10);
  sub_23E1FC14C();
  v98 = v91;
  v99 = [v91 bundleURL];
  sub_23E1FBF9C();

  v100 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v96, v197);
  v101 = v94;
  v94[5] = v102;
  v103 = sub_23E1FDCBC("Words (WFCountType)", 19);
  v105 = v104;
  sub_23E1FDCBC("Words", 5);
  sub_23E1FC14C();
  v106 = [v98 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  v101[6] = v108;
  v109 = v101;
  v110 = sub_23E1FDCBC("Sentences (WFCountType)", 23);
  v197 = v111;
  sub_23E1FDCBC("Sentences", 9);
  sub_23E1FC14C();
  v112 = v208;
  v113 = [v208 bundleURL];
  sub_23E1FBF9C();

  v114 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v110, v197);
  v109[7] = v115;
  v116 = sub_23E1FDCBC("Lines (WFCountType)", 19);
  v118 = v117;
  sub_23E1FDCBC("Lines", 5);
  sub_23E1FC14C();
  v119 = [v112 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v116, v118);
  v121 = v202;
  *(v202 + 8) = v122;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v80 + 120) = v121;
  v124 = *MEMORY[0x277D7CE70];
  *(v80 + 144) = v123;
  *(v80 + 152) = v124;
  *(v80 + 160) = 0x54746E756F434657;
  *(v80 + 168) = 0xEB00000000657079;
  v125 = *MEMORY[0x277D7CE80];
  *(v80 + 184) = MEMORY[0x277D837D0];
  *(v80 + 192) = v125;
  v126 = v124;
  v127 = v125;
  v202 = v126;
  v197 = v127;
  v128 = sub_23E1FDCBC("Type (WFCountType)", 18);
  v130 = v129;
  sub_23E1FDCBC("Type", 4);
  sub_23E1FC14C();
  v131 = v208;
  v132 = [v208 bundleURL];
  sub_23E1FBF9C();

  v133 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v128, v130);
  *(v80 + 200) = v134;
  v135 = *MEMORY[0x277D7CEC8];
  v136 = v206;
  *(v80 + 224) = v206;
  *(v80 + 232) = v135;
  v137 = v135;
  v138 = sub_23E1FDCBC("What do you want to count? (WFCountType)", 40);
  v140 = v139;
  sub_23E1FDCBC("What do you want to count?", 26);
  sub_23E1FC14C();
  v141 = [v131 bundleURL];
  sub_23E1FBF9C();

  v142 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v138, v140);
  *(v80 + 264) = v136;
  *(v80 + 240) = v143;
  _s3__C3KeyVMa_0(0);
  v196 = v144;
  v193 = &unk_23E2234E4;
  v194 = _s3__C3KeyVMa_0;
  v195 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v145 = sub_23E1FDABC();
  v192 = _s3__C3KeyVMa_0;
  v146 = sub_23DF3BEE4(v145, _s3__C3KeyVMa_0, &qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  *(v205 + 32) = v146;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_23E224710;
  *(v147 + 32) = v199;
  *(v147 + 40) = 0xD000000000000019;
  *(v147 + 48) = 0x800000023E24F180;
  v148 = MEMORY[0x277D837D0];
  v149 = v202;
  *(v147 + 64) = MEMORY[0x277D837D0];
  *(v147 + 72) = v149;
  *(v147 + 80) = 0x7475706E49;
  *(v147 + 88) = 0xE500000000000000;
  v150 = v197;
  *(v147 + 104) = v148;
  *(v147 + 112) = v150;
  v151 = sub_23E1FDCBC("Input (Input)", 13);
  v153 = v152;
  sub_23E1FDCBC("Input", 5);
  sub_23E1FC14C();
  v154 = v208;
  v155 = [v208 bundleURL];
  sub_23E1FBF9C();

  v156 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v151, v153);
  *(v147 + 120) = v157;
  v158 = *MEMORY[0x277D7CEA8];
  v159 = v206;
  *(v147 + 144) = v206;
  *(v147 + 152) = v158;
  v160 = v158;
  v161 = sub_23E1FDCBC("Input (Input)", 13);
  v163 = v162;
  sub_23E1FDCBC("Input", 5);
  sub_23E1FC14C();
  v164 = [v154 bundleURL];
  sub_23E1FBF9C();

  v165 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v161, v163);
  v166 = MEMORY[0x277D7CEC0];
  *(v147 + 160) = v167;
  v168 = *v166;
  *(v147 + 184) = v159;
  *(v147 + 192) = v168;
  v169 = MEMORY[0x277D839B0];
  *(v147 + 224) = MEMORY[0x277D839B0];
  *(v147 + 200) = 1;
  v170 = v168;
  v171 = sub_23E1FDABC();
  v172 = sub_23DF3BEE4(v171, v192, &qword_280DAE748, v194, v193);
  v173 = v205;
  *(v205 + 40) = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v175 = v198;
  *(v198 + 400) = v173;
  v176 = *MEMORY[0x277D7CB98];
  *(v175 + 424) = v174;
  *(v175 + 432) = v176;
  v177 = v176;
  v178 = sub_23E1FDCBC("Count ${WFCountType} in ${Input} (Parameter Summary)", 52);
  v180 = v179;
  sub_23E1FDCBC("Count ${WFCountType} in ${Input}", 32);
  sub_23E1FC14C();
  v181 = [v208 bundleURL];
  sub_23E1FBF9C();

  v182 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v178, v180);
  v184 = v183;
  v185 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v186 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v187 = MEMORY[0x277D7CB78];
  *(v175 + 440) = v185;
  v188 = *v187;
  *(v175 + 464) = v186;
  *(v175 + 472) = v188;
  *(v175 + 504) = v169;
  *(v175 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v189 = v188;
  v190 = sub_23E1FDABC();
  return sub_23DF3BEE4(v190, type metadata accessor for Key, &qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
}

uint64_t libssh2_sftp_dtor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(*a4 + 88);
  if (v6)
  {
    (*(a1 + 24))(v6, a1, a3);
  }

  v7 = *(v5 + 192);
  if (v7)
  {
    (*(a1 + 24))(v7, a1, a3);
  }

  v8 = *(a1 + 24);

  return v8(v5, a1);
}

uint64_t *libssh2_sftp_init(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 128) & 4) != 0)
  {
    v4 = a1 + 69632;
    v5 = time(0);
    v6 = (a1 + 72892);
    v7 = "session";
    v8 = "Would block starting up channel";
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v9 = *(a1 + 72892);
      v2 = *(a1 + 72896);
      if (v9 <= 2)
      {
        break;
      }

      if (v9 == 3)
      {
        v11 = *(a1 + 72904);
LABEL_20:
        v12 = _libssh2_channel_process_startup(v11, "subsystem", 9uLL, "sftp", 4uLL);
        if (v12)
        {
          if (v12 == -37)
          {
            v13 = a1;
            v14 = 4294967259;
            v15 = "Would block to request SFTP subsystem";
LABEL_47:
            _libssh2_error(v13, v14, v15);
            goto LABEL_59;
          }

          v13 = a1;
          v14 = 4294967275;
          v19 = "Unable to request SFTP subsystem";
          goto LABEL_57;
        }

        *v6 = 4;
        goto LABEL_24;
      }

      if (v9 != 4)
      {
        if (v9 != 5)
        {
          goto LABEL_40;
        }

        v10 = *(a1 + 72928);
        goto LABEL_28;
      }

LABEL_24:
      if (_libssh2_channel_extended_data(*(a1 + 72904), 1) == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = "Would block requesting handle extended data";
        goto LABEL_47;
      }

      v16 = _libssh2_calloc(a1, 0x168uLL);
      *(a1 + 72896) = v16;
      if (!v16)
      {
        v13 = a1;
        v14 = 4294967290;
        v19 = "Unable to allocate a new SFTP structure";
        goto LABEL_57;
      }

      v2 = v16;
      *v16 = *(a1 + 72904);
      *(v16 + 2) = 0;
      _libssh2_htonu32((a1 + 72912), 5u);
      *(a1 + 72916) = 1;
      _libssh2_htonu32((a1 + 72917), 3u);
      v10 = 0;
      *(a1 + 72928) = 0;
      *(a1 + 72892) = 5;
LABEL_28:
      v17 = _libssh2_channel_write(*(a1 + 72904), 0, (a1 + 72912 + v10), 9 - v10);
      if (v17 == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = "Would block sending SSH_FXP_INIT";
        goto LABEL_47;
      }

      if (v17 < 0)
      {
        v13 = a1;
        v14 = 4294967289;
        v19 = "Unable to send SSH_FXP_INIT";
        goto LABEL_57;
      }

      v18 = *(a1 + 72928) + v17;
      *(a1 + 72928) = v18;
      if (v18 == 9)
      {
        *v6 = 6;
        goto LABEL_43;
      }

      v9 = *v6;
LABEL_40:
      if (v9 == 16)
      {
        if (_libssh2_channel_free(*(a1 + 72904)) == -37)
        {
          v13 = a1;
          v14 = 4294967259;
          v15 = "Would block closing channel";
          goto LABEL_47;
        }

        *(a1 + 72904) = 0;
        v21 = *(a1 + 72896);
        if (v21)
        {
          (*(a1 + 24))(v21, a1);
          *(a1 + 72896) = 0;
        }

LABEL_50:
        *v6 = 0;
        goto LABEL_59;
      }

LABEL_43:
      v20 = sftp_packet_require(v2, 2, 0, &v35, &v34, 5uLL);
      if (v20 == -38)
      {
        if (v34)
        {
          (*(a1 + 24))(v35, a1);
        }

        v13 = a1;
        v14 = 4294967265;
        v19 = "Invalid SSH_FXP_VERSION response";
      }

      else
      {
        v14 = v20;
        if (!v20)
        {
          v22 = v8;
          v23 = v7;
          v25 = v34;
          v24 = v35;
          v31 = v35;
          v32 = v35 + 1;
          v33 = v34;
          if (_libssh2_get_u32(&v31, v2 + 3))
          {
            (*(a1 + 24))(v35, a1);
            v7 = v23;
            v8 = v22;
          }

          else
          {
            if (*(v2 + 3) >= 4u)
            {
              *(v2 + 3) = 3;
            }

            v26 = v24 + v25;
            v7 = v23;
            v8 = v22;
            if (v32 >= v26)
            {
LABEL_73:
              (*(a1 + 24))(v35, a1);
              v28 = *v2;
              *(v28 + 112) = v2;
              *(v28 + 120) = libssh2_sftp_dtor;
              *v6 = 0;
              *(v4 + 3268) = 0;
              *(v4 + 3276) = 0;
              _libssh2_list_init(v2 + 6);
              return v2;
            }

            while (1)
            {
              v29 = 0;
              v30 = 0;
              if (_libssh2_get_string(&v31, &v30, 0))
              {
                (*(a1 + 24))(v35, a1);
                v27 = "Data too short when extracting extname";
                goto LABEL_72;
              }

              if (_libssh2_get_string(&v31, &v29, 0))
              {
                break;
              }

              if (v32 >= v26)
              {
                goto LABEL_73;
              }
            }

            (*(a1 + 24))(v35, a1);
            v27 = "Data too short when extracting extdata";
LABEL_72:
            _libssh2_error(a1, 4294967258, v27);
          }

          goto LABEL_58;
        }

        v13 = a1;
        if (v14 == -37)
        {
          v15 = "Would block receiving SSH_FXP_VERSION";
          goto LABEL_47;
        }

        v19 = "Timeout waiting for response from SFTP subsystem";
      }

LABEL_57:
      _libssh2_error(v13, v14, v19);
LABEL_58:
      *v6 = 16;
LABEL_59:
      if (!*(a1 + 172) || libssh2_session_last_errno(a1) != -37 || _libssh2_wait_socket(a1, v5))
      {
        return 0;
      }
    }

    if (v9)
    {
      if (v9 != 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v2)
      {
        libssh2_sftp_init_cold_1();
      }

      *v6 = 2;
    }

    v11 = _libssh2_channel_open(a1, v7, 7, 0x200000, 0x8000, 0, 0);
    *(a1 + 72904) = v11;
    if (!v11)
    {
      if (libssh2_session_last_errno(a1) == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = v8;
        goto LABEL_47;
      }

      _libssh2_error(a1, 4294967275, "Unable to startup channel");
      goto LABEL_50;
    }

    *v6 = 3;
    goto LABEL_20;
  }

  _libssh2_error(a1, 4294967262, "session not authenticated yet");
  return 0;
}

uint64_t libssh2_sftp_shutdown(uint64_t *a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    v3 = *(*a1 + 104);
    v4 = a1[11];
    if (v4)
    {
      (*(v3 + 24))(v4, *(*a1 + 104));
      a1[11] = 0;
    }

    v5 = a1[16];
    if (v5)
    {
      (*(v3 + 24))(v5, v3);
      a1[16] = 0;
    }

    v6 = a1[24];
    if (v6)
    {
      (*(v3 + 24))(v6, v3);
      a1[24] = 0;
    }

    v7 = a1[26];
    if (v7)
    {
      (*(v3 + 24))(v7, v3);
      a1[26] = 0;
    }

    v8 = a1[28];
    if (v8)
    {
      (*(v3 + 24))(v8, v3);
      a1[28] = 0;
    }

    v9 = a1[30];
    if (v9)
    {
      (*(v3 + 24))(v9, v3);
      a1[30] = 0;
    }

    v10 = a1[33];
    if (v10)
    {
      (*(v3 + 24))(v10, v3);
      a1[33] = 0;
    }

    v11 = a1[35];
    if (v11)
    {
      (*(v3 + 24))(v11, v3);
      a1[35] = 0;
    }

    v12 = a1[37];
    if (v12)
    {
      (*(v3 + 24))(v12, v3);
      a1[37] = 0;
    }

    v13 = a1[39];
    if (v13)
    {
      (*(v3 + 24))(v13, v3);
      a1[39] = 0;
    }

    v14 = a1[41];
    if (v14)
    {
      (*(v3 + 24))(v14, v3);
      a1[41] = 0;
    }

    v15 = a1[43];
    if (v15)
    {
      (*(v3 + 24))(v15, v3);
      a1[43] = 0;
    }

    v16 = a1[22];
    if (v16)
    {
      (*(v3 + 24))(v16, v3);
      a1[22] = 0;
    }

    v17 = *(*a1 + 104);
    v18 = _libssh2_list_first((a1 + 2));
    v19 = _libssh2_list_first((a1 + 4));
    if (v18)
    {
      do
      {
        v20 = _libssh2_list_next(v18);
        _libssh2_list_remove(v18);
        (*(v17 + 24))(v18[4], v17);
        (*(v17 + 24))(v18, v17);
        v18 = v20;
      }

      while (v20);
    }

    if (v19)
    {
      do
      {
        v21 = _libssh2_list_next(v19);
        _libssh2_list_remove(v19);
        (*(v17 + 24))(v19, v17);
        v19 = v21;
      }

      while (v21);
    }

    result = _libssh2_channel_free(*a1);
    if (result != -37)
    {
      break;
    }

    v23 = *(*a1 + 104);
    if (!*(v23 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v23, v2);
  }

  while (!result);
  return result;
}

uint64_t *libssh2_sftp_open_ex(uint64_t *result, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = a6;
    v11 = result;
    v12 = time(0);
    while (1)
    {
      result = sftp_open(v11, a2, a3, a4, a5, v6, 0);
      if (!*(*(*v11 + 104) + 172) || result != 0)
      {
        break;
      }

      if (libssh2_session_last_errno(*(*v11 + 104)) != -37 || _libssh2_wait_socket(*(*v11 + 104), v12))
      {
        return 0;
      }
    }
  }

  return result;
}

void *sftp_open(uint64_t *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(*a1 + 104);
  memset(v45 + 8, 0, 48);
  v44 = 0;
  *&v45[0] = 4;
  v11 = *(a1 + 30);
  if (v11 != 2)
  {
    if (v11)
    {
      goto LABEL_25;
    }

    v13 = a4;
    *(a1 + 16) = 0;
    if (a7)
    {
      v16 = *(a7 + 16);
      v45[0] = *a7;
      v45[1] = v16;
      v45[2] = *(a7 + 32);
      *&v45[3] = *(a7 + 48);
    }

    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v45[0] & 0xC) + 8 * (v45[0] & 1) + ((4 * LODWORD(v45[0])) & 8) + 8;
    }

    v18 = a3 + 13 + v17;
    *(a1 + 34) = v18;
    a1[18] = 0;
    v19 = (*(v10 + 8))(v18, v10);
    a1[16] = v19;
    v44 = v19;
    if (!v19)
    {
      v27 = "Unable to allocate memory for FXP_OPEN or FXP_OPENDIR packet";
      v28 = v10;
      v29 = 4294967290;
      goto LABEL_36;
    }

    v20 = *(a1 + 34) - 4;
    v21 = 0x8000;
    if (a6)
    {
      v21 = 0x4000;
    }

    *&v45[2] = v21 | a5;
    if (a6)
    {
      v22 = 11;
    }

    else
    {
      v22 = 3;
    }

    _libssh2_store_u32(&v44, v20);
    v23 = v44;
    v44 = (v44 + 1);
    *v23 = v22;
    v24 = *(a1 + 2);
    *(a1 + 2) = v24 + 1;
    *(a1 + 38) = v24;
    _libssh2_store_u32(&v44, v24);
    _libssh2_store_str(&v44, a2, a3);
    if (!a6)
    {
      _libssh2_store_u32(&v44, v13);
      v25 = sftp_attr2bin(v44, v45);
      v44 = (v44 + v25);
    }

    *(a1 + 30) = 2;
  }

  v26 = _libssh2_channel_write(v9, 0, (a1[16] + a1[18]), *(a1 + 34) - a1[18]);
  if (v26 == -37)
  {
    v27 = "Would block sending FXP_OPEN or FXP_OPENDIR command";
    v28 = v10;
    v29 = 4294967259;
LABEL_36:
    _libssh2_error(v28, v29, v27);
    return 0;
  }

  if (v26 < 0)
  {
    _libssh2_error(v10, v26, "Unable to send FXP_OPEN*");
    (*(v10 + 24))(a1[16], v10);
    v31 = 0;
    a1[16] = 0;
    *(a1 + 30) = 0;
    return v31;
  }

  v30 = a1[18] + v26;
  a1[18] = v30;
  if (v30 == *(a1 + 34))
  {
    (*(v10 + 24))(a1[16], v10);
    a1[16] = 0;
    *(a1 + 30) = 3;
    goto LABEL_26;
  }

  v11 = *(a1 + 30);
LABEL_25:
  if (v11 != 3)
  {
    return 0;
  }

LABEL_26:
  v42 = 0;
  v43 = 0;
  v32 = sftp_packet_requirev(a1, &sftp_open_fopen_responses, *(a1 + 38), &v42, &v43, 1uLL);
  if (v32 == -38)
  {
    if (v43)
    {
      (*(v10 + 24))(v42, v10);
    }

    v27 = "Response too small";
    goto LABEL_32;
  }

  v29 = v32;
  if (v32 == -37)
  {
    v27 = "Would block waiting for status message";
LABEL_35:
    v28 = v10;
    goto LABEL_36;
  }

  *(a1 + 30) = 0;
  if (v32)
  {
    v27 = "Timeout waiting for status message";
    goto LABEL_35;
  }

  if (*v42 == 101)
  {
    if (v43 <= 8)
    {
      v34 = "Too small FXP_STATUS";
LABEL_50:
      _libssh2_error(v10, 4294967265, v34);
      (*(v10 + 24))(v42, v10);
      return 0;
    }

    v35 = _libssh2_ntohu32((v42 + 5));
    *(a1 + 16) = v35;
    if (v35)
    {
LABEL_43:
      v34 = "Failed opening remote file";
      goto LABEL_50;
    }

    (*(v10 + 24))(v42, v10);
    v36 = sftp_packet_require(a1, 102, *(a1 + 38), &v42, &v43, 0xAuLL);
    if (v36 != -38)
    {
      if (v36)
      {
        if (v36 == -37)
        {
          v31 = 0;
          *(a1 + 30) = 3;
          return v31;
        }

        goto LABEL_43;
      }

      goto LABEL_48;
    }

    if (v43)
    {
      (*(v10 + 24))(v42, v10);
    }

    v27 = "Too small FXP_HANDLE";
LABEL_32:
    v28 = v10;
    v29 = 4294967265;
    goto LABEL_36;
  }

LABEL_48:
  if (v43 <= 9)
  {
    v34 = "Too small FXP_HANDLE";
    goto LABEL_50;
  }

  v37 = _libssh2_calloc(v10, 0x188uLL);
  v31 = v37;
  if (v37)
  {
    *(v37 + 74) = a6 != 0;
    v38 = _libssh2_ntohu32((v42 + 5));
    if (v38 >= 0x100)
    {
      v39 = 256;
    }

    else
    {
      v39 = v38;
    }

    v40 = v42;
    if (v43 - 9 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v43 - 9;
    }

    v31[36] = v41;
    memcpy(v31 + 4, (v40 + 9), v41);
    (*(v10 + 24))(v40, v10);
    _libssh2_list_add(a1 + 6, v31);
    v31[3] = a1;
    v31[38] = 0;
    v31[39] = 0;
  }

  else
  {
    _libssh2_error(v10, 4294967290, "Unable to allocate new SFTP handle structure");
    (*(v10 + 24))(v42, v10);
  }

  return v31;
}

uint64_t *libssh2_sftp_open_ex_r(uint64_t *result, const void *a2, size_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (result)
  {
    v13 = result;
    v14 = time(0);
    while (1)
    {
      result = sftp_open(v13, a2, a3, a4, a5, a6, a7);
      if (!*(*(*v13 + 104) + 172) || result != 0)
      {
        break;
      }

      if (libssh2_session_last_errno(*(*v13 + 104)) != -37 || _libssh2_wait_socket(*(*v13 + 104), v14))
      {
        return 0;
      }
    }
  }

  return result;
}

size_t libssh2_sftp_read(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return -39;
  }

  v56 = time(0);
  v5 = 4 * a3;
  if (4 * a3 >= 0x800000)
  {
    v5 = 0x800000;
  }

  v54 = v5;
  v53 = 8 * v5;
  while (2)
  {
    v6 = *(a1 + 24);
    v7 = *v6;
    v8 = *(*v6 + 104);
    v9 = *(v6 + 39);
    if (v9 == 5)
    {
LABEL_44:
      *(v6 + 39) = 0;
      v31 = _libssh2_list_first(a1 + 376);
      if (v31)
      {
        v32 = v31;
        v11 = 0;
        v33 = a2;
        while (1)
        {
          v57 = 0;
          v58 = 0;
          if (*(v32 + 48))
          {
LABEL_67:
            if (v11)
            {
              goto LABEL_80;
            }

            goto LABEL_68;
          }

          v34 = sftp_packet_requirev(v6, &sftp_read_read_responses, *(v32 + 56), &v58, &v57, 9uLL);
          if (v34 == -37 && v11 != 0)
          {
            goto LABEL_80;
          }

          if (v34 == -38)
          {
            if (v57)
            {
              (*(v8 + 24))(v58, v8);
            }

            v45 = v8;
            v46 = 4294967265;
            v47 = "Response too small";
            goto LABEL_69;
          }

          if (v34 < 0)
          {
            v11 = v34;
            v48 = 5;
            goto LABEL_79;
          }

          v36 = *v58;
          if (v36 != 103)
          {
            break;
          }

          if (*(v32 + 24) != *(a1 + 304))
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "Read Packet At Unexpected Offset";
            goto LABEL_69;
          }

          v37 = _libssh2_ntohu32((v58 + 5));
          v38 = v57;
          if (v57 - 9 < v37)
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "SFTP Protocol badness";
            goto LABEL_69;
          }

          v39 = v37;
          v40 = *(v32 + 32);
          v41 = v37 >= v40;
          v42 = v37 - v40;
          if (v42 != 0 && v41)
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "FXP_READ response too big";
            goto LABEL_69;
          }

          if (v42)
          {
            *(a1 + 312) += v42;
          }

          if (v11 + v37 <= a3)
          {
            v38 = 0;
            v43 = v58;
            v11 += v37;
          }

          else
          {
            *(a1 + 344) = v11 + v37 - a3;
            v39 = (a3 - v11);
            v43 = v58;
            *(a1 + 328) = v58;
            v11 += v39;
          }

          *(a1 + 336) = v38;
          memcpy(v33, v43 + 9, v39);
          *(a1 + 304) += v39;
          if (!*(a1 + 336))
          {
            (*(v8 + 24))(v43, v8);
          }

          v44 = _libssh2_list_next(v32);
          _libssh2_list_remove(v32);
          (*(v8 + 24))(v32, v8);
          if (v11 < a3)
          {
            v33 += v39;
            v32 = v44;
            if (v44)
            {
              continue;
            }
          }

          goto LABEL_67;
        }

        if (v36 == 101)
        {
          _libssh2_list_remove(v32);
          (*(v8 + 24))(v32, v8);
          sftp_packetlist_flush(a1);
          v49 = _libssh2_ntohu32((v58 + 5));
          (*(v8 + 24))(v58, v8);
          if (v49 == 1)
          {
            *(a1 + 352) = 1;
            goto LABEL_80;
          }

          *(v6 + 16) = v49;
          v45 = v8;
          v46 = 4294967265;
          v47 = "SFTP READ error";
        }

        else
        {
          v45 = v8;
          v46 = 4294967265;
          v47 = "SFTP Protocol badness: unrecognised read request response";
        }
      }

      else
      {
LABEL_68:
        v45 = v8;
        v46 = 4294967265;
        v47 = "sftp_read() internal error";
      }

LABEL_69:
      v16 = _libssh2_error(v45, v46, v47);
      goto LABEL_70;
    }

    if (v9 != 3)
    {
      if (v9)
      {
        libssh2_sftp_read_cold_3();
      }

      *(v6 + 16) = 0;
      v10 = *(a1 + 344);
      if (v10)
      {
        if (v10 >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = *(a1 + 344);
        }

        memcpy(a2, (*(a1 + 328) + *(a1 + 336) - v10), v11);
        v12 = *(a1 + 344);
        *(a1 + 304) += v11;
        v13 = v12 - v11;
        *(a1 + 344) = v13;
        if (!v13)
        {
          (*(v8 + 24))(*(a1 + 328), v8);
          *(a1 + 328) = 0;
        }

        goto LABEL_80;
      }

      if (*(a1 + 352))
      {
        return 0;
      }

      v14 = *(a1 + 312) - *(a1 + 304);
      if (v54 >= v14)
      {
        v15 = v54 - v14;
      }

      else
      {
        v15 = 0;
      }

      if (v54 > libssh2_channel_window_read_ex(v7, 0, 0))
      {
        v16 = _libssh2_channel_receive_window_adjust(*v6, v53, 1, 0);
        if (v16)
        {
          if (v16 == -37)
          {
            if (*(a1 + 344))
            {
              libssh2_sftp_read_cold_1();
            }

            if (*(a1 + 352))
            {
              libssh2_sftp_read_cold_2();
            }

            goto LABEL_81;
          }

LABEL_70:
          v11 = v16;
          goto LABEL_80;
        }
      }

      if (v54 > v14)
      {
        while (1)
        {
          v58 = 0;
          v17 = *(a1 + 288);
          v18 = (v17 + 25);
          v19 = (*(v8 + 8))(v18 + 64, v8);
          if (!v19)
          {
            break;
          }

          v20 = v19;
          if (a3 <= v15)
          {
            v21 = v15;
          }

          else
          {
            v21 = a3;
          }

          if (v21 >= 0x7530)
          {
            v22 = 30000;
          }

          else
          {
            v22 = v21;
          }

          *(v19 + 24) = *(a1 + 312);
          *(v19 + 32) = v22;
          *(v19 + 40) = 0;
          *(v19 + 48) = v18;
          v58 = (v19 + 60);
          _libssh2_store_u32(&v58, v17 + 21);
          v23 = v58;
          v58 = (v58 + 1);
          *v23 = 5;
          v24 = *(v6 + 2);
          *(v6 + 2) = v24 + 1;
          *(v20 + 56) = v24;
          _libssh2_store_u32(&v58, v24);
          _libssh2_store_str(&v58, (a1 + 32), *(a1 + 288));
          *v58 = bswap64(*(a1 + 312));
          v58 += 2;
          *(a1 + 312) += v22;
          _libssh2_store_u32(&v58, v22);
          _libssh2_list_add((a1 + 376), v20);
          v25 = v15 > v22;
          if (v15 >= v22)
          {
            v15 -= v22;
          }

          else
          {
            v15 = 0;
          }

          if (!v25)
          {
            goto LABEL_36;
          }
        }

        v45 = v8;
        v46 = 4294967290;
        v47 = "malloc fail for FXP_WRITE";
        goto LABEL_69;
      }
    }

LABEL_36:
    *(v6 + 39) = 0;
    v26 = _libssh2_list_first(a1 + 376);
    if (!v26)
    {
      goto LABEL_44;
    }

    v27 = v26;
    while (1)
    {
      while (1)
      {
        v28 = *(v27 + 48);
        if (v28)
        {
          break;
        }

LABEL_43:
        v27 = _libssh2_list_next(v27);
        if (!v27)
        {
          goto LABEL_44;
        }
      }

      v29 = _libssh2_channel_write(v7, 0, (v27 + 60 + *(v27 + 40)), v28);
      v11 = v29;
      if (v29 < 0)
      {
        break;
      }

      v30 = *(v27 + 48) - v29;
      *(v27 + 40) += v29;
      *(v27 + 48) = v30;
      if (!v30)
      {
        goto LABEL_43;
      }

      if (v27 != _libssh2_list_first(a1 + 376))
      {
        goto LABEL_44;
      }
    }

    v48 = 3;
LABEL_79:
    *(v6 + 39) = v48;
LABEL_80:
    if (v11 == -37)
    {
LABEL_81:
      v50 = *(**(a1 + 24) + 104);
      if (!*(v50 + 172))
      {
        return -37;
      }

      v51 = _libssh2_wait_socket(v50, v56);
      if (v51)
      {
        return v51;
      }

      continue;
    }

    return v11;
  }
}

uint64_t libssh2_sftp_readdir_ex(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 4294967257;
  }

  v12 = time(0);
  do
  {
    result = sftp_readdir(a1, a2, a3, a4, a5, a6);
    if (result != -37)
    {
      break;
    }

    if (!*(*(**(a1 + 24) + 104) + 172))
    {
      break;
    }

    result = _libssh2_wait_socket(*(**(a1 + 24) + 104), v12);
  }

  while (!result);
  return result;
}

uint64_t sftp_readdir(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 24);
  v12 = *v11;
  v13 = *(*v11 + 104);
  v51 = 0;
  v52 = 0;
  v14 = *(a1 + 288);
  v50 = 0;
  v15 = *(v11 + 188);
  if (!v15)
  {
    *(v11 + 64) = 0;
    if (!*(a1 + 304))
    {
      v47 = a6;
      v37 = (*(v13 + 8))((v14 + 13), v13);
      *(v11 + 192) = v37;
      v51 = v37;
      if (!v37)
      {
        v20 = "Unable to allocate memory for FXP_READDIR packet";
        v21 = v13;
        v19 = 4294967290;
        return _libssh2_error(v21, v19, v20);
      }

      _libssh2_store_u32(&v51, v14 + 9);
      v38 = v51;
      v51 = (v51 + 1);
      *v38 = 12;
      v39 = *(v11 + 8);
      *(v11 + 8) = v39 + 1;
      *(v11 + 200) = v39;
      _libssh2_store_u32(&v51, v39);
      _libssh2_store_str(&v51, (a1 + 32), *(a1 + 288));
      *(v11 + 188) = 2;
      goto LABEL_3;
    }

    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v22 = *(a1 + 328);
    v23 = v22 - 4;
    if (v22 >= 4)
    {
      v25 = *(a1 + 320);
      v26 = _libssh2_ntohu32(v25);
      v27 = v26;
      if (v26 < a3 && v23 >= v26)
      {
        v29 = v25 + 1;
        memcpy(a2, v25 + 1, v26);
        *(a2 + v27) = 0;
        v30 = v23 - v27 - 4;
        if (v23 - v27 >= 4)
        {
          v31 = (v29 + v27);
          v32 = _libssh2_ntohu32(v31);
          v33 = v32;
          v34 = (v31 + 1);
          if (a4 && a5 >= 2)
          {
            if (v32 >= a5 || v30 < v32)
            {
              return -38;
            }

            memcpy(a4, v34, v32);
            *(a4 + v33) = 0;
          }

          if (v30 >= v33)
          {
            if (a6)
            {
              v36 = a6;
              *(a6 + 48) = 0;
              *(a6 + 16) = 0u;
              *(a6 + 32) = 0u;
              *a6 = 0u;
            }

            else
            {
              v36 = v48;
            }

            v44 = sftp_bin2attr(v36, &v34[v33], v30 - v33);
            if ((v44 & 0x8000000000000000) == 0)
            {
              *(a1 + 320) = &v34[v33 + v44];
              *(a1 + 328) = v30 - v33 - v44;
              v45 = *(a1 + 304) - 1;
              *(a1 + 304) = v45;
              if (!v45)
              {
                (*(v13 + 24))(*(a1 + 312), v13);
              }

              return v27;
            }
          }
        }
      }
    }

    return -38;
  }

  v47 = a6;
  if (v15 == 2)
  {
LABEL_3:
    v16 = _libssh2_channel_write(v12, 0, *(v11 + 192), (v14 + 13));
    if (v16 == -37)
    {
      return -37;
    }

    v17 = v16;
    (*(v13 + 24))(*(v11 + 192), v13);
    *(v11 + 192) = 0;
    if (v17 != v14 + 13)
    {
      *(v11 + 188) = 0;
      v20 = "_libssh2_channel_write() failed";
      v21 = v13;
      v19 = 4294967289;
      return _libssh2_error(v21, v19, v20);
    }

    *(v11 + 188) = 3;
  }

  v18 = sftp_packet_requirev(v11, &sftp_readdir_read_responses, *(v11 + 200), &v50, &v52, 9uLL);
  if (v18)
  {
    v19 = v18;
    if (v18 != -37)
    {
      if (v18 != -38)
      {
        *(v11 + 188) = 0;
        v20 = "Timeout waiting for status message";
        v21 = v13;
        return _libssh2_error(v21, v19, v20);
      }

      if (v52)
      {
        (*(v13 + 24))(v50, v13);
      }

      v20 = "Status message too short";
LABEL_12:
      v21 = v13;
      v19 = 4294967265;
      return _libssh2_error(v21, v19, v20);
    }

    return -37;
  }

  v40 = v50;
  if (*v50 == 101)
  {
    v41 = _libssh2_ntohu32((v50 + 5));
    (*(v13 + 24))(v50, v13);
    if (v41 != 1)
    {
      *(v11 + 64) = v41;
      *(v11 + 188) = 0;
      v20 = "SFTP Protocol Error";
      goto LABEL_12;
    }

    v27 = 0;
    *(v11 + 188) = 0;
  }

  else
  {
    *(v11 + 188) = 0;
    v42 = _libssh2_ntohu32((v40 + 5));
    if (v42)
    {
      *(a1 + 304) = v42;
      v43 = v50 + 9;
      *(a1 + 312) = v50;
      *(a1 + 320) = v43;
      *(a1 + 328) = v52 - 9;
      return sftp_readdir(a1, a2, a3, a4, a5, v47);
    }

    else
    {
      (*(v13 + 24))(v50, v13);
      return 0;
    }
  }

  return v27;
}

uint64_t libssh2_sftp_write(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -39;
  }

  v4 = time(0);
  v34 = v4;
  while (1)
  {
    v5 = a1[3];
    v6 = *v5;
    v7 = *(*v5 + 104);
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (*(v5 + 41) == 3)
    {
      break;
    }

    *(v5 + 16) = 0;
    v8 = a1[39] - a1[38] + a1[40];
    *(v5 + 41) = 0;
    if (v8 >= a3)
    {
LABEL_14:
      v18 = _libssh2_list_first((a1 + 47));
      v4 = v34;
      if (v18)
      {
        v19 = v18;
        do
        {
          v20 = *(v19 + 48);
          if (v20)
          {
            result = _libssh2_channel_write(v6, 0, (v19 + *(v19 + 40) + 60), v20);
            if (result < 0)
            {
              goto LABEL_43;
            }

            v22 = *(v19 + 48) - result;
            *(v19 + 40) += result;
            *(v19 + 48) = v22;
            if (v22)
            {
              break;
            }
          }

          v19 = _libssh2_list_next(v19);
        }

        while (v19);
      }

      break;
    }

    if (a3 >= v8)
    {
      v9 = a3 - v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = (a2 + v8);
    while (1)
    {
      v11 = v9 >= 0x7530 ? 30000 : v9;
      v12 = a1[36] + v11;
      v13 = (v12 + 25);
      v14 = (*(v7 + 8))(v13 + 64, v7);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      *(v14 + 32) = v11;
      *(v14 + 40) = 0;
      *(v14 + 48) = v13;
      v37 = (v14 + 60);
      _libssh2_store_u32(&v37, v12 + 21);
      v16 = v37;
      v37 = (v37 + 1);
      *v16 = 6;
      v17 = *(v5 + 2);
      *(v5 + 2) = v17 + 1;
      *(v15 + 56) = v17;
      _libssh2_store_u32(&v37, v17);
      _libssh2_store_str(&v37, a1 + 4, a1[36]);
      *v37 = bswap64(a1[39]);
      v37 += 2;
      a1[39] += v11;
      _libssh2_store_str(&v37, v10, v11);
      _libssh2_list_add(a1 + 47, v15);
      v10 += v11;
      v9 -= v11;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    result = _libssh2_error(v7, 4294967290, "malloc fail for FXP_WRITE");
    v4 = v34;
LABEL_43:
    if (result != -37)
    {
      return result;
    }

LABEL_44:
    v32 = *(*a1[3] + 104);
    if (!*(v32 + 172))
    {
      return -37;
    }

    LODWORD(result) = _libssh2_wait_socket(v32, v4);
    if (result)
    {
      return result;
    }
  }

  *(v5 + 41) = 0;
  v23 = _libssh2_list_first((a1 + 47));
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (1)
    {
      if (*(v24 + 48) | v25)
      {
        goto LABEL_29;
      }

      LODWORD(result) = sftp_packet_require(v5, 101, *(v24 + 56), &v36, &v38, 9uLL);
      if (result == -38)
      {
        break;
      }

      if ((result & 0x80000000) != 0)
      {
        if (result == -37)
        {
          *(v5 + 41) = 3;
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v26 = _libssh2_ntohu32((v36 + 5));
      (*(v7 + 24))(v36, v7);
      *(v5 + 16) = v26;
      if (v26)
      {
        sftp_packetlist_flush(a1);
        v31 = a1[38] - a1[40];
        a1[38] = v31;
        a1[39] = v31;
        a1[40] = 0;
        v29 = v7;
        v30 = "FXP write failed";
        goto LABEL_41;
      }

      v25 = *(v24 + 32);
      a1[38] += v25;
      v27 = _libssh2_list_next(v24);
      _libssh2_list_remove(v24);
      (*(v7 + 24))(v24, v7);
      v24 = v27;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    if (v38)
    {
      (*(v7 + 24))(v36, v7);
    }

    v29 = v7;
    v30 = "FXP write packet too short";
LABEL_41:
    LODWORD(result) = _libssh2_error(v29, 4294967265, v30);
LABEL_42:
    result = result;
    goto LABEL_43;
  }

  v25 = 0;
LABEL_29:
  v28 = a1[40] + v25;
  if (v28)
  {
    if (v28 >= a3)
    {
      result = a3;
    }

    else
    {
      result = a1[40] + v25;
    }

    a1[40] = v28 - result;
    goto LABEL_43;
  }

  return 0;
}

uint64_t libssh2_sftp_fsync(void *a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  while (1)
  {
    v3 = a1[3];
    v4 = *v3;
    v5 = *(*v3 + 104);
    v6 = *(a1 + 72);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v7 = *(v3 + 168);
    if (v7 == 2)
    {
      v9 = *(v3 + 176);
    }

    else
    {
      if (v7)
      {
        goto LABEL_15;
      }

      *(v3 + 64) = 0;
      v8 = (*(v5 + 8))((v6 + 34), v5);
      v23 = v8;
      if (!v8)
      {
        v17 = v5;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_EXTENDED packet";
        goto LABEL_26;
      }

      v9 = v8;
      _libssh2_store_u32(&v23, v6 + 30);
      v10 = v23;
      v23 = (v23 + 1);
      *v10 = -56;
      v11 = *(v3 + 8);
      *(v3 + 8) = v11 + 1;
      *(v3 + 184) = v11;
      _libssh2_store_u32(&v23, v11);
      _libssh2_store_str(&v23, "fsync@openssh.com", 0x11uLL);
      _libssh2_store_str(&v23, a1 + 4, a1[36]);
      *(v3 + 168) = 2;
    }

    v12 = _libssh2_channel_write(v4, 0, v9, (v6 + 34));
    if (v12 == -37 || v12 < (v6 + 34))
    {
      *(v3 + 176) = v9;
      goto LABEL_27;
    }

    v14 = v12;
    (*(v5 + 24))(v9, v5);
    *(v3 + 176) = 0;
    if ((v14 & 0x8000000000000000) != 0)
    {
      *(v3 + 168) = 0;
      v17 = v5;
      v16 = 4294967289;
      v18 = "_libssh2_channel_write() failed";
      goto LABEL_26;
    }

    *(v3 + 168) = 3;
LABEL_15:
    v15 = sftp_packet_require(v3, 101, *(v3 + 184), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_27;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v5 + 24))(v22, v5);
      }

      v17 = v5;
      v16 = 4294967265;
      v18 = "SFTP fsync packet too short";
    }

    else
    {
      *(v3 + 168) = 0;
      v17 = v5;
      v18 = "Error waiting for FXP EXTENDED REPLY";
    }

LABEL_26:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_27:
    v21 = *(*a1[3] + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v2);
    if (result)
    {
      return result;
    }
  }

  *(v3 + 168) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v5 + 24))(v22, v5);
  if (v19)
  {
    *(v3 + 64) = v19;
    v17 = v5;
    v16 = 4294967265;
    v18 = "fsync failed";
    goto LABEL_26;
  }

  return 0;
}

uint64_t libssh2_sftp_fstat_ex(void *a1, unint64_t *a2, int a3)
{
  result = 4294967257;
  if (a1 && a2)
  {
    v7 = time(0);
    if (a3)
    {
      v8 = 10;
    }

    else
    {
      v8 = 8;
    }

    v9 = "Unable to send FXP_FSTAT command";
    if (a3)
    {
      v9 = "Unable to send FXP_FSETSTAT";
    }

    v30 = v9;
    while (1)
    {
      v10 = a1[3];
      v11 = *v10;
      v12 = *(*v10 + 104);
      v33 = 0;
      v13 = a3 ? (*a2 & 0xC) + 8 * (*a2 & 1) + ((4 * *a2) & 8) + 4 : 0;
      v14 = a1[36] + 13 + v13;
      v31 = 0;
      v32 = 0;
      v15 = *(v10 + 204);
      if (!v15)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = v14;
LABEL_19:
        v21 = _libssh2_channel_write(v11, 0, *(v10 + 208), v16);
        if (v21 == -37)
        {
          goto LABEL_37;
        }

        v22 = v21;
        (*(v12 + 24))(*(v10 + 208), v12);
        *(v10 + 208) = 0;
        if (v16 != v22)
        {
          *(v10 + 204) = 0;
          v25 = v12;
          v24 = 4294967289;
          v26 = v30;
          goto LABEL_36;
        }

        *(v10 + 204) = 3;
      }

      v23 = sftp_packet_requirev(v10, &sftp_fstat_fstat_responses, *(v10 + 216), &v31, &v33, 9uLL);
      if (v23)
      {
        v24 = v23;
        if (v23 == -37)
        {
          goto LABEL_37;
        }

        if (v23 == -38)
        {
          if (v33)
          {
            (*(v12 + 24))(v31, v12);
          }

          v25 = v12;
          v24 = 4294967265;
          v26 = "SFTP fstat packet too short";
        }

        else
        {
          *(v10 + 204) = 0;
          v25 = v12;
          v26 = "Timeout waiting for status message";
        }
      }

      else
      {
        *(v10 + 204) = 0;
        if (*v31 == 101)
        {
          v27 = _libssh2_ntohu32((v31 + 5));
          (*(v12 + 24))(v31, v12);
          if (!v27)
          {
            return 0;
          }

          *(v10 + 64) = v27;
          v25 = v12;
          v24 = 4294967265;
          v26 = "SFTP Protocol Error";
        }

        else
        {
          v28 = sftp_bin2attr(a2, v31 + 5, v33 - 5);
          (*(v12 + 24))(v31, v12);
          if ((v28 & 0x8000000000000000) == 0)
          {
            return 0;
          }

          v25 = v12;
          v24 = 4294967265;
          v26 = "Attributes too short in SFTP fstat";
        }
      }

LABEL_36:
      result = _libssh2_error(v25, v24, v26);
      if (result != -37)
      {
        return result;
      }

LABEL_37:
      v29 = *(*a1[3] + 104);
      if (!*(v29 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v29, v7);
      if (result)
      {
        return result;
      }
    }

    *(v10 + 64) = 0;
    v16 = v14;
    v17 = (*(v12 + 8))(v14, v12);
    *(v10 + 208) = v17;
    v32 = v17;
    if (!v17)
    {
      v25 = v12;
      v24 = 4294967290;
      v26 = "Unable to allocate memory for FSTAT/FSETSTAT packet";
      goto LABEL_36;
    }

    _libssh2_store_u32(&v32, v14 - 4);
    v18 = v32;
    v32 = (v32 + 1);
    *v18 = v8;
    v19 = *(v10 + 8);
    *(v10 + 8) = v19 + 1;
    *(v10 + 216) = v19;
    _libssh2_store_u32(&v32, v19);
    _libssh2_store_str(&v32, a1 + 4, a1[36]);
    if (a3)
    {
      v20 = sftp_attr2bin(v32, a2);
      v32 = (v32 + v20);
    }

    *(v10 + 204) = 2;
    goto LABEL_19;
  }

  return result;
}

uint64_t libssh2_sftp_seek64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 304) != a2 || *(result + 312) != a2)
    {
      *(result + 304) = a2;
      *(result + 312) = a2;
      result = sftp_packetlist_flush(result);
      if (*(v2 + 344))
      {
        result = (*(*(**(v2 + 24) + 104) + 24))(*(v2 + 328));
        *(v2 + 328) = 0;
        *(v2 + 336) = 0;
        *(v2 + 344) = 0;
      }

      *(v2 + 352) = 0;
    }
  }

  return result;
}

uint64_t sftp_packetlist_flush(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*v1)[13];
  result = _libssh2_list_first(a1 + 376);
  if (result)
  {
    v4 = result;
    do
    {
      v10 = 0;
      v5 = _libssh2_list_next(v4);
      if (sftp_packet_ask(v1, 101, *(v4 + 56), &v10, &v9) && sftp_packet_ask(v1, 103, *(v4 + 56), &v10, &v9))
      {
        if (*(v4 + 40))
        {
          v6 = *(v4 + 56);
          v7 = (*v1)[13];
          v8 = (*(v7 + 8))(32, v7);
          if (v8)
          {
            *(v8 + 24) = v6;
            _libssh2_list_add(v1 + 4, v8);
          }

          else
          {
            _libssh2_error(v7, 4294967290, "malloc fail for zombie request  ID");
          }
        }
      }

      else
      {
        (*(v2 + 24))(v10, v2);
      }

      _libssh2_list_remove(v4);
      result = (*(v2 + 24))(v4, v2);
      v4 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t libssh2_sftp_tell(uint64_t result)
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

uint64_t libssh2_sftp_tell64(uint64_t result)
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

uint64_t libssh2_sftp_close_handle(uint64_t a1)
{
  if (a1)
  {
    v2 = time(0);
    while (1)
    {
      v3 = *(a1 + 24);
      v4 = *v3;
      v5 = *(*v3 + 104);
      v25 = 0;
      v26 = 0;
      v6 = *(a1 + 288);
      v7 = (v6 + 13);
      v24 = 0;
      v8 = *(a1 + 360);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        *(v3 + 16) = 0;
        v10 = (*(v5 + 8))((v6 + 13), v5);
        *(a1 + 368) = v10;
        v25 = v10;
        if (v10)
        {
          _libssh2_store_u32(&v25, v6 + 9);
          v11 = v25;
          v25 = (v25 + 1);
          *v11 = 4;
          v12 = *(v3 + 2);
          *(v3 + 2) = v12 + 1;
          *(a1 + 364) = v12;
          _libssh2_store_u32(&v25, v12);
          _libssh2_store_str(&v25, (a1 + 32), *(a1 + 288));
          v9 = 0;
          *(a1 + 360) = 2;
LABEL_9:
          v13 = _libssh2_channel_write(v4, 0, *(a1 + 368), v7);
          if (v13 == -37)
          {
            goto LABEL_35;
          }

          if (v13 == v7)
          {
            *(a1 + 360) = 3;
          }

          else
          {
            *(a1 + 360) = 0;
            v9 = _libssh2_error(v5, 4294967289, "Unable to send FXP_CLOSE command");
          }

          (*(v5 + 24))(*(a1 + 368), v5);
          *(a1 + 368) = 0;
          v8 = *(a1 + 360);
          goto LABEL_14;
        }

        *(a1 + 360) = 0;
        v9 = _libssh2_error(v5, 4294967290, "Unable to allocate memory for FXP_CLOSE packet");
        v8 = *(a1 + 360);
      }

      if (v8 == 2)
      {
        goto LABEL_9;
      }

      if (v8 != 3)
      {
        goto LABEL_27;
      }

LABEL_14:
      v14 = sftp_packet_require(v3, 101, *(a1 + 364), &v24, &v26, 9uLL);
      v9 = v14;
      if (v14)
      {
        if (v14 == -37)
        {
          goto LABEL_35;
        }

        if (v14 == -38)
        {
          if (v26)
          {
            (*(v5 + 24))(v24, v5);
          }

          v24 = 0;
          v15 = v5;
          v16 = 4294967265;
          v17 = "Packet too short in FXP_CLOSE command";
        }

        else
        {
          v15 = v5;
          v16 = v9;
          v17 = "Error waiting for status message";
        }

        _libssh2_error(v15, v16, v17);
      }

      *(a1 + 360) = 4;
      if (v24)
      {
        v18 = _libssh2_ntohu32((v24 + 5));
        (*(v5 + 24))(v24, v5);
        if (v18)
        {
          *(v3 + 16) = v18;
          *(a1 + 360) = 0;
          v9 = _libssh2_error(v5, 4294967265, "SFTP Protocol Error");
        }
      }

      else
      {
LABEL_27:
        if (!v9)
        {
          libssh2_sftp_close_handle_cold_1();
        }
      }

      _libssh2_list_remove(a1);
      v19 = *(a1 + 296);
      if (v19)
      {
        if (v19 == 1 && *(a1 + 304))
        {
          (*(v5 + 24))(*(a1 + 312), v5);
        }
      }

      else
      {
        v20 = *(a1 + 328);
        if (v20)
        {
          (*(v5 + 24))(v20, v5);
        }
      }

      sftp_packetlist_flush(a1);
      *(v3 + 39) = 0;
      *(a1 + 360) = 0;
      (*(v5 + 24))(a1, v5);
      if (v9 != -37)
      {
        return v9;
      }

LABEL_35:
      v21 = *(**(a1 + 24) + 104);
      if (!*(v21 + 172))
      {
        return 4294967259;
      }

      v22 = _libssh2_wait_socket(v21, v2);
      if (v22)
      {
        return v22;
      }
    }
  }

  return 4294967257;
}

uint64_t libssh2_sftp_unlink_ex(uint64_t *a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967257;
  }

  v6 = time(0);
  while (1)
  {
    v7 = *a1;
    v8 = *(*a1 + 104);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v9 = *(a1 + 55);
    if (v9 != 2)
    {
      if (v9)
      {
        goto LABEL_10;
      }

      *(a1 + 16) = 0;
      v10 = (*(v8 + 8))(a3 + 13, v8);
      a1[28] = v10;
      v23 = v10;
      if (!v10)
      {
        v17 = v8;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_REMOVE packet";
        goto LABEL_21;
      }

      _libssh2_store_u32(&v23, a3 + 9);
      v11 = v23;
      v23 = (v23 + 1);
      *v11 = 13;
      v12 = *(a1 + 2);
      *(a1 + 2) = v12 + 1;
      *(a1 + 58) = v12;
      _libssh2_store_u32(&v23, v12);
      _libssh2_store_str(&v23, a2, a3);
      *(a1 + 55) = 2;
    }

    v13 = _libssh2_channel_write(v7, 0, a1[28], a3 + 13);
    if (v13 == -37)
    {
      goto LABEL_22;
    }

    v14 = v13;
    (*(v8 + 24))(a1[28], v8);
    a1[28] = 0;
    if (v14 != a3 + 13)
    {
      *(a1 + 55) = 0;
      v17 = v8;
      v16 = 4294967289;
      v18 = "Unable to send FXP_REMOVE command";
      goto LABEL_21;
    }

    *(a1 + 55) = 3;
LABEL_10:
    v15 = sftp_packet_require(a1, 101, *(a1 + 58), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_22;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v8 + 24))(v22, v8);
      }

      v17 = v8;
      v16 = 4294967265;
      v18 = "SFTP unlink packet too short";
    }

    else
    {
      *(a1 + 55) = 0;
      v17 = v8;
      v18 = "Error waiting for FXP STATUS";
    }

LABEL_21:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_22:
    v21 = *(*a1 + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v6);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 55) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v8 + 24))(v22, v8);
  if (v19)
  {
    *(a1 + 16) = v19;
    v17 = v8;
    v16 = 4294967265;
    v18 = "SFTP Protocol Error";
    goto LABEL_21;
  }

  return 0;
}

uint64_t libssh2_sftp_rename_ex(unsigned int *a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, uint64_t a6)
{
  v32 = a6;
  if (!a1)
  {
    return 4294967257;
  }

  v11 = time(0);
  v12 = a3;
  v13 = a5;
  v14 = a3 + a5 + 17;
  while (1)
  {
    v15 = *a1;
    v16 = *(*a1 + 104);
    v33 = 0;
    v34 = 0;
    v17 = a1[3];
    v18 = v14 + 4 * (v17 > 4);
    v19 = a1[59];
    if (v19 != 2)
    {
      if (v19)
      {
        goto LABEL_14;
      }

      a1[16] = 0;
      if (v17 <= 1)
      {
        v20 = v16;
        v21 = 4294967265;
        v22 = "Server does not support RENAME";
        goto LABEL_29;
      }

      v23 = (*(v16 + 8))(v18, v16);
      *(a1 + 30) = v23;
      *(a1 + 31) = v23;
      if (!v23)
      {
        v20 = v16;
        v21 = 4294967290;
        v22 = "Unable to allocate memory for FXP_RENAME packet";
        goto LABEL_29;
      }

      _libssh2_store_u32(a1 + 31, v18 - 4);
      v24 = *(a1 + 31);
      *(a1 + 31) = v24 + 1;
      *v24 = 18;
      v25 = a1[2];
      a1[2] = v25 + 1;
      a1[64] = v25;
      _libssh2_store_u32(a1 + 31, v25);
      _libssh2_store_str(a1 + 31, a2, v12);
      _libssh2_store_str(a1 + 31, a4, v13);
      if (a1[3] >= 5)
      {
        _libssh2_store_u32(a1 + 31, v32);
      }

      a1[59] = 2;
    }

    v26 = _libssh2_channel_write(v15, 0, *(a1 + 30), *(a1 + 31) - *(a1 + 30));
    if (v26 == -37)
    {
      goto LABEL_30;
    }

    v27 = v26;
    (*(v16 + 24))(*(a1 + 30), v16);
    *(a1 + 30) = 0;
    if (v27 != v18)
    {
      a1[59] = 0;
      v20 = v16;
      v21 = 4294967289;
      v22 = "Unable to send FXP_RENAME command";
      goto LABEL_29;
    }

    a1[59] = 3;
LABEL_14:
    v28 = sftp_packet_require(a1, 101, a1[64], &v33, &v34, 9uLL);
    if (!v28)
    {
      break;
    }

    v21 = v28;
    if (v28 == -37)
    {
      goto LABEL_30;
    }

    if (v28 == -38)
    {
      if (v34)
      {
        (*(v16 + 24))(v33, v16);
      }

      v20 = v16;
      v21 = 4294967265;
      v22 = "SFTP rename packet too short";
    }

    else
    {
      a1[59] = 0;
      v20 = v16;
      v22 = "Error waiting for FXP STATUS";
    }

LABEL_29:
    result = _libssh2_error(v20, v21, v22);
    if (result != -37)
    {
      return result;
    }

LABEL_30:
    v31 = *(*a1 + 104);
    if (!*(v31 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v31, v11);
    if (result)
    {
      return result;
    }
  }

  a1[59] = 0;
  v29 = _libssh2_ntohu32((v33 + 5));
  (*(v16 + 24))(v33, v16);
  a1[16] = v29;
  if (v29 == 8)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "Operation Not Supported";
    goto LABEL_29;
  }

  if (v29 == 11)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "File already exists and SSH_FXP_RENAME_OVERWRITE not specified";
    goto LABEL_29;
  }

  if (v29)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "SFTP Protocol Error";
    goto LABEL_29;
  }

  return 0;
}

uint64_t libssh2_sftp_fstatvfs(void *a1, unint64_t *a2)
{
  result = 4294967257;
  if (a1 && a2)
  {
    v5 = time(0);
    do
    {
      v6 = a1[3];
      v7 = *v6;
      v8 = *(*v6 + 104);
      v28 = 0;
      v29 = 0;
      v9 = *(a1 + 72);
      v27 = 0;
      v10 = *(v6 + 260);
      if (v10 == 2)
      {
        v12 = *(v6 + 264);
      }

      else
      {
        if (v10)
        {
          goto LABEL_16;
        }

        *(v6 + 64) = 0;
        v11 = (*(v8 + 8))((v9 + 37), v8);
        v28 = v11;
        if (!v11)
        {
          v20 = v8;
          v19 = 4294967290;
          v21 = "Unable to allocate memory for FXP_EXTENDED packet";
          goto LABEL_29;
        }

        v12 = v11;
        _libssh2_store_u32(&v28, v9 + 33);
        v13 = v28;
        v28 = (v28 + 1);
        *v13 = -56;
        v14 = *(v6 + 8);
        *(v6 + 8) = v14 + 1;
        *(v6 + 272) = v14;
        _libssh2_store_u32(&v28, v14);
        _libssh2_store_str(&v28, "fstatvfs@openssh.com", 0x14uLL);
        _libssh2_store_str(&v28, a1 + 4, a1[36]);
        *(v6 + 260) = 2;
      }

      v15 = _libssh2_channel_write(v7, 0, v12, (v9 + 37));
      if (v15 == -37 || v15 < (v9 + 37))
      {
        *(v6 + 264) = v12;
        goto LABEL_30;
      }

      v17 = v15;
      (*(v8 + 24))(v12, v8);
      *(v6 + 264) = 0;
      if ((v17 & 0x8000000000000000) != 0)
      {
        *(v6 + 260) = 0;
        v20 = v8;
        v19 = 4294967289;
        v21 = "_libssh2_channel_write() failed";
        goto LABEL_29;
      }

      *(v6 + 260) = 3;
LABEL_16:
      v18 = sftp_packet_requirev(v6, &sftp_fstatvfs_responses, *(v6 + 272), &v27, &v29, 9uLL);
      if (v18)
      {
        v19 = v18;
        if (v18 == -37)
        {
          goto LABEL_30;
        }

        if (v18 == -38)
        {
          if (v29)
          {
            (*(v8 + 24))(v27, v8);
          }

          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP rename packet too short";
        }

        else
        {
          *(v6 + 260) = 0;
          v20 = v8;
          v21 = "Error waiting for FXP EXTENDED REPLY";
        }
      }

      else
      {
        v22 = v27;
        if (*v27 == 101)
        {
          v23 = _libssh2_ntohu32((v27 + 5));
          *(v6 + 260) = 0;
          (*(v8 + 24))(v27, v8);
          *(v6 + 64) = v23;
          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP Protocol Error";
        }

        else
        {
          if (v29 > 0x5C)
          {
            *(v6 + 260) = 0;
            *a2 = _libssh2_ntohu64((v22 + 5));
            a2[1] = _libssh2_ntohu64((v27 + 13));
            a2[2] = _libssh2_ntohu64((v27 + 21));
            a2[3] = _libssh2_ntohu64((v27 + 29));
            a2[4] = _libssh2_ntohu64((v27 + 37));
            a2[5] = _libssh2_ntohu64((v27 + 45));
            a2[6] = _libssh2_ntohu64((v27 + 53));
            a2[7] = _libssh2_ntohu64((v27 + 61));
            a2[8] = _libssh2_ntohu64((v27 + 69));
            v25 = _libssh2_ntohu64((v27 + 77));
            v26 = _libssh2_ntohu64((v27 + 85));
            a2[9] = v25 & 3;
            a2[10] = v26;
            (*(v8 + 24))(v27, v8);
            return 0;
          }

          (*(v8 + 24))();
          *(v6 + 260) = 0;
          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP Protocol Error: short response";
        }
      }

LABEL_29:
      result = _libssh2_error(v20, v19, v21);
      if (result != -37)
      {
        return result;
      }

LABEL_30:
      v24 = *(*a1[3] + 104);
      if (!*(v24 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v24, v5);
    }

    while (!result);
  }

  return result;
}

uint64_t libssh2_sftp_statvfs(uint64_t *a1, const void *a2, unsigned int a3, unint64_t *a4)
{
  result = 4294967257;
  if (a1 && a4)
  {
    v8 = time(0);
    do
    {
      v9 = *a1;
      v10 = *(*a1 + 104);
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v11 = *(a1 + 69);
      if (v11 == 2)
      {
        v13 = a1[35];
      }

      else
      {
        if (v11)
        {
          goto LABEL_16;
        }

        *(a1 + 16) = 0;
        v12 = (*(v10 + 8))(a3 + 36, v10);
        v32 = v12;
        if (!v12)
        {
          v21 = v10;
          v20 = 4294967290;
          v22 = "Unable to allocate memory for FXP_EXTENDED packet";
          goto LABEL_29;
        }

        v13 = v12;
        _libssh2_store_u32(&v32, a3 + 32);
        v14 = v32;
        v32 = (v32 + 1);
        *v14 = -56;
        v15 = *(a1 + 2);
        *(a1 + 2) = v15 + 1;
        *(a1 + 72) = v15;
        _libssh2_store_u32(&v32, v15);
        _libssh2_store_str(&v32, "statvfs@openssh.com", 0x13uLL);
        _libssh2_store_str(&v32, a2, a3);
        *(a1 + 69) = 2;
      }

      v16 = _libssh2_channel_write(v9, 0, v13, a3 + 36);
      if (v16 == -37 || v16 < a3 + 36)
      {
        a1[35] = v13;
        goto LABEL_30;
      }

      v18 = v16;
      (*(v10 + 24))(v13, v10);
      a1[35] = 0;
      if ((v18 & 0x8000000000000000) != 0)
      {
        *(a1 + 69) = 0;
        v21 = v10;
        v20 = 4294967289;
        v22 = "_libssh2_channel_write() failed";
        goto LABEL_29;
      }

      *(a1 + 69) = 3;
LABEL_16:
      v19 = sftp_packet_requirev(a1, &sftp_statvfs_responses, *(a1 + 72), &v31, &v33, 9uLL);
      if (v19)
      {
        v20 = v19;
        if (v19 == -37)
        {
          goto LABEL_30;
        }

        if (v19 == -38)
        {
          if (v33)
          {
            (*(v10 + 24))(v31, v10);
          }

          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP fstat packet too short";
        }

        else
        {
          *(a1 + 69) = 0;
          v21 = v10;
          v22 = "Error waiting for FXP EXTENDED REPLY";
        }
      }

      else
      {
        v23 = v31;
        if (*v31 == 101)
        {
          v24 = _libssh2_ntohu32((v31 + 5));
          *(a1 + 69) = 0;
          (*(v10 + 24))(v31, v10);
          *(a1 + 16) = v24;
          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP Protocol Error";
        }

        else
        {
          if (v33 > 0x5C)
          {
            *(a1 + 69) = 0;
            v26 = _libssh2_ntohu64((v23 + 5));
            v27 = v31;
            *a4 = v26;
            a4[1] = _libssh2_ntohu64((v27 + 13));
            a4[2] = _libssh2_ntohu64((v31 + 21));
            a4[3] = _libssh2_ntohu64((v31 + 29));
            a4[4] = _libssh2_ntohu64((v31 + 37));
            a4[5] = _libssh2_ntohu64((v31 + 45));
            a4[6] = _libssh2_ntohu64((v31 + 53));
            a4[7] = _libssh2_ntohu64((v31 + 61));
            a4[8] = _libssh2_ntohu64((v31 + 69));
            v28 = _libssh2_ntohu64((v31 + 77));
            v29 = _libssh2_ntohu64((v31 + 85));
            a4[9] = v28 & 3;
            a4[10] = v29;
            (*(v10 + 24))(v31, v10);
            return 0;
          }

          (*(v10 + 24))();
          *(a1 + 69) = 0;
          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP Protocol Error: short response";
        }
      }

LABEL_29:
      result = _libssh2_error(v21, v20, v22);
      if (result != -37)
      {
        return result;
      }

LABEL_30:
      v25 = *(*a1 + 104);
      if (!*(v25 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v25, v8);
    }

    while (!result);
  }

  return result;
}

uint64_t libssh2_sftp_mkdir_ex(uint64_t *a1, const void *a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294967257;
  }

  v7 = time(0);
  while (1)
  {
    v8 = *a1;
    v9 = *(*a1 + 104);
    v33 = 0;
    v32 = 0u;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    v28 = 0;
    if (a4 == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
      *&v31[0] = 4;
      *&v32 = a4 | 0x4000;
    }

    v29 = 0;
    v11 = a3 + 17 + v10;
    v12 = *(a1 + 73);
    if (v12)
    {
      if (v12 != 2)
      {
        goto LABEL_15;
      }

      v13 = a1[37];
    }

    else
    {
      *(a1 + 16) = 0;
      v14 = (*(v9 + 8))(v11, v9);
      v29 = v14;
      if (!v14)
      {
        v22 = v9;
        v21 = 4294967290;
        v23 = "Unable to allocate memory for FXP_MKDIR packet";
        goto LABEL_26;
      }

      v13 = v14;
      _libssh2_store_u32(&v29, v11 - 4);
      v15 = v29;
      v29 = (v29 + 1);
      *v15 = 14;
      v16 = *(a1 + 2);
      *(a1 + 2) = v16 + 1;
      *(a1 + 76) = v16;
      _libssh2_store_u32(&v29, v16);
      _libssh2_store_str(&v29, a2, a3);
      v17 = sftp_attr2bin(v29, v31);
      v29 = (v29 + v17);
      *(a1 + 73) = 2;
    }

    v18 = _libssh2_channel_write(v8, 0, v13, v11);
    if (v18 == -37)
    {
      a1[37] = v13;
      goto LABEL_27;
    }

    v19 = v18;
    (*(v9 + 24))(v13, v9);
    if (v19 != v11)
    {
      *(a1 + 73) = 0;
      v22 = v9;
      v21 = 4294967289;
      v23 = "_libssh2_channel_write() failed";
      goto LABEL_26;
    }

    *(a1 + 73) = 3;
    a1[37] = 0;
LABEL_15:
    v20 = sftp_packet_require(a1, 101, *(a1 + 76), &v28, &v30, 9uLL);
    if (!v20)
    {
      break;
    }

    v21 = v20;
    if (v20 == -37)
    {
      goto LABEL_27;
    }

    if (v20 == -38)
    {
      if (v30)
      {
        (*(v9 + 24))(v28, v9);
      }

      v22 = v9;
      v21 = 4294967265;
      v23 = "SFTP mkdir packet too short";
    }

    else
    {
      *(a1 + 73) = 0;
      v22 = v9;
      v23 = "Error waiting for FXP STATUS";
    }

LABEL_26:
    result = _libssh2_error(v22, v21, v23);
    if (result != -37)
    {
      return result;
    }

LABEL_27:
    v26 = *(*a1 + 104);
    if (!*(v26 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v26, v7);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 73) = 0;
  v24 = _libssh2_ntohu32((v28 + 5));
  (*(v9 + 24))(v28, v9);
  if (v24)
  {
    *(a1 + 16) = v24;
    v22 = v9;
    v21 = 4294967265;
    v23 = "SFTP Protocol Error";
    goto LABEL_26;
  }

  return 0;
}

uint64_t libssh2_sftp_rmdir_ex(uint64_t *a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967257;
  }

  v6 = time(0);
  while (1)
  {
    v7 = *a1;
    v8 = *(*a1 + 104);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v9 = *(a1 + 77);
    if (v9 != 2)
    {
      if (v9)
      {
        goto LABEL_10;
      }

      *(a1 + 16) = 0;
      v10 = (*(v8 + 8))(a3 + 13, v8);
      a1[39] = v10;
      v23 = v10;
      if (!v10)
      {
        v17 = v8;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_RMDIR packet";
        goto LABEL_21;
      }

      _libssh2_store_u32(&v23, a3 + 9);
      v11 = v23;
      v23 = (v23 + 1);
      *v11 = 15;
      v12 = *(a1 + 2);
      *(a1 + 2) = v12 + 1;
      *(a1 + 80) = v12;
      _libssh2_store_u32(&v23, v12);
      _libssh2_store_str(&v23, a2, a3);
      *(a1 + 77) = 2;
    }

    v13 = _libssh2_channel_write(v7, 0, a1[39], a3 + 13);
    if (v13 == -37)
    {
      goto LABEL_22;
    }

    v14 = v13;
    (*(v8 + 24))(a1[39], v8);
    a1[39] = 0;
    if (v14 != a3 + 13)
    {
      *(a1 + 77) = 0;
      v17 = v8;
      v16 = 4294967289;
      v18 = "Unable to send FXP_RMDIR command";
      goto LABEL_21;
    }

    *(a1 + 77) = 3;
LABEL_10:
    v15 = sftp_packet_require(a1, 101, *(a1 + 80), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_22;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v8 + 24))(v22, v8);
      }

      v17 = v8;
      v16 = 4294967265;
      v18 = "SFTP rmdir packet too short";
    }

    else
    {
      *(a1 + 77) = 0;
      v17 = v8;
      v18 = "Error waiting for FXP STATUS";
    }

LABEL_21:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_22:
    v21 = *(*a1 + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v6);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 77) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v8 + 24))(v22, v8);
  if (v19)
  {
    *(a1 + 16) = v19;
    v17 = v8;
    v16 = 4294967265;
    v18 = "SFTP Protocol Error";
    goto LABEL_21;
  }

  return 0;
}

uint64_t libssh2_sftp_stat_ex(uint64_t *a1, const void *a2, unsigned int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294967257;
  }

  v10 = time(0);
  if (a4 == 1)
  {
    v11 = 7;
  }

  else
  {
    v11 = 17;
  }

  if (a4 == 2)
  {
    v11 = 9;
  }

  v32 = v11;
  while (1)
  {
    v12 = *a1;
    v13 = *(*a1 + 104);
    v35 = 0;
    if (a4 == 2)
    {
      v14 = (*a5 & 0xC) + 8 * (*a5 & 1) + ((4 * *a5) & 8) + 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 + 13 + v14;
    v33 = 0;
    v34 = 0;
    v16 = *(a1 + 81);
    if (v16 != 2)
    {
      if (v16)
      {
        goto LABEL_20;
      }

      *(a1 + 16) = 0;
      v17 = (*(v13 + 8))(v15, v13);
      a1[41] = v17;
      v34 = v17;
      if (!v17)
      {
        v25 = v13;
        v24 = 4294967290;
        v26 = "Unable to allocate memory for FXP_*STAT packet";
        goto LABEL_34;
      }

      _libssh2_store_u32(&v34, v15 - 4);
      v18 = v34;
      v34 = (v34 + 1);
      *v18 = v32;
      v19 = *(a1 + 2);
      *(a1 + 2) = v19 + 1;
      *(a1 + 84) = v19;
      _libssh2_store_u32(&v34, v19);
      _libssh2_store_str(&v34, a2, a3);
      if (a4 == 2)
      {
        v20 = sftp_attr2bin(v34, a5);
        v34 = (v34 + v20);
      }

      *(a1 + 81) = 2;
    }

    v21 = _libssh2_channel_write(v12, 0, a1[41], v15);
    if (v21 == -37)
    {
      goto LABEL_35;
    }

    v22 = v21;
    (*(v13 + 24))(a1[41], v13);
    a1[41] = 0;
    if (v22 != v15)
    {
      *(a1 + 81) = 0;
      v25 = v13;
      v24 = 4294967289;
      v26 = "Unable to send STAT/LSTAT/SETSTAT command";
      goto LABEL_34;
    }

    *(a1 + 81) = 3;
LABEL_20:
    v23 = sftp_packet_requirev(a1, &sftp_stat_stat_responses, *(a1 + 84), &v33, &v35, 9uLL);
    if (!v23)
    {
      break;
    }

    v24 = v23;
    if (v23 == -37)
    {
      goto LABEL_35;
    }

    if (v23 == -38)
    {
      if (v35)
      {
        (*(v13 + 24))(v33, v13);
      }

      v25 = v13;
      v24 = 4294967265;
      v26 = "SFTP stat packet too short";
    }

    else
    {
      *(a1 + 81) = 0;
      v25 = v13;
      v26 = "Timeout waiting for status message";
    }

LABEL_34:
    result = _libssh2_error(v25, v24, v26);
    if (result != -37)
    {
      return result;
    }

LABEL_35:
    v31 = *(*a1 + 104);
    if (!*(v31 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v31, v10);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 81) = 0;
  v27 = v33;
  if (*v33 != 101)
  {
    *(a5 + 48) = 0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    v29 = sftp_bin2attr(a5, v27 + 5, v35 - 5);
    (*(v13 + 24))(v33, v13);
    if ((v29 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v25 = v13;
    v24 = 4294967265;
    v26 = "Attributes too short in SFTP fstat";
    goto LABEL_34;
  }

  v28 = _libssh2_ntohu32((v33 + 5));
  (*(v13 + 24))(v33, v13);
  if (v28)
  {
    *(a1 + 16) = v28;
    v25 = v13;
    v24 = 4294967265;
    v26 = "SFTP Protocol Error";
    goto LABEL_34;
  }

  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  return 0;
}

uint64_t libssh2_sftp_symlink_ex(uint64_t *a1, const void *a2, unsigned int a3, void *a4, unsigned int a5, int a6)
{
  if (a1)
  {
    v11 = time(0);
    v12 = a5 + 4;
    if (a6)
    {
      v12 = 0;
    }

    v38 = a3 + v12;
    v13 = a3 + v12 + 13;
    if (a6)
    {
      v14 = 19;
    }

    else
    {
      v14 = 20;
    }

    if (a6 == 2)
    {
      v14 = 16;
    }

    v37 = v14;
    __n = a3;
    while (1)
    {
      v15 = *a1;
      v16 = *(*a1 + 104);
      v40 = 0;
      v41 = 0;
      v39 = 0;
      v17 = *(a1 + 85);
      if (v17 != 2)
      {
        if (v17)
        {
          goto LABEL_22;
        }

        *(a1 + 16) = 0;
        if (a6 != 2 && *(a1 + 3) <= 2u)
        {
          v18 = v16;
          v19 = 4294967265;
          v20 = "Server does not support SYMLINK or READLINK";
LABEL_40:
          v29 = _libssh2_error(v18, v19, v20);
          goto LABEL_41;
        }

        v21 = (*(v16 + 8))(v13, v16);
        a1[43] = v21;
        v40 = v21;
        if (!v21)
        {
          v18 = v16;
          v19 = 4294967290;
          v20 = "Unable to allocate memory for SYMLINK/READLINK/REALPATH packet";
          goto LABEL_40;
        }

        _libssh2_store_u32(&v40, v38 + 9);
        v22 = v40;
        v40 = (v40 + 1);
        *v22 = v37;
        v23 = *(a1 + 2);
        *(a1 + 2) = v23 + 1;
        *(a1 + 88) = v23;
        _libssh2_store_u32(&v40, v23);
        _libssh2_store_str(&v40, a2, __n);
        if (!a6)
        {
          _libssh2_store_str(&v40, a4, a5);
        }

        *(a1 + 85) = 2;
      }

      v24 = _libssh2_channel_write(v15, 0, a1[43], v13);
      if (v24 == -37)
      {
        goto LABEL_42;
      }

      v25 = v24;
      (*(v16 + 24))(a1[43], v16);
      a1[43] = 0;
      if (v25 != v13)
      {
        *(a1 + 85) = 0;
        v18 = v16;
        v19 = 4294967289;
        v20 = "Unable to send SYMLINK/READLINK command";
        goto LABEL_40;
      }

      *(a1 + 85) = 3;
LABEL_22:
      v26 = sftp_packet_requirev(a1, &sftp_symlink_link_responses, *(a1 + 88), &v39, &v41, 9uLL);
      if (v26)
      {
        v19 = v26;
        if (v26 == -37)
        {
          goto LABEL_42;
        }

        if (v26 == -38)
        {
          if (v41)
          {
            (*(v16 + 24))(v39, v16);
          }

          v18 = v16;
          v19 = 4294967265;
          v20 = "SFTP symlink packet too short";
        }

        else
        {
          *(a1 + 85) = 0;
          v18 = v16;
          v20 = "Error waiting for status message";
        }

        goto LABEL_40;
      }

      *(a1 + 85) = 0;
      v27 = *v39;
      v28 = _libssh2_ntohu32((v39 + 5));
      v29 = v28;
      if (v27 == 101)
      {
        (*(v16 + 24))(v39, v16);
        if (!v29)
        {
          return v29;
        }

        *(a1 + 16) = v29;
        v18 = v16;
        v19 = 4294967265;
        v20 = "SFTP Protocol Error";
        goto LABEL_40;
      }

      if (!v28)
      {
        (*(v16 + 24))(v39, v16);
        v18 = v16;
        v19 = 4294967265;
        v20 = "Invalid READLINK/REALPATH response, no name entries";
        goto LABEL_40;
      }

      if (v41 <= 0xC)
      {
        if (v41)
        {
          (*(v16 + 24))(v39, v16);
        }

        v18 = v16;
        v19 = 4294967265;
        v20 = "SFTP stat packet too short";
        goto LABEL_40;
      }

      v32 = _libssh2_ntohu32((v39 + 9));
      v33 = v39;
      if (v32 >= a5)
      {
        v29 = 4294967258;
      }

      else
      {
        v29 = v32;
        memcpy(a4, v39 + 13, v32);
        *(a4 + v29) = 0;
      }

      (*(v16 + 24))(v33, v16);
LABEL_41:
      if (v29 != -37)
      {
        return v29;
      }

LABEL_42:
      v30 = *(*a1 + 104);
      if (!*(v30 + 172))
      {
        return 4294967259;
      }

      v31 = _libssh2_wait_socket(v30, v11);
      if (v31)
      {
        return v31;
      }
    }
  }

  return 4294967257;
}

uint64_t libssh2_sftp_last_error(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t libssh2_sftp_get_channel(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sftp_packet_require(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, unint64_t a6)
{
  result = 4294967257;
  if (a4 && a5)
  {
    v11 = a3;
    v12 = a2;
    v13 = *(*a1 + 104);
    while (sftp_packet_ask(a1, v12, v11, a4, a5))
    {
      if (*(v13 + 596))
      {
        return 4294967283;
      }

      result = sftp_packet_read(a1, v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*a5 >= a6)
    {
      return 0;
    }

    else
    {
      return 4294967258;
    }
  }

  return result;
}

uint64_t sftp_packet_ask(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = *(*a1 + 104);
  v10 = _libssh2_list_first(a1 + 16);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  while (1)
  {
    v12 = *(v11 + 32);
    if (*v12 == a2 && (a2 == 2 || *(v11 + 24) == a3))
    {
      break;
    }

    v11 = _libssh2_list_next(v11);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a4 = v12;
  *a5 = *(v11 + 40);
  _libssh2_list_remove(v11);
  (*(v9 + 24))(v11, v9);
  return 0;
}

uint64_t sftp_packet_read(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 104);
  v5 = *(a1 + 40);
  if (v5 == 4)
  {
    *(a1 + 40) = 0;
    v6 = a1[11];
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else if (v5 == 3)
  {
    *(a1 + 40) = 0;
    v6 = a1[11];
LABEL_4:
    v7 = libssh2_channel_window_read_ex(v3, 0, 0);
    v8 = *(a1 + 24);
    if (v7 < v8)
    {
      v9 = _libssh2_channel_receive_window_adjust(v3, 2 * v8, 1, 0);
      v10 = v9 == -37 ? 3 : 0;
      *(a1 + 40) = v10;
      if (v9 == -37)
      {
        return 4294967259;
      }
    }

LABEL_11:
    v11 = *(a1 + 24);
    v12 = a1[13];
    while (v12 < v11)
    {
      v13 = _libssh2_channel_read(v3, 0, &v6[v12], v11 - v12);
      if (v13 == -37)
      {
        *(a1 + 40) = 4;
        return 4294967259;
      }

      v14 = v13;
      if ((v13 & 0x8000000000000000) != 0)
      {
        (*(v4 + 24))(v6, v4);
        a1[11] = 0;
        v22 = "Error waiting for SFTP packet";
        v23 = v4;
        v16 = v14;
        goto LABEL_51;
      }

      v12 = a1[13] + v13;
      a1[13] = v12;
      v11 = *(a1 + 24);
    }

    a1[11] = 0;
    if (v11 >= 5)
    {
      v25 = *v6;
      v26 = *(*a1 + 104);
      if ((v25 - 1) < 0x14 || (v25 - 101) < 5 || (v25 - 200) < 2)
      {
        v27 = _libssh2_ntohu32((v6 + 1));
        if ((*v6 | 2) == 0x67 && find_zombie_request(a1, v27))
        {
          (*(v26 + 24))(v6, v26);
          v28 = *(*a1 + 104);
          zombie_request = find_zombie_request(a1, v27);
          if (zombie_request)
          {
            v30 = zombie_request;
            _libssh2_list_remove(zombie_request);
            (*(v28 + 24))(v30, v28);
          }

          return v25;
        }

        v31 = (*(v26 + 8))(48, v26);
        if (v31)
        {
          *(v31 + 32) = v6;
          *(v31 + 40) = v11;
          *(v31 + 24) = v27;
          _libssh2_list_add(a1 + 2, v31);
          return v25;
        }

        v33 = "Unable to allocate datablock for SFTP packet";
        v34 = v26;
        v35 = 4294967290;
      }

      else
      {
        *(a1 + 16) = 0;
        v33 = "Out of sync with the world";
        v34 = v26;
        v35 = 4294967265;
      }

      v24 = _libssh2_error(v34, v35, v33);
      if (!v24)
      {
        return v25;
      }
    }

    else
    {
      v24 = 4294967255;
    }

    (*(v4 + 24))(v6, v4);
    return v24;
  }

  v15 = _libssh2_channel_read(v3, 0, a1 + a1[10] + 68, 9 - a1[10]);
  if (v15 == -37)
  {
    return 4294967259;
  }

  v16 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v22 = "channel read";
    v23 = v4;
    goto LABEL_51;
  }

  v17 = a1[10] + v15;
  a1[10] = v17;
  if (v17 != 9)
  {
    return 4294967259;
  }

  v18 = _libssh2_ntohu32(a1 + 17);
  v19 = *(a1 + 72);
  *(a1 + 24) = v18;
  v20 = _libssh2_ntohu32((a1 + 73));
  v21 = *(a1 + 24);
  if (v21 <= 0x40000)
  {
    if (v21 <= 4)
    {
      v22 = "Invalid SFTP packet size";
      goto LABEL_50;
    }
  }

  else if (!*(a1 + 47) || *(a1 + 50) != v20 || v19 != 104)
  {
    libssh2_channel_flush_ex(v3, 0);
    a1[10] = 0;
    v22 = "SFTP packet too large";
    v23 = v4;
    v16 = 4294967271;
    goto LABEL_51;
  }

  v36 = (*(v4 + 8))();
  if (v36)
  {
    v6 = v36;
    a1[10] = 0;
    a1[11] = v36;
    a1[13] = 5;
    v37 = *(a1 + 18);
    *(v36 + 4) = *(a1 + 76);
    *v36 = v37;
    goto LABEL_4;
  }

  v22 = "Unable to allocate SFTP packet";
LABEL_50:
  v23 = v4;
  v16 = 4294967290;
LABEL_51:

  return _libssh2_error(v23, v16, v22);
}

uint64_t find_zombie_request(uint64_t a1, int a2)
{
  for (result = _libssh2_list_first(a1 + 32); result; result = _libssh2_list_next(result))
  {
    if (*(result + 24) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sftp_attr2bin(char *a1, uint64_t *a2)
{
  v6 = a1;
  if (a2)
  {
    _libssh2_store_u32(&v6, *a2 & 0xF);
    v4 = *a2;
    if (*a2)
    {
      *v6 = bswap64(a2[1]);
      v6 += 8;
      v4 = *a2;
      if ((*a2 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    _libssh2_store_u32(&v6, *(a2 + 4));
    _libssh2_store_u32(&v6, *(a2 + 6));
    v4 = *a2;
    if ((*a2 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        return v6 - a1;
      }

LABEL_6:
      _libssh2_store_u32(&v6, *(a2 + 10));
      _libssh2_store_u32(&v6, *(a2 + 12));
      return v6 - a1;
    }

LABEL_12:
    _libssh2_store_u32(&v6, *(a2 + 8));
    if ((*a2 & 8) == 0)
    {
      return v6 - a1;
    }

    goto LABEL_6;
  }

  _libssh2_htonu32(a1, 0);
  return 4;
}

uint64_t sftp_packet_requirev(uint64_t *a1, uint64_t a2, int a3, void *a4, unint64_t *a5, unint64_t a6)
{
  v6 = 4294967257;
  if (a4 && a5)
  {
    if (!a1[14])
    {
      a1[14] = time(0);
    }

    if (*(*(*a1 + 104) + 596))
    {
LABEL_6:
      a1[14] = 0;
      return 4294967283;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (sftp_packet_ask(a1, *(a2 + v14), a3, a4, a5))
      {
        if (v15)
        {
          v14 = 1;
        }

        else
        {
          v17 = sftp_packet_read(a1, v16);
          v6 = v17;
          if ((v17 & 0x80000000) != 0 && v17 != -37)
          {
            a1[14] = 0;
            return v6;
          }

          if (v17 <= 0)
          {
            v18 = *(*(*a1 + 104) + 73576);
            if (v18 - time(0) + a1[14] <= 0)
            {
              a1[14] = 0;
              return 4294967287;
            }

            if (v6 == -37)
            {
              return v6;
            }
          }

          if (*(*(*a1 + 104) + 596))
          {
            goto LABEL_6;
          }

          v14 = 0;
        }

        v15 ^= 1u;
      }

      a1[14] = 0;
      if (*a5 >= a6)
      {
        return 0;
      }

      else
      {
        return 4294967258;
      }
    }
  }

  return v6;
}

uint64_t sftp_bin2attr(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a2;
  v16 = a2;
  v17 = a3;
  if (_libssh2_get_u32(&v15, &v14))
  {
    return -38;
  }

  LODWORD(v5) = v14;
  *a1 = v14;
  if (v5)
  {
    if (_libssh2_get_u64(&v15, a1 + 1))
    {
      return -38;
    }

    v5 = *a1;
  }

  if ((v5 & 2) != 0)
  {
    LODWORD(v12) = 0;
    LODWORD(v11) = 0;
    if (_libssh2_get_u32(&v15, &v12) || _libssh2_get_u32(&v15, &v11))
    {
      return -38;
    }

    v6 = v11;
    a1[2] = v12;
    a1[3] = v6;
    v5 = *a1;
    if ((*a1 & 4) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v5 & 4) != 0)
  {
LABEL_9:
    LODWORD(v12) = 0;
    if (_libssh2_get_u32(&v15, &v12))
    {
      return -38;
    }

    a1[4] = v12;
    v5 = *a1;
  }

  if ((v5 & 8) != 0)
  {
    LODWORD(v12) = 0;
    LODWORD(v11) = 0;
    if (_libssh2_get_u32(&v15, &v12) || _libssh2_get_u32(&v15, &v11))
    {
      return -38;
    }

    v7 = v11;
    a1[5] = v12;
    a1[6] = v7;
    if ((*a1 & 0x80000000) == 0)
    {
      return v16 - v15;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    return v16 - v15;
  }

  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  if (!_libssh2_get_u32(&v15, &v13))
  {
    if (v13)
    {
      v8 = 0;
      while (!_libssh2_get_string(&v15, &v11, &v12) && !_libssh2_get_string(&v15, &v9, &v10))
      {
        if (++v8 >= v13)
        {
          return v16 - v15;
        }
      }

      return -38;
    }

    return v16 - v15;
  }

  return -38;
}

_DWORD *libssh2_hostkey_hash(_DWORD *a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = a1[72];
      v3 = a1 + 64;
      break;
    case 2:
      v2 = a1[63];
      v3 = a1 + 58;
      break;
    case 1:
      v2 = a1[57];
      v3 = a1 + 53;
      break;
    default:
      return 0;
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

void *libssh2_session_hostkey(uint64_t a1, void *a2, int *a3)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    if (a2)
    {
      *a2 = v3;
    }

    result = *(a1 + 200);
    if (a3)
    {
      if (v3 >= 0xB)
      {
        if (*result == 0x2D68737307000000 && *(result + 3) == 0x6173722D68737307)
        {
          v5 = 1;
          goto LABEL_46;
        }

        if (*result == 0x2D68737307000000 && *(result + 3) == 0x7373642D68737307)
        {
          v5 = 2;
          goto LABEL_46;
        }

        if (v3 >= 0xF)
        {
          if (*result == 0x2D6873730B000000 && *(result + 7) == 0x393135353264652DLL)
          {
            v5 = 6;
            goto LABEL_46;
          }

          if (v3 >= 0x17)
          {
            if (*result == 0x7364636513000000 && result[1] == 0x6E2D326168732D61 && *(result + 15) == 0x363532707473696ELL)
            {
              v5 = 3;
            }

            else if (*result == 0x7364636513000000 && result[1] == 0x6E2D326168732D61 && *(result + 15) == 0x343833707473696ELL)
            {
              v5 = 4;
            }

            else if (*result ^ 0x7364636513000000 | result[1] ^ 0x6E2D326168732D61 | *(result + 15) ^ 0x313235707473696ELL)
            {
              v5 = 0;
            }

            else
            {
              v5 = 5;
            }

            goto LABEL_46;
          }
        }
      }

      v5 = 0;
LABEL_46:
      *a3 = v5;
    }
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_init(uint64_t a1, uint64_t a2, unint64_t a3, EC_KEY **a4)
{
  v22 = 0;
  if (a4 && *a4)
  {
    EC_KEY_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x27)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  __s1 = 0;
  v18 = 0;
  v19 = 0;
  v16[2] = a3;
  v17 = 0;
  v16[0] = a2;
  v16[1] = a2;
  string = _libssh2_get_string(v16, &__s1, &v17);
  result = 0xFFFFFFFFLL;
  if (!string && v17 == 19)
  {
    v9 = __s1;
    v10 = strncmp(__s1, "ecdsa-sha2-nistp256", 0x13uLL);
    if (v10)
    {
      if (!strncmp(v9, "ecdsa-sha2-nistp384", 0x13uLL))
      {
        v13 = 0;
        v12 = 715;
        v11 = 1;
      }

      else
      {
        if (strncmp(v9, "ecdsa-sha2-nistp521", 0x13uLL))
        {
          return 0xFFFFFFFFLL;
        }

        v11 = 0;
        v12 = 716;
        v13 = 1;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v12 = 415;
    }

    v14 = _libssh2_get_string(v16, &v20, &v17);
    result = 0xFFFFFFFFLL;
    if (v14 || v17 != 8)
    {
      return result;
    }

    if ((v10 || !strncmp(v20, "nistp256", 8uLL)) && (!v11 || !strncmp(v20, "nistp384", 8uLL)) && (!v13 || !strncmp(v20, "nistp521", 8uLL)) && !_libssh2_get_string(v16, &v19, &v18) && _libssh2_eob(v16))
    {
      v15 = _libssh2_ecdsa_curve_name_with_octal_new(&v22, v19, v18, v12);
      if (v15)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }

      if (a4)
      {
        if (!v15)
        {
          result = 0;
          *a4 = v22;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_initPEM(uint64_t a1, char *a2, const char *a3, EC_KEY **a4)
{
  v9 = 0;
  if (!a4)
  {
    return _libssh2_ecdsa_new_private(&v9, a1, a2, a3);
  }

  if (*a4)
  {
    EC_KEY_free(*a4);
    *a4 = 0;
  }

  result = _libssh2_ecdsa_new_private(&v9, a1, a2, a3);
  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_ecdsa_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, EC_KEY **a5)
{
  v12 = 0;
  if (a5 && *a5)
  {
    EC_KEY_free(*a5);
    *a5 = 0;
  }

  v10 = _libssh2_ecdsa_new_private_frommemory(&v12, a1, a2, a3, a4);
  if (v10)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a5)
  {
    if (!v10)
    {
      result = 0;
      *a5 = v12;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, const EC_KEY **a6)
{
  if (a3 < 0x23)
  {
    return 0xFFFFFFFFLL;
  }

  v21[5] = v6;
  v21[6] = v7;
  v11 = *a6;
  v20 = 0;
  v21[0] = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v14[0] = a2;
  v14[1] = a2;
  v14[2] = a3;
  string = _libssh2_get_string(v14, &v19, &v16);
  result = 0xFFFFFFFFLL;
  if (!string && v16 == 19)
  {
    u32 = _libssh2_get_u32(v14, &v15);
    result = 0xFFFFFFFFLL;
    if (!u32 && v15 >= 8)
    {
      if (_libssh2_get_string(v14, v21, &v18) || _libssh2_get_string(v14, &v20, &v17))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return _libssh2_ecdsa_verify(v11, v21[0], v18, v20, v17, a4, a5);
      }
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_signv(uint64_t a1, void *a2, size_t *a3, int a4, uint64_t a5, EC_KEY **a6)
{
  LODWORD(v7) = a4;
  v22 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  curve_type = _libssh2_ecdsa_get_curve_type(*a6);
  switch(curve_type)
  {
    case 716:
      ctx = 0;
      _libssh2_sha512_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v18 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v18 - 1), *v18);
          v18 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 64;
      return _libssh2_ecdsa_sign(v14, v15, md, v16, a2, a3);
    case 715:
      ctx = 0;
      _libssh2_sha384_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v17 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v17 - 1), *v17);
          v17 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 48;
      return _libssh2_ecdsa_sign(v14, v15, md, v16, a2, a3);
    case 415:
      ctx = 0;
      _libssh2_sha256_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v13 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v13 - 1), *v13);
          v13 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 32;
      return _libssh2_ecdsa_sign(v14, v15, md, v16, a2, a3);
  }

  return 0xFFFFFFFFLL;
}

uint64_t hostkey_method_ssh_ecdsa_dtor(uint64_t a1, EC_KEY **a2)
{
  if (*a2)
  {
    EC_KEY_free(*a2);
  }

  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_ed25519_init(uint64_t a1, uint64_t a2, unint64_t a3, EVP_PKEY **a4)
{
  v10 = 0;
  if (*a4)
  {
    EVP_PKEY_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = 0;
  v9[0] = a2;
  v9[1] = a2;
  v9[2] = a3;
  if (_libssh2_match_string(v9, "ssh-ed25519"))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v9, &v11, &v12))
  {
    return 0xFFFFFFFFLL;
  }

  if (!_libssh2_eob(v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = _libssh2_ed25519_new_public(&v10, a1, v11, v12);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v10;
  return result;
}

uint64_t hostkey_method_ssh_ed25519_initPEM(uint64_t a1, const char *a2, const char *a3, EVP_PKEY **a4)
{
  v9 = 0;
  if (*a4)
  {
    EVP_PKEY_free(*a4);
    *a4 = 0;
  }

  result = _libssh2_ed25519_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_ed25519_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, EVP_PKEY **a5)
{
  v12 = 0;
  if (a5 && *a5)
  {
    EVP_PKEY_free(*a5);
    *a5 = 0;
  }

  v10 = _libssh2_ed25519_new_private_frommemory(&v12, a1, a2, a3, a4);
  if (v10)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a5)
  {
    if (!v10)
    {
      result = 0;
      *a5 = v12;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ed25519_sig_verify(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  if (a3 == 83)
  {
    return _libssh2_ed25519_verify(*a6, a2 + 19, 64, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_ed25519_signv(uint64_t a1, void *a2, void *a3, int a4, void **a5, uint64_t *a6)
{
  if (a4 == 1)
  {
    return _libssh2_ed25519_sign(*a6, a1, a2, a3, *a5, a5[1]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_ed25519_dtor(uint64_t a1, EVP_PKEY **a2)
{
  if (*a2)
  {
    EVP_PKEY_free(*a2);
  }

  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_rsa_init(uint64_t a1, uint64_t a2, unint64_t a3, RSA **a4)
{
  if (*a4)
  {
    RSA_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12[0] = a2;
  v12[1] = a2;
  v12[2] = a3;
  if (_libssh2_get_string(v12, &v16, &v13))
  {
    return 0xFFFFFFFFLL;
  }

  if (v13 != 12)
  {
    if (v13 != 7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v16;
    v9 = "ssh-rsa";
    v10 = 7;
    goto LABEL_12;
  }

  v11 = v16;
  if (strncmp("rsa-sha2-256", v16, 0xCuLL))
  {
    v9 = "rsa-sha2-512";
    v8 = v11;
    v10 = 12;
LABEL_12:
    if (strncmp(v9, v8, v10))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!_libssh2_get_string(v12, &v18, &v15) && !_libssh2_get_string(v12, &v17, &v14) && _libssh2_eob(v12))
  {
    result = _libssh2_rsa_new(&v19, v18, v15, v17, v14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!result)
    {
      *a4 = v19;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t hostkey_method_ssh_rsa_initPEM(uint64_t a1, char *a2, const char *a3, RSA **a4)
{
  if (*a4)
  {
    RSA_free(*a4);
    *a4 = 0;
  }

  v9 = 0;
  result = _libssh2_rsa_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_rsa_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, RSA **a5)
{
  if (*a5)
  {
    RSA_free(*a5);
    *a5 = 0;
  }

  v11 = 0;
  result = _libssh2_rsa_new_private_frommemory(&v11, a1, a2, a3, a4);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = v11;
  return result;
}

uint64_t hostkey_method_ssh_rsa_sha2_512_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  if (a3 >= 0x14)
  {
    return _libssh2_rsa_sha2_verify(*a6, 0x40uLL, (a2 + 20), a3 - 20, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_sha2_512_signv(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, uint64_t a5, RSA **a6)
{
  LODWORD(v7) = a4;
  v16 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  if (!_libssh2_sha512_init(&ctx))
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 >= 1)
  {
    v7 = v7;
    v12 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  if (_libssh2_rsa_sha2_sign(a1, v11, md, 64, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hostkey_method_ssh_rsa_dtor(uint64_t a1, RSA **a2)
{
  RSA_free(*a2);
  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_rsa_sha2_256_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  if (a3 >= 0x14)
  {
    return _libssh2_rsa_sha2_verify(*a6, 0x20uLL, (a2 + 20), a3 - 20, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_sha2_256_signv(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, uint64_t a5, RSA **a6)
{
  LODWORD(v7) = a4;
  v16 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  if (!_libssh2_sha256_init(&ctx))
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 >= 1)
  {
    v7 = v7;
    v12 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  if (_libssh2_rsa_sha2_sign(a1, v11, md, 32, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hostkey_method_ssh_rsa_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  v6 = a3 >= 0xF;
  v7 = a3 - 15;
  if (v6)
  {
    return _libssh2_rsa_sha1_verify(*a6, (a2 + 15), v7, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_signv(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, uint64_t a5, RSA **a6)
{
  LODWORD(v7) = a4;
  v16 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  _libssh2_sha1_init(&ctx);
  if (v7 >= 1)
  {
    v7 = v7;
    v12 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  if (_libssh2_rsa_sha1_sign(a1, v11, md, 20, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hostkey_method_ssh_dss_init(uint64_t a1, uint64_t a2, unint64_t a3, DSA **a4)
{
  if (*a4)
  {
    DSA_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x1B)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8[0] = a2;
  v8[1] = a2;
  v8[2] = a3;
  if (_libssh2_match_string(v8, "ssh-dss"))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v16, &v12))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v15, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v14, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v13, &v9))
  {
    return 0xFFFFFFFFLL;
  }

  if (!_libssh2_eob(v8))
  {
    return 0xFFFFFFFFLL;
  }

  result = _libssh2_dsa_new(&v17, v16, v12, v15, v11, v14, v10, v13, v9, 0, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v17;
  return result;
}

uint64_t hostkey_method_ssh_dss_initPEM(uint64_t a1, char *a2, const char *a3, DSA **a4)
{
  if (*a4)
  {
    DSA_free(*a4);
    *a4 = 0;
  }

  v9 = 0;
  result = _libssh2_dsa_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_dss_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, DSA **a5)
{
  if (*a5)
  {
    DSA_free(*a5);
    *a5 = 0;
  }

  v11 = 0;
  result = _libssh2_dsa_new_private_frommemory(&v11, a1, a2, a3, a4);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = v11;
  return result;
}

uint64_t hostkey_method_ssh_dss_sig_verify(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, DSA **a6)
{
  if (a3 == 55)
  {
    return _libssh2_dsa_sha1_verify(*a6, (a2 + 15), a4, a5);
  }

  else
  {
    return _libssh2_error(a1, 4294967282, "Invalid DSS signature length");
  }
}

uint64_t hostkey_method_ssh_dss_signv(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5, DSA **a6)
{
  LODWORD(v7) = a4;
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  v12 = _libssh2_calloc(a1, 0x28uLL);
  *a2 = v12;
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  ctx = 0;
  *a3 = 40;
  _libssh2_sha1_init(&ctx);
  if (v7 >= 1)
  {
    v7 = v7;
    v13 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v13 - 1), *v13);
      v13 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  result = _libssh2_dsa_sha1_sign(v11, md, 20, *a2);
  if (result)
  {
    (*(a1 + 24))(*a2, a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t hostkey_method_ssh_dss_dtor(uint64_t a1, DSA **a2)
{
  DSA_free(*a2);
  *a2 = 0;
  return 0;
}

uint64_t _libssh2_bcrypt_pbkdf(const void *a1, size_t a2, const void *a3, size_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a4;
  result = 0xFFFFFFFFLL;
  if (a4 > 0x100000 || !a2 || !a4 || a6 - 1025 < 0xFFFFFFFFFFFFFC00)
  {
    return result;
  }

  v14 = malloc_type_calloc(1uLL, a4 + 4, 0x2AD0354EuLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  ctx = 0;
  v15 = (a6 + 31) >> 5;
  v27 = v14;
  memcpy(v14, a3, v7);
  _libssh2_sha512_init(&ctx);
  EVP_DigestUpdate(ctx, a1, a2);
  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  v16 = 0;
  v17 = 1;
  v18 = a6;
  v19 = (v15 + a6 - 1) / v15;
  v26 = v7;
  do
  {
    v29 = v16;
    v30 = v17;
    *&v27[v7] = bswap32(v17);
    _libssh2_sha512_init(&ctx);
    EVP_DigestUpdate(ctx, v27, v7 + 4);
    EVP_DigestFinal(ctx, v34, 0);
    EVP_MD_CTX_free(ctx);
    bcrypt_hash(md);
    __s[0] = d[0];
    __s[1] = d[1];
    if (a7 != 1)
    {
      v20 = 1;
      do
      {
        _libssh2_sha512_init(&ctx);
        EVP_DigestUpdate(ctx, d, 0x20uLL);
        EVP_DigestFinal(ctx, v34, 0);
        EVP_MD_CTX_free(ctx);
        bcrypt_hash(md);
        for (i = 0; i != 2; ++i)
        {
          __s[i] = veorq_s8(__s[i], d[i]);
        }

        ++v20;
      }

      while (v20 != a7);
    }

    if (v19 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    v23 = 0;
    if (v19)
    {
      if (v22 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22;
      }

      v25 = v29;
      while (v25 < a6)
      {
        *(a5 + v25) = *(__s + v23++);
        v25 += v15;
        if (v24 == v23)
        {
          v23 = v24;
          break;
        }
      }
    }

    v17 = v30 + 1;
    v16 = v29 + 1;
    v19 = v22;
    v18 -= v23;
    v7 = v26;
  }

  while (v18);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  free(v27);
  return 0;
}

uint64_t bcrypt_hash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v47 = *MEMORY[0x277D85DE8];
  qmemcpy(__s, "OxychromaticBlowfishSwatDynamite", 32);
  memcpy(__dst, &Blowfish_initstate_initstate, sizeof(__dst));
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if ((v8 & 0xFFC0) != 0)
      {
        v8 = 0;
      }

      v9 = *(v6 + v8++) | (v9 << 8);
      v11 = v10++ >= 3;
    }

    while (!v11);
    __dst[v7++ + 1024] ^= v9;
  }

  while (v7 != 18);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if ((v15 & 0xFFC0) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v15;
      }

      v16 = *(v5 + v18) | (v16 << 8);
      v15 = v18 + 1;
      v11 = v17++ >= 3;
    }

    while (!v11);
    v19 = 0;
    v20 = 0;
    v45[0] = v16 ^ v13;
    do
    {
      if ((v15 & 0xFFC0) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      v19 = *(v5 + v21) | (v19 << 8);
      v15 = v21 + 1;
      v11 = v20++ >= 3;
    }

    while (!v11);
    v44 = v19 ^ v12;
    Blowfish_encipher(__dst, v45, &v44);
    v12 = v44;
    v13 = v45[0];
    v22 = &__dst[v14 + 1024];
    *v22 = v45[0];
    v22[1] = v12;
    v11 = v14 >= 0x10;
    v14 += 2;
  }

  while (!v11);
  for (i = 0; i != 4; ++i)
  {
    v24 = 0;
    do
    {
      v25 = 0;
      v26 = 0;
      do
      {
        if ((v15 & 0xFFC0) != 0)
        {
          v27 = 0;
        }

        else
        {
          v27 = v15;
        }

        v25 = *(v5 + v27) | (v25 << 8);
        v15 = v27 + 1;
        v11 = v26++ >= 3;
      }

      while (!v11);
      v28 = 0;
      v29 = 0;
      v45[0] = v25 ^ v13;
      do
      {
        if ((v15 & 0xFFC0) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = v15;
        }

        v28 = *(v5 + v30) | (v28 << 8);
        v15 = v30 + 1;
        v11 = v29++ >= 3;
      }

      while (!v11);
      v44 = v28 ^ v12;
      Blowfish_encipher(__dst, v45, &v44);
      v31 = &__dst[256 * i + v24];
      v12 = v44;
      v13 = v45[0];
      *v31 = v45[0];
      v31[1] = v12;
      v11 = v24 >= 0xFE;
      v24 += 2;
    }

    while (!v11);
  }

  v32 = 64;
  do
  {
    Blowfish_expand0state(__dst, v5);
    Blowfish_expand0state(__dst, v6);
    --v32;
  }

  while (v32);
  v33 = 0;
  v34 = 0;
  do
  {
    v35 = 0;
    v36 = 0;
    do
    {
      if ((v34 & 0xFFE0) != 0)
      {
        v34 = 0;
      }

      v35 = __s[v34++] | (v35 << 8);
      v11 = v36++ >= 3;
    }

    while (!v11);
    v45[v33++] = v35;
  }

  while (v33 != 8);
  for (j = 0; j != 64; ++j)
  {
    v38 = 0;
    v39 = v45;
    do
    {
      Blowfish_encipher(__dst, v39, v39 + 1);
      v39 += 2;
      v11 = v38++ >= 3;
    }

    while (!v11);
  }

  v40 = 0;
  v41 = v3 + 3;
  do
  {
    *(v41 - 3) = v45[v40++];
    v41 += 4;
  }

  while (v40 != 8);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v45, 0x20uLL, 0, 0x20uLL);
  return memset_s(__dst, 0x1048uLL, 0, 0x1048uLL);
}

_DWORD *Blowfish_expand0state(_DWORD *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ((v4 & 0xFFC0) != 0)
      {
        v4 = 0;
      }

      v5 = *(a2 + v4++) | (v5 << 8);
    }

    while (v6++ < 3);
    a1[v3++ + 1024] ^= v5;
  }

  while (v3 != 18);
  v17 = 0;
  v8 = a1 + 1025;
  v9 = -2;
  do
  {
    Blowfish_encipher(a1, &v17 + 1, &v17);
    v10 = v17;
    *(v8 - 1) = HIDWORD(v17);
    *v8 = v10;
    v9 += 2;
    v8 += 2;
  }

  while (v9 < 0x10);
  v11 = 0;
  v12 = a1 + 1;
  do
  {
    v13 = -2;
    v14 = v12;
    do
    {
      result = Blowfish_encipher(a1, &v17 + 1, &v17);
      v16 = v17;
      *(v14 - 1) = HIDWORD(v17);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
    }

    while (v13 < 0xFE);
    ++v11;
    v12 += 256;
  }

  while (v11 != 4);
  return result;
}

_DWORD *Blowfish_encipher(_DWORD *result, unsigned int *a2, int *a3)
{
  v3 = result[1024] ^ *a2;
  v4 = result[1025] ^ *a3 ^ (((result[BYTE2(v3) | 0x100] + result[HIBYTE(v3)]) ^ result[BYTE1(v3) | 0x200]) + result[(*(result + 4096) ^ *a2) | 0x300]);
  v5 = result[1026] ^ v3 ^ (((result[BYTE2(v4) | 0x100] + result[HIBYTE(v4)]) ^ result[BYTE1(v4) | 0x200]) + result[(*(result + 4100) ^ *a3 ^ (((LOBYTE(result[BYTE2(v3) | 0x100]) + LOBYTE(result[HIBYTE(v3)])) ^ LOBYTE(result[BYTE1(v3) | 0x200])) + LOBYTE(result[(*(result + 4096) ^ *a2) | 0x300]))) | 0x300]);
  v6 = result[1027] ^ v4 ^ (((result[BYTE2(v5) | 0x100] + result[HIBYTE(v5)]) ^ result[BYTE1(v5) | 0x200]) + result[v5 | 0x300]);
  v7 = result[1028] ^ v5 ^ (((result[BYTE2(v6) | 0x100] + result[HIBYTE(v6)]) ^ result[BYTE1(v6) | 0x200]) + result[v6 | 0x300]);
  v8 = result[1029] ^ v6 ^ (((result[BYTE2(v7) | 0x100] + result[HIBYTE(v7)]) ^ result[BYTE1(v7) | 0x200]) + result[v7 | 0x300]);
  v9 = result[1030] ^ v7 ^ (((result[BYTE2(v8) | 0x100] + result[HIBYTE(v8)]) ^ result[BYTE1(v8) | 0x200]) + result[v8 | 0x300]);
  v10 = result[1031] ^ v8 ^ (((result[BYTE2(v9) | 0x100] + result[HIBYTE(v9)]) ^ result[BYTE1(v9) | 0x200]) + result[v9 | 0x300]);
  v11 = result[1032] ^ v9 ^ (((result[BYTE2(v10) | 0x100] + result[HIBYTE(v10)]) ^ result[BYTE1(v10) | 0x200]) + result[v10 | 0x300]);
  v12 = result[1033] ^ v10 ^ (((result[BYTE2(v11) | 0x100] + result[HIBYTE(v11)]) ^ result[BYTE1(v11) | 0x200]) + result[v11 | 0x300]);
  v13 = result[1034] ^ v11 ^ (((result[BYTE2(v12) | 0x100] + result[HIBYTE(v12)]) ^ result[BYTE1(v12) | 0x200]) + result[v12 | 0x300]);
  v14 = result[1035] ^ v12 ^ (((result[BYTE2(v13) | 0x100] + result[HIBYTE(v13)]) ^ result[BYTE1(v13) | 0x200]) + result[v13 | 0x300]);
  v15 = result[1036] ^ v13 ^ (((result[BYTE2(v14) | 0x100] + result[HIBYTE(v14)]) ^ result[BYTE1(v14) | 0x200]) + result[v14 | 0x300]);
  v16 = result[1037] ^ v14 ^ (((result[BYTE2(v15) | 0x100] + result[HIBYTE(v15)]) ^ result[BYTE1(v15) | 0x200]) + result[v15 | 0x300]);
  v17 = result[1038] ^ v15 ^ (((result[BYTE2(v16) | 0x100] + result[HIBYTE(v16)]) ^ result[BYTE1(v16) | 0x200]) + result[v16 | 0x300]);
  v18 = result[1039] ^ v16 ^ (((result[BYTE2(v17) | 0x100] + result[HIBYTE(v17)]) ^ result[BYTE1(v17) | 0x200]) + result[v17 | 0x300]);
  v19 = result[1040] ^ v17 ^ (((result[BYTE2(v18) | 0x100] + result[HIBYTE(v18)]) ^ result[BYTE1(v18) | 0x200]) + result[v18 | 0x300]);
  *a2 = result[1041] ^ v18;
  *a3 = v19;
  return result;
}

uint64_t libssh2_keepalive_config(uint64_t result, int a2, int a3)
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3;
  }

  *(result + 73560) = v3;
  *(result + 73564) = a2 != 0;
  return result;
}

uint64_t libssh2_keepalive_send(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1 + 69632;
  if (*(a1 + 73560))
  {
    v5 = time(0);
    v6 = v5;
    v7 = *(v3 + 3936);
    v8 = *(v3 + 3928);
    if (v7 + v8 > v5)
    {
      if (a2)
      {
        *a2 = v8 + v7 - v5;
      }

      return 0;
    }

    strcpy(v12 + 12, "ve@libssh2.orgW");
    v12[0] = xmmword_23E22C000;
    BYTE10(v12[1]) = *(v3 + 3932);
    v10 = _libssh2_transport_send(a1, v12, 0x1BuLL, 0, 0);
    v9 = v10;
    if (v10 != -37 && v10)
    {
      _libssh2_error(a1, 4294967289, "Unable to send keepalive message");
    }

    else
    {
      *(v3 + 3936) = v6;
      if (a2)
      {
        *a2 = *(v3 + 3928);
      }
    }

    if (v9 == -37 || !v9)
    {
      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v9 = 0;
    *a2 = 0;
  }

  return v9;
}

uint64_t libssh2_session_banner_set(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 424);
  if (v5)
  {
    (*(a1 + 24))(v5, a1);
    *(a1 + 424) = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = (*(a1 + 8))(v4 + 3, a1);
  *(a1 + 424) = v6;
  if (v6)
  {
    memcpy(v6, __s, v4);
    *(*(a1 + 424) + v4) = 0;
    *(*(a1 + 424) + v4) = 13;
    *(*(a1 + 424) + v4 + 1) = 10;
    *(*(a1 + 424) + v4 + 2) = 0;
    return 0;
  }

  return _libssh2_error(a1, 4294967290, "Unable to allocate memory for local banner");
}

uint64_t *libssh2_session_init_ex(void *(*a1)(size_t a1), void (__cdecl *a2)(void *), void *(*a3)(void *a1, size_t a2), uint64_t a4)
{
  v10 = a4;
  if (a1)
  {
    v6 = a1;
    v7 = (a1)(73584, &v10);
  }

  else
  {
    v6 = libssh2_default_alloc;
    v7 = (libssh2_default_alloc)(73584, &v10);
  }

  v8 = v7;
  if (v7)
  {
    if (!a3)
    {
      a3 = libssh2_default_realloc;
    }

    if (!a2)
    {
      a2 = libssh2_default_free;
    }

    bzero(v7, 0x11F70uLL);
    v8[2] = a3;
    v8[3] = a2;
    v8[12] = _libssh2_send;
    v8[13] = _libssh2_recv;
    *v8 = v10;
    v8[1] = v6;
    v8[22] = 0;
    *(v8 + 43) = 1;
    v8[9197] = 60;
    *(v8 + 35) = 1;
    _libssh2_init_if_needed();
  }

  return v8;
}

uint64_t libssh2_session_callback_set(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 9)
  {
    return 0;
  }

  v3 = qword_23E22C028[a2];
  v4 = *(a1 + v3);
  *(a1 + v3) = a3;
  return v4;
}

uint64_t _libssh2_wait_socket(uint64_t a1, time_t a2)
{
  v36 = 0;
  *(a1 + 616) = 0;
  result = libssh2_keepalive_send(a1, &v36);
  if (!result)
  {
    v5 = *(a1 + 600);
    if (v5)
    {
      LODWORD(v6) = 1000 * v36;
    }

    else
    {
      LODWORD(v6) = 1000;
    }

    v6 = v6;
    v7 = *(a1 + 176);
    if (v7 < 1 || v36 && v7 >= v6)
    {
      v8 = v6 < 1;
    }

    else
    {
      v16 = time(0);
      v17 = difftime(v16, a2) * 1000.0;
      v18 = *(a1 + 176);
      v6 = v18 - v17;
      if (v18 < v17)
      {
        v15 = "API timeout expired";
        return _libssh2_error(a1, 4294967287, v15);
      }

      v8 = 0;
    }

    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19[0] = v6 / 1000;
    v19[1] = 1000 * (v6 % 1000);
    if (v5)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v10 = *(a1 + 592);
      v9 = &v28;
      if (__darwin_check_fd_set_overflow(v10, &v28, 0))
      {
        *(&v28 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
      }
    }

    if ((v5 & 2) != 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = *(a1 + 592);
      v11 = &v20;
      if (__darwin_check_fd_set_overflow(v12, &v20, 0))
      {
        *(&v20 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    v14 = select(*(a1 + 592) + 1, v9, v11, 0, v13);
    if (v14)
    {
      if ((v14 & 0x80000000) == 0)
      {
        return 0;
      }

      v15 = "Error waiting on socket";
    }

    else
    {
      v15 = "Timed out waiting on socket";
    }

    return _libssh2_error(a1, 4294967287, v15);
  }

  return result;
}

uint64_t libssh2_session_handshake(uint64_t a1, int a2)
{
  v4 = a1 + 69632;
  v5 = time(0);
  v6 = a1 + 70724;
  while (1)
  {
    v7 = *(v4 + 1384);
    result = 4294967262;
    if (v7 <= 3)
    {
      if (v7)
      {
        if (v7 != 2)
        {
          if (v7 != 3)
          {
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_18;
      }

      if (a2 == -1)
      {
        v14 = a1;
        v13 = 4294967251;
        v15 = "Bad socket provided";
      }

      else
      {
        *(a1 + 592) = a2;
        v9 = fcntl(a2, 3, 0);
        *(a1 + 604) = (v9 & 4) == 0;
        if ((v9 & 4) != 0 || (v10 = *(a1 + 592), v11 = fcntl(v10, 3, 0), v12 = fcntl(v10, 4, v11 | 4u), !v12))
        {
          *(v4 + 1384) = 2;
LABEL_18:
          if (*(v4 + 1088))
          {
            v16 = "SSH-2.0-libssh2_1.11.0\r\n";
            v17 = 24;
          }

          else
          {
            v16 = *(a1 + 424);
            if (v16)
            {
              v17 = strlen(*(a1 + 424));
            }

            else
            {
              v16 = "SSH-2.0-libssh2_1.11.0\r\n";
              v17 = 24;
            }

            *(v4 + 1088) = 2;
          }

          *(a1 + 600) &= ~2u;
          v18 = (*(a1 + 96))(*(a1 + 592), &v16[*(v4 + 1352)], v17 - *(v4 + 1352), (*(a1 + 132) == 0) << 19, a1);
          v19 = *(v4 + 1352);
          if (v18 == v17 - v19)
          {
            *(v4 + 1352) = 0;
            *(v4 + 1384) = 3;
            *(v4 + 1088) = 0;
LABEL_27:
            while (2)
            {
              if (*(v4 + 1088))
              {
                v20 = *(v4 + 1352);
                if (v20 > 0xFF)
                {
                  goto LABEL_45;
                }

                goto LABEL_29;
              }

              v20 = 0;
              *(v4 + 1088) = 2;
              do
              {
                v33 = 0;
                *(a1 + 600) &= ~1u;
                v21 = (*(a1 + 104))(*(a1 + 592), &v33, 1, (*(a1 + 132) == 0) << 19, a1);
                if (v21 < 0)
                {
                  if (v21 == -35)
                  {
                    *(a1 + 600) = 1;
                    *(v4 + 1352) = v20;
                    v13 = 4294967259;
                  }

                  else
                  {
                    *(v4 + 1088) = 0;
                    *(v4 + 1352) = 0;
                    v13 = 4294967253;
                  }

                  goto LABEL_63;
                }

                if (!v21)
                {
                  *(a1 + 596) = -1;
                  v13 = 4294967283;
                  goto LABEL_63;
                }

                v22 = v33 == 13 || v33 == 10;
                v23 = v22;
                if (v20 || !v23)
                {
                  if (!v33)
                  {
                    *(v4 + 1088) = 0;
                    *(v4 + 1352) = 0;
                    v13 = 4294967294;
                    goto LABEL_63;
                  }

                  *(v6 + v20++) = v33;
                }

                else
                {
                  v20 = 0;
                }

                if (v20 >= 0x100)
                {
                  break;
                }

LABEL_29:
                ;
              }

              while (!v20 || *(v20 + v6 - 1) != 10);
LABEL_45:
              while (1)
              {
                v24 = *(a1 + 70723 + v20);
                if (v24 != 13 && v24 != 10)
                {
                  break;
                }

                if (!--v20)
                {
                  *(v4 + 1088) = 0;
                  *(v4 + 1352) = 0;
                  v13 = 4294967294;
                  goto LABEL_75;
                }
              }

              *(v4 + 1088) = 0;
              *(v4 + 1352) = 0;
              v26 = *(a1 + 312);
              if (v26)
              {
                (*(a1 + 24))(v26, a1);
              }

              v27 = (*(a1 + 8))(v20 + 1, a1);
              *(a1 + 312) = v27;
              if (v27)
              {
                memcpy(v27, (a1 + 70724), v20);
                *(*(a1 + 312) + v20) = 0;
LABEL_64:
                if (strncmp("SSH-", *(a1 + 312), 4uLL))
                {
                  continue;
                }

                *(v4 + 1384) = 4;
                goto LABEL_66;
              }

              break;
            }

            v13 = _libssh2_error(a1, 4294967290, "Error allocating space for remote banner");
LABEL_63:
            if (!v13)
            {
              goto LABEL_64;
            }

            if (v13 != -37)
            {
LABEL_75:
              v14 = a1;
              v15 = "Failed getting banner";
              goto LABEL_83;
            }

            goto LABEL_85;
          }

          if ((v18 & 0x8000000000000000) == 0 || v18 == -35)
          {
            *(a1 + 600) = 2;
            if (v18 >= 1)
            {
              *(v4 + 1352) = v19 + v18;
            }

            goto LABEL_85;
          }

          *(v4 + 1088) = 0;
          *(v4 + 1352) = 0;
          v14 = a1;
          v13 = 4294967253;
          v15 = "Failed sending banner";
          goto LABEL_83;
        }

        v13 = v12;
        v14 = a1;
        v15 = "Failed changing socket's blocking state to non-blocking";
      }

LABEL_83:
      result = _libssh2_error(v14, v13, v15);
      goto LABEL_84;
    }

    if (v7 > 5)
    {
      if (v7 != 6)
      {
        if (v7 != 7)
        {
          return result;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v7 == 4)
      {
LABEL_66:
        v28 = _libssh2_kex_exchange(a1, 0, a1 + 71088);
        if (v28 == -37)
        {
          goto LABEL_85;
        }

        v13 = v28;
        if (v28)
        {
          v14 = a1;
          v15 = "Unable to exchange encryption keys";
          goto LABEL_83;
        }

        *(v4 + 1384) = 5;
      }

      *(v4 + 1408) = 5;
      _libssh2_htonu32((a1 + 71041), 0xCu);
      *(a1 + 71053) = 1752462689;
      *(a1 + 71045) = *"ssh-userauth";
      *(v4 + 1384) = 6;
    }

    v29 = _libssh2_transport_send(a1, (a1 + 71040), 0x11uLL, 0, 0);
    if (v29 == -37)
    {
      goto LABEL_85;
    }

    v13 = v29;
    if (v29)
    {
      v14 = a1;
      v15 = "Unable to ask for ssh-userauth service";
      goto LABEL_83;
    }

    *(v4 + 1384) = 7;
LABEL_73:
    v30 = _libssh2_packet_require(a1, 6, (a1 + 71024), (a1 + 71032), 0, 0, 0, a1 + 71072);
    if (v30)
    {
      v13 = v30;
      v14 = a1;
      v15 = "Failed to get response to ssh-userauth request";
      goto LABEL_83;
    }

    if (*(a1 + 71032) <= 4uLL)
    {
      v14 = a1;
      v13 = 4294967282;
      v15 = "Unexpected packet length";
      goto LABEL_83;
    }

    v31 = _libssh2_ntohu32((*(v4 + 1392) + 1));
    *(v4 + 1432) = v31;
    v32 = *(v4 + 1392);
    if (v31 == 12 && !strncmp("ssh-userauth", (v32 + 5), 0xCuLL))
    {
      break;
    }

    (*(a1 + 24))(v32, a1);
    *(a1 + 71024) = 0;
    result = _libssh2_error(a1, 4294967282, "Invalid response received from server");
LABEL_84:
    if (result != -37)
    {
      return result;
    }

LABEL_85:
    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v5);
    if (result)
    {
      return result;
    }
  }

  (*(a1 + 24))(v32, a1);
  result = 0;
  *(v4 + 1392) = 0;
  *(v4 + 1384) = 0;
  return result;
}

uint64_t libssh2_session_free(uint64_t a1)
{
  v2 = a1 + 71000;
  v3 = (a1 + 35664);
  v4 = time(0);
  while (2)
  {
    v5 = *(v2 + 752);
    switch(v5)
    {
      case 3:
        goto LABEL_10;
      case 2:
        do
        {
LABEL_6:
          v6 = _libssh2_list_first(a1 + 552);
          if (!v6)
          {
            *(v2 + 752) = 3;
LABEL_10:
            while (1)
            {
              v7 = _libssh2_list_first(a1 + 576);
              if (!v7)
              {
                break;
              }

              if (_libssh2_channel_forward_cancel(v7) == -37)
              {
                goto LABEL_12;
              }
            }

            *(v2 + 752) = 4;
            goto LABEL_16;
          }
        }

        while (_libssh2_channel_free(v6) != -37);
LABEL_12:
        if (*(a1 + 172))
        {
          result = _libssh2_wait_socket(a1, v4);
          if (!result)
          {
            continue;
          }
        }

        else
        {
          return 4294967259;
        }

        break;
      case 0:
        *(v2 + 752) = 2;
        goto LABEL_6;
      default:
LABEL_16:
        if ((*(a1 + 128) & 2) != 0)
        {
          v9 = *(a1 + 184);
          if (v9)
          {
            v10 = *(v9 + 64);
            if (v10)
            {
              v10(a1, a1 + 192);
            }
          }

          v11 = *(a1 + 448);
          if (v11)
          {
            v12 = *(v11 + 56);
            if (v12)
            {
              v12(a1, a1 + 456);
            }
          }

          v13 = *(a1 + 488);
          if (v13)
          {
            v14 = *(v13 + 40);
            if (v14)
            {
              v14(a1, 1, a1 + 496);
            }
          }

          v15 = *(a1 + 464);
          if (v15)
          {
            v16 = *(v15 + 32);
            if (v16)
            {
              v16(a1, a1 + 480);
            }
          }

          v17 = *(a1 + 336);
          if (v17)
          {
            v18 = *(v17 + 56);
            if (v18)
            {
              v18(a1, a1 + 344);
            }
          }

          v19 = *(a1 + 376);
          if (v19)
          {
            v20 = *(v19 + 40);
            if (v20)
            {
              v20(a1, 0, a1 + 384);
            }
          }

          v21 = *(a1 + 352);
          if (v21)
          {
            v22 = *(v21 + 32);
            if (v22)
            {
              v22(a1, a1 + 368);
            }
          }

          v23 = *(a1 + 160);
          if (v23)
          {
            (*(a1 + 24))(v23, a1);
          }
        }

        v24 = *(a1 + 312);
        if (v24)
        {
          (*(a1 + 24))(v24, a1);
        }

        v25 = *(a1 + 424);
        if (v25)
        {
          (*(a1 + 24))(v25, a1);
        }

        v26 = *(a1 + 112);
        if (v26)
        {
          (*(a1 + 24))(v26, a1);
        }

        v27 = *(a1 + 120);
        if (v27)
        {
          (*(a1 + 24))(v27, a1);
        }

        v28 = *(a1 + 432);
        if (v28)
        {
          (*(a1 + 24))(v28, a1);
        }

        v29 = *(a1 + 504);
        if (v29)
        {
          (*(a1 + 24))(v29, a1);
        }

        v30 = *(a1 + 512);
        if (v30)
        {
          (*(a1 + 24))(v30, a1);
        }

        v31 = *(a1 + 520);
        if (v31)
        {
          (*(a1 + 24))(v31, a1);
        }

        v32 = *(a1 + 528);
        if (v32)
        {
          (*(a1 + 24))(v32, a1);
        }

        v33 = *(a1 + 320);
        if (v33)
        {
          (*(a1 + 24))(v33, a1);
        }

        v34 = *(a1 + 392);
        if (v34)
        {
          (*(a1 + 24))(v34, a1);
        }

        v35 = *(a1 + 400);
        if (v35)
        {
          (*(a1 + 24))(v35, a1);
        }

        v36 = *(a1 + 408);
        if (v36)
        {
          (*(a1 + 24))(v36, a1);
        }

        v37 = *(a1 + 416);
        if (v37)
        {
          (*(a1 + 24))(v37, a1);
        }

        v38 = *(a1 + 296);
        if (v38)
        {
          (*(a1 + 24))(v38, a1);
        }

        v39 = *(a1 + 304);
        if (v39)
        {
          (*(a1 + 24))(v39, a1);
        }

        if (*v2)
        {
          (*(a1 + 24))(*v2, a1);
        }

        v40 = *(v2 + 24);
        if (v40)
        {
          (*(a1 + 24))(v40, a1);
        }

        v41 = *(v2 + 1056);
        if (v41)
        {
          (*(a1 + 24))(v41, a1);
        }

        v42 = *(v2 + 1072);
        if (v42)
        {
          (*(a1 + 24))(v42, a1);
        }

        v43 = *(v2 + 1096);
        if (v43)
        {
          (*(a1 + 24))(v43, a1);
        }

        v44 = *(v2 + 1120);
        if (v44)
        {
          (*(a1 + 24))(v44, a1);
        }

        v45 = *(v2 + 1168);
        if (v45)
        {
          (*(a1 + 24))(v45, a1);
        }

        v46 = *(v2 + 1184);
        if (v46)
        {
          (*(a1 + 24))(v46, a1);
        }

        v47 = *(v2 + 1152);
        if (v47)
        {
          (*(a1 + 24))(v47, a1);
        }

        v48 = *(v2 + 1224);
        if (v48)
        {
          (*(a1 + 24))(v48, a1);
        }

        v49 = *(v2 + 1240);
        if (v49)
        {
          (*(a1 + 24))(v49, a1);
        }

        v50 = *(v2 + 1256);
        if (v50)
        {
          (*(a1 + 24))(v50, a1);
        }

        v51 = *(v2 + 1304);
        if (v51)
        {
          (*(a1 + 24))(v51, a1);
        }

        v52 = *(v2 + 1320);
        if (v52)
        {
          (*(a1 + 24))(v52, a1);
        }

        v53 = *(v2 + 1360);
        if (v53)
        {
          (*(a1 + 24))(v53, a1);
        }

        v54 = *(v2 + 1424);
        if (v54)
        {
          (*(a1 + 24))(v54, a1);
        }

        v55 = *(v2 + 1440);
        if (v55)
        {
          (*(a1 + 24))(v55, a1);
        }

        v56 = *(v2 + 1464);
        if (v56)
        {
          (*(a1 + 24))(v56, a1);
        }

        v57 = *(v2 + 1504);
        if (v57)
        {
          (*(a1 + 24))(v57, a1);
        }

        v58 = *(v2 + 1552);
        if (v58)
        {
          (*(a1 + 24))(v58, a1);
        }

        v59 = *(v2 + 1944);
        if (v59)
        {
          (*(a1 + 24))(v59, a1);
        }

        v60 = *(v2 + 2272);
        if (v60)
        {
          (*(a1 + 24))(v60, a1);
        }

        v61 = *(v2 + 1896);
        if (v61)
        {
          (*(a1 + 24))(v61, a1);
        }

        if (*v3)
        {
          (*(a1 + 24))(v3[1], a1);
        }

        v62 = _libssh2_list_first(a1 + 536);
        if (v62)
        {
          v63 = v62;
          do
          {
            _libssh2_list_remove(v63);
            (*(a1 + 24))(v63[3], a1);
            (*(a1 + 24))(v63, a1);
            v63 = _libssh2_list_first(a1 + 536);
          }

          while (v63);
        }

        if (*(a1 + 604))
        {
          v64 = *(a1 + 592);
          v65 = fcntl(v64, 3, 0);
          fcntl(v64, 4, v65 & 0xFFFFFFFB);
        }

        v66 = *(a1 + 200);
        if (v66)
        {
          (*(a1 + 24))(v66, a1);
        }

        if (*(a1 + 608))
        {
          if (*(a1 + 620))
          {
            (*(a1 + 24))();
          }
        }

        (*(a1 + 24))(a1, a1);
        return 0;
    }

    return result;
  }
}

uint64_t libssh2_session_disconnect_ex(_DWORD *a1, uint64_t a2, const char *a3, const char *a4)
{
  v6 = a2;
  v8 = a1 + 17408;
  a1[32] &= ~1u;
  v9 = time(0);
  while (1)
  {
    v10 = 0;
    v16 = 0;
    if (v8[531])
    {
      break;
    }

    if (a3)
    {
      v11 = strlen(a3);
      v12 = v11;
      if (!a4)
      {
        if (v11 <= 0x100)
        {
          goto LABEL_16;
        }

LABEL_12:
        v14 = "too long description";
        goto LABEL_13;
      }

      v13 = strlen(a4);
      if (v12 > 0x100)
      {
        goto LABEL_12;
      }

      v10 = v13;
    }

    else
    {
      if (!a4)
      {
        v12 = 0;
LABEL_16:
        v10 = 0;
LABEL_17:
        *(v8 + 300) = v12 + v10 + 13;
        v16 = (a1 + 71761);
        *(v8 + 2128) = 1;
        _libssh2_store_u32(&v16, v6);
        _libssh2_store_str(&v16, a3, v12);
        _libssh2_store_u32(&v16, v10);
        v8[531] = 2;
        break;
      }

      v10 = strlen(a4);
      v12 = 0;
    }

    v14 = "too long language string";
    if (v10 <= 0x100)
    {
      goto LABEL_17;
    }

LABEL_13:
    result = _libssh2_error(a1, 4294967262, v14);
    if (result != -37)
    {
      return result;
    }

LABEL_19:
    if (!a1[43])
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v9);
    if (result)
    {
      return result;
    }
  }

  if (_libssh2_transport_send(a1, a1 + 17940, *(v8 + 300), a4, v10) == -37)
  {
    goto LABEL_19;
  }

  result = 0;
  v8[531] = 0;
  return result;
}

const char *libssh2_session_methods(uint64_t a1, int a2)
{
  if (a2 > 4)
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v2 = 352;
      }

      else if (a2 == 6)
      {
        v2 = 488;
      }

      else
      {
        v2 = 376;
      }

      goto LABEL_20;
    }

    if ((a2 - 8) < 2)
    {
      return "";
    }

    goto LABEL_23;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 448;
    }

    else if (a2 == 3)
    {
      v2 = 336;
    }

    else
    {
      v2 = 464;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v2 = 144;
    goto LABEL_20;
  }

  if (a2 != 1)
  {
LABEL_23:
    v5 = "Invalid parameter specified for method_type";
    v6 = 4294967262;
    goto LABEL_24;
  }

  v2 = 184;
LABEL_20:
  v4 = *(a1 + v2);
  if (v4)
  {
    return *v4;
  }

  v5 = "No method negotiated";
  v6 = 4294967279;
LABEL_24:
  _libssh2_error(a1, v6, v5);
  return 0;
}

uint64_t libssh2_session_last_error(uint64_t a1, const char **a2, _DWORD *a3, int a4)
{
  if (*(a1 + 616))
  {
    if (a2)
    {
      if (*(a1 + 608))
      {
        v8 = *(a1 + 608);
      }

      else
      {
        v8 = "";
      }

      v9 = strlen(v8);
      v10 = v9;
      if (!a4)
      {
        *a2 = v8;
        if (!a3)
        {
          return *(a1 + 616);
        }

        goto LABEL_16;
      }

      v11 = (*(a1 + 8))(v9 + 1, a1);
      *a2 = v11;
      if (v11)
      {
        memcpy(v11, v8, v10);
        (*a2)[v10] = 0;
        if (!a3)
        {
          return *(a1 + 616);
        }

        goto LABEL_16;
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (!a3)
    {
      return *(a1 + 616);
    }

LABEL_16:
    *a3 = v10;
    return *(a1 + 616);
  }

  if (a2)
  {
    if (a4)
    {
      v12 = (*(a1 + 8))(1, a1);
      *a2 = v12;
      if (v12)
      {
        *v12 = 0;
      }
    }

    else
    {
      *a2 = "";
    }
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t libssh2_session_flag(uint64_t a1, int a2, int a3)
{
  if ((a2 - 1) > 2)
  {
    return 4294967262;
  }

  result = 0;
  *(a1 + (4 * (a2 - 1)) + 132) = a3;
  return result;
}

uint64_t _libssh2_session_set_blocking(uint64_t a1, int a2)
{
  v2 = *(a1 + 172);
  *(a1 + 172) = a2;
  return v2;
}

uint64_t libssh2_session_set_read_timeout(uint64_t result, uint64_t a2)
{
  v2 = 60;
  if (a2 >= 1)
  {
    v2 = a2;
  }

  *(result + 73576) = v2;
  return result;
}

uint64_t libssh2_poll_channel_read(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967257;
  }

  v4 = *(a1 + 104);
  result = _libssh2_list_first(v4 + 536);
  if (!result)
  {
    return result;
  }

  v6 = result;
  while (*(v6 + 32) > 4uLL)
  {
    v7 = *(a1 + 48);
    if (v7 == _libssh2_ntohu32((*(v6 + 24) + 1)))
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_11;
        }

        v8 = **(v6 + 24) & 0xFE;
      }

      else
      {
        v8 = **(v6 + 24);
      }

      if (v8 == 94)
      {
        return 1;
      }
    }

LABEL_11:
    result = _libssh2_list_next(v6);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  return _libssh2_error(v4, 4294967258, "Packet too small");
}

uint64_t libssh2_poll(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v47.tv_sec = 0;
  *&v47.tv_usec = 0;
  memset(&v49, 0, sizeof(v49));
  memset(&v48, 0, sizeof(v48));
  v43 = 1;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 16);
    v9 = a2;
    while (1)
    {
      v8[1] = 0;
      v10 = *(v8 - 16);
      switch(v10)
      {
        case 3:
          v16 = *(*(*(v8 - 1) + 24) + 592);
          if (__darwin_check_fd_set_overflow(v16, &v49, 0))
          {
            *(v49.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v16;
          }

          v15 = *(*(v8 - 1) + 24);
          break;
        case 2:
          v14 = *(*(*(v8 - 1) + 104) + 592);
          if (__darwin_check_fd_set_overflow(v14, &v49, 0))
          {
            *(v49.fds_bits + ((v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v14;
          }

          v15 = *(*(v8 - 1) + 104);
          break;
        case 1:
          v11 = *v8;
          if (*v8)
          {
            v12 = *(v8 - 2);
            if (__darwin_check_fd_set_overflow(v12, &v49, 0))
            {
              *(v49.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
            }

            if (*(v8 - 2) > v6)
            {
              v6 = *(v8 - 2);
            }

            v11 = *v8;
          }

          if ((v11 & 4) != 0)
          {
            v13 = *(v8 - 2);
            if (__darwin_check_fd_set_overflow(v13, &v48, 0))
            {
              *(v48.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
            }

            if (*(v8 - 2) > v6)
            {
              v6 = *(v8 - 2);
            }
          }

          goto LABEL_28;
        default:
          if (v7)
          {
            _libssh2_error(v7, 4294967261, "Invalid descriptor passed to libssh2_poll()");
          }

          return 0xFFFFFFFFLL;
      }

      if (*(v15 + 592) > v6)
      {
        v6 = *(v15 + 592);
      }

      if (!v7)
      {
        v7 = v15;
      }

LABEL_28:
      v8 += 4;
      if (!--v9)
      {
        v43 = v6 + 1;
        break;
      }
    }
  }

  v17 = v4;
  v42 = v4;
  do
  {
    v18 = 0;
    if (!v4)
    {
      goto LABEL_62;
    }

    v19 = v17;
    v20 = (a1 + 24);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      if (v22 == *v20)
      {
        goto LABEL_56;
      }

      v23 = *(v20 - 24);
      if (v23 == 3)
      {
        if ((v22 & 1) != 0 && (v21 & 1) == 0)
        {
          v21 = *v20 | (_libssh2_list_first(*(v20 - 2) + 48) != 0);
          *v20 = v21;
        }

        v27 = *(*(v20 - 2) + 24);
      }

      else
      {
        if (v23 != 2)
        {
          v22 = *v20;
          goto LABEL_56;
        }

        if ((v22 & 1) != 0 && (v21 & 1) == 0)
        {
          v24 = libssh2_poll_channel_read(*(v20 - 2), 0);
          v22 = *(v20 - 1);
          v21 = *v20 | (v24 != 0);
          *v20 = v21;
        }

        if ((v22 & 2) != 0 && (v21 & 2) == 0)
        {
          v25 = libssh2_poll_channel_read(*(v20 - 2), 1);
          v22 = *(v20 - 1);
          v21 = *v20 | (2 * (v25 != 0));
          *v20 = v21;
        }

        if ((v22 & 4) != 0 && (v21 & 4) == 0)
        {
          v21 |= 4 * (*(*(v20 - 2) + 56) != 0);
          *v20 = v21;
        }

        v26 = *(v20 - 2);
        if (*(v26 + 84) || *(v26 + 64))
        {
          v21 |= 0x80uLL;
          *v20 = v21;
        }

        v27 = *(v26 + 104);
      }

      v28 = *(v27 + 596);
      v22 = v21;
      if (v28 == -1)
      {
        *v20 = v21 | 0x90;
        v22 = 1;
      }

LABEL_56:
      if (v22)
      {
        v18 = (v18 + 1);
      }

      else
      {
        v18 = v18;
      }

      v20 += 4;
      --v19;
    }

    while (v19);
    if (v18)
    {
      a3 = 0;
    }

LABEL_62:
    *&v46.tv_usec = 0;
    v47.tv_sec = a3 / 1000;
    v47.tv_usec = 1000 * (a3 % 1000);
    *&v45.tv_usec = 0;
    v46.tv_sec = 0;
    v45.tv_sec = 0;
    gettimeofday(&v46, 0);
    v29 = select(v43, &v49, &v48, 0, &v47);
    gettimeofday(&v45, 0);
    tv_sec = v45.tv_sec;
    v30 = v46.tv_sec;
    tv_usec = v45.tv_usec;
    v32 = v46.tv_usec;
    if (v29 >= 1 && v4)
    {
      v33 = 0;
      do
      {
        v34 = (a1 + 32 * v33);
        v35 = *v34;
        switch(v35)
        {
          case 3:
            v39 = *(*(*(v34 + 1) + 24) + 592);
            if (__darwin_check_fd_set_overflow(v39, &v49, 0) && ((*(v49.fds_bits + ((v39 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v39) & 1) != 0)
            {
                ;
              }
            }

            break;
          case 2:
            v38 = *(*(*(v34 + 1) + 104) + 592);
            if (__darwin_check_fd_set_overflow(v38, &v49, 0) && ((*(v49.fds_bits + ((v38 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v38) & 1) != 0)
            {
                ;
              }
            }

            break;
          case 1:
            v36 = *(v34 + 2);
            if (__darwin_check_fd_set_overflow(v36, &v49, 0) && ((*(v49.fds_bits + ((v36 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v36) & 1) != 0)
            {
              *(v34 + 3) |= 1uLL;
            }

            v37 = *(v34 + 2);
            if (__darwin_check_fd_set_overflow(v37, &v48, 0) && ((*(v48.fds_bits + ((v37 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v37) & 1) != 0)
            {
              *(v34 + 3) |= 4uLL;
            }

            if (*(v34 + 3))
            {
              v18 = (v18 + 1);
            }

            else
            {
              v18 = v18;
            }

            break;
        }

        ++v33;
      }

      while (v33 != v17);
    }

    a3 = a3 - 1000 * (tv_sec - v30) + (tv_usec - v32) / -1000;
    v40 = a3 >= 1 && v18 == 0;
    v4 = v42;
  }

  while (v40);
  return v18;
}

uint64_t libssh2_session_banner_get(uint64_t result)
{
  if (result)
  {
    return *(result + 312);
  }

  return result;
}

char ***_libssh2_comp_methods(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return &comp_methods;
  }

  else
  {
    return &no_comp_methods;
  }
}

uint64_t comp_method_none_decomp(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = a5;
  *a3 = a6;
  return 0;
}

uint64_t libssh2_userauth_list(uint64_t a1, const void *a2, unsigned int a3)
{
  v5 = a1 + 69632;
  v6 = time(0);
  v7 = a3 + 27;
  do
  {
    v28 = 3486516;
    v27 = 0;
    v8 = *(v5 + 2416);
    if (v8 == 3)
    {
      goto LABEL_13;
    }

    if (v8 == 2)
    {
      goto LABEL_7;
    }

    if (v8)
    {
      goto LABEL_36;
    }

    *(a1 + 72080) = 0;
    *(a1 + 72064) = v7;
    v9 = (*(a1 + 8))(v7, a1);
    *(a1 + 72056) = v9;
    if (v9)
    {
      v27 = v9 + 1;
      *v9 = 50;
      _libssh2_store_str(&v27, a2, a3);
      _libssh2_store_str(&v27, "ssh-connection", 0xEuLL);
      _libssh2_store_u32(&v27, 4u);
      *(v5 + 2416) = 2;
LABEL_7:
      v10 = _libssh2_transport_send(a1, *(a1 + 72056), *(a1 + 72064), "none", 4uLL);
      if (v10 == -37)
      {
        v11 = a1;
        v12 = 4294967259;
      }

      else
      {
        v13 = v10;
        (*(a1 + 24))(*(a1 + 72056), a1);
        *(a1 + 72056) = 0;
        if (v13)
        {
          v14 = a1;
          v12 = 4294967289;
          v15 = "Unable to send userauth-none request";
          goto LABEL_30;
        }

        *(v5 + 2416) = 3;
LABEL_13:
        v12 = _libssh2_packet_requirev(a1, &v28, (a1 + 72056), (a1 + 72064), 0, 0, 0, (a1 + 72080));
        if (!v12)
        {
          v18 = *(a1 + 72064);
          if (!v18)
          {
            goto LABEL_29;
          }

          v19 = *(a1 + 72056);
          v20 = *v19;
          if (v20 != 53)
          {
            goto LABEL_27;
          }

          if (v18 <= 4)
          {
            goto LABEL_33;
          }

          v21 = _libssh2_ntohu32((v19 + 1));
          if (*(a1 + 72064) - 5 < v21)
          {
            (*(a1 + 24))(*(a1 + 72056), a1);
            *(a1 + 72056) = 0;
            v11 = a1;
            v12 = 4294967255;
            v16 = "Unexpected userauth banner size";
            goto LABEL_17;
          }

          v22 = v21;
          v23 = (*(a1 + 8))(v21 + 1, a1);
          *(v5 + 2440) = v23;
          if (!v23)
          {
            (*(a1 + 24))(*(a1 + 72056), a1);
            *(a1 + 72056) = 0;
            v11 = a1;
            v12 = 4294967290;
            v16 = "Unable to allocate memory for userauth_banner";
            goto LABEL_17;
          }

          memcpy(v23, (*(v5 + 2424) + 5), v22);
          *(*(v5 + 2440) + v22) = 0;
          (*(a1 + 24))(*(v5 + 2424), a1);
          *(v5 + 2424) = 0;
          BYTE2(v28) = 0;
          v12 = _libssh2_packet_requirev(a1, &v28, (a1 + 72056), (a1 + 72064), 0, 0, 0, (a1 + 72080));
          if (!v12)
          {
            v18 = *(a1 + 72064);
            if (v18)
            {
              v19 = *(a1 + 72056);
              v20 = *v19;
LABEL_27:
              if (v20 != 52)
              {
                if (v18 > 4)
                {
                  v24 = _libssh2_ntohu32((v19 + 1));
                  if (*(a1 + 72064) - 5 > v24)
                  {
                    v25 = v24;
                    memmove(*(a1 + 72056), (*(a1 + 72056) + 5), v24);
                    *(*(a1 + 72056) + v25) = 0;
LABEL_36:
                    *(v5 + 2416) = 0;
                    result = *(v5 + 2424);
                    goto LABEL_37;
                  }

                  v11 = a1;
                  v12 = 4294967255;
                  v16 = "Unexpected userauth list size";
                  goto LABEL_17;
                }

LABEL_33:
                (*(a1 + 24))();
                *(a1 + 72056) = 0;
                v11 = a1;
                v12 = 4294967282;
                v16 = "Unexpected packet size";
                goto LABEL_17;
              }

              _libssh2_error(a1, 0, "No error");
              (*(a1 + 24))(*(v5 + 2424), a1);
              result = 0;
              *(v5 + 2424) = 0;
              *(a1 + 128) |= 4u;
LABEL_31:
              *(v5 + 2416) = 0;
              goto LABEL_37;
            }

LABEL_29:
            v14 = a1;
            v15 = "Failed getting response";
LABEL_30:
            _libssh2_error(v14, v12, v15);
            result = 0;
            goto LABEL_31;
          }
        }

        if (v12 != -37)
        {
          goto LABEL_29;
        }

        v11 = a1;
      }

      v16 = "Would block requesting userauth list";
      goto LABEL_17;
    }

    v11 = a1;
    v12 = 4294967290;
    v16 = "Unable to allocate memory for userauth_list";
LABEL_17:
    _libssh2_error(v11, v12, v16);
    result = 0;
LABEL_37:
    if (!*(a1 + 172) || result)
    {
      return result;
    }
  }

  while (libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v6));
  return 0;
}

uint64_t libssh2_userauth_banner(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = *(a1 + 72072);
  if (!v2)
  {
    return _libssh2_error(a1, 4294967246, "Missing userauth banner");
  }

  result = 0;
  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t libssh2_userauth_password_ex(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1 + 69632;
  v13 = time(0);
  __n = a3;
  v39 = a5;
  v35 = a5;
  v14 = a3 + a5;
  v15 = a2;
  v16 = a4;
  v17 = v13;
  v36 = a3 + 40;
  v37 = (v14 + 44);
  while (1)
  {
    v40 = 0;
    v18 = *(v12 + 2456);
    if (v18 != 2)
    {
      if (v18)
      {
        if ((v18 - 3) >= 3)
        {
          v25 = *(a1 + 72096);
LABEL_10:
          (*(a1 + 24))(v25, a1);
          *(v12 + 2464) = 0;
          *(v12 + 2456) = 0;
          v22 = a1;
          v23 = 4294967278;
          v24 = "Authentication failed";
          goto LABEL_47;
        }

        goto LABEL_15;
      }

      *(v12 + 2504) = 0;
      *(v12 + 2480) = v36;
      *(v12 + 2472) = -61;
      v19 = (*(a1 + 8))();
      *(v12 + 2464) = v19;
      if (!v19)
      {
        v22 = a1;
        v23 = 4294967290;
        v24 = "Unable to allocate memory for userauth-password request";
        goto LABEL_47;
      }

      v40 = (v19 + 1);
      *v19 = 50;
      _libssh2_store_str(&v40, v15, __n);
      _libssh2_store_str(&v40, "ssh-connection", 0xEuLL);
      _libssh2_store_str(&v40, "password", 8uLL);
      v20 = v40;
      v40 = (v40 + 1);
      *v20 = 0;
      _libssh2_store_u32(&v40, v35);
      *(v12 + 2456) = 2;
    }

    v21 = _libssh2_transport_send(a1, *(a1 + 72096), *(a1 + 72112), v16, v39);
    if (v21 == -37)
    {
      v22 = a1;
      v23 = 4294967259;
      v24 = "Would block writing password request";
      goto LABEL_47;
    }

    v26 = v21;
    (*(a1 + 24))(*(a1 + 72096), a1);
    *(a1 + 72096) = 0;
    if (v26)
    {
      *(v12 + 2456) = 0;
      v22 = a1;
      v23 = 4294967289;
      v24 = "Unable to send userauth-password request";
      goto LABEL_47;
    }

    v18 = 3;
    *(v12 + 2456) = 3;
LABEL_15:
    if (v18 != 3)
    {
      if (!*(a1 + 72112))
      {
LABEL_40:
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967282;
        v24 = "Unexpected packet size";
        goto LABEL_47;
      }

      v25 = *(a1 + 72096);
      goto LABEL_23;
    }

    while (1)
    {
      v27 = _libssh2_packet_requirev(a1, "43<", (a1 + 72096), (a1 + 72112), 0, 0, 0, (a1 + 72136));
      if (v27)
      {
        v23 = v27;
        if (v27 != -37)
        {
          *(v12 + 2456) = 0;
        }

        v22 = a1;
        v24 = "Waiting for password response";
        goto LABEL_47;
      }

      if (!*(a1 + 72112))
      {
        goto LABEL_40;
      }

      v25 = *(a1 + 72096);
      v28 = *v25;
      if (v28 == 51)
      {
        (*(a1 + 24))(*(a1 + 72096), a1);
        *(v12 + 2464) = 0;
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967278;
        v24 = "Authentication failed (username/password)";
        goto LABEL_47;
      }

      if (v28 == 52)
      {
        (*(a1 + 24))(*(a1 + 72096), a1);
        result = 0;
        *(v12 + 2464) = 0;
        *(a1 + 128) |= 4u;
        *(v12 + 2456) = 0;
        return result;
      }

      *(v12 + 2488) = 0;
      *(v12 + 2496) = 0;
      v18 = 4;
      *(v12 + 2456) = 4;
LABEL_23:
      if (*v25 != 60 && *(v12 + 2472) != 60)
      {
        goto LABEL_10;
      }

      *(v12 + 2472) = 60;
      if ((v18 & 0xFFFFFFFE) != 4)
      {
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967281;
        v24 = "Password Expired, and no callback specified";
        goto LABEL_47;
      }

      if (v18 == 4)
      {
        (*(a1 + 24))(v25, a1);
        v25 = 0;
        *(a1 + 72096) = 0;
      }

      if (!a6)
      {
        goto LABEL_10;
      }

      v29 = *(v12 + 2456);
      if (v29 != 5)
      {
        break;
      }

LABEL_34:
      v32 = _libssh2_transport_send(a1, v25, *(a1 + 72112), *(a1 + 72120), *(a1 + 72128));
      if (v32 == -37)
      {
        v22 = a1;
        v23 = 4294967259;
        v24 = "Would block waiting";
        goto LABEL_47;
      }

      v33 = v32;
      (*(a1 + 24))(*(a1 + 72096), a1);
      *(a1 + 72096) = 0;
      (*(a1 + 24))(*(a1 + 72120), a1);
      *(a1 + 72120) = 0;
      if (v33)
      {
        v22 = a1;
        v23 = 4294967289;
        v24 = "Unable to send userauth password-change request";
        goto LABEL_47;
      }

      *(v12 + 2456) = 3;
    }

    if (v29 != 4)
    {
      goto LABEL_10;
    }

    a6(a1, a1 + 72120, a1 + 72128, a1);
    if (*(a1 + 72120))
    {
      *(a1 + 72112) = v37;
      v30 = (*(a1 + 8))();
      *(a1 + 72096) = v30;
      v40 = v30;
      if (v30)
      {
        v40 = (v30 + 1);
        *v30 = 50;
        _libssh2_store_str(&v40, v15, __n);
        _libssh2_store_str(&v40, "ssh-connection", 0xEuLL);
        _libssh2_store_str(&v40, "password", 8uLL);
        v31 = v40;
        v40 = (v40 + 1);
        *v31 = 1;
        _libssh2_store_str(&v40, v16, v39);
        _libssh2_store_u32(&v40, *(v12 + 2496));
        *(v12 + 2456) = 5;
        v25 = *(v12 + 2464);
        goto LABEL_34;
      }

      (*(a1 + 24))(*(a1 + 72120), a1);
      *(a1 + 72120) = 0;
      v22 = a1;
      v23 = 4294967290;
      v24 = "Unable to allocate memory for userauth password change request";
    }

    else
    {
      v22 = a1;
      v23 = 4294967281;
      v24 = "Password expired, and callback failed";
    }

LABEL_47:
    result = _libssh2_error(v22, v23, v24);
    if (result != -37)
    {
      return result;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v17);
    if (result)
    {
      return result;
    }
  }
}

uint64_t libssh2_sign_sk(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v6 = *a6;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v7 = *(v6 + 3);
  if (!v7)
  {
    return 4294967284;
  }

  v11 = (*(v6 + 4))(a1, &v21, a4, a5, *v6, *(v6 + 4), *(v6 + 1), *(v6 + 2), v7, *(v6 + 5));
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v22 == 0;
  }

  if (v12 || *(&v21 + 1) == 0)
  {
    v14 = v11;
    *a3 = 0;
    return v14;
  }

  v20 = 0;
  if (!v23 || !*(&v22 + 1))
  {
    *a3 = v22 + 9;
    v17 = (*(a1 + 8))();
    *a2 = v17;
    if (v17)
    {
      v20 = v17;
      _libssh2_store_str(&v20, *(&v21 + 1), v22);
      goto LABEL_18;
    }

LABEL_19:
    v14 = 4294967290;
    goto LABEL_20;
  }

  *a3 = v22 + v23 + 19;
  v15 = (*(a1 + 8))();
  *a2 = v15;
  if (!v15)
  {
    goto LABEL_19;
  }

  v19 = v15;
  v20 = v15;
  _libssh2_store_u32(&v20, 0);
  _libssh2_store_bignum2_bytes(&v20, *(&v21 + 1), v22);
  _libssh2_store_bignum2_bytes(&v20, *(&v22 + 1), v23);
  v16 = v20 - *a2;
  *a3 = v16;
  _libssh2_store_u32(&v19, v16 - 4);
LABEL_18:
  v14 = 0;
LABEL_20:
  if (v20)
  {
    *v20 = v21;
    v20 = (v20 + 1);
    _libssh2_store_u32(&v20, DWORD1(v21));
    *a3 = v20 - *a2;
  }

  (*(a1 + 24))(*(&v21 + 1), a1);
  if (*(&v22 + 1))
  {
    (*(a1 + 24))(*(&v22 + 1), a1);
  }

  return v14;
}

uint64_t libssh2_userauth_hostbased_fromfile_ex(uint64_t a1, const void *a2, unsigned int a3, char *a4, char *a5, void *a6, const void *a7, unsigned int a8, const void *a9, unsigned int a11)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v14 = a1 + 69632;
  v15 = time(0);
  while (1)
  {
    v16 = *(v14 + 2512);
    if (v16 == 3)
    {
      goto LABEL_32;
    }

    if (v16 == 2)
    {
      goto LABEL_28;
    }

    if (v16)
    {
      v20 = *(a1 + 72152);
      goto LABEL_9;
    }

    *v52 = 0;
    v53 = 0;
    v50 = 0;
    *v51 = 0;
    v48 = 0;
    v49 = 0;
    *(a1 + 72208) = 0;
    v17 = (a1 + 72184);
    v18 = (a1 + 72192);
    if (a4)
    {
      v19 = file_read_publickey(a1, v17, v18, v52, &v50, a4);
      if (v19)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = _libssh2_pub_priv_keyfile(a1, v17, v18, v52, &v50, a5, a6);
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v24 = *(v14 + 2560);
    v25 = v50;
    v26 = a8 + a3 + a11 + v24 + v50;
    *(v14 + 2544) = v26 + 52;
    v27 = (*(a1 + 8))(v25 + v24 + v26 + 64, a1);
    *(v14 + 2536) = v27;
    *(v14 + 2568) = v27;
    if (!v27)
    {
      (*(a1 + 24))(*(a1 + 72184), a1);
      *(a1 + 72184) = 0;
      (*(a1 + 24))(*v52, a1);
      v21 = a1;
      v22 = 4294967290;
      v23 = "Out of memory";
      goto LABEL_39;
    }

    *(a1 + 72200) = v27 + 1;
    *v27 = 50;
    _libssh2_store_str((a1 + 72200), a2, a3);
    _libssh2_store_str((a1 + 72200), "ssh-connection", 0xEuLL);
    _libssh2_store_str((a1 + 72200), "hostbased", 9uLL);
    _libssh2_store_str((a1 + 72200), *(a1 + 72184), *(a1 + 72192));
    _libssh2_store_str((a1 + 72200), *v52, v50);
    (*(a1 + 24))(*v52, a1);
    _libssh2_store_str((a1 + 72200), a7, a8);
    _libssh2_store_str((a1 + 72200), a9, a11);
    v28 = file_read_privatekey(a1, &v53, &v48, *(a1 + 72184), *(a1 + 72192), a5, a6);
    if (v28)
    {
      v29 = v28;
      (*(a1 + 24))(*(v14 + 2552), a1);
      *(v14 + 2552) = 0;
      (*(a1 + 24))(*(v14 + 2536), a1);
      *(v14 + 2536) = 0;
      goto LABEL_41;
    }

    _libssh2_htonu32(&v47, *(a1 + 168));
    v54[0] = &v47;
    v54[1] = 4;
    v30 = *(a1 + 168);
    v54[2] = *(a1 + 160);
    v54[3] = v30;
    v31 = *(v14 + 2544);
    v54[4] = *(v14 + 2536);
    v54[5] = v31;
    v32 = v53;
    if (!v53)
    {
      goto LABEL_23;
    }

    v33 = v53[6];
    if (!v33 || !(v33)(a1, v51, &v49, 3, v54, &v48))
    {
      v35 = v32[8];
      if (v35)
      {
        (v35)(a1, &v48);
      }

LABEL_23:
      v36 = v49;
      v37 = *(v14 + 2536);
      if (v49 > v50)
      {
        v38 = v49 + *(v14 + 2544) + *(v14 + 2560);
        if (v37)
        {
          v37 = (*(a1 + 16))(v37, v38 + 12, a1);
          if (v37)
          {
            goto LABEL_26;
          }

LABEL_46:
          (*(a1 + 24))(*v51, a1);
          (*(a1 + 24))(*(v14 + 2536), a1);
          *(v14 + 2536) = 0;
          (*(a1 + 24))(*(v14 + 2552), a1);
          *(v14 + 2552) = 0;
          v21 = a1;
          v22 = 4294967290;
          v23 = "Failed allocating additional space for userauth-hostbased packet";
LABEL_39:
          v19 = _libssh2_error(v21, v22, v23);
LABEL_40:
          v29 = v19;
          goto LABEL_41;
        }

        v37 = (*(a1 + 8))(v38 + 12, a1);
        if (!v37)
        {
          goto LABEL_46;
        }

LABEL_26:
        *(v14 + 2536) = v37;
        v36 = v49;
      }

      *(v14 + 2568) = v37 + *(v14 + 2544);
      _libssh2_store_u32((a1 + 72200), v36 + *(v14 + 2560) + 8);
      _libssh2_store_str((a1 + 72200), *(v14 + 2552), *(v14 + 2560));
      (*(a1 + 24))(*(v14 + 2552), a1);
      *(v14 + 2552) = 0;
      _libssh2_store_str((a1 + 72200), *v51, v49);
      (*(a1 + 24))(*v51, a1);
      *(v14 + 2512) = 2;
LABEL_28:
      v39 = _libssh2_transport_send(a1, *(v14 + 2536), *(v14 + 2568) - *(v14 + 2536), 0, 0);
      if (v39)
      {
        if (v39 != -37)
        {
          (*(a1 + 24))(*(v14 + 2536), a1);
          *(v14 + 2536) = 0;
          *(v14 + 2512) = 0;
          v21 = a1;
          v22 = 4294967289;
          v23 = "Unable to send userauth-hostbased request";
          goto LABEL_39;
        }

LABEL_33:
        v21 = a1;
        v22 = 4294967259;
        v23 = "Would block";
        goto LABEL_39;
      }

      (*(a1 + 24))(*(v14 + 2536), a1);
      *(v14 + 2536) = 0;
      *(v14 + 2512) = 3;
LABEL_32:
      v54[0] = 0;
      v40 = _libssh2_packet_requirev(a1, "43", (a1 + 72152), v54, 0, 0, 0, (a1 + 72208));
      if (v40 == -37)
      {
        goto LABEL_33;
      }

      *(v14 + 2512) = 0;
      if (v40 || !v54[0])
      {
        v21 = a1;
        v22 = 4294967277;
        v23 = "Auth failed";
        goto LABEL_39;
      }

      v20 = *(a1 + 72152);
      if (*v20 == 52)
      {
        (*(a1 + 24))();
        v29 = 0;
        *(a1 + 72152) = 0;
        *(a1 + 128) |= 4u;
        goto LABEL_41;
      }

LABEL_9:
      (*(a1 + 24))(v20, a1);
      *(a1 + 72152) = 0;
      v21 = a1;
      v22 = 4294967277;
      v23 = "Invalid signature for supplied public key, or bad username/public key combination";
      goto LABEL_39;
    }

    (*(a1 + 24))(*(v14 + 2552), a1);
    *(v14 + 2552) = 0;
    (*(a1 + 24))(*(v14 + 2536), a1);
    *(v14 + 2536) = 0;
    v34 = v32[8];
    if (v34)
    {
      (v34)(a1, &v48);
    }

    v29 = 0xFFFFFFFFLL;
LABEL_41:
    if (v29 != -37)
    {
      return v29;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    v41 = _libssh2_wait_socket(a1, v15);
    if (v41)
    {
      return v41;
    }
  }
}

size_t plain_method(char *__s2, size_t __n)
{
  v2 = __n;
  if (!strncmp("ssh-rsa-cert-v01@openssh.com", __s2, __n))
  {
    return 7;
  }

  if (!strncmp("ecdsa-sha2-nistp256-cert-v01@openssh.com", __s2, v2) || !strncmp("ecdsa-sha2-nistp384-cert-v01@openssh.com", __s2, v2) || !strncmp("ecdsa-sha2-nistp521-cert-v01@openssh.com", __s2, v2))
  {
    return 19;
  }

  if (!strncmp("ssh-ed25519-cert-v01@openssh.com", __s2, v2))
  {
    return 11;
  }

  if (!strncmp("sk-ecdsa-sha2-nistp256-cert-v01@openssh.com", __s2, v2))
  {
    qmemcpy(__s2, "sk-ecdsa-sha2-nistp256@openssh.com", 34);
    return 34;
  }

  else if (!strncmp("sk-ssh-ed25519-cert-v01@openssh.com", __s2, v2))
  {
    qmemcpy(__s2, "sk-ssh-ed25519@openssh.com", 26);
    return 26;
  }

  return v2;
}

uint64_t _libssh2_userauth_publickey(uint64_t a1, const void *a2, size_t a3, unsigned int *a4, size_t a5, uint64_t (*a6)(uint64_t, const void **, size_t *, char *, int64_t, uint64_t), uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v10 = a1 + 69632;
  v80 = 3945268;
  v79 = 0;
  v67 = a1 + 69632;
  v68 = a5 - 4;
  v73 = a5 + a3;
  v72 = a5 + 57;
  v11 = *(a1 + 72216);
  v12 = 1;
  while (v11 > 2)
  {
    if (v11 == 3)
    {
      goto LABEL_71;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        v57 = *(v10 + 2640);
        goto LABEL_107;
      }

      goto LABEL_112;
    }

LABEL_76:
    v77 = 0;
    v78 = 0;
    v51 = (*(a1 + 8))(*(v10 + 2616) + (*(a1 + 168) + 4), a1);
    v79 = v51;
    if (!v51)
    {
      v54 = "Unable to allocate memory for userauth-publickey signed data";
      goto LABEL_123;
    }

    v52 = v51;
    _libssh2_store_str(&v79, *(a1 + 160), *(a1 + 168));
    memcpy(v79, *(v10 + 2608), *(v10 + 2616));
    v79 += *(v10 + 2616);
    v53 = a6(a1, &v78, &v77, v52, v79 - v52, v7);
    (*(a1 + 24))(v52, a1);
    if (v53 == -37)
    {
      goto LABEL_109;
    }

    if ((v12 & (v53 == -51)) == 0)
    {
      if (v53)
      {
        (*(a1 + 24))(*(v10 + 2624), a1);
        *(v10 + 2624) = 0;
        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
        *(v10 + 2584) = 0;
        v54 = "Callback returned error";
        goto LABEL_121;
      }

      v58 = *(v10 + 2608);
      if (v77 > v8)
      {
        if (v58)
        {
          v58 = (*(a1 + 16))(v58, v77 + *(v10 + 2616) + *(v10 + 2632) + 12, a1);
        }

        else
        {
          v58 = (*(a1 + 8))(v77 + *(v10 + 2616) + *(v10 + 2632) + 12, a1);
        }

        if (v58)
        {
          *(v10 + 2608) = v58;
          goto LABEL_102;
        }

        (*(a1 + 24))(v78, a1);
        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
        (*(a1 + 24))(*(v10 + 2624), a1);
        *(v10 + 2624) = 0;
        *(v10 + 2584) = 0;
        v54 = "Failed allocating additional space for userauth-publickey packet";
LABEL_123:
        v55 = a1;
        v56 = 4294967290;
        return _libssh2_error(v55, v56, v54);
      }

LABEL_102:
      v79 = (v58 + *(v10 + 2616));
      *(v10 + 2648) = 0;
      v59 = plain_method(*(v10 + 2624), *(v10 + 2632));
      *(v10 + 2632) = v59;
      v60 = *(v10 + 2624);
      if (!strncmp(v60, "sk-ecdsa-sha2-nistp256@openssh.com", v59) || !strncmp(v60, "sk-ssh-ed25519@openssh.com", v59))
      {
        _libssh2_store_u32(&v79, v59 + v77 + 4);
        _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
        memcpy(v79, v78, v77);
        v79 += v77;
      }

      else
      {
        _libssh2_store_u32(&v79, v59 + v77 + 8);
        _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
        _libssh2_store_str(&v79, v78, v77);
      }

      (*(a1 + 24))(*(v10 + 2624), a1);
      *(v10 + 2624) = 0;
      (*(a1 + 24))(v78, a1);
      v57 = v79;
      *(v10 + 2640) = v79;
      *(v10 + 2584) = 5;
LABEL_107:
      v61 = _libssh2_transport_send(a1, *(v10 + 2608), &v57[-*(v10 + 2608)], 0, 0);
      if (v61)
      {
        if (v61 == -37)
        {
LABEL_109:
          v54 = "Would block";
LABEL_110:
          v55 = a1;
          v56 = 4294967259;
          return _libssh2_error(v55, v56, v54);
        }

        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
LABEL_116:
        *(v10 + 2584) = 0;
        v54 = "Unable to send userauth-publickey request";
        v55 = a1;
        v56 = 4294967289;
        return _libssh2_error(v55, v56, v54);
      }

      (*(a1 + 24))(*(v10 + 2608), a1);
      *(v10 + 2608) = 0;
      *(v10 + 2584) = 6;
LABEL_112:
      BYTE2(v80) = 0;
      v62 = _libssh2_packet_requirev(a1, &v80, (a1 + 72224), (a1 + 72232), 0, 0, 0, (a1 + 72288));
      if (v62)
      {
        if (v62 == -37)
        {
          v54 = "Would block requesting userauth list";
          goto LABEL_110;
        }

LABEL_120:
        *(v10 + 2584) = 0;
        v54 = "Waiting for publickey USERAUTH response";
      }

      else
      {
        if (!*(a1 + 72232))
        {
          goto LABEL_120;
        }

        v63 = **(a1 + 72224);
        (*(a1 + 24))();
        *(a1 + 72224) = 0;
        if (v63 == 52)
        {
          v43 = 0;
          goto LABEL_88;
        }

        *(v10 + 2584) = 0;
        v54 = "Invalid signature for supplied public key, or bad username/public key combination";
      }

LABEL_121:
      v55 = a1;
      v56 = 4294967277;
      return _libssh2_error(v55, v56, v54);
    }

    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    (*(a1 + 24))(*(v10 + 2608), a1);
    v11 = 0;
    v12 = 0;
    *(v10 + 2608) = 0;
    *(v10 + 2584) = 0;
  }

  if (v11)
  {
    if (v11 == 2)
    {
      goto LABEL_69;
    }

    goto LABEL_112;
  }

  if (v8 <= 3)
  {
    v54 = "Invalid public key, too short";
    goto LABEL_121;
  }

  *(v10 + 2656) = 0;
  if (!*(v10 + 2624))
  {
    v13 = _libssh2_ntohu32(a4);
    *(v10 + 2632) = v13;
    if (v68 < v13)
    {
      v54 = "Invalid public key";
      goto LABEL_121;
    }

    v14 = (*(a1 + 8))();
    *(v10 + 2624) = v14;
    if (!v14)
    {
      v54 = "Unable to allocate memory for public key data";
      goto LABEL_123;
    }

    memcpy(v14, a4 + 1, *(v10 + 2632));
  }

  __n = v8;
  if ((v12 & 1) == 0)
  {
    goto LABEL_67;
  }

  v15 = _libssh2_supported_key_sign_algorithms(a1, *(v10 + 2624), *(v10 + 2632));
  if (!v15 || !*(a1 + 296))
  {
    goto LABEL_67;
  }

  v16 = v15;
  v65 = v12;
  v17 = strlen(v15);
  v18 = (*(a1 + 8))(v17 + 1, a1);
  if (!v18)
  {
    v43 = _libssh2_error(a1, 4294967290, "Unable to allocate filtered algs");
    goto LABEL_66;
  }

  v19 = v18;
  v20 = *(a1 + 296);
  v21 = v18;
  if (v20)
  {
    v21 = v18;
    do
    {
      if (!*v20)
      {
        break;
      }

      v22 = strchr(v20, 44);
      v23 = v22;
      v24 = v22 ? v22 - v20 : strlen(v20);
      v25 = v16;
      do
      {
        if (!*v25)
        {
          break;
        }

        v26 = strchr(v25, 44);
        v27 = v26;
        if (v26)
        {
          v28 = v26 - v25;
        }

        else
        {
          v28 = strlen(v25);
        }

        if (v28 == v24 && !memcmp(v25, v20, v24))
        {
          v29 = v19;
          if (v21 != v19)
          {
            *v21 = 44;
            v29 = v21 + 1;
          }

          memcpy(v29, v20, v24);
          v21 = &v29[v24];
        }

        v25 = v27 + 1;
      }

      while (v27);
      v20 = v23 + 1;
    }

    while (v23);
  }

  v30 = 0;
  v31 = 0;
  *v21 = 0;
  if (*(a1 + 304))
  {
    v16 = *(a1 + 304);
  }

  v74 = v19;
  do
  {
    if (v31 || !*v16)
    {
      break;
    }

    v32 = strchr(v16, 44);
    v33 = v32;
    if (v32)
    {
      v34 = v32 - v16;
    }

    else
    {
      v34 = strlen(v16);
    }

    v35 = v19;
    v36 = *v19;
    if (!v36)
    {
      v31 = 0;
      goto LABEL_58;
    }

    v37 = v30;
    while (1)
    {
      v38 = strchr(v35, 44);
      v39 = v38;
      if (v38)
      {
        v40 = v38 - v35;
      }

      else
      {
        v40 = strlen(v35);
      }

      if (v40 == v34)
      {
        v31 = v16;
        v30 = v34;
        if (!memcmp(v35, v16, v34))
        {
          goto LABEL_53;
        }
      }

      v31 = 0;
      if (!v39)
      {
        break;
      }

      v36 = v39[1];
      v35 = v39 + 1;
      v30 = v37;
LABEL_53:
      if (!v31)
      {
        v37 = v30;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v30 = v37;
LABEL_58:
    v16 = v33 + 1;
    v19 = v74;
  }

  while (v33);
  if (v31)
  {
    v41 = *(v67 + 2624);
    if (v41)
    {
      (*(a1 + 24))(v41, a1);
    }

    v42 = (*(a1 + 8))(v30, a1);
    v10 = v67;
    *(v67 + 2624) = v42;
    memcpy(v42, v31, v30);
    v43 = 0;
    *(v67 + 2632) = v30;
  }

  else
  {
    v43 = _libssh2_error(a1, 4294967279, "No signing signature matched");
    v10 = v67;
  }

  (*(a1 + 24))(v19, a1);
  v7 = a7;
LABEL_66:
  v12 = v65;
  if (v43)
  {
    return v43;
  }

LABEL_67:
  v44 = *(v10 + 2632);
  *(v10 + 2616) = v73 + v44 + 45;
  v45 = (*(a1 + 8))(v72 + v44 + v73 + v44, a1);
  *(v10 + 2608) = v45;
  v79 = v45;
  if (!v45)
  {
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    v54 = "Out of memory";
    goto LABEL_123;
  }

  v79 = v45 + 1;
  *v45 = 50;
  _libssh2_store_str(&v79, a2, a3);
  _libssh2_store_str(&v79, "ssh-connection", 0xEuLL);
  _libssh2_store_str(&v79, "publickey", 9uLL);
  v46 = v79;
  *(v10 + 2648) = v79;
  v79 = v46 + 1;
  *v46 = 0;
  _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
  v8 = __n;
  _libssh2_store_str(&v79, a4, __n);
  *(v10 + 2584) = 2;
LABEL_69:
  v47 = _libssh2_transport_send(a1, *(v10 + 2608), *(v10 + 2616), 0, 0);
  if (v47)
  {
    if (v47 == -37)
    {
      goto LABEL_109;
    }

    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    goto LABEL_116;
  }

  *(v10 + 2584) = 3;
LABEL_71:
  v48 = _libssh2_packet_requirev(a1, &v80, (a1 + 72224), (a1 + 72232), 0, 0, 0, (a1 + 72288));
  if (v48)
  {
    if (v48 == -37)
    {
      goto LABEL_109;
    }

LABEL_81:
    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    *(v10 + 2584) = 0;
    v54 = "Waiting for USERAUTH response";
    goto LABEL_121;
  }

  if (!*(a1 + 72232))
  {
    goto LABEL_81;
  }

  v49 = v12;
  v50 = **(a1 + 72224);
  (*(a1 + 24))();
  *(a1 + 72224) = 0;
  if (v50 == 51)
  {
    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    *(v10 + 2584) = 0;
    v54 = "Username/PublicKey combination invalid";
    v55 = a1;
    v56 = 4294967278;
    return _libssh2_error(v55, v56, v54);
  }

  if (v50 != 52)
  {
    **(v10 + 2648) = 1;
    *(v10 + 2584) = 4;
    v12 = v49;
    goto LABEL_76;
  }

  (*(a1 + 24))(*(v10 + 2608), a1);
  *(v10 + 2608) = 0;
  (*(a1 + 24))(*(v10 + 2624), a1);
  v43 = 0;
  *(v10 + 2624) = 0;
LABEL_88:
  *(a1 + 128) |= 4u;
  *(v10 + 2584) = 0;
  return v43;
}

uint64_t libssh2_userauth_publickey_frommemory(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, void *a6, unint64_t a7, char *a8)
{
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = "";
  }

  v16 = time(0);
  v26 = a4;
  v27 = a5;
  if (a4)
  {
    v17 = a5 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (a6)
  {
    v19 = a7 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v25 = v20;
  while (1)
  {
    v30 = 0;
    v31 = 0;
    v28 = v29;
    v29[0] = a6;
    v29[1] = v15;
    if (!*(a1 + 72216))
    {
      if (v18)
      {
        v22 = memory_read_publickey(a1, (a1 + 72256), (a1 + 72264), &v31, &v30, v26, v27);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!v25)
        {
          v22 = _libssh2_error(a1, 4294967280, "Invalid data in public and private key.");
LABEL_27:
          v21 = v22;
          goto LABEL_28;
        }

        v22 = _libssh2_pub_priv_keyfilememory(a1, (a1 + 72256), (a1 + 72264), &v31, &v30, a6, a7, v15);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    v21 = _libssh2_userauth_publickey(a1, a2, a3, v31, v30, sign_frommemory, &v28);
    if (v31)
    {
      (*(a1 + 24))(v31, a1);
    }

LABEL_28:
    if (v21 != -37)
    {
      return v21;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    v23 = _libssh2_wait_socket(a1, v16);
    if (v23)
    {
      return v23;
    }
  }
}

uint64_t libssh2_userauth_publickey_fromfile_ex(uint64_t a1, const void *a2, unsigned int a3, char *a4, char *a5, char *a6)
{
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = "";
  }

  v12 = time(0);
  while (1)
  {
    v21 = 0;
    v22 = 0;
    v19 = v20;
    v20[0] = a5;
    v20[1] = v11;
    if (!*(a1 + 72216))
    {
      v14 = (a1 + 72256);
      v15 = (a1 + 72264);
      if (a4)
      {
        v16 = file_read_publickey(a1, v14, v15, &v22, &v21, a4);
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v16 = _libssh2_pub_priv_keyfile(a1, v14, v15, &v22, &v21, a5, v11);
        if (v16)
        {
LABEL_12:
          v13 = v16;
          goto LABEL_13;
        }
      }
    }

    v13 = _libssh2_userauth_publickey(a1, a2, a3, v22, v21, sign_fromfile, &v19);
    if (v22)
    {
      (*(a1 + 24))(v22, a1);
    }

LABEL_13:
    if (v13 != -37)
    {
      return v13;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    v17 = _libssh2_wait_socket(a1, v12);
    if (v17)
    {
      return v17;
    }
  }
}

uint64_t libssh2_userauth_publickey(uint64_t a1, const char *a2, unsigned int *a3, size_t a4, uint64_t (*a5)(uint64_t, const void **, size_t *, char *, int64_t, uint64_t), uint64_t a6)
{
  if (!a1)
  {
    return 4294967257;
  }

  v12 = time(0);
  do
  {
    v13 = strlen(a2);
    result = _libssh2_userauth_publickey(a1, a2, v13, a3, a4, a5, a6);
    if (result != -37)
    {
      break;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v12);
  }

  while (!result);
  return result;
}

uint64_t libssh2_userauth_keyboard_interactive_ex(uint64_t a1, const void *a2, unsigned int a3, void (*a4)(void, void, void, void, void, void, void, uint64_t))
{
  v6 = a1 + 69632;
  v7 = time(0);
  v8 = (a1 + 72376);
  v9 = a3 + 55;
  while (1)
  {
    v41 = 0;
    v10 = *(v6 + 2664);
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        *(v6 + 2712) = 0;
        *(v6 + 2728) = 0;
        *(v6 + 2736) = 0x100000000;
        *v8 = 0;
        *(a1 + 72384) = 0;
        *(v6 + 2760) = 0;
        *(v6 + 2696) = v9;
        v15 = (*(a1 + 8))(v9, a1);
        *(v6 + 2672) = v15;
        if (!v15)
        {
          v17 = a1;
          v18 = 4294967290;
          v19 = "Unable to allocate memory for keyboard-interactive authentication";
          goto LABEL_59;
        }

        v41 = (v15 + 1);
        *v15 = 50;
        _libssh2_store_str(&v41, a2, a3);
        _libssh2_store_str(&v41, "ssh-connection", 0xEuLL);
        _libssh2_store_str(&v41, "keyboard-interactive", 0x14uLL);
        _libssh2_store_u32(&v41, 0);
        _libssh2_store_u32(&v41, 0);
        *(v6 + 2664) = 2;
      }

      v16 = _libssh2_transport_send(a1, *(v6 + 2672), *(v6 + 2696), 0, 0);
      if (v16)
      {
        if (v16 != -37)
        {
          (*(a1 + 24))(*(v6 + 2672), a1);
          *(v6 + 2672) = 0;
          *(v6 + 2664) = 0;
          v17 = a1;
          v18 = 4294967289;
          v19 = "Unable to send keyboard-interactive request";
          goto LABEL_59;
        }

LABEL_41:
        v17 = a1;
        v18 = 4294967259;
        v19 = "Would block";
        goto LABEL_59;
      }

      (*(a1 + 24))(*(a1 + 72304), a1);
      *(a1 + 72304) = 0;
LABEL_38:
      *(v6 + 2664) = 3;
      goto LABEL_39;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_39:
    v28 = _libssh2_packet_requirev(a1, "43<", (a1 + 72304), (a1 + 72312), 0, 0, 0, (a1 + 72392));
    if (v28)
    {
      if (v28 == -37)
      {
        goto LABEL_41;
      }

LABEL_55:
      *(v6 + 2664) = 0;
      v17 = a1;
      v18 = 4294967278;
      v19 = "Waiting for keyboard USERAUTH response";
      goto LABEL_59;
    }

    if (!*(a1 + 72312))
    {
      goto LABEL_55;
    }

    v29 = **(a1 + 72304);
    if (v29 != 51)
    {
      break;
    }

    (*(a1 + 24))();
    *(v6 + 2672) = 0;
    *(v6 + 2664) = 0;
    v17 = a1;
    v18 = 4294967278;
    v19 = "Authentication failed (keyboard-interactive)";
LABEL_59:
    result = _libssh2_error(v17, v18, v19);
    if (result != -37)
    {
      return result;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v7);
    if (result)
    {
      return result;
    }
  }

  if (v29 != 52)
  {
    if ((userauth_keyboard_interactive_decode_info_request(a1) & 0x80000000) == 0)
    {
      a4(*(v6 + 2712), *(v6 + 2704), *(v6 + 2728), *(v6 + 2720), *(v6 + 2736), *(v6 + 2744), *(v6 + 2752), a1);
      *(v6 + 2696) = 5;
      v30 = *(v6 + 2736);
      if (v30)
      {
        v31 = (*(v6 + 2752) + 8);
        v32 = 5;
        while (1)
        {
          v34 = *v31;
          v31 += 4;
          v33 = v34;
          if (-5 - v32 < v34)
          {
            break;
          }

          v32 += v33 + 4;
          *(v6 + 2696) = v32;
          if (!--v30)
          {
            goto LABEL_50;
          }
        }

LABEL_63:
        v12 = a1;
        v13 = 4294967290;
        v14 = "Unable to allocate memory for keyboard-interactive response packet";
        goto LABEL_11;
      }

LABEL_50:
      (*(a1 + 24))(*(v6 + 2672), a1);
      v35 = (*(a1 + 8))(*(v6 + 2696), a1);
      v41 = v35;
      *(v6 + 2672) = v35;
      if (!v35)
      {
        goto LABEL_63;
      }

      *v35 = 61;
      v41 = (v41 + 1);
      _libssh2_store_u32(&v41, *(v6 + 2736));
      if (*(v6 + 2736))
      {
        v36 = 0;
        v37 = 0;
        do
        {
          _libssh2_store_str(&v41, *(*(v6 + 2752) + v36), *(*(v6 + 2752) + v36 + 8));
          ++v37;
          v36 += 16;
        }

        while (v37 < *(v6 + 2736));
      }

      *(v6 + 2664) = 4;
LABEL_8:
      v11 = _libssh2_transport_send(a1, *(v6 + 2672), *(v6 + 2696), 0, 0);
      if (v11)
      {
        if (v11 == -37)
        {
          goto LABEL_41;
        }

        v12 = a1;
        v13 = 4294967289;
        v14 = "Unable to send userauth-keyboard-interactive request";
LABEL_11:
        _libssh2_error(v12, v13, v14);
      }

      else
      {
        *(v6 + 2740) = 0;
      }
    }

LABEL_18:
    (*(a1 + 24))(*(a1 + 72304), a1);
    v20 = 0;
    *(a1 + 72304) = 0;
    if (*v8)
    {
      if (*(v6 + 2736))
      {
        v21 = 0;
        v22 = 0;
        v20 = *v8;
        do
        {
          (*(a1 + 24))(*(v20 + v21), a1);
          v20 = *(v6 + 2744);
          *(v20 + v21) = 0;
          ++v22;
          v21 += 24;
        }

        while (v22 < *(v6 + 2736));
      }

      else
      {
        v20 = *v8;
      }
    }

    v23 = *(v6 + 2752);
    if (v23 && *(v6 + 2736))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        (*(a1 + 24))(*(v23 + v24), a1);
        v23 = *(v6 + 2752);
        *(v23 + v24) = 0;
        ++v25;
        v24 += 16;
      }

      while (v25 < *(v6 + 2736));
      v20 = *v8;
    }

    if (v20)
    {
      (*(a1 + 24))(v20, a1);
      *(v6 + 2744) = 0;
      v23 = *(v6 + 2752);
    }

    if (v23)
    {
      (*(a1 + 24))(v23, a1);
      *(v6 + 2752) = 0;
    }

    v26 = *(v6 + 2712);
    if (v26)
    {
      (*(a1 + 24))(v26, a1);
      *(v6 + 2712) = 0;
    }

    v27 = *(v6 + 2728);
    if (v27)
    {
      (*(a1 + 24))(v27, a1);
      *(v6 + 2728) = 0;
    }

    if (*(v6 + 2740))
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_66;
    }

    goto LABEL_38;
  }

  (*(a1 + 24))();
  result = 0;
  *(a1 + 72304) = 0;
  *(a1 + 128) |= 4u;
LABEL_66:
  *(v6 + 2664) = 0;
  return result;
}