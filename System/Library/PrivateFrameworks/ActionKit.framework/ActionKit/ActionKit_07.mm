uint64_t sub_23DEEE204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_23E1FD03C();
  v3[10] = v4;
  OUTLINED_FUNCTION_8(v4);
  v3[11] = v5;
  v3[12] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FCDFC();
  v3[13] = v6;
  OUTLINED_FUNCTION_8(v6);
  v3[14] = v7;
  v3[15] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FBC1C();
  v3[16] = v8;
  OUTLINED_FUNCTION_8(v8);
  v3[17] = v9;
  v3[18] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  v3[19] = sub_23E1FDEBC();
  v11 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEEE384, v11, v10);
}

uint64_t sub_23DEEE384()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 72);

  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = *MEMORY[0x277CFC140];
  (*(v3 + 8))(v1, v2);
  if (v5 != v6)
  {
    sub_23E1FCD4C();
    sub_23DEEF790();
    OUTLINED_FUNCTION_1_18();
    sub_23E1FCD6C();
    if (v5)
    {
      sub_23E1FCB9C();
      v7 = v5;
      v8 = sub_23E1FD02C();
      v9 = sub_23E1FE1BC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = v5;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_23DE30000, v8, v9, "Failed to create safety source, error: %@", v10, 0xCu);
        sub_23DE8B994(v11);
        MEMORY[0x23EF074C0](v11, -1, -1);
        MEMORY[0x23EF074C0](v10, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    }

    else
    {
      v15 = *(v0 + 112);
      v14 = *(v0 + 120);
      v16 = *(v0 + 104);
      v17 = *(v0 + 72);
      v18 = swift_task_alloc();
      *(v18 + 16) = *(v0 + 56);
      *(v18 + 32) = v17;
      sub_23E1FCE1C();

      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      sub_23E1FCE0C();
      (*(v15 + 8))(v14, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23DEEE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = a6;
  *(v6 + 104) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  sub_23E1FDECC();
  *(v6 + 96) = sub_23E1FDEBC();
  v8 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEEE700, v8, v7);
}

uint64_t sub_23DEEE700()
{

  if (VCIsInternalBuild())
  {
    sub_23E1FD04C();
    sub_23DEEE8FC();
    OUTLINED_FUNCTION_1_18();
    sub_23E1FD05C();
    if (v0)
    {

      return MEMORY[0x2821FEBD8](v0, "ActionKit/WFBiomeReporting.swift", 32, 1, 98);
    }

    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v4 = *(v1 + 104);
    v5 = *(v1 + 72);
    v12 = *(v1 + 56);
    v6 = sub_23E1FD0BC();
    v7 = *(v6 - 8);
    v8 = OUTLINED_FUNCTION_42();
    v9 = swift_task_alloc();
    *(v9 + 16) = v12;
    *(v9 + 32) = v5;
    *(v9 + 40) = v3;
    *(v9 + 48) = v4;
    *(v9 + 56) = v2;
    sub_23E1FD0DC();

    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    sub_23E1FD0CC();
    (*(v7 + 8))(v8, v6);

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  v10 = *(v1 + 8);

  return v10();
}

unint64_t sub_23DEEE8FC()
{
  result = qword_27E32D5F8;
  if (!qword_27E32D5F8)
  {
    sub_23E1FD04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5F8);
  }

  return result;
}

uint64_t sub_23DEEE948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v66 = a3;
  v5 = sub_23E1FD03C();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23E1FBC1C();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_23E1FC1DC();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D610, &qword_23E229678);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D618, &qword_23E229680);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D620, &qword_23E229688);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v61 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v61 - v21);
  sub_23DEEF808(a2, &v61 - v21);
  v23 = sub_23E1FBB0C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v24 = *MEMORY[0x277D204E0];
    v25 = sub_23E1FCDBC();
    (*(*(v25 - 8) + 104))(v19, v24, v25);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
    sub_23E1FCDCC();
    goto LABEL_14;
  }

  v61 = v16;
  v26 = *(v23 - 8);
  v27 = (*(v26 + 88))(v22, v23);
  if (v27 != *MEMORY[0x277CFC070])
  {
    if (v27 == *MEMORY[0x277CFC0A0])
    {
      (*(v26 + 96))(v22, v23);
      v31 = *v22;
      v32 = sub_23E1FCDBC();
      if (v31 == 20)
      {
        v33 = MEMORY[0x277D204D8];
      }

      else
      {
        v33 = MEMORY[0x277D204D0];
      }

      (*(*(v32 - 8) + 104))(v19, *v33, v32);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v32);
      sub_23E1FCDCC();
      v30 = MEMORY[0x277D204A8];
      goto LABEL_12;
    }

    if (v27 == *MEMORY[0x277CFC090])
    {
      v34 = *MEMORY[0x277D204D0];
      v35 = sub_23E1FCDBC();
      (*(*(v35 - 8) + 104))(v19, v34, v35);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v35);
      sub_23E1FCDCC();
      v30 = MEMORY[0x277D204A0];
      goto LABEL_12;
    }

    v38 = v61;
    if (v27 == *MEMORY[0x277CFC098])
    {
      v50 = MEMORY[0x277D204D0];
    }

    else
    {
      if (v27 != *MEMORY[0x277CFC0A8])
      {
        if (v27 == *MEMORY[0x277CFC0B0])
        {
          v55 = *MEMORY[0x277D204D0];
          v56 = sub_23E1FCDBC();
          (*(*(v56 - 8) + 104))(v19, v55, v56);
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v56);
          sub_23E1FCDCC();
          v53 = MEMORY[0x277D204C8];
        }

        else if (v27 == *MEMORY[0x277CFC078] || v27 == *MEMORY[0x277CFC080])
        {
          *v19 = 0;
          v57 = *MEMORY[0x277D204E8];
          v58 = sub_23E1FCDBC();
          (*(*(v58 - 8) + 104))(v19, v57, v58);
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v58);
          sub_23E1FCDCC();
          *v38 = 0;
          v53 = MEMORY[0x277D204C0];
        }

        else
        {
          if (v27 != *MEMORY[0x277CFC088])
          {
            goto LABEL_36;
          }

          v59 = *MEMORY[0x277D204D0];
          v60 = sub_23E1FCDBC();
          (*(*(v60 - 8) + 104))(v19, v59, v60);
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v60);
          sub_23E1FCDCC();
          v53 = MEMORY[0x277D204B0];
        }

        goto LABEL_28;
      }

      v50 = MEMORY[0x277D204D8];
    }

    v51 = *v50;
    v52 = sub_23E1FCDBC();
    (*(*(v52 - 8) + 104))(v19, v51, v52);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v52);
    sub_23E1FCDCC();
    v53 = MEMORY[0x277D204A0];
LABEL_28:
    v54 = *v53;
    v37 = sub_23E1FCD7C();
    (*(*(v37 - 8) + 104))(v38, v54, v37);
    goto LABEL_13;
  }

  (*(v26 + 8))(v22, v23);
  v28 = *MEMORY[0x277D204D0];
  v29 = sub_23E1FCDBC();
  (*(*(v29 - 8) + 104))(v19, v28, v29);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v29);
  sub_23E1FCDCC();
  v30 = MEMORY[0x277D204B8];
LABEL_12:
  v36 = *v30;
  v37 = sub_23E1FCD7C();
  v38 = v61;
  (*(*(v37 - 8) + 104))(v61, v36, v37);
LABEL_13:
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
  sub_23E1FCD8C();
LABEL_14:
  v39 = *(sub_23E1FBABC() + 16);

  v40 = sub_23E1FCDDC();
  v41 = MEMORY[0x277D204F8];
  if (v39)
  {
    v41 = MEMORY[0x277D204F0];
  }

  (*(*(v40 - 8) + 104))(v13, *v41, v40);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v40);
  sub_23E1FCDEC();
  sub_23E1FC19C();
  sub_23E1FC0FC();
  (*(v65 + 8))(v10, v67);
  sub_23E1FCD9C();
  v43 = v68;
  v42 = v69;
  (*(v7 + 16))(v68, v70, v69);
  v44 = (*(v7 + 88))(v43, v42);
  if (v44 == *MEMORY[0x277CFC138])
  {
    return sub_23E1FCDAC();
  }

  if (v44 != *MEMORY[0x277CFC140])
  {
    if (v44 == *MEMORY[0x277CFC130])
    {
      return sub_23E1FCDAC();
    }

    while (1)
    {
LABEL_36:
      sub_23E1FE74C();
      __break(1u);
    }
  }

  v45 = v62;
  sub_23E1FCB9C();
  v46 = sub_23E1FD02C();
  v47 = sub_23E1FE1CC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_23DE30000, v46, v47, "We shouldn't hit chatgpt here since it's not supported for safety reporting", v48, 2u);
    MEMORY[0x23EF074C0](v48, -1, -1);
  }

  return (*(v63 + 8))(v45, v64);
}

uint64_t sub_23DEEF460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v24 = a7;
  v7 = sub_23E1FBC1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FB7BC();
  sub_23E1FD09C();
  sub_23E1FB7BC();
  sub_23E1FD07C();
  sub_23E1FD0AC();
  (*(v8 + 16))(v10, v24, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277CFC138])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    MEMORY[0x28223BE20](v12 - 8);
    v14 = &v23 - v13;
    v15 = MEMORY[0x277D21200];
LABEL_7:
    v20 = *v15;
    v21 = sub_23E1FD06C();
    (*(*(v21 - 8) + 104))(v14, v20, v21);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    return sub_23E1FD08C();
  }

  if (v11 == *MEMORY[0x277CFC140])
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    MEMORY[0x28223BE20](v16 - 8);
    v14 = &v23 - v17;
    v15 = MEMORY[0x277D21210];
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x277CFC130])
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    MEMORY[0x28223BE20](v18 - 8);
    v14 = &v23 - v19;
    v15 = MEMORY[0x277D21208];
    goto LABEL_7;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

unint64_t sub_23DEEF790()
{
  result = qword_27E32D608;
  if (!qword_27E32D608)
  {
    sub_23E1FCD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D608);
  }

  return result;
}

uint64_t sub_23DEEF808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEEF88C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)()
{
  OUTLINED_FUNCTION_23();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_23E1FD64C();
  v1[22] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_42();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D630, &qword_23E2296A8);
  OUTLINED_FUNCTION_25(v8);
  v1[25] = OUTLINED_FUNCTION_91();
  v1[26] = swift_task_alloc();
  v9 = sub_23E1FD6AC();
  v1[27] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[28] = v10;
  v1[29] = OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D638, &qword_23E2296B0);
  OUTLINED_FUNCTION_25(v11);
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v12 = sub_23E1FD65C();
  v1[32] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[33] = v13;
  v1[34] = OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D640, &qword_23E2296B8);
  OUTLINED_FUNCTION_25(v14);
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v15 = sub_23E1FD68C();
  v1[39] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[40] = v16;
  v1[41] = OUTLINED_FUNCTION_42();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D648, &qword_23E2296C0);
  OUTLINED_FUNCTION_25(v17);
  v1[42] = OUTLINED_FUNCTION_42();
  v18 = sub_23E1FD67C();
  v1[43] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[44] = v19;
  v1[45] = OUTLINED_FUNCTION_91();
  v1[46] = swift_task_alloc();
  v20 = sub_23E1FD59C();
  v1[47] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[48] = v21;
  v1[49] = OUTLINED_FUNCTION_42();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v22);
  v1[50] = OUTLINED_FUNCTION_42();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v23);
  v1[51] = OUTLINED_FUNCTION_42();
  v24 = sub_23E1FD4EC();
  v1[52] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[53] = v25;
  v1[54] = OUTLINED_FUNCTION_91();
  v1[55] = swift_task_alloc();
  v26 = sub_23E1FD57C();
  v1[56] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[57] = v27;
  v1[58] = OUTLINED_FUNCTION_42();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  OUTLINED_FUNCTION_25(v28);
  v1[59] = OUTLINED_FUNCTION_42();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D668, &unk_23E2296E0);
  OUTLINED_FUNCTION_25(v29);
  v1[60] = OUTLINED_FUNCTION_42();
  v30 = sub_23E1FD6BC();
  v1[61] = v30;
  OUTLINED_FUNCTION_8(v30);
  v1[62] = v31;
  v1[63] = OUTLINED_FUNCTION_91();
  v1[64] = swift_task_alloc();
  v32 = sub_23E1FD3DC();
  v1[65] = v32;
  OUTLINED_FUNCTION_8(v32);
  v1[66] = v33;
  v1[67] = OUTLINED_FUNCTION_91();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_23DEEFDFC()
{
  v1 = [*(v0 + 144) wf_unionValueType];
  *(v0 + 568) = v1;
  if (!v1)
  {
    v16 = sub_23DEF1D18();
    OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v16);
    OUTLINED_FUNCTION_48_5(v17, 9);
    swift_willThrow();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X1, X16 }
  }

  v2 = [v1 memberTypeParametersFromParameterMetadata_];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  *(v0 + 576) = sub_23E1FDDEC();

  *(v0 + 128) = MEMORY[0x277D84FA0];
  v3 = sub_23DE4D8B0();
  *(v0 + 584) = v3;
  if (v3)
  {
    v5 = 0;
    *(v0 + 592) = *MEMORY[0x277D7CD60];
    do
    {
      v6 = *(v0 + 576);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x23EF04DD0](v5);
      }

      else
      {
        if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v3 = *(v6 + 8 * v5 + 32);
      }

      v7 = v3;
      *(v0 + 600) = v3;
      *(v0 + 608) = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return MEMORY[0x2822009F8](v3, v6, v4);
      }

      v8 = *(v0 + 592);
      v9 = [v3 definition];
      *(v0 + 616) = v9;
      if ([v9 objectForKey_])
      {
        sub_23E1FE49C();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      OUTLINED_FUNCTION_201(*(v0 + 64), *(v0 + 48));
      if (v10)
      {
        if (swift_dynamicCast())
        {
          v20 = [*(v0 + 168) key];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_70();

          OUTLINED_FUNCTION_162_0();

          OUTLINED_FUNCTION_170_1();
          v21 = OUTLINED_FUNCTION_58_0();
          MEMORY[0x23EF044F0](v21);

          *(v0 + 624) = *(v0 + 120);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 632) = v22;
          *v22 = v23;
          OUTLINED_FUNCTION_71_2(v22);
          OUTLINED_FUNCTION_48();

          return sub_23DEF1D6C();
        }
      }

      else
      {

        OUTLINED_FUNCTION_149_1();
        v3 = sub_23DE58BD0(v11, v12, v13);
      }

      v5 = *(v0 + 608);
    }

    while (v5 != *(v0 + 584));
  }

  *(v0 + 648) = 0;
  v14 = sub_23E1FDECC();
  *(v0 + 656) = OUTLINED_FUNCTION_195_1(v14);
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3, v6, v4);
}

uint64_t sub_23DEF02C0()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEF03E8()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  (*(v5 + 16))(*(v0 + 544), v3, v6);
  v7 = OUTLINED_FUNCTION_45();
  sub_23DF0380C(v7, v8);

  v9 = *(v5 + 8);
  v9(v4, v6);
  v10 = (v9)(v3, v6);
  v27 = *(v0 + 640);
  while (1)
  {
    while (1)
    {
      v12 = *(v0 + 608);
      v13 = *(v0 + 576);
      if (v12 == *(v0 + 584))
      {

        *(v0 + 648) = v27;
        v21 = sub_23E1FDECC();
        *(v0 + 656) = OUTLINED_FUNCTION_195_1(v21);
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        v10 = OUTLINED_FUNCTION_8_6();

        return MEMORY[0x2822009F8](v10, v13, v11);
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EF04DD0](*(v0 + 608));
      }

      else
      {
        if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v13 + 8 * v12 + 32);
      }

      v14 = v10;
      *(v0 + 600) = v10;
      *(v0 + 608) = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x2822009F8](v10, v13, v11);
      }

      v15 = *(v0 + 592);
      v16 = [v10 definition];
      *(v0 + 616) = v16;
      if ([v16 objectForKey_])
      {
        sub_23E1FE49C();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      OUTLINED_FUNCTION_201(*(v0 + 64), *(v0 + 48));
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_149_1();
      v10 = sub_23DE58BD0(v18, v19, v20);
    }

    if (swift_dynamicCast())
    {
      break;
    }
  }

  v22 = [*(v0 + 168) key];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_70();

  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_170_1();
  v23 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v23);

  *(v0 + 624) = *(v0 + 120);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 632) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_71_2(v24);

  return sub_23DEF1D6C();
}

uint64_t sub_23DEF06FC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 160);

  *(v0 + 664) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEF0778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = v42[83];
  v45 = v42[66];
  v46 = v42[62];
  v47 = v42[57];
  v268 = v42[58];
  v48 = v42[53];
  v49 = [v44 bundleIdentifier];

  v50 = sub_23E1FDC1C();
  v52 = v51;

  sub_23DEF603C(v50, v52);
  v293 = v53;
  v296 = sub_23DE4D8B0();
  v54 = 0;
  v273 = (v45 + 32);
  HIDWORD(a14) = *MEMORY[0x277D72E90];
  v265 = (v48 + 8);
  v55 = v42;
  v266 = (v45 + 8);
  v267 = (v47 + 104);
  v269 = *MEMORY[0x277D72FA0];
  v271 = (v46 + 104);
  v262 = (v46 + 32);
  v263 = v46;
  v56 = v42[81];
  v264 = MEMORY[0x277D84F90];
  v299 = v42;
  while (1)
  {
    if (v296 == v54)
    {

      a37 = v264;
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
      {
        v107 = v55[58];
        v108 = v55[56];
        v110 = v55[48];
        v109 = v55[49];
        v294 = v55[47];
        v297 = v55[61];
        v111 = v55[21];
        v112 = v299[20];
        v113 = [v112 identifier];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_193_0();
        v114 = [v111 key];
        v115 = sub_23E1FDC1C();
        v117 = v116;

        *v107 = v50;
        *(v268 + 8) = v43;
        v107[2] = v115;
        v107[3] = v117;
        (*v267)(v107, *MEMORY[0x277D72E88], v108);
        v118 = v112;
        v55 = v299;
        sub_23DF05F00(v118, &selRef_appBundleIdentifier);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_79_2();
        sub_23E1FD58C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        OUTLINED_FUNCTION_25_5();
        v119 = OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_205(v119, xmmword_23E222340);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0);
        v120 = OUTLINED_FUNCTION_54();
        v121(v120);
        sub_23E1FD4CC();
        (*(v263 + 104))(v117, v269, v297);
        sub_23DE5733C(v119);
        (*(v110 + 8))(v109, v294);
        goto LABEL_23;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v148 = v55[42];
        v149 = v55[43];
        v150 = v55[21];
        sub_23DEF6230(v148);
        OUTLINED_FUNCTION_93(v148, 1, v149);
        if (!v151)
        {
          v153 = v299[21];
          v154 = OUTLINED_FUNCTION_200();
          v155(v154);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          OUTLINED_FUNCTION_37_3();
          v156 = swift_allocObject();
          *(v156 + 16) = xmmword_23E222340;
          OUTLINED_FUNCTION_86_2();
          v157();
          OUTLINED_FUNCTION_148_1();
          v158();
          sub_23DE5733C(v156);

          v55 = v299;
          v159 = OUTLINED_FUNCTION_107_0();
          v160(v159);
          goto LABEL_23;
        }

        v152 = v55[42];

        sub_23DE58BD0(v152, &qword_27E32D648, &qword_23E2296C0);
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_42;
        }
      }

      v161 = OUTLINED_FUNCTION_186_1();
      v162 = [v47 minimumValue];
      v163 = [v47 maximumValue];
      OUTLINED_FUNCTION_202();
      sub_23E1FD66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_37_3();
      v164 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_134_0(v164, xmmword_23E222340);
      OUTLINED_FUNCTION_86_2();
      v165();
      v55 = v299;
      OUTLINED_FUNCTION_148_1();
      v166();
      v167 = v164;
LABEL_39:
      sub_23DE5733C(v167);

      v168 = OUTLINED_FUNCTION_107_0();
      v169(v168);
      goto LABEL_23;
    }

    if ((v293 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x23EF04DD0](v54, v293);
    }

    else
    {
      if (v54 >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v57 = *(v293 + 8 * v54 + 32);
    }

    v50 = v57;
    v43 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v58 = [v57 inputValueType];
    if (v58)
    {
      v59 = v58;
      sub_23E1FE04C();
      if (!v56)
      {
        v70 = v55[67];
        v71 = v55[65];
        v72 = v55[60];
        v286 = v55[61];
        v73 = v55[59];
        v74 = v299[58];
        v75 = v299[56];
        v278 = v299[55];
        v280 = v299[54];
        v284 = v299[52];

        OUTLINED_FUNCTION_64();
        v282 = v71;
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v71);
        (*v273)(v70, v73, v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0);
        *v74 = sub_23E1FE1FC();
        *(v268 + 8) = v79;
        (*v267)(v74, HIDWORD(a14), v75);
        sub_23E1FB7BC();
        sub_23E1FD58C();
        sub_23E1FD77C();
        OUTLINED_FUNCTION_18_0();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
        v84 = [v50 identifier];
        sub_23E1FDC1C();

        sub_23E1FB7BC();
        v55 = v299;
        sub_23E1FD48C();
        sub_23E1FD49C();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
        OUTLINED_FUNCTION_159_1(MEMORY[0x277D84F90]);
        v89 = v70;
        sub_23E1FD4BC();
        v47 = v278;
        sub_23E1FD4DC();
        v90 = *v265;
        v52 = v284;
        (*v265)(v280, v284);
        v90(v278, v284);
        (*v266)(v89, v282);
        (*v271)(v72, v269, v286);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v286);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v286);
        v56 = 0;
        goto LABEL_12;
      }

      v56 = 0;
    }

    v61 = v55[60];
    v60 = v55[61];
    v47 = v55[59];
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    sub_23DE58BD0(v47, &qword_27E32D660, &qword_23E224C60);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v60);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v60);
LABEL_12:
    if (EnumTagSinglePayload == 1)
    {
      sub_23DE58BD0(v55[60], &unk_27E32D668, &unk_23E2296E0);
      ++v54;
    }

    else
    {
      v50 = v262;
      v47 = *v262;
      v94 = OUTLINED_FUNCTION_140_1();
      (v47)(v94);
      v95 = OUTLINED_FUNCTION_36_5();
      (v47)(v95);
      v96 = v264;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D518(v101, v102, v103, v264);
        v96 = v104;
      }

      v98 = *(v96 + 16);
      v97 = *(v96 + 24);
      if (v98 >= v97 >> 1)
      {
        v105 = OUTLINED_FUNCTION_9(v97);
        sub_23DE4D518(v105, v98 + 1, 1, v96);
        v96 = v106;
      }

      *(v96 + 16) = v98 + 1;
      OUTLINED_FUNCTION_50_1();
      v264 = v96;
      (v47)(v96 + v99 + *(v100 + 72) * v98);
      v54 = v43;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v170 = swift_dynamicCastObjCClass();
  if (v170)
  {
    v171 = v170;
    v172 = v55[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_25_5();
    v173 = OUTLINED_FUNCTION_114_0();
    *(v173 + 16) = xmmword_23E222340;
    v174 = v172;
    v175 = [v171 supportedTypes];
    sub_23E1FCC8C();
    v176 = sub_23E1FDDEC();

    *(v55 + v173) = v176;
    v55 = v299;
    OUTLINED_FUNCTION_148_1();
    v177();
    sub_23DE5733C(v173);

    goto LABEL_23;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v178 = swift_dynamicCastObjCClass();
  if (v178)
  {
    v179 = v178;
    v180 = v55[61];
    v161 = v55[21];
    OUTLINED_FUNCTION_202();
    sub_23DEF6304(v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_37_3();
    v182 = OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_134_0(v182, xmmword_23E222340);
    OUTLINED_FUNCTION_86_2();
    v183();
    (*(v263 + 104))(v182 + v179, *MEMORY[0x277D72E80], v180);
    v167 = v182;
    v55 = v299;
    goto LABEL_39;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v184 = v55[38];
    v185 = v55[32];
    v186 = v55[21];
    sub_23DEF6468(v184);
    v187 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v187, v188, v189, v190);
    OUTLINED_FUNCTION_30_6();
    if (!v151)
    {
      v185 = v55[32];
      v197 = OUTLINED_FUNCTION_23_5();
      v198(v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_25_5();
      v199 = OUTLINED_FUNCTION_114_0();
      v200 = OUTLINED_FUNCTION_39_3(v199, xmmword_23E222340);
      v201(v200);
      v202 = OUTLINED_FUNCTION_84_1();
      v203(v202);
      v204 = OUTLINED_FUNCTION_40_4();
      v205(v204);
    }

    v206 = v55[38];
    goto LABEL_60;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v191 = v55[36];
    v185 = v55[32];
    v192 = v55[21];
    sub_23DEF6554(v191);
    v193 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v193, v194, v195, v196);
    OUTLINED_FUNCTION_30_6();
    if (!v151)
    {
      v185 = v55[32];
      v214 = OUTLINED_FUNCTION_23_5();
      v215(v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_25_5();
      v216 = OUTLINED_FUNCTION_114_0();
      v217 = OUTLINED_FUNCTION_39_3(v216, xmmword_23E222340);
      v218(v217);
      v219 = OUTLINED_FUNCTION_84_1();
      v220(v219);
      v221 = OUTLINED_FUNCTION_40_4();
      v222(v221);
    }

    v206 = v55[36];
LABEL_60:
    OUTLINED_FUNCTION_188_1();

    v223 = &qword_27E32D640;
    v224 = &qword_23E2296B8;
LABEL_61:
    sub_23DE58BD0(v206, v223, v224);
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      v207 = v55[31];
      v208 = v55[27];
      v209 = v55[21];
      sub_23DEF6728(v207);
      v210 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v210, v211, v212, v213);
      OUTLINED_FUNCTION_30_6();
      if (!v151)
      {
        v208 = v55[27];
        v233 = OUTLINED_FUNCTION_23_5();
        v234(v233);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        OUTLINED_FUNCTION_25_5();
        v235 = OUTLINED_FUNCTION_114_0();
        v236 = OUTLINED_FUNCTION_39_3(v235, xmmword_23E222340);
        v237(v236);
        v238 = OUTLINED_FUNCTION_84_1();
        v239(v238);
        v240 = OUTLINED_FUNCTION_40_4();
        v241(v240);
      }

      v206 = v55[31];
      OUTLINED_FUNCTION_188_1();

      v223 = &qword_27E32D638;
      v224 = &qword_23E2296B0;
      goto LABEL_61;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v225 = v299[26];
        v226 = v299[22];
        v227 = v299[20];
        v228 = v299[21];
        sub_23DEF67CC(v227, v225);
        v229 = OUTLINED_FUNCTION_107_0();
        sub_23DF05FA0(v229, v230, v231, v232);
        OUTLINED_FUNCTION_30_6();
        if (!v151)
        {
          v226 = v299[22];
          v253 = OUTLINED_FUNCTION_23_5();
          v254(v253);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          OUTLINED_FUNCTION_25_5();
          v255 = OUTLINED_FUNCTION_114_0();
          v256 = OUTLINED_FUNCTION_39_3(v255, xmmword_23E222340);
          v257(v256);
          OUTLINED_FUNCTION_148_1();
          v258();
          v259 = OUTLINED_FUNCTION_40_4();
          v260(v259);
        }

        v55 = v299;
        v206 = v299[26];
        OUTLINED_FUNCTION_188_1();

        v223 = &qword_27E32D630;
        v224 = &qword_23E2296A8;
        goto LABEL_61;
      }

      v55 = v299;
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v242 = swift_dynamicCastObjCClass();
      if (v242)
      {
        v243 = v242;
        v244 = v299[21];
        v245 = [v243 preferredTypes];
        sub_23E1FCC8C();
        v246 = sub_23E1FDDEC();

        v247 = *(v246 + 16);

        if (v247)
        {
          v248 = v299[61];
          v249 = v299[21];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          v250 = OUTLINED_FUNCTION_52_3();
          *(v250 + 16) = xmmword_23E222340;
          v55 = v299;
          v251 = [v243 preferredTypes];

          OUTLINED_FUNCTION_33();
          v252 = sub_23E1FDDEC();

          *(v250 + v52) = v252;
          (*(v263 + 104))(v250 + v52, *MEMORY[0x277D72E68], v248);
          sub_23DE5733C(v250);
        }

        else
        {
          v55 = v299;
          v261 = v299[21];
        }
      }
    }
  }

LABEL_23:
  v122 = v55[66];
  v123 = v55[65];
  v124 = v55[17];
  v125 = swift_allocObject();
  *(v125 + 16) = v55[16];
  *v124 = v125;
  v126 = *(v122 + 104);
  v126(v124, *MEMORY[0x277D72AD8], v123);
  if (*(a37 + 16))
  {
    v127 = v55[65];
    v128 = v55[17];
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D680, &qword_23E2296F8);
    v130 = swift_allocBox();
    v132 = v131;
    v133 = *(v129 + 48);
    (*v273)(v131, v128, v127);
    *(v132 + v133) = a37;
    v55 = v299;
    *v128 = v130;
    v126(v128, *MEMORY[0x277D72AC0], v127);
  }

  else
  {
  }

  v134 = [v55[21] allowsMultipleValues];
  v135 = v55[71];
  if (v134)
  {
    sub_23E1FD3CC();

    v136 = OUTLINED_FUNCTION_54();
    v137(v136);
    OUTLINED_FUNCTION_86_2();
    v138();
  }

  else
  {
  }

  v270 = v55[54];
  v272 = v55[51];
  v274 = v55[50];
  v275 = v55[49];
  v276 = v55[46];
  v277 = v55[45];
  v279 = v55[42];
  v281 = v55[41];
  v283 = v55[38];
  v285 = v55[37];
  v287 = v55[36];
  v288 = v55[35];
  v289 = v55[34];
  v290 = v55[31];
  v291 = v55[30];
  v292 = v55[29];
  v295 = v55[26];
  v298 = v55[25];
  v300 = v55[24];

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v140(v139, v140, v141, v142, v143, v144, v145, v146, a9, v262, v263, v264, v265, a14, v266, v267, v268, v270, v272, v274, v275, v276, v277, v279, v281, v283, v285, v287, v288, v289, v290, v291, v292, v295, v298, v300, a37, a38, a39, a40, a41, a42);
}

void sub_23DEF1B34()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_23DEF1D18()
{
  result = qword_280DAE760[0];
  if (!qword_280DAE760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAE760);
  }

  return result;
}

uint64_t sub_23DEF1D6C()
{
  OUTLINED_FUNCTION_23();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  OUTLINED_FUNCTION_25(v7);
  v1[9] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FD64C();
  v1[10] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_42();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D630, &qword_23E2296A8);
  OUTLINED_FUNCTION_25(v10);
  v1[13] = OUTLINED_FUNCTION_91();
  v1[14] = swift_task_alloc();
  v11 = sub_23E1FD6AC();
  v1[15] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_42();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D638, &qword_23E2296B0);
  OUTLINED_FUNCTION_25(v13);
  v1[18] = OUTLINED_FUNCTION_91();
  v1[19] = swift_task_alloc();
  v14 = sub_23E1FD65C();
  v1[20] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[21] = v15;
  v1[22] = OUTLINED_FUNCTION_42();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D640, &qword_23E2296B8);
  OUTLINED_FUNCTION_25(v16);
  v1[23] = OUTLINED_FUNCTION_91();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v17 = sub_23E1FD68C();
  v1[27] = v17;
  OUTLINED_FUNCTION_8(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_42();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D648, &qword_23E2296C0);
  OUTLINED_FUNCTION_25(v19);
  v1[30] = OUTLINED_FUNCTION_42();
  v20 = sub_23E1FD67C();
  v1[31] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[32] = v21;
  v1[33] = OUTLINED_FUNCTION_91();
  v1[34] = swift_task_alloc();
  v22 = sub_23E1FD59C();
  v1[35] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[36] = v23;
  v1[37] = OUTLINED_FUNCTION_42();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v24);
  v1[38] = OUTLINED_FUNCTION_42();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v25);
  v1[39] = OUTLINED_FUNCTION_42();
  v26 = sub_23E1FD4EC();
  v1[40] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[41] = v27;
  v1[42] = OUTLINED_FUNCTION_91();
  v1[43] = swift_task_alloc();
  v28 = sub_23E1FD57C();
  v1[44] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[45] = v29;
  v1[46] = OUTLINED_FUNCTION_42();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  OUTLINED_FUNCTION_25(v30);
  v1[47] = OUTLINED_FUNCTION_42();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D668, &unk_23E2296E0);
  OUTLINED_FUNCTION_25(v31);
  v1[48] = OUTLINED_FUNCTION_42();
  v32 = sub_23E1FD6BC();
  v1[49] = v32;
  OUTLINED_FUNCTION_8(v32);
  v1[50] = v33;
  v1[51] = OUTLINED_FUNCTION_91();
  v1[52] = swift_task_alloc();
  v34 = sub_23E1FD03C();
  v1[53] = v34;
  OUTLINED_FUNCTION_8(v34);
  v1[54] = v35;
  v1[55] = OUTLINED_FUNCTION_42();
  v36 = sub_23E1FC6BC();
  v1[56] = v36;
  OUTLINED_FUNCTION_8(v36);
  v1[57] = v37;
  v1[58] = OUTLINED_FUNCTION_42();
  v38 = sub_23E1FD3DC();
  v1[59] = v38;
  OUTLINED_FUNCTION_8(v38);
  v1[60] = v39;
  v1[61] = OUTLINED_FUNCTION_91();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v40 = sub_23E1FD46C();
  v1[65] = v40;
  OUTLINED_FUNCTION_8(v40);
  v1[66] = v41;
  v1[67] = OUTLINED_FUNCTION_42();
  v42 = sub_23E1FD41C();
  v1[68] = v42;
  OUTLINED_FUNCTION_8(v42);
  v1[69] = v43;
  v1[70] = OUTLINED_FUNCTION_42();
  v44 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_23DEF2404()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [*(v0 + 32) key];
    v1 = sub_23E1FDC1C();
    v2 = v4;
  }

  *(v0 + 576) = v2;
  *(v0 + 568) = v1;
  v5 = objc_opt_self();
  sub_23E1FB7BC();
  *(v0 + 584) = [v5 defaultContext];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 592) = v6;
  *v6 = v7;
  v6[1] = sub_23DEF2528;

  return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)();
}

uint64_t sub_23DEF2528()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 600) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEF265C(uint64_t a1)
{
  v4 = *(v1 + 560);
  sub_23E1FD3EC();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  *(v1 + 608) = v5;
  if (v5)
  {
    v6 = *(v1 + 56);
    OUTLINED_FUNCTION_49();
    *(v1 + 616) = sub_23E1FDBDC();
    *(v1 + 624) = sub_23E1FDECC();
    *(v1 + 632) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v7 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  *(v1 + 16) = MEMORY[0x277D84F90];
  v10 = &off_278C24000;
  v11 = [*(v1 + 64) preferredTypes];
  OUTLINED_FUNCTION_110_0();
  v12 = sub_23E1FCC8C();
  OUTLINED_FUNCTION_54();
  v13 = sub_23E1FDDEC();

  v14 = *(v13 + 16);

  v15 = MEMORY[0x277D72E68];
  if (v14)
  {
    v16 = *(v1 + 64);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4(v17);
    *(v2 + 16) = xmmword_23E222340;
    v10 = OUTLINED_FUNCTION_218([v16 preferredTypes]);

    *(v2 + v3) = v10;
    v18 = OUTLINED_FUNCTION_58_2();
    v19(v18);
    OUTLINED_FUNCTION_182_0();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_196_1();
    v147 = v20;
    v148 = v21;
    v149 = *(v1 + 280);
    v150 = v22;
    v23 = *(v1 + 56);
    v24 = *(v1 + 32);
    v25 = [v23 identifier];
    v26 = sub_23E1FDC1C();
    v28 = v27;

    v29 = [v24 key];
    v30 = sub_23E1FDC1C();
    v32 = v31;

    *v2 = v26;
    *(v2 + 8) = v28;
    *(v2 + 16) = v30;
    *(v2 + 24) = v32;
    (*(v15 + 13))(v2, *MEMORY[0x277D72E88], v147);
    sub_23DF05F00(v23, &selRef_appBundleIdentifier);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_79_2();
    sub_23E1FD58C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v33 = OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_205(v33, xmmword_23E222340);
    v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
    v15 = v149;
    OUTLINED_FUNCTION_158_1();
    v34(v28, v148, v149);
    sub_23E1FD4CC();
    (*(v12 + 104))(v28, *MEMORY[0x277D72FA0], v150);
    sub_23DE5733C(v33);
    v35 = OUTLINED_FUNCTION_66();
    v36(v35);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v2 = *(v1 + 240);
    v56 = *(v1 + 248);
    v57 = *(v1 + 64);
    sub_23DEF6230(v2);
    OUTLINED_FUNCTION_93(v2, 1, v56);
    if (!v58)
    {
      v15 = *(v1 + 64);
      v61 = OUTLINED_FUNCTION_100_1();
      v62(v61);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v2 = OUTLINED_FUNCTION_34_4(v63);
      *(v2 + 16) = xmmword_23E222340;
      OUTLINED_FUNCTION_73_3();
      v64();
      v65 = OUTLINED_FUNCTION_58_2();
      v66(v65);
      OUTLINED_FUNCTION_182_0();

      v67 = OUTLINED_FUNCTION_50();
      v68(v67);
      goto LABEL_10;
    }

    v59 = *(v1 + 240);

    sub_23DE58BD0(v59, &qword_27E32D648, &qword_23E2296C0);
  }

  v60 = *(v1 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v60 = *(v1 + 64), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v2 = OUTLINED_FUNCTION_74_4();
    v15 = [v10 minimumValue];
    v69 = [v10 maximumValue];
    OUTLINED_FUNCTION_207();
    sub_23E1FD66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v70 = OUTLINED_FUNCTION_52_3();
    *(v70 + 16) = xmmword_23E222340;
    v71 = OUTLINED_FUNCTION_38_5(v70);
    v72(v71);
    (*(v3 + 104))(&v15[v70], *MEMORY[0x277D72E70], v60);
    v73 = v70;
LABEL_25:
    sub_23DE5733C(v73);

    v74 = OUTLINED_FUNCTION_41_4();
    v75(v74);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v76 = swift_dynamicCastObjCClass();
  if (v76)
  {
    v77 = v76;
    v78 = *(v1 + 32);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4(v79);
    *(v2 + 16) = xmmword_23E222340;
    v80 = v78;
    v81 = OUTLINED_FUNCTION_218([v77 supportedTypes]);

    *(v2 + v3) = v81;
    v82 = OUTLINED_FUNCTION_58_2();
    v83(v82);
    OUTLINED_FUNCTION_182_0();

    goto LABEL_10;
  }

  v84 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v2 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_207();
    sub_23DEF6304(v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v15 = OUTLINED_FUNCTION_51_2();
    *(v15 + 1) = xmmword_23E222340;
    OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_73_3();
    v86();
    (*(v3 + 104))(&v15[v84], *MEMORY[0x277D72E80], v10);
    v73 = v15;
    goto LABEL_25;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_213();
    sub_23DEF6468(v12);
    v87 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v87, v88, v89, v90);
    OUTLINED_FUNCTION_29_3();
    if (!v58)
    {
      v15 = *(v1 + 400);
      v2 = *(v1 + 160);
      v95 = OUTLINED_FUNCTION_22_6();
      v96(v95);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v98 = OUTLINED_FUNCTION_14_6(v97);
      v99 = OUTLINED_FUNCTION_7_10(v98, xmmword_23E222340);
      v100(v99);
      v101 = OUTLINED_FUNCTION_44_5();
      v102(v101);
      v103 = OUTLINED_FUNCTION_42_3();
      v104(v103);
    }

    v105 = *(v1 + 208);
LABEL_44:
    OUTLINED_FUNCTION_135_1();

    v120 = &qword_27E32D640;
    v121 = &qword_23E2296B8;
LABEL_45:
    sub_23DE58BD0(v105, v120, v121);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_214();
    sub_23DEF6554(v12);
    v91 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v91, v92, v93, v94);
    OUTLINED_FUNCTION_29_3();
    if (!v58)
    {
      v15 = *(v1 + 400);
      v2 = *(v1 + 160);
      v110 = OUTLINED_FUNCTION_22_6();
      v111(v110);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v113 = OUTLINED_FUNCTION_14_6(v112);
      v114 = OUTLINED_FUNCTION_7_10(v113, xmmword_23E222340);
      v115(v114);
      v116 = OUTLINED_FUNCTION_44_5();
      v117(v116);
      v118 = OUTLINED_FUNCTION_42_3();
      v119(v118);
    }

    v105 = *(v1 + 192);
    goto LABEL_44;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_215();
    sub_23DEF6728(v12);
    v106 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v106, v107, v108, v109);
    OUTLINED_FUNCTION_29_3();
    if (!v58)
    {
      v15 = *(v1 + 400);
      v2 = *(v1 + 120);
      v126 = OUTLINED_FUNCTION_22_6();
      v127(v126);
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v129 = OUTLINED_FUNCTION_14_6(v128);
      v130 = OUTLINED_FUNCTION_7_10(v129, xmmword_23E222340);
      v131(v130);
      v132 = OUTLINED_FUNCTION_44_5();
      v133(v132);
      v134 = OUTLINED_FUNCTION_42_3();
      v135(v134);
    }

    v105 = *(v1 + 152);
    OUTLINED_FUNCTION_135_1();

    v120 = &qword_27E32D638;
    v121 = &qword_23E2296B0;
    goto LABEL_45;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_190_1();
      sub_23DEF67CC(v10, v12);
      v122 = OUTLINED_FUNCTION_50();
      sub_23DF05FA0(v122, v123, v124, v125);
      OUTLINED_FUNCTION_29_3();
      if (!v58)
      {
        v15 = *(v1 + 400);
        v2 = *(v1 + 80);
        v136 = OUTLINED_FUNCTION_22_6();
        v137(v136);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v139 = OUTLINED_FUNCTION_14_6(v138);
        v140 = OUTLINED_FUNCTION_7_10(v139, xmmword_23E222340);
        v141(v140);
        v142 = OUTLINED_FUNCTION_44_5();
        v143(v142);
        v144 = OUTLINED_FUNCTION_42_3();
        v145(v144);
      }

      v105 = *(v1 + 112);
      OUTLINED_FUNCTION_135_1();

      v120 = &qword_27E32D630;
      v121 = &qword_23E2296A8;
      goto LABEL_45;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_175_1();
  if (v37)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    swift_allocBox();
    v15 = v39;
    v40 = *(v38 + 48);
    OUTLINED_FUNCTION_17_5();
    v41();
    *&v15[v40] = v2;
  }

  else
  {

    swift_allocBox();
    OUTLINED_FUNCTION_17_5();
    v42();
  }

  v43 = OUTLINED_FUNCTION_122_0();
  v44(v43);
  v45 = *(v15 + 4);
  OUTLINED_FUNCTION_17_5();
  v45();
  *(v1 + 704) = 0u;
  *(v1 + 696) = v45;
  if ([*(v1 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v46 = OUTLINED_FUNCTION_129_1();
    v47(v46);
    OUTLINED_FUNCTION_73_3();
    v45();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 720) = v48;
  *v48 = v49;
  v50 = OUTLINED_FUNCTION_21_9(v48);

  return sub_23DF00008(v50, v51, v52, v53, v54, v55);
}

uint64_t sub_23DEF3284()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[77];
  v2 = v0[7];

  v0[80] = OUTLINED_FUNCTION_168_1(v3, sel_parameterMetadataForIdentifier_);

  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEF3314()
{
  v4 = *(v1 + 640);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v2 = &off_278C24000;
    v6 = [v4 valueType];
    v7 = [v6 wf_entityValueType];
    *(v1 + 648) = v7;

    if (v7)
    {
      v8 = *(v1 + 56);
      v9 = v7;
      *(v1 + 656) = sub_23E1FDEBC();
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();
LABEL_14:
      OUTLINED_FUNCTION_79_2();

      return MEMORY[0x2822009F8](v48, v49, v50);
    }

    v0 = *(v1 + 640);
    v44 = *(v1 + 608);
    *(v1 + 16) = v5;
    v45 = v44;
    v46 = [v0 valueType];
    *(v1 + 672) = v46;
    if (v46)
    {
      v47 = sub_23E1FDECC();
      *(v1 + 680) = OUTLINED_FUNCTION_195_1(v47);
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();
      goto LABEL_14;
    }

    v10 = *(v1 + 640);
  }

  else
  {
    v10 = 0;
    *(v1 + 16) = MEMORY[0x277D84F90];
  }

  v11 = &off_278C24000;
  v12 = [*(v1 + 64) preferredTypes];
  OUTLINED_FUNCTION_110_0();
  v13 = sub_23E1FCC8C();
  OUTLINED_FUNCTION_54();
  v14 = sub_23E1FDDEC();

  v15 = *(v14 + 16);

  v16 = MEMORY[0x277D72E68];
  if (v15)
  {
    v17 = *(v1 + 64);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4(v18);
    *(v2 + 16) = xmmword_23E222340;
    v11 = OUTLINED_FUNCTION_218([v17 preferredTypes]);

    v16 = MEMORY[0x277D72E68];
    *(v2 + v3) = v11;
    v19 = OUTLINED_FUNCTION_58_2();
    v20(v19);
    OUTLINED_FUNCTION_182_0();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_196_1();
    v157 = v21;
    v158 = v22;
    v159 = *(v1 + 280);
    v160 = v23;
    v156 = *(v1 + 56);
    v24 = *(v1 + 32);
    v25 = [v156 identifier];
    v26 = v10;
    v27 = sub_23E1FDC1C();
    v29 = v28;

    v30 = [v24 key];
    v31 = sub_23E1FDC1C();
    v33 = v32;

    *v2 = v27;
    *(v2 + 8) = v29;
    v10 = v26;
    *(v2 + 16) = v31;
    *(v2 + 24) = v33;
    MEMORY[0xEB9B646EBD858](v2, *MEMORY[0x277D72E88], v157);
    sub_23DF05F00(v156, &selRef_appBundleIdentifier);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_79_2();
    sub_23E1FD58C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v34 = OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_205(v34, xmmword_23E222340);
    v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
    v35 = v159;
    OUTLINED_FUNCTION_158_1();
    v36(v29, v158, v159);
    sub_23E1FD4CC();
    (*(v13 + 104))(v29, *MEMORY[0x277D72FA0], v160);
    sub_23DE5733C(v34);
    v37 = OUTLINED_FUNCTION_66();
    v38(v37);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v11 = v16;
    v2 = *(v1 + 240);
    v65 = *(v1 + 248);
    v66 = *(v1 + 64);
    sub_23DEF6230(v2);
    OUTLINED_FUNCTION_93(v2, 1, v65);
    if (!v67)
    {
      v35 = *(v1 + 64);
      v70 = OUTLINED_FUNCTION_100_1();
      v71(v70);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v2 = OUTLINED_FUNCTION_34_4(v72);
      *(v2 + 16) = xmmword_23E222340;
      OUTLINED_FUNCTION_73_3();
      v73();
      v74 = OUTLINED_FUNCTION_58_2();
      v75(v74);
      OUTLINED_FUNCTION_182_0();

      v76 = OUTLINED_FUNCTION_50();
      v77(v76);
      goto LABEL_10;
    }

    v68 = *(v1 + 240);

    sub_23DE58BD0(v68, &qword_27E32D648, &qword_23E2296C0);
    v16 = v11;
  }

  v69 = *(v1 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v69 = *(v1 + 64), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v2 = OUTLINED_FUNCTION_74_4();
    v35 = [v11 minimumValue];
    v78 = [v11 maximumValue];
    OUTLINED_FUNCTION_207();
    sub_23E1FD66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v79 = OUTLINED_FUNCTION_52_3();
    *(v79 + 16) = xmmword_23E222340;
    v80 = OUTLINED_FUNCTION_38_5(v79);
    v81(v80);
    (*(v3 + 104))(v35 + v79, *MEMORY[0x277D72E70], v69);
    v82 = v79;
LABEL_31:
    sub_23DE5733C(v82);

    v83 = OUTLINED_FUNCTION_41_4();
    v84(v83);
    goto LABEL_10;
  }

  v35 = v16;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v85 = swift_dynamicCastObjCClass();
  if (v85)
  {
    v86 = v85;
    v87 = *(v1 + 32);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4(v88);
    *(v2 + 16) = xmmword_23E222340;
    v89 = v87;
    v90 = OUTLINED_FUNCTION_218([v86 supportedTypes]);

    *(v2 + v3) = v90;
    v91 = OUTLINED_FUNCTION_58_2();
    v92(v91);
    OUTLINED_FUNCTION_182_0();

    goto LABEL_10;
  }

  v93 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v2 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_207();
    sub_23DEF6304(v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v35 = OUTLINED_FUNCTION_51_2();
    *(v35 + 1) = xmmword_23E222340;
    OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_73_3();
    v95();
    (*(v3 + 104))(v35 + v93, *MEMORY[0x277D72E80], v11);
    v82 = v35;
    goto LABEL_31;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_213();
    sub_23DEF6468(v13);
    v96 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v96, v97, v98, v99);
    OUTLINED_FUNCTION_29_3();
    if (!v67)
    {
      v35 = *(v1 + 400);
      v2 = *(v1 + 160);
      v104 = OUTLINED_FUNCTION_22_6();
      v105(v104);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v107 = OUTLINED_FUNCTION_14_6(v106);
      v108 = OUTLINED_FUNCTION_7_10(v107, xmmword_23E222340);
      v109(v108);
      v110 = OUTLINED_FUNCTION_44_5();
      v111(v110);
      v112 = OUTLINED_FUNCTION_42_3();
      v113(v112);
    }

    v114 = *(v1 + 208);
LABEL_50:
    OUTLINED_FUNCTION_135_1();

    v129 = &qword_27E32D640;
    v130 = &qword_23E2296B8;
LABEL_51:
    sub_23DE58BD0(v114, v129, v130);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_214();
    sub_23DEF6554(v13);
    v100 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v100, v101, v102, v103);
    OUTLINED_FUNCTION_29_3();
    if (!v67)
    {
      v35 = *(v1 + 400);
      v2 = *(v1 + 160);
      v119 = OUTLINED_FUNCTION_22_6();
      v120(v119);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v122 = OUTLINED_FUNCTION_14_6(v121);
      v123 = OUTLINED_FUNCTION_7_10(v122, xmmword_23E222340);
      v124(v123);
      v125 = OUTLINED_FUNCTION_44_5();
      v126(v125);
      v127 = OUTLINED_FUNCTION_42_3();
      v128(v127);
    }

    v114 = *(v1 + 192);
    goto LABEL_50;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_215();
    sub_23DEF6728(v13);
    v115 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v115, v116, v117, v118);
    OUTLINED_FUNCTION_29_3();
    if (!v67)
    {
      v35 = *(v1 + 400);
      v2 = *(v1 + 120);
      v135 = OUTLINED_FUNCTION_22_6();
      v136(v135);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v138 = OUTLINED_FUNCTION_14_6(v137);
      v139 = OUTLINED_FUNCTION_7_10(v138, xmmword_23E222340);
      v140(v139);
      v141 = OUTLINED_FUNCTION_44_5();
      v142(v141);
      v143 = OUTLINED_FUNCTION_42_3();
      v144(v143);
    }

    v114 = *(v1 + 152);
    OUTLINED_FUNCTION_135_1();

    v129 = &qword_27E32D638;
    v130 = &qword_23E2296B0;
    goto LABEL_51;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_190_1();
      sub_23DEF67CC(v11, v13);
      v131 = OUTLINED_FUNCTION_50();
      sub_23DF05FA0(v131, v132, v133, v134);
      OUTLINED_FUNCTION_29_3();
      if (!v67)
      {
        v35 = *(v1 + 400);
        v2 = *(v1 + 80);
        v145 = OUTLINED_FUNCTION_22_6();
        v146(v145);
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v148 = OUTLINED_FUNCTION_14_6(v147);
        v149 = OUTLINED_FUNCTION_7_10(v148, xmmword_23E222340);
        v150(v149);
        v151 = OUTLINED_FUNCTION_44_5();
        v152(v151);
        v153 = OUTLINED_FUNCTION_42_3();
        v154(v153);
      }

      v114 = *(v1 + 112);
      OUTLINED_FUNCTION_135_1();

      v129 = &qword_27E32D630;
      v130 = &qword_23E2296A8;
      goto LABEL_51;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_175_1();
  if (v39)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    swift_allocBox();
    v35 = v41;
    v42 = *(v40 + 48);
    OUTLINED_FUNCTION_17_5();
    v43();
    *(v35 + v42) = v2;
  }

  else
  {

    swift_allocBox();
    OUTLINED_FUNCTION_17_5();
    v51();
  }

  v52 = OUTLINED_FUNCTION_122_0();
  v53(v52);
  v54 = v35[4];
  OUTLINED_FUNCTION_17_5();
  v54();
  *(v1 + 712) = 0;
  *(v1 + 704) = v10;
  *(v1 + 696) = v54;
  if ([*(v1 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v55 = OUTLINED_FUNCTION_129_1();
    v56(v55);
    OUTLINED_FUNCTION_73_3();
    v54();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 720) = v57;
  *v57 = v58;
  v59 = OUTLINED_FUNCTION_21_9(v57);

  return sub_23DF00008(v59, v60, v61, v62, v63, v64);
}

uint64_t sub_23DEF3FE4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 608);

  *(v0 + 664) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEF4060()
{
  v74 = v0;
  v1 = *(v0 + 664);
  v2 = [v1 bundleIdentifier];

  v3 = v2;
  if (!v2)
  {
    sub_23E1FDC1C();
    v3 = sub_23E1FDBDC();
  }

  v4 = *(v0 + 648);
  sub_23E1FDC1C();
  v5 = [v4 wf:v3 contentItemClassWithAppBundleIdentifier:?];

  if (!v5 || (swift_getObjCClassMetadata(), sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), !swift_dynamicCastMetatype()))
  {
    v20 = *(v0 + 648);
    v21 = *(v0 + 56);

    sub_23E1FCB9C();
    v22 = v20;
    sub_23E1FB7BC();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1BC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 648);
      v26 = *(v0 + 432);
      v72 = *(v0 + 440);
      v27 = *(v0 + 424);
      v28 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = OUTLINED_FUNCTION_35_0();
      v32 = sub_23DE56B40(v29, v30, v31);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = [v25 identifier];
      v34 = sub_23E1FDC1C();
      v36 = v35;

      v37 = sub_23DE56B40(v34, v36, v73);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_23DE30000, v23, v24, "Missing content item class for: %s.%s, throwing missingLinkParameterContentItem", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v26 + 8))(v72, v27);
    }

    else
    {

      v38 = OUTLINED_FUNCTION_42_3();
      v39(v38);
    }

    v40 = *(v0 + 648);
    v41 = *(v0 + 640);
    v70 = *(v0 + 560);
    v42 = *(v0 + 552);
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(v0 + 520);
    v47 = *(v0 + 56);
    v48 = sub_23DEF1D18();
    OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v48);
    OUTLINED_FUNCTION_48_5(v49, 5);
    swift_willThrow();

    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v70, v43);
    goto LABEL_11;
  }

  v71 = *(v0 + 600);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 448);
  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  *v6 = v10;
  v6[1] = v9;
  (*(v7 + 104))(v6, *MEMORY[0x277D7BE30], v8);
  sub_23DF05FF8(&qword_27E32D740, &unk_280DAE750, 0x277CFC2F8);
  v11 = v9;
  v12 = v10;
  sub_23E1FC6DC();
  sub_23E1FC6CC();
  v13 = *(v0 + 648);
  if (v71)
  {
    v69 = *(v0 + 560);
    v14 = *(v0 + 552);
    v67 = *(v0 + 536);
    v68 = *(v0 + 544);
    v15 = *(v0 + 528);
    v65 = *(v0 + 640);
    v66 = *(v0 + 520);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);
    v18 = *(v0 + 448);
    v19 = *(v0 + 56);

    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v67, v66);
    (*(v14 + 8))(v69, v68);
LABEL_11:
    OUTLINED_FUNCTION_65_1();

    OUTLINED_FUNCTION_19();

    return v50();
  }

  v52 = *(v0 + 480);
  v53 = *(v0 + 56);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));

  v54 = *(v52 + 32);
  OUTLINED_FUNCTION_149_1();
  v54();
  *(v0 + 704) = *(v0 + 640);
  *(v0 + 696) = v54;
  if ([*(v0 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v55 = OUTLINED_FUNCTION_129_1();
    v56(v55);
    OUTLINED_FUNCTION_73_3();
    v54();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 720) = v57;
  *v57 = v58;
  v59 = OUTLINED_FUNCTION_21_9(v57);

  return sub_23DF00008(v59, v60, v61, v62, v63, v64);
}

uint64_t sub_23DEF4768()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 608);

  *(v0 + 688) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEF47E4()
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v1 = v0;
  v2 = *(v0 + 688);
  v3 = *(v1 + 480);
  v4 = *(v1 + 400);
  v5 = *(v1 + 360);
  v232 = *(v1 + 368);
  v6 = *(v1 + 328);
  v7 = [v2 bundleIdentifier];

  v8 = sub_23E1FDC1C();
  v10 = v9;

  sub_23DEF603C(v8, v10);
  v12 = v11;
  v246 = sub_23DE4D8B0();
  v13 = 0;
  v243 = v12 & 0xC000000000000001;
  v234 = v12;
  v241 = v12 & 0xFFFFFFFFFFFFFF8;
  v231 = *MEMORY[0x277D72E90];
  v230 = (v6 + 8);
  v229 = (v3 + 8);
  v233 = *MEMORY[0x277D72FA0];
  v14 = *(v1 + 600);
  v228 = MEMORY[0x277D84F90];
  v248 = v1;
LABEL_2:
  v15 = v234;
  while (1)
  {
    if (v246 == v13)
    {
      v70 = *(v1 + 672);

      *(v1 + 16) = v228;
      v8 = *(v1 + 640);
      v71 = &off_278C24000;
      v72 = [*(v1 + 64) preferredTypes];
      OUTLINED_FUNCTION_110_0();
      sub_23E1FCC8C();
      OUTLINED_FUNCTION_54();
      v73 = sub_23E1FDDEC();

      v74 = *(v73 + 16);

      v13 = &off_23E222000;
      if (v74)
      {
        v75 = *(v1 + 64);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v77 = OUTLINED_FUNCTION_14_6(v76);
        *(v77 + 16) = xmmword_23E222340;
        v78 = [v75 preferredTypes];
        v71 = sub_23E1FDDEC();

        *(v77 + v1) = v71;
        v79 = OUTLINED_FUNCTION_123_0();
        v80(v79);
        sub_23DE5733C(v77);
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
      {
        v81 = *(v1 + 400);
        v82 = *(v1 + 360);
        v83 = *(v1 + 368);
        v240 = *(v1 + 352);
        v242 = *(v1 + 296);
        v244 = *(v1 + 288);
        v245 = *(v1 + 280);
        v247 = *(v1 + 392);
        v84 = *(v1 + 56);
        v85 = *(v1 + 32);
        v86 = [v84 identifier];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_193_0();
        v87 = [v85 key];
        v88 = sub_23E1FDC1C();
        v90 = v89;

        *v83 = v8;
        v83[1] = &off_23E222000;
        v83[2] = v88;
        v83[3] = v90;
        v1 = v248;
        (*(v82 + 104))(v83, *MEMORY[0x277D72E88], v240);
        sub_23DF05F00(v84, &selRef_appBundleIdentifier);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_79_2();
        sub_23E1FD58C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v91 = OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_205(v91, xmmword_23E222340);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0);
        (*(v244 + 16))(v90, v242, v245);
        sub_23E1FD4CC();
        (*(v81 + 104))(v90, v233, v247);
        sub_23DE5733C(v91);
        v92 = OUTLINED_FUNCTION_45();
        v93(v92);
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v121 = *(v1 + 240);
        v122 = *(v1 + 248);
        v123 = *(v1 + 64);
        sub_23DEF6230(v121);
        OUTLINED_FUNCTION_93(v121, 1, v122);
        if (!v29)
        {
          v126 = *(v1 + 64);
          v127 = OUTLINED_FUNCTION_200();
          v128(v127);
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          v130 = OUTLINED_FUNCTION_14_6(v129);
          *(v130 + 16) = xmmword_23E222340;
          OUTLINED_FUNCTION_86_2();
          v131();
          v132 = OUTLINED_FUNCTION_123_0();
          v133(v132);
          sub_23DE5733C(v130);

          v134 = OUTLINED_FUNCTION_107_0();
          v135(v134);
          goto LABEL_26;
        }

        v124 = *(v1 + 240);

        sub_23DE58BD0(v124, &qword_27E32D648, &qword_23E2296C0);
      }

      v125 = *(v1 + 64);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        v125 = *(v1 + 64);
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_44;
        }
      }

      v136 = OUTLINED_FUNCTION_112_0();
      v137 = [v71 minimumValue];
      v138 = [v71 maximumValue];
      OUTLINED_FUNCTION_202();
      sub_23E1FD66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_37_3();
      v139 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_134_0(v139, xmmword_23E222340);
      OUTLINED_FUNCTION_86_2();
      v140();
      (*(v1 + 104))(&v137[v139], *MEMORY[0x277D72E70], v125);
      v1 = v248;
      v141 = v139;
LABEL_41:
      sub_23DE5733C(v141);

      v142 = OUTLINED_FUNCTION_107_0();
      v143(v142);
      goto LABEL_26;
    }

    if (v243)
    {
      v16 = MEMORY[0x23EF04DD0](v13, v15);
    }

    else
    {
      if (v13 >= *(v241 + 16))
      {
        goto LABEL_43;
      }

      v16 = *(v15 + 8 * v13 + 32);
    }

    v8 = v16;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v17 = [v16 inputValueType];
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = v17;
    sub_23E1FE04C();
    if (v14)
    {

      v14 = 0;
LABEL_11:
      v20 = *(v1 + 384);
      v19 = *(v1 + 392);
      v21 = *(v1 + 376);
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      sub_23DE58BD0(v21, &qword_27E32D660, &qword_23E224C60);
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v19);

      OUTLINED_FUNCTION_93(v20, 1, v19);
      if (!v29)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v236 = *(v1 + 504);
    v30 = *(v1 + 472);
    v239 = *(v1 + 392);
    v31 = *(v248 + 384);
    v32 = *(v248 + 368);
    v235 = *(v248 + 352);
    v237 = *(v248 + 336);
    v238 = *(v248 + 320);

    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    v36 = OUTLINED_FUNCTION_50();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0);
    *v32 = sub_23E1FE1FC();
    *(v232 + 8) = v38;
    (*(v5 + 104))(v32, v231, v235);
    sub_23E1FB7BC();
    sub_23E1FD58C();
    sub_23E1FD77C();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = [v8 identifier];
    sub_23E1FDC1C();

    sub_23E1FB7BC();
    sub_23E1FD48C();
    sub_23E1FD49C();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_159_1(MEMORY[0x277D84F90]);
    sub_23E1FD4BC();
    sub_23E1FD4DC();
    v48 = *v230;
    (*v230)(v237, v238);
    v49 = OUTLINED_FUNCTION_128_0();
    v15 = v234;
    v48(v49);
    (*v229)(v236, v30);
    (*(v4 + 104))(v31, v233, v239);
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v239);

    v53 = v31;
    v1 = v248;
    v14 = 0;
    if (__swift_getEnumTagSinglePayload(v53, 1, v239) != 1)
    {
LABEL_16:
      v54 = *(v4 + 32);
      v55 = OUTLINED_FUNCTION_140_1();
      v54(v55);
      v56 = OUTLINED_FUNCTION_36_5();
      v54(v56);
      v8 = v228;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D518(v61, v62, v63, v228);
        v8 = v64;
      }

      v58 = v8[2];
      v57 = v8[3];
      if (v58 >= v57 >> 1)
      {
        OUTLINED_FUNCTION_9(v57);
        OUTLINED_FUNCTION_138_1();
        sub_23DE4D518(v65, v66, v67, v68);
        v8 = v69;
      }

      v8[2] = v58 + 1;
      OUTLINED_FUNCTION_50_1();
      v228 = v8;
      v54(v8 + v59 + *(v60 + 72) * v58);
      ++v13;
      goto LABEL_2;
    }

LABEL_14:
    sub_23DE58BD0(*(v1 + 384), &unk_27E32D668, &unk_23E2296E0);
    ++v13;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v144 = swift_dynamicCastObjCClass();
  if (v144)
  {
    v145 = v144;
    v146 = *(v1 + 32);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v148 = OUTLINED_FUNCTION_14_6(v147);
    *(v148 + 16) = *(v13 + 832);
    v149 = v146;
    v150 = [v145 supportedTypes];
    v151 = sub_23E1FDDEC();

    *(v148 + v1) = v151;
    v152 = OUTLINED_FUNCTION_123_0();
    v153(v152);
    sub_23DE5733C(v148);

    goto LABEL_26;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v154 = swift_dynamicCastObjCClass();
  if (v154)
  {
    v155 = v154;
    v156 = *(v248 + 400);
    v157 = *(v248 + 392);
    v136 = *(v248 + 32);
    OUTLINED_FUNCTION_202();
    sub_23DEF6304(v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_37_3();
    v159 = OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_134_0(v159, *(v13 + 832));
    OUTLINED_FUNCTION_86_2();
    v160();
    (*(v156 + 104))(v159 + v155, *MEMORY[0x277D72E80], v157);
    v1 = v248;
    v141 = v159;
    goto LABEL_41;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v161 = *(v1 + 208);
    v162 = *(v1 + 160);
    v163 = *(v1 + 32);
    sub_23DEF6468(v161);
    v164 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v164, v165, v166, v167);
    OUTLINED_FUNCTION_30_6();
    if (!v29)
    {
      v162 = *(v1 + 160);
      v174 = OUTLINED_FUNCTION_23_5();
      v175(v174);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v176 = OUTLINED_FUNCTION_52_3();
      *(v176 + 16) = *(v13 + 832);
      v177 = OUTLINED_FUNCTION_38_5(v176);
      v178(v177);
      v179 = OUTLINED_FUNCTION_124_1();
      v180(v179);
      v181 = OUTLINED_FUNCTION_40_4();
      v182(v181);
    }

    v183 = *(v1 + 208);
    goto LABEL_62;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v168 = *(v1 + 192);
    v162 = *(v1 + 160);
    v169 = *(v1 + 32);
    sub_23DEF6554(v168);
    v170 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v170, v171, v172, v173);
    OUTLINED_FUNCTION_30_6();
    if (!v29)
    {
      v162 = *(v1 + 160);
      v191 = OUTLINED_FUNCTION_23_5();
      v192(v191);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v193 = OUTLINED_FUNCTION_52_3();
      *(v193 + 16) = *(v13 + 832);
      v194 = OUTLINED_FUNCTION_38_5(v193);
      v195(v194);
      v196 = OUTLINED_FUNCTION_124_1();
      v197(v196);
      v198 = OUTLINED_FUNCTION_40_4();
      v199(v198);
    }

    v183 = *(v1 + 192);
LABEL_62:
    OUTLINED_FUNCTION_181_0();

    v200 = &qword_27E32D640;
    v201 = &qword_23E2296B8;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      v184 = *(v1 + 152);
      v185 = *(v1 + 120);
      v186 = *(v1 + 32);
      sub_23DEF6728(v184);
      v187 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v187, v188, v189, v190);
      OUTLINED_FUNCTION_30_6();
      if (!v29)
      {
        v185 = *(v1 + 120);
        v210 = OUTLINED_FUNCTION_23_5();
        v211(v210);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v212 = OUTLINED_FUNCTION_52_3();
        *(v212 + 16) = *(v13 + 832);
        v213 = OUTLINED_FUNCTION_38_5(v212);
        v214(v213);
        v215 = OUTLINED_FUNCTION_124_1();
        v216(v215);
        v217 = OUTLINED_FUNCTION_40_4();
        v218(v217);
      }

      v183 = *(v1 + 152);
      OUTLINED_FUNCTION_181_0();

      v200 = &qword_27E32D638;
      v201 = &qword_23E2296B0;
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_26;
      }

      v202 = *(v1 + 112);
      v203 = *(v1 + 80);
      v204 = *(v1 + 56);
      v205 = *(v1 + 32);
      sub_23DEF67CC(v204, v202);
      v206 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v206, v207, v208, v209);
      OUTLINED_FUNCTION_30_6();
      if (!v29)
      {
        v203 = *(v248 + 80);
        v219 = OUTLINED_FUNCTION_23_5();
        v220(v219);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v221 = OUTLINED_FUNCTION_52_3();
        *(v221 + 16) = *(v13 + 832);
        v222 = OUTLINED_FUNCTION_38_5(v221);
        v223(v222);
        v224 = OUTLINED_FUNCTION_124_1();
        v225(v224);
        v226 = OUTLINED_FUNCTION_40_4();
        v227(v226);
      }

      v1 = v248;
      v183 = *(v248 + 112);
      OUTLINED_FUNCTION_181_0();

      v200 = &qword_27E32D630;
      v201 = &qword_23E2296A8;
    }
  }

  sub_23DE58BD0(v183, v200, v201);
LABEL_26:
  v94 = *(v1 + 16);
  v95 = *(v1 + 536);
  v96 = *(v1 + 528);
  v97 = *(v1 + 520);
  if (*(v94 + 16))
  {
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    v99 = swift_allocBox();
    v101 = v100;
    v102 = *(v98 + 48);
    (*(v96 + 16))(v100, v95, v97);
    *(v101 + v102) = v94;
    v103 = MEMORY[0x277D72AB8];
  }

  else
  {

    v99 = swift_allocBox();
    (*(v96 + 16))(v104, v95, v97);
    v103 = MEMORY[0x277D72AD0];
  }

  v105 = *(v1 + 496);
  v106 = *(v1 + 472);
  v107 = *(v1 + 480);
  v108 = *(v1 + 24);
  *v105 = v99;
  (*(v107 + 104))(v105, *v103, v106);
  v109 = *(v107 + 32);
  (v109)(v108, v105, v106);
  *(v1 + 712) = 0;
  *(v1 + 704) = v8;
  *(v1 + 696) = v109;
  if ([*(v1 + 32) allowsMultipleValues])
  {
    sub_23E1FD3CC();
    v110 = OUTLINED_FUNCTION_54();
    v111(v110);
    OUTLINED_FUNCTION_86_2();
    v109();
  }

  v112 = swift_task_alloc();
  *(v1 + 720) = v112;
  *v112 = v1;
  v112[1] = sub_23DEF5A18;
  OUTLINED_FUNCTION_143_1();

  return sub_23DF00008(v113, v114, v115, v116, v117, v118);
}

uint64_t sub_23DEF5A18()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 728) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEF5B1C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  if (*(v0 + 728) == 1)
  {
    v25 = *(v0 + 560);
    v26 = *(v0 + 696);
    v3 = *(v0 + 552);
    OUTLINED_FUNCTION_87_2();
    v23 = v4;
    v24 = v5;
    v6 = *(v0 + 528);
    v21 = v7;
    v22 = *(v0 + 520);
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    v10 = *(v0 + 472);
    v11 = *(v0 + 72);
    v12 = *(v0 + 24);
    sub_23E1FD3BC();

    sub_23DE58BD0(v11, &unk_27E32D730, &unk_23E223790);
    (*(v6 + 8))(v23, v22);
    (*(v3 + 8))(v25, v24);
    (*(v8 + 8))(v12, v10);
    v26(v12, v9, v10);
  }

  else
  {
    v13 = *(v0 + 608);
    v27 = *(v0 + 560);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v16 = *(v0 + 72);

    sub_23DE58BD0(v16, &unk_27E32D730, &unk_23E223790);
    v17 = OUTLINED_FUNCTION_45();
    v18(v17);
    (*(v14 + 8))(v27, v15);
  }

  OUTLINED_FUNCTION_7();

  return v19();
}

uint64_t sub_23DEF5E7C()
{
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_19();

  return v0();
}

void sub_23DEF603C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedProvider];
  v3 = sub_23E1FDBDC();
  v4 = [v2 queriesForBundleIdentifier_];

  sub_23DE38DA8(0, &qword_280DAE378, 0x277D238E0);
  v5 = sub_23E1FDDEC();

  v6 = sub_23DE4D8B0();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EF04DD0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v8 capabilities] & 0x20) != 0 && (sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8), v10 = objc_msgSend(v9, sel_resultValueType), v11 = sub_23E1FE3BC(), v10, (v11))
    {
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_23DEF6230@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 minimumValue];
  if (v3 || (v3 = [v1 maximumValue]) != 0)
  {

    v4 = [v1 minimumValue];
    v5 = [v1 maximumValue];
    sub_23E1FD66C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_23E1FD67C();

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_23DEF6304@<X0>(uint64_t a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && [v3 isMessagesAppSelected])
  {
    v4 = MEMORY[0x277D72F98];
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = MEMORY[0x277D72F90];
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        v8 = sub_23E1FD68C();
        v7 = *(*(v8 - 8) + 104);
        if (v12)
        {
          v13 = MEMORY[0x277D72F80];
        }

        else
        {
          v13 = MEMORY[0x277D72F98];
        }

        v10 = *v13;
        v9 = a2;
        goto LABEL_9;
      }

      v4 = MEMORY[0x277D72F88];
    }
  }

  v5 = *v4;
  v6 = sub_23E1FD68C();
  v7 = *(*(v6 - 8) + 104);
  v8 = v6;
  v9 = a2;
  v10 = v5;
LABEL_9:

  return v7(v9, v10, v8);
}

uint64_t sub_23DEF6468@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 timeOnlyMode];
  v4 = [v1 dateOnlyMode];
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v5 = MEMORY[0x277D72F78];
LABEL_6:
      v6 = *v5;
      v7 = sub_23E1FD65C();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v8 = a1;
      v9 = 0;
      v10 = v7;
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v5 = MEMORY[0x277D72F70];
    goto LABEL_6;
  }

  v10 = sub_23E1FD65C();
  v8 = a1;
  v9 = 1;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_23DEF6554@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 datePickerMode];
  v4 = sub_23E1FDC1C();
  v6 = v5;
  if (v4 == sub_23E1FDC1C() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_23E1FE75C();

  if (v9)
  {

LABEL_8:
    v10 = MEMORY[0x277D72F78];
LABEL_9:
    v11 = *v10;
    v12 = sub_23E1FD65C();
    (*(*(v12 - 8) + 104))(a1, v11, v12);
    v13 = a1;
    v14 = 0;
    v15 = v12;
    goto LABEL_10;
  }

  v17 = sub_23E1FDC1C();
  v19 = v18;
  if (v17 == sub_23E1FDC1C() && v19 == v20)
  {

    goto LABEL_20;
  }

  v22 = sub_23E1FE75C();

  if (v22)
  {
LABEL_20:
    v10 = MEMORY[0x277D72F70];
    goto LABEL_9;
  }

  v15 = sub_23E1FD65C();
  v13 = a1;
  v14 = 1;
LABEL_10:

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_23DEF6728@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 unit];
  [v1 unitAdjustForLocale];
  [v1 allowsNegativeNumbers];
  sub_23E1FD69C();
  v4 = sub_23E1FD6AC();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_23DEF67CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = sub_23E1FD5FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E1FD5EC();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E1FD5AC();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23E1FD64C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v3 keyboardType];
  sub_23DF02448(v13);

  v19 = [v3 autocorrectionType];
  sub_23DF02A74(v10);

  v20 = [v3 autocapitalizationType];
  sub_23DF02C68(v7);

  [v3 isMultiline];
  [v3 smartQuotesDisabled];
  [v3 smartDashesDisabled];
  sub_23E1FD5BC();
  if (sub_23DF02ED4(a1))
  {
    (*(v15 + 8))(v17, v14);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v23 = v26;
    (*(v15 + 32))(v26, v17, v14);
    v21 = 0;
    v22 = v23;
  }

  return __swift_storeEnumTagSinglePayload(v22, v21, 1, v14);
}

uint64_t WFParameter.toolkitTypeInstance(for:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = OUTLINED_FUNCTION_16();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEF6AC8()
{
  OUTLINED_FUNCTION_4();
  if (!*(v0 + 40))
  {
    v1 = [*(v0 + 48) key];
    sub_23E1FDC1C();
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v2;
  sub_23E1FB7BC();
  if (v2)
  {
    v3 = *(v0 + 24);
    OUTLINED_FUNCTION_49();
    *(v0 + 64) = sub_23E1FDBDC();

    v4 = sub_23E1FDECC();
    *(v0 + 72) = OUTLINED_FUNCTION_195_1(v4);
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v5 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    *(v0 + 112) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 120) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_75_1(v8);

    return sub_23DEF1D6C();
  }
}

uint64_t sub_23DEF6C34()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[8];
  v2 = v0[3];

  v0[10] = OUTLINED_FUNCTION_168_1(v3, sel_parameterMetadataForIdentifier_);

  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEF6CC0()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = [v1 valueType];
    v4 = [v3 wf_unionValueType];
    *(v0 + 88) = v4;

    if (v4)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 96) = v5;
      *v5 = v6;
      v5[1] = sub_23DEF6E1C;

      return WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)();
    }

    v9 = *(v0 + 24);

    v8 = *(v0 + 80);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 112) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 120) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_75_1(v10);

  return sub_23DEF1D6C();
}

uint64_t sub_23DEF6E1C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEF6F18()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_7();

  return v3();
}

uint64_t sub_23DEF6F84()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEF7080()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_7();

  return v2();
}

uint64_t sub_23DEF70E0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEF7150()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)()
{
  OUTLINED_FUNCTION_23();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[43] = v5;
  v1[44] = v6;
  v1[49] = swift_getObjectType();
  v7 = sub_23E1FD4FC();
  v1[50] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[51] = v8;
  v1[52] = OUTLINED_FUNCTION_42();
  v9 = sub_23E1FC6BC();
  v1[53] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[54] = v10;
  v1[55] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FD4EC();
  v1[56] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[57] = v12;
  v1[58] = OUTLINED_FUNCTION_91();
  v1[59] = swift_task_alloc();
  v13 = sub_23E1FD84C();
  v1[60] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[61] = v14;
  v1[62] = OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v15);
  v1[63] = OUTLINED_FUNCTION_42();
  v16 = sub_23E1FD95C();
  v1[64] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[65] = v17;
  v1[66] = OUTLINED_FUNCTION_91();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v18 = sub_23E1FD03C();
  v1[69] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[70] = v19;
  v1[71] = OUTLINED_FUNCTION_91();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v20 = sub_23E1FD52C();
  v1[75] = v20;
  OUTLINED_FUNCTION_25(v20);
  v1[76] = OUTLINED_FUNCTION_42();
  v21 = sub_23E1FD98C();
  OUTLINED_FUNCTION_25(v21);
  v1[77] = OUTLINED_FUNCTION_42();
  v22 = sub_23E1FD46C();
  v1[78] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[79] = v23;
  v1[80] = OUTLINED_FUNCTION_91();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v24 = sub_23E1FD42C();
  v1[85] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[86] = v25;
  v1[87] = OUTLINED_FUNCTION_42();
  v26 = sub_23E1FD9BC();
  v1[88] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[89] = v27;
  v1[90] = OUTLINED_FUNCTION_91();
  v1[91] = swift_task_alloc();
  v28 = sub_23E1FE12C();
  v1[92] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[93] = v29;
  v1[94] = OUTLINED_FUNCTION_91();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v30 = sub_23E1FDA1C();
  v1[109] = v30;
  OUTLINED_FUNCTION_8(v30);
  v1[110] = v31;
  v1[111] = OUTLINED_FUNCTION_91();
  v1[112] = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_23DEF770C()
{
  v3 = v1;
  if (*(v1 + 368))
  {
    v0 = *(v1 + 360);
    v2 = *(v1 + 368);
  }

  else
  {
    v4 = [*(v1 + 384) key];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_177_1();
  }

  *(v1 + 912) = v2;
  *(v1 + 904) = v0;
  sub_23E1FB7BC();
  sub_23E1FD9EC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v5 = swift_dynamicCastObjCClass();
    *(v1 + 920) = v5;
    if (v5)
    {
      v6 = *(v1 + 352);
      OUTLINED_FUNCTION_45();
      *(v1 + 928) = sub_23E1FDBDC();

      v7 = sub_23E1FDECC();
      *(v1 + 936) = OUTLINED_FUNCTION_223(v7);
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
LABEL_10:
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_156_1();

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

LABEL_13:
    OUTLINED_FUNCTION_28_5();

    v15 = OUTLINED_FUNCTION_83_3();
    v16(v15);
    v17 = *(v1 + 344);
    v18 = MEMORY[0x277D72CB8];
LABEL_16:
    v21 = *v18;
    sub_23E1FD43C();
    OUTLINED_FUNCTION_5_0();
    (*(v22 + 104))(v17, v21);
    v23 = *MEMORY[0x277D72B88];
    sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0();
    v25 = *(v24 + 104);
    v26 = v17;
LABEL_17:
    v27 = v23;
LABEL_18:
    v25(v26, v27);
LABEL_19:
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_107_1();

    OUTLINED_FUNCTION_7();
    goto LABEL_20;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v8 = swift_dynamicCastObjCClass();
    *(v1 + 952) = v8;
    if (v8)
    {
      v9 = *(v1 + 352);
      OUTLINED_FUNCTION_45();
      *(v1 + 960) = sub_23E1FDBDC();

      v10 = sub_23E1FDECC();
      *(v1 + 968) = OUTLINED_FUNCTION_223(v10);
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v17 = *(v1 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v19 = OUTLINED_FUNCTION_178_1();
    v20(v19);

    v18 = MEMORY[0x277D72CA8];
    goto LABEL_16;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v30 = swift_dynamicCastObjCClass();
    *(v1 + 984) = v30;
    if (v30)
    {
      v31 = *(v1 + 352);
      OUTLINED_FUNCTION_45();
      *(v1 + 992) = sub_23E1FDBDC();

      v32 = sub_23E1FDECC();
      *(v1 + 1000) = OUTLINED_FUNCTION_223(v32);
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_28_5();

    v42 = OUTLINED_FUNCTION_83_3();
    v43(v42);
    v17 = *(v1 + 344);
    goto LABEL_29;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_179_1();
    v33 = *(v1 + 384);
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &unk_280DAE2D8, 0x277D7C9D8);
    OUTLINED_FUNCTION_113_0(&qword_280DAE2D0);
    v34 = OUTLINED_FUNCTION_50();
    v35(v34);
    v36 = v33;
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    v37 = OUTLINED_FUNCTION_94_1();
    OUTLINED_FUNCTION_212(v37, v38, v39, v40);
    sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_28_5();
    v41 = v3[108];
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_179_1();
    v44 = *(v1 + 384);
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &qword_27E32D6E8, 0x277D7C398);
    OUTLINED_FUNCTION_113_0(&qword_27E32D6F0);
    v45 = OUTLINED_FUNCTION_50();
    v46(v45);
    v47 = v44;
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    v48 = OUTLINED_FUNCTION_94_1();
    OUTLINED_FUNCTION_212(v48, v49, v50, v51);
    sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_28_5();
    v41 = v3[107];
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v52 = *(v1 + 848);

    OUTLINED_FUNCTION_35_6();
    v53 = OUTLINED_FUNCTION_36_5();
    v54(v53);
    sub_23E1FE0EC();
    v55 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v55);
    sub_23DE38DA8(0, &unk_280DAE650, 0x277CFC350);
    OUTLINED_FUNCTION_204();
    v56 = v52;
    v0 = 0;
    static WFContentItem.toolkitTypeDefinition(context:)(v56, v57);
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 848);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v60 = swift_dynamicCastObjCClass();
    *(v1 + 1016) = v60;
    if (v60)
    {
      v61 = *(v1 + 352);
      OUTLINED_FUNCTION_45();
      *(v1 + 1024) = sub_23E1FDBDC();

      v62 = sub_23E1FDECC();
      *(v1 + 1032) = OUTLINED_FUNCTION_223(v62);
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_28_5();

    v63 = OUTLINED_FUNCTION_83_3();
    v64(v63);
    v17 = *(v1 + 344);
    goto LABEL_43;
  }

  v17 = *(v1 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v65 = OUTLINED_FUNCTION_178_1();
    v66(v65);

LABEL_43:
    v18 = MEMORY[0x277D72CD0];
    goto LABEL_16;
  }

  v67 = v1;
  v17 = *(v1 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v17 = *(v1 + 384), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v68 = OUTLINED_FUNCTION_61_1();
    v69(v68);

LABEL_29:
    v18 = MEMORY[0x277D72CE0];
    goto LABEL_16;
  }

  v17 = *(v1 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v70 = OUTLINED_FUNCTION_61_1();
    v71(v70);

    v18 = MEMORY[0x277D72CB0];
    goto LABEL_16;
  }

  v17 = *(v1 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v72 = OUTLINED_FUNCTION_61_1();
    v73(v72);

    v18 = MEMORY[0x277D72C40];
    goto LABEL_16;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_161_1();
    v74 = OUTLINED_FUNCTION_100_1();
    v75(v74);
    sub_23E1FD3FC();
    v76 = OUTLINED_FUNCTION_41_4();
    v77(v76);
    v78 = OUTLINED_FUNCTION_33();
    v79(v78);
    goto LABEL_19;
  }

  sub_23E1FC7CC();
  OUTLINED_FUNCTION_20();
  v80 = swift_dynamicCastClass();
  v81 = MEMORY[0x277D84F90];
  if (v80)
  {

    sub_23E1FE06C();
    v315 = *(v1 + 344);
    *(v1 + 328) = *(v1 + 392);
    swift_getMetatypeMetadata();
    sub_23E1FDC7C();
    sub_23E1FD97C();
    *(v1 + 336) = v81;
    sub_23DF06038(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
    sub_23DF0607C(&qword_280DAE420, &qword_27E32D6E0, &qword_23E223788);
    sub_23E1FE4EC();
    sub_23E1FD50C();
    v85 = OUTLINED_FUNCTION_164_1();
    v86(v85);
    v87 = *MEMORY[0x277D72B68];
    sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0();
    v25 = *(v88 + 104);
    v26 = v315;
LABEL_58:
    v27 = v87;
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 840);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &unk_280DAE680, 0x277CFC3F0);
    v82 = OUTLINED_FUNCTION_5_11();
    v83(v82);
    sub_23E1FE0EC();
    v84 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v84);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 840);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 832);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE308, 0x277CFC4A0);
    v89 = OUTLINED_FUNCTION_5_11();
    v90(v89);
    sub_23E1FE0EC();
    v91 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v91);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 832);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 824);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE6D0, 0x277CFC430);
    v92 = OUTLINED_FUNCTION_5_11();
    v93(v92);
    sub_23E1FE0EC();
    v94 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v94);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 824);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 816);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6D8, 0x277CFC4E0);
    v95 = OUTLINED_FUNCTION_5_11();
    v96(v95);
    sub_23E1FE0EC();
    v97 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v97);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 816);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 808);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6D0, 0x277CFC378);
    v98 = OUTLINED_FUNCTION_5_11();
    v99(v98);
    sub_23E1FE0EC();
    v100 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v100);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 808);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 800);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6C8, 0x277CFC3A0);
    v101 = OUTLINED_FUNCTION_5_11();
    v102(v101);
    sub_23E1FE0EC();
    v103 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v103);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 800);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 792);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6C0, 0x277CFC4A8);
    v104 = OUTLINED_FUNCTION_5_11();
    v105(v104);
    sub_23E1FE0EC();
    v106 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v106);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 792);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v1 + 784);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE6D8, 0x277CFC2B8);
    v107 = OUTLINED_FUNCTION_5_11();
    v108(v107);
    sub_23E1FE0EC();
    v109 = sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5(v109);
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v41 = *(v1 + 784);
    goto LABEL_34;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v121 = swift_dynamicCastObjCClass();
      *(v1 + 1272) = v121;
      if (!v121)
      {
        sub_23E1FC97C();
        OUTLINED_FUNCTION_20();
        if (swift_dynamicCastClass())
        {

          sub_23E1FC96C();
          OUTLINED_FUNCTION_35_6();
          v126 = OUTLINED_FUNCTION_35_0();
          v127(v126);
          sub_23E1FE0EC();
          sub_23E1FC9EC();
          OUTLINED_FUNCTION_94_1();
          sub_23E1FE0DC();
          sub_23E1FE15C();
          v135 = *(v1 + 440);
          (*(*(v1 + 432) + 104))(v135, *MEMORY[0x277D7BE28], *(v1 + 424));
          static WFContentItem.toolkitPredicateTemplates(usage:seen:)(v135, MEMORY[0x277D84F90]);
          v136 = *(v1 + 880);
          v312 = *(v1 + 872);
          v316 = *(v1 + 896);
          v137 = *(v1 + 744);
          v308 = *(v1 + 736);
          v309 = *(v1 + 752);
          v171 = *(v1 + 688);
          v293 = *(v67 + 680);
          v172 = *(v67 + 640);
          v298 = *(v67 + 648);
          v173 = *(v67 + 632);
          v174 = *(v67 + 624);
          v303 = *(v67 + 472);
          v175 = *(v67 + 456);
          v299 = *(v67 + 464);
          v300 = *(v67 + 448);
          v301 = *(v67 + 416);
          v320 = *(v67 + 400);
          v305 = *(v67 + 408);
          v306 = *(v67 + 344);
          (*(*(v67 + 432) + 8))(*(v67 + 440), *(v67 + 424));
          v295 = swift_allocBox();
          v177 = v176;
          v178 = swift_allocBox();
          (*(v173 + 16))(v179, v172, v174);
          *v177 = v178;
          (*(v171 + 104))(v177, *MEMORY[0x277D72C00], v293);
          *v298 = v295;
          (*(v173 + 104))(v298, *MEMORY[0x277D72D30], v174);
          (*(v175 + 16))(v299, v303, v300);
          sub_23E1FD47C();
          (*(v175 + 8))(v303, v300);
          (*(v173 + 8))(v172, v174);
          (*(v137 + 8))(v309, v308);
          (*(v136 + 8))(v316, v312);
          (*(v305 + 32))(v306, v301, v320);
          v87 = *MEMORY[0x277D72B60];
          sub_23E1FD41C();
          OUTLINED_FUNCTION_5_0();
          v25 = *(v180 + 104);
          v26 = v306;
          goto LABEL_58;
        }

        sub_23E1FC72C();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastClass())
        {

          objc_opt_self();
          OUTLINED_FUNCTION_20();
          if (swift_dynamicCastObjCClass())
          {
            sub_23E1FCB9C();
            v160 = sub_23E1FD02C();
            v161 = sub_23E1FE1BC();
            if (os_log_type_enabled(v160, v161))
            {
              v162 = swift_slowAlloc();
              *v162 = 0;
              _os_log_impl(&dword_23DE30000, v160, v161, "Union parameters do not get a type definition", v162, 2u);
              OUTLINED_FUNCTION_56();
            }

            v163 = *(v1 + 568);
            v164 = *(v1 + 560);
            v165 = *(v1 + 552);

            (*(v164 + 8))(v163, v165);
            ObjectType = swift_getObjectType();
            v167 = sub_23DEF1D18();
            OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v167);
            *v168 = ObjectType;
            *(v168 + 8) = 0;
            swift_willThrow();
            v169 = OUTLINED_FUNCTION_79();
            v170(v169);
          }

          else
          {
            OUTLINED_FUNCTION_104_1();
            v283 = swift_getObjectType();
            v284 = sub_23DEF1D18();
            OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v284);
            *v285 = v283;
            *(v285 + 8) = 0;
            swift_willThrow();
            v286 = OUTLINED_FUNCTION_33();
            v287(v286);
          }

          goto LABEL_35;
        }

        *(v1 + 1472) = sub_23E1FC71C();
        v133 = swift_task_alloc();
        v3[185] = v133;
        *v133 = v3;
        v133[1] = sub_23DEFFCEC;
        OUTLINED_FUNCTION_156_1();

        return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)();
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v122 = swift_dynamicCastObjCClass();
      *(v1 + 1280) = v122;
      if (v122)
      {
        v123 = *(v1 + 352);
        OUTLINED_FUNCTION_45();
        *(v1 + 1288) = sub_23E1FDBDC();
        *(v1 + 1296) = sub_23E1FDECC();
        *(v1 + 1304) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        goto LABEL_10;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v130 = swift_dynamicCastObjCClass();
      *(v1 + 1408) = v130;
      v131 = *(v1 + 352);
      if (v130)
      {
        *(v1 + 1416) = sub_23E1FDECC();
        v132 = v131;
        *(v1 + 1424) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        goto LABEL_10;
      }

      v138 = [*(v1 + 352) identifier];
      v139 = sub_23E1FDC1C();
      v141 = v140;

      MEMORY[0x23EF044F0](46, 0xE100000000000000);
      v142 = OUTLINED_FUNCTION_45();
      MEMORY[0x23EF044F0](v142);

      v143 = v139;
      v144 = v141;
      v145 = sub_23E1FDC1C();
      v147 = v146;
      v148 = v3[82];
      v149 = *(v67 + 384);
      OUTLINED_FUNCTION_174_1();
      v150 = swift_allocObject();
      v150[2] = v145;
      v150[3] = v147;
      v150[4] = v143;
      v150[5] = v144;
      *v148 = v150;
      v151 = OUTLINED_FUNCTION_100_1();
      v152(v151);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v153 = *(v67 + 384);
        *(v67 + 16) = v67;
        *(v67 + 24) = sub_23DEFF27C;
        v154 = swift_continuation_init();
        *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5B8, &qword_23E2294D8);
        *(v67 + 80) = MEMORY[0x277D85DD0];
        *(v67 + 88) = 1107296256;
        *(v67 + 96) = sub_23DEEF88C;
        *(v67 + 104) = &block_descriptor_16;
        *(v67 + 112) = v154;
        v155 = v153;
        v156 = OUTLINED_FUNCTION_140_1();
        [v156 v157];
        OUTLINED_FUNCTION_156_1();

        return MEMORY[0x282200938](v158);
      }

      v181 = sub_23DF05E44(*(v67 + 1272));
      if (!v181)
      {
        v181 = v81;
      }

      v313 = v181;
      v310 = sub_23DE4D8B0();
      if (!v310)
      {
LABEL_146:
        v270 = v67;
        v271 = *(v67 + 1272);
        v272 = *(v67 + 896);
        v273 = *(v67 + 880);
        v318 = v270[109];
        v322 = v272;
        v274 = v270[82];
        v275 = v270[81];
        v276 = v270[79];
        v277 = v270[78];
        v311 = v274;
        v304 = v271;
        v278 = v270[61];
        v279 = v270[62];
        v280 = v270[60];
        v307 = v270[43];

        (*(v276 + 16))(v275, v274, v277);
        (*(v278 + 104))(v279, *MEMORY[0x277D73238], v280);
        v281 = [v304 localizedLabel];
        sub_23E1FDC1C();

        OUTLINED_FUNCTION_58_0();
        sub_23E1FD97C();
        sub_23E1FD83C();
        (*(v276 + 8))(v311, v277);
        (*(v273 + 8))(v322, v318);
        v23 = *MEMORY[0x277D72B48];
        sub_23E1FD41C();
        OUTLINED_FUNCTION_5_0();
        v25 = *(v282 + 104);
        v26 = v307;
        goto LABEL_17;
      }

      v158 = sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
      if (v310 < 1)
      {
        __break(1u);
        return MEMORY[0x282200938](v158);
      }

      v317 = 0;
      v297 = (*(v67 + 880) + 16);
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v294 = v182;
      v296 = v183;
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v291 = v184;
      v292 = v185;
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v289 = v186;
      v290 = v187;
      while (1)
      {
        if ((v313 & 0xC000000000000001) != 0)
        {
          v188 = MEMORY[0x23EF04DD0](v317, v313);
        }

        else
        {
          v188 = *(v313 + 8 * v317 + 32);
        }

        v321 = v188;
        sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
        v189 = sub_23E1FC9CC();
        if (v189)
        {
          v190 = v189;
          v191 = [v189 value];
          if (v191)
          {
            v192 = v191;
            v193 = *(v67 + 896);
            v194 = *(v67 + 888);
            v195 = *(v67 + 872);
            v196 = *(v67 + 384);
            sub_23E1FDC1C();

            (*v297)(v194, v193, v195);
            v197 = v196;
            v198 = v321;
            OUTLINED_FUNCTION_86_2();
            sub_23E1FD7AC();
            sub_23E1FD93C();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v243 = OUTLINED_FUNCTION_6_1();
              sub_23DE4D4D8(v243, v244, v245, v81);
              v81 = v246;
            }

            v149 = *(v81 + 16);
            v199 = *(v81 + 24);
            if (v149 >= v199 >> 1)
            {
              OUTLINED_FUNCTION_9(v199);
              OUTLINED_FUNCTION_138_1();
              sub_23DE4D4D8(v247, v248, v249, v250);
              v81 = v251;
            }

            v148 = *(v67 + 544);

            *(v81 + 16) = &v149->isa + 1;
            goto LABEL_136;
          }
        }

        sub_23DE38DA8(0, &qword_27E32D698, off_278C01650);
        v200 = OUTLINED_FUNCTION_110_0();
        v201 = sub_23DE38DA8(v200, &qword_27E32C1A0, 0x277CCAD98);
        v204 = OUTLINED_FUNCTION_173_1(v321, v202, v203, v201);
        if (!v204)
        {
          goto LABEL_127;
        }

        v205 = v204;
        v206 = [v204 value];
        if (!v206)
        {
          break;
        }

        v207 = v206;
        v208 = [v206 symbol];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_177_1();

        v209 = [v207 symbol];
        sub_23E1FDC1C();

        OUTLINED_FUNCTION_45();
        sub_23E1FD92C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v252 = OUTLINED_FUNCTION_6_1();
          sub_23DE4D4D8(v252, v253, v254, v81);
          v81 = v255;
        }

        v149 = *(v81 + 16);
        v210 = *(v81 + 24);
        v211 = &v149->isa + 1;
        if (v149 >= v210 >> 1)
        {
          OUTLINED_FUNCTION_9(v210);
          OUTLINED_FUNCTION_138_1();
          sub_23DE4D4D8(v256, v257, v258, v259);
          v81 = v260;
        }

        v148 = *(v67 + 536);

LABEL_135:
        *(v81 + 16) = v211;
LABEL_136:
        OUTLINED_FUNCTION_73_3();
        v227();
LABEL_137:
        if (v310 == ++v317)
        {
          goto LABEL_146;
        }
      }

LABEL_127:
      sub_23DE38DA8(0, &qword_280DAE670, 0x277D7C6B0);
      v212 = OUTLINED_FUNCTION_110_0();
      v213 = sub_23DE38DA8(v212, &unk_27E32D6A0, 0x277D7C6B8);
      v216 = OUTLINED_FUNCTION_173_1(v321, v214, v215, v213);
      if (!v216)
      {
        goto LABEL_140;
      }

      v217 = v216;
      v218 = [v216 value];
      if (!v218 || (v219 = v218, v220 = [v218 number], v219, !v220))
      {

LABEL_140:
        v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
        v229 = OUTLINED_FUNCTION_220(v228);
        *(v229 + 16) = xmmword_23E224C10;
        *(v229 + 32) = 0xD000000000000018;
        *(v229 + 40) = v296;
        *(v229 + 48) = 0xD00000000000001ALL;
        *(v229 + 56) = v294;
        *(v229 + 64) = 0xD000000000000018;
        *(v229 + 72) = v292;
        *(v229 + 80) = 0xD00000000000001CLL;
        *(v229 + 88) = v291;
        *(v229 + 96) = 0xD000000000000020;
        *(v229 + 104) = v290;
        *(v229 + 112) = 0xD00000000000002BLL;
        *(v229 + 120) = v289;
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v231 = NSStringFromClass(ObjCClassFromMetadata);
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_151_1();

        *(v67 + 304) = v148;
        *(v67 + 312) = v149;
        v232 = swift_task_alloc();
        v233 = OUTLINED_FUNCTION_10_9(v232, v67 + 304);
        v148 = sub_23DEDEAA0(v233, v234, v235);
        swift_setDeallocating();
        sub_23DF032A4();

        if (v148)
        {
        }

        else
        {
          sub_23E1FCB9C();
          v149 = v321;
          v236 = sub_23E1FD02C();
          v237 = sub_23E1FE1BC();

          if (os_log_type_enabled(v236, v237))
          {
            v238 = OUTLINED_FUNCTION_38_0();
            v239 = swift_slowAlloc();
            *v238 = 138412290;
            *(v238 + 4) = v149;
            *v239 = v149;
            v240 = v149;
            _os_log_impl(&dword_23DE30000, v236, v237, "Incompatible possible state for enumeration: %@", v238, 0xCu);
            sub_23DE58BD0(v239, &unk_27E32C190, &qword_23E224B70);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v240 = v236;
            v236 = v149;
          }

          v148 = *(v67 + 576);

          v241 = OUTLINED_FUNCTION_50();
          v242(v241);
        }

        goto LABEL_137;
      }

      v302 = *(v67 + 384);
      v221 = [v220 integerValue];

      *(v67 + 320) = v221;
      sub_23E1FE71C();
      v222 = OUTLINED_FUNCTION_35_0();
      v223(v222);
      v224 = v302;
      v225 = v321;
      OUTLINED_FUNCTION_149_1();
      sub_23E1FD7AC();
      OUTLINED_FUNCTION_199();
      sub_23E1FD93C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v261 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D4D8(v261, v262, v263, v81);
        v81 = v264;
      }

      v149 = *(v81 + 16);
      v226 = *(v81 + 24);
      v211 = &v149->isa + 1;
      if (v149 >= v226 >> 1)
      {
        OUTLINED_FUNCTION_9(v226);
        OUTLINED_FUNCTION_138_1();
        sub_23DE4D4D8(v265, v266, v267, v268);
        v81 = v269;
      }

      v148 = *(v67 + 528);

      goto LABEL_135;
    }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v110 = *(v1 + 888);
    v111 = *(v1 + 880);
    v112 = *(v1 + 872);
    v113 = *(v1 + 776);
    v114 = *(v1 + 728);
    v115 = *(v1 + 712);
    v116 = v3[88];
    v117 = v3[47];
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &unk_280DAE6C0, off_278C014F0);
    v118 = OUTLINED_FUNCTION_35_6();
    (*(v115 + 104))(v114, *MEMORY[0x277D733B8], v116, v118);
    (*(v111 + 16))(v110, v314, v112);
    v119 = v117;
    OUTLINED_FUNCTION_94_1();
    sub_23E1FE0DC();
    v0 = 0;
    static WFContentItem.toolkitTypeDefinition(context:)(v113, v319);
    OUTLINED_FUNCTION_28_5();
    v41 = v3[97];
LABEL_34:
    (*(v3[93] + 8))(v41, v3[92]);
    v58 = OUTLINED_FUNCTION_83_3();
    v59(v58);
    if (!v0)
    {
      goto LABEL_19;
    }

LABEL_35:
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_87_2();

    OUTLINED_FUNCTION_19();
LABEL_20:
    OUTLINED_FUNCTION_156_1();

    __asm { BRAA            X1, X16 }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v120 = swift_dynamicCastObjCClass();
  *(v1 + 1048) = v120;
  if (v120)
  {
    OUTLINED_FUNCTION_45();
    *(v1 + 1056) = sub_23E1FDBDC();
    *(v1 + 1064) = sub_23E1FDECC();
    *(v1 + 1072) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v124 = swift_dynamicCastObjCClass();
  *(v1 + 1152) = v124;
  if (v124)
  {
    v125 = sub_23E1FDECC();
    *(v1 + 1160) = OUTLINED_FUNCTION_195_1(v125);
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_10;
  }

  [*(v1 + 384) stateClass];
  swift_getObjCClassMetadata();
  v128 = swift_task_alloc();
  v3[157] = v128;
  *v128 = v3;
  v128[1] = sub_23DEFD024;
  OUTLINED_FUNCTION_156_1();

  return sub_23DE3B9A4();
}

uint64_t sub_23DEF9BC0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 928);

  *(v0 + 944) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEF9C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 944);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [objc_opt_self() dateComponentsValueType];
    OUTLINED_FUNCTION_66();
    sub_23E1FE3BC();

    v47 = OUTLINED_FUNCTION_41_4();
    v48(v47);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_41_4();
    v50(v49);
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_5_0();
  v51 = OUTLINED_FUNCTION_54();
  v52(v51);
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v53 = OUTLINED_FUNCTION_54();
  v54(v53);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEF9EFC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 960);

  *(v0 + 976) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEF9F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 976);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [objc_opt_self() dateComponentsValueType];
    OUTLINED_FUNCTION_66();
    sub_23E1FE3BC();

    v47 = OUTLINED_FUNCTION_41_4();
    v48(v47);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_41_4();
    v50(v49);
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_5_0();
  v51 = OUTLINED_FUNCTION_54();
  v52(v51);
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v53 = OUTLINED_FUNCTION_54();
  v54(v53);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA238()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 992);

  *(v0 + 1008) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFA2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 1008);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [v45 wf_objectValueType];

    v47 = [objc_opt_self() attributedStringValueType];
    OUTLINED_FUNCTION_128_0();
    sub_23E1FE3BC();

    v48 = OUTLINED_FUNCTION_41_4();
    v49(v48);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_41_4();
    v51(v50);
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_5_0();
  v52 = OUTLINED_FUNCTION_54();
  v53(v52);
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v54 = OUTLINED_FUNCTION_54();
  v55(v54);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA590()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1024);

  *(v0 + 1040) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v43 = v42[130];
  if (v43)
  {
    v44 = v42[91];
    v45 = v42[90];
    v46 = v42[89];
    v47 = v42[88];
    a38 = v42[44];
    v48 = [v43 valueType];
    sub_23E1FE05C();

    (*(v46 + 104))(v45, *MEMORY[0x277D733C0], v47);
    OUTLINED_FUNCTION_66();
    sub_23E1FD9AC();

    v49 = *(v46 + 8);
    v49(v45, v47);
    v49(v44, v47);
    v50 = OUTLINED_FUNCTION_50();
    v51(v50);
  }

  else
  {
    v52 = v42[44];
    v53 = OUTLINED_FUNCTION_50();
    v54(v53);
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_5_0();
  v55 = OUTLINED_FUNCTION_54();
  v56(v55);
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v57 = OUTLINED_FUNCTION_54();
  v58(v57);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA914()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1056);

  *(v0 + 1080) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFA994(uint64_t a1)
{
  v28 = v1;
  if (v1[135])
  {
    v1[136] = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v3 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v1[114];
    v7 = v1[44];
    sub_23E1FCB9C();
    v8 = v7;
    sub_23E1FB7BC();
    v9 = sub_23E1FD02C();
    v10 = sub_23E1FE1BC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[114];
      v12 = v1[113];
      v26 = v1[73];
      v13 = OUTLINED_FUNCTION_185_1();
      v27 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_23DE56B40(v12, v11, &v27);
      *(v13 + 12) = 2080;
      v14 = [v2 identifier];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_193_0();
      v15 = sub_23DE56B40(v12, v2, &v27);

      *(v13 + 14) = v15;
      OUTLINED_FUNCTION_211(&dword_23DE30000, v16, v17, "Missing parameter metadata for parameter %s in action: %s, throwing missingLinkParameterMetadata");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v6 + 8))(v26, v8);
    }

    else
    {

      v18 = OUTLINED_FUNCTION_40_4();
      v19(v18);
    }

    v20 = v1[48];
    v21 = sub_23DEF1D18();
    v1[141] = OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v21);
    OUTLINED_FUNCTION_48_5(v22, 3);
    [v20 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v1[142] = v23;
    *v23 = v24;
    v23[1] = sub_23DEFB808;
    OUTLINED_FUNCTION_80_2();

    return sub_23DE3B9A4();
  }
}

uint64_t sub_23DEFAC58()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1048);

  *(v0 + 1096) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_95_0();
  a53 = v56;
  a54 = v57;
  OUTLINED_FUNCTION_116_1();
  a52 = v54;
  v58 = *(v54 + 1096);
  v59 = [v58 bundleIdentifier];

  if (!v59)
  {
    sub_23E1FDC1C();
    sub_23E1FDBDC();
    OUTLINED_FUNCTION_37();
  }

  v60 = [*(v54 + 1080) valueType];
  v61 = [v60 wf:v59 contentItemClassWithAppBundleIdentifier:?];

  if (v61 && (swift_getObjCClassMetadata(), sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    v62 = *(v54 + 1080);

    v63 = [v62 valueType];
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (v64)
    {
      v65 = [v64 unitType];

      type metadata accessor for LNMeasurementUnitType(0);
      v67 = MEMORY[0x277D733E8];
    }

    else
    {

      v65 = 0;
      v66 = 0;
      v67 = 0;
      *(v54 + 232) = 0;
      *(v54 + 240) = 0;
    }

    v89 = *(v54 + 1080);
    v90 = *(v54 + 768);
    v91 = *(v54 + 376);
    v92 = *(v54 + 344);
    *(v54 + 224) = v65;
    *(v54 + 248) = v66;
    *(v54 + 256) = v67;
    sub_23DF05FA0(v54 + 224, v54 + 264, &qword_27E32D6B0, &unk_23E229730);
    v93 = [v89 valueType];
    v94 = OUTLINED_FUNCTION_128_0();
    v95(v94);
    v96 = v91;
    sub_23E1FE0CC();
    static WFContentItem.toolkitTypeDefinition(context:)(v90, v92);

    v97 = OUTLINED_FUNCTION_66();
    v98(v97);
    v99 = OUTLINED_FUNCTION_129_1();
    v100(v99);
    sub_23DE58BD0(v54 + 224, &qword_27E32D6B0, &unk_23E229730);
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_27_7();
    OUTLINED_FUNCTION_108_1();
    v113 = v102;
    v114 = v101;
    OUTLINED_FUNCTION_107_1();
    v115 = v104;
    v116 = v103;
    v117 = *(v54 + 504);
    v118 = *(v54 + 496);
    v119 = *(v54 + 472);
    v120 = *(v54 + 464);
    v121 = *(v54 + 440);
    v122 = *(v54 + 416);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_78_3();

    return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, 0, a41, a42, a43, a44, a45, a46);
  }

  else
  {
    v68 = *(v54 + 912);
    v69 = *(v54 + 352);
    sub_23E1FCB9C();
    v70 = v69;
    sub_23E1FB7BC();
    v71 = sub_23E1FD02C();
    v72 = sub_23E1FE1BC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v54 + 912);
      v74 = *(v54 + 904);
      v123 = *(v54 + 592);
      v75 = OUTLINED_FUNCTION_185_1();
      a41 = swift_slowAlloc();
      *v75 = 136315394;
      *(v75 + 4) = sub_23DE56B40(v74, v73, &a41);
      *(v75 + 12) = 2080;
      v76 = [v55 identifier];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_193_0();
      v77 = sub_23DE56B40(v74, v55, &a41);

      *(v75 + 14) = v77;
      OUTLINED_FUNCTION_211(&dword_23DE30000, v78, v79, "Missing content item class for parameter %s in action: %s, throwing missingLinkParameterContentItem");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v68 + 8))(v123, v70);
    }

    else
    {

      v80 = OUTLINED_FUNCTION_40_4();
      v81(v80);
    }

    v82 = *(v54 + 384);
    v83 = sub_23DEF1D18();
    *(v54 + 1104) = OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v83);
    OUTLINED_FUNCTION_48_5(v84, 5);
    [v82 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v54 + 1112) = v85;
    *v85 = v86;
    v85[1] = sub_23DEFB308;
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_78_3();

    return sub_23DE3B9A4();
  }
}

uint64_t sub_23DEFB308()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();

  v45 = OUTLINED_FUNCTION_54();
  v46(v45);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[140];
  v48 = v46[135];
  swift_willThrow();

  v49 = OUTLINED_FUNCTION_79();
  v50(v49);
  v60 = v46[138];
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v60, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFB808()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFB92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v44 = OUTLINED_FUNCTION_197_0();
  v45(v44);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFBAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = *(v46 + 1144);
  swift_willThrow();

  v48 = OUTLINED_FUNCTION_79();
  v49(v48);
  v59 = *(v46 + 1128);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v59, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFBCE8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1152);

  *(v0 + 1168) = [v1 intentDescription];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFBD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1168);
  if (v45)
  {
    v46 = sub_23DF05EB0(*(v44 + 904), *(v44 + 912), v45);
    *(v44 + 1176) = v46;
    if (v46)
    {
      v47 = v46;
      v48 = [v46 codableAttribute];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 wf_contentItemClass];

        if (v50)
        {
          swift_getObjCClassMetadata();
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_20();
          if (swift_dynamicCastMetatype())
          {

            sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
            OUTLINED_FUNCTION_20();
            v51 = swift_dynamicCastMetatype();
            if (v51)
            {
              v52 = sub_23DE38DA8(0, &qword_27E32D6B8, 0x277CD3D50);
              v51 = v47;
              v53 = v52;
              v54 = MEMORY[0x277D733F0];
            }

            else
            {
              v53 = 0;
              v54 = 0;
              *(v44 + 152) = 0;
              *(v44 + 160) = 0;
            }

            v71 = *(v44 + 888);
            v72 = *(v44 + 880);
            v73 = *(v44 + 872);
            v74 = *(v44 + 760);
            v75 = *(v44 + 728);
            v76 = *(v44 + 712);
            v77 = *(v44 + 704);
            v98 = *(v44 + 376);
            v100 = *(v44 + 896);
            v102 = *(v44 + 344);
            *(v44 + 144) = v51;
            *(v44 + 168) = v53;
            *(v44 + 176) = v54;
            sub_23DF05FA0(v44 + 144, v44 + 184, &qword_27E32D6B0, &unk_23E229730);
            (*(v76 + 104))(v75, *MEMORY[0x277D733B8], v77);
            (*(v72 + 16))(v71, v100, v73);
            v78 = v98;
            sub_23E1FE0DC();
            static WFContentItem.toolkitTypeDefinition(context:)(v74, v102);
            v79 = *(v44 + 896);
            v80 = *(v44 + 880);
            v81 = *(v44 + 872);
            v82 = *(v44 + 760);
            v83 = *(v44 + 744);
            v84 = *(v44 + 736);

            (*(v83 + 8))(v82, v84);
            (*(v80 + 8))(v79, v81);
            sub_23DE58BD0(v44 + 144, &qword_27E32D6B0, &unk_23E229730);
            OUTLINED_FUNCTION_126_0();
            OUTLINED_FUNCTION_43_3();
            OUTLINED_FUNCTION_2_17();
            OUTLINED_FUNCTION_108_1();
            v96 = v86;
            v97 = v85;
            OUTLINED_FUNCTION_107_1();
            OUTLINED_FUNCTION_176_1(v87);
            v99 = *(v44 + 440);
            v101 = *(v44 + 416);

            OUTLINED_FUNCTION_19();
            OUTLINED_FUNCTION_115_1();

            return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v96, v97, a31, a32, a33, a34, a35, a36, v99, v101, 0, a40, a41, a42, a43, a44);
          }
        }
      }

      v61 = *(v44 + 384);
      v62 = sub_23DEF1D18();
      *(v44 + 1184) = OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v62);
      OUTLINED_FUNCTION_48_5(v63, 8);
      [v61 stateClass];
      swift_getObjCClassMetadata();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v44 + 1192) = v58;
      *v58 = v64;
      v60 = sub_23DEFC2FC;
    }

    else
    {
      v65 = *(v44 + 384);
      v66 = sub_23DEF1D18();
      *(v44 + 1208) = OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v66);
      OUTLINED_FUNCTION_48_5(v67, 7);
      [v65 stateClass];
      swift_getObjCClassMetadata();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v44 + 1216) = v58;
      *v58 = v68;
      v60 = sub_23DEFC80C;
    }
  }

  else
  {
    v55 = *(v44 + 384);
    v56 = sub_23DEF1D18();
    *(v44 + 1232) = OUTLINED_FUNCTION_31_5(&type metadata for WFParameter.ToolKitConversionError, v56);
    OUTLINED_FUNCTION_48_5(v57, 6);
    [v55 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v44 + 1240) = v58;
    *v58 = v59;
    v60 = sub_23DEFCD0C;
  }

  v58[1] = v60;
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_115_1();

  return sub_23DE3B9A4();
}

uint64_t sub_23DEFC2FC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFC420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1176);

  v46 = OUTLINED_FUNCTION_54();
  v47(v46);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFC608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[150];
  v48 = v46[147];
  v49 = v46[146];
  swift_willThrow();

  v50 = OUTLINED_FUNCTION_79();
  v51(v50);
  v61 = v46[148];
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v61, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFC80C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();

  v45 = OUTLINED_FUNCTION_54();
  v46(v45);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFCB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[153];
  v48 = v46[146];
  swift_willThrow();

  v49 = OUTLINED_FUNCTION_79();
  v50(v49);
  v60 = v46[151];
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v60, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFCD0C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 1248) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = *(v46 + 1248);
  swift_willThrow();

  v48 = OUTLINED_FUNCTION_79();
  v49(v48);
  v59 = *(v46 + 1232);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v59, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFD024()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 1264) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEFD13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  swift_willThrow();
  v47 = OUTLINED_FUNCTION_54();
  v48(v47);
  v58 = *(v46 + 1264);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v58, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFD324()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1288);

  *(v0 + 1312) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFD3A4()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 1312);
  if (v1)
  {
    v2 = [*(v0 + 1312) valueType];
    v3 = [v2 wf:v1 parameterDefinitionWithParameterMetadata:?];
    *(v0 + 1320) = v3;

    if (v3)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 enumMetadata];
        *(v0 + 1328) = v5;
        if (v5)
        {

          OUTLINED_FUNCTION_174_1();
          *(v0 + 1336) = swift_allocObject();
          *(v0 + 1344) = sub_23E1FDEBC();
          OUTLINED_FUNCTION_37();
          sub_23E1FDE6C();
          OUTLINED_FUNCTION_78();
          goto LABEL_12;
        }

        v7 = *(v0 + 1312);
        v6 = *(v0 + 352);
      }

      else
      {
        v6 = *(v0 + 1312);
        v7 = *(v0 + 352);
      }
    }

    else
    {
      v6 = *(v0 + 1312);
    }
  }

  else
  {
    v6 = *(v0 + 352);
  }

  v8 = *(v0 + 352);
  *(v0 + 1360) = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
LABEL_12:
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DEFD538()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1280);

  *(v0 + 1352) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFD5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1352);
  v46 = *(v44 + 1336);
  v47 = *(v44 + 1328);
  v48 = *(v44 + 664);
  v49 = *(v44 + 632);
  v50 = *(v44 + 624);
  v51 = [v45 bundleIdentifier];

  v52 = sub_23E1FDC1C();
  v54 = v53;

  v46[2] = v52;
  v46[3] = v54;
  v55 = [v47 identifier];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_193_0();
  v46[4] = v51;
  v46[5] = v54;
  *v48 = v46;
  (*(v49 + 104))(v48, *MEMORY[0x277D72D28], v50);
  sub_23E1FE1EC();
  v56 = *(v44 + 1328);
  v57 = *(v44 + 1320);
  v58 = *(v44 + 1312);
  v88 = *(v44 + 896);
  v59 = *(v44 + 880);
  v60 = *(v44 + 872);
  v61 = *(v44 + 664);
  v62 = *(v44 + 632);
  v63 = *(v44 + 624);
  v64 = *(v44 + 344);

  (*(v62 + 8))(v61, v63);
  (*(v59 + 8))(v88, v60);
  v65 = *MEMORY[0x277D72B48];
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  (*(v66 + 104))(v64, v65);
  OUTLINED_FUNCTION_1_19();
  v79 = v68;
  v80 = v67;
  v81 = *(v44 + 784);
  v82 = *(v44 + 776);
  v83 = *(v44 + 768);
  v84 = *(v44 + 760);
  v85 = *(v44 + 752);
  v86 = *(v44 + 728);
  OUTLINED_FUNCTION_27_7();
  v87 = *(v44 + 568);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_137_1(v69);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, v79, v80, v81, v82, v83, v84, v85, v86, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v87, a31, a32, a33, a34, a35, a36, a37, 0, v88, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFDAD0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1280);

  *(v0 + 1368) = [v1 appIntentDescriptor];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFDB4C()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[171];
  v2 = [v1 intentIdentifier];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_58_0();
  v3 = sub_23E1FDBDC();
  v4 = WFCapitalizeFirstLetter();

  if (v4)
  {
    sub_23E1FDC1C();
  }

  OUTLINED_FUNCTION_216();
  v5 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v5);

  v0[172] = v10;
  v0[173] = v11;
  v0[174] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  v6 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEFDC94()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1280);

  *(v0 + 1400) = [v1 appIntentDescriptor];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFE69C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1408);

  *(v0 + 1432) = [v1 queryMetadata];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFE718()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[179];
  v2 = [v1 entityType];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_58_0();
  v3 = sub_23E1FDBDC();
  v4 = WFCapitalizeFirstLetter();

  if (v4)
  {
    sub_23E1FDC1C();
  }

  OUTLINED_FUNCTION_216();
  v5 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v5);

  v0[180] = v10;
  v0[181] = v11;
  v0[182] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  v6 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEFE860()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1408);

  *(v0 + 1464) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEFF27C()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFFCEC()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1488) = v0;

  v5 = *(v2 + 1472);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEFFE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = OUTLINED_FUNCTION_197_0();
  v46(v45);
  v58 = *(v44 + 1488);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_27_7();
  v57 = *(v44 + 568);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_137_1(v47);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_115_1();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v57, a31, a32, a33, a34, a35, a36, a37, a38, a39, v58, a41, a42, a43, a44);
}

uint64_t sub_23DF00008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF000C8, 0, 0);
}

uint64_t sub_23DF000C8()
{
  OUTLINED_FUNCTION_142_0();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [*(v0 + 96) key];
    v2 = sub_23E1FDC1C();
    v1 = v4;
  }

  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  *(v0 + 144) = v5;
  if (v5)
  {
    sub_23E1FB7BC();
    OUTLINED_FUNCTION_49();
    *(v0 + 152) = sub_23E1FDBDC();
    *(v0 + 160) = sub_23E1FDECC();
    *(v0 + 168) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
LABEL_8:
    OUTLINED_FUNCTION_79_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v6 = swift_dynamicCastObjCClass();
  *(v0 + 224) = v6;
  if (v6)
  {
    sub_23E1FDECC();
    sub_23E1FB7BC();
    *(v0 + 232) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_8;
  }

  v10 = *(v0 + 96);
  sub_23E1FB7BC();
  v11 = [v10 definition];
  v12 = [v11 objectForKey_];

  if (v12)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  OUTLINED_FUNCTION_201(v36, v35);
  if (!v13)
  {
    sub_23DE58BD0(v0 + 16, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_19;
  }

  if ((OUTLINED_FUNCTION_210() & 1) == 0)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  if ((*(v0 + 272) & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = 1;
LABEL_20:
  *(v0 + 274) = v14;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && [v15 loadsDefaultStateAsynchronously])
  {
    OUTLINED_FUNCTION_54_3();

LABEL_28:
    OUTLINED_FUNCTION_194_1();

    v32 = OUTLINED_FUNCTION_119_1();

    return v33(v32);
  }

  v16 = sub_23E1FDBDC();
  v17 = OUTLINED_FUNCTION_140_1();
  v19 = [v17 v18];

  if (!v19)
  {
LABEL_27:

    sub_23E1FD3AC();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    goto LABEL_28;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 264) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_91_3(v20);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);

  return sub_23DF01784(v24, v26, v27, v22, v23, v25);
}

uint64_t sub_23DF00464()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 152);

  *(v0 + 176) = OUTLINED_FUNCTION_168_1(v2, sel_parameterMetadataForIdentifier_);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DF004E0()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 176);
  if (!v1)
  {

    sub_23E1FD3AC();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
LABEL_19:
    OUTLINED_FUNCTION_194_1();

    v27 = OUTLINED_FUNCTION_119_1();

    return v28(v27);
  }

  if (([v1 isOptional] & 1) != 0 || (OUTLINED_FUNCTION_217() & 1) != 0 || (OUTLINED_FUNCTION_217() & 2) != 0)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 176);
  v3 = [v2 valueType];
  v4 = [v3 wf:v2 parameterDefinitionWithParameterMetadata:0 dynamicOptionsSupport:?];

  if (v4)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 isUniqueEntity];

      if (v6)
      {
LABEL_8:
        v7 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  *(v0 + 184) = sub_23E1FC7EC();
  if (swift_dynamicCastClass())
  {
    *(v0 + 192) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v29 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }

  v7 = 0;
LABEL_9:
  *(v0 + 273) = v7;
  if ((OUTLINED_FUNCTION_217() & 1) == 0)
  {
    if ((OUTLINED_FUNCTION_217() & 2) != 0 || (objc_opt_self(), OUTLINED_FUNCTION_20(), (v8 = swift_dynamicCastObjCClass()) != 0) && [v8 loadsDefaultStateAsynchronously])
    {
      v9 = *(v0 + 176);
      OUTLINED_FUNCTION_54_3();
    }

    else
    {

      sub_23E1FD3AC();
      OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      sub_23DF061AC(*(v0 + 120), *(v0 + 48));
    }

    goto LABEL_19;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 216) = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_76_3(v14);

  return sub_23DF01784(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_23DF00784()
{
  OUTLINED_FUNCTION_23();

  *(v0 + 200) = sub_23E1FC7DC();
  *(v0 + 208) = v1;
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DF007E8()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 128) == *(v0 + 200) && *(v0 + 136) == *(v0 + 208))
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_23E1FE75C();

    v3 = v2 ^ 1;
  }

  *(v0 + 273) = v3 & 1;
  if ([*(v0 + 176) capabilities])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 216) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_76_3(v6);

    return sub_23DF01784(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    if (([*(v0 + 176) capabilities] & 2) != 0 || (objc_opt_self(), OUTLINED_FUNCTION_20(), (v4 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v4, sel_loadsDefaultStateAsynchronously))
    {
      v5 = *(v0 + 176);
      OUTLINED_FUNCTION_54_3();
    }

    else
    {

      sub_23E1FD3AC();
      OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      sub_23DF061AC(*(v0 + 120), *(v0 + 48));
    }

    OUTLINED_FUNCTION_194_1();

    v19 = OUTLINED_FUNCTION_119_1();

    return v20(v19);
  }
}

uint64_t sub_23DF00990()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DF00A90()
{
  OUTLINED_FUNCTION_4();

  sub_23DF061AC(*(v0 + 120), *(v0 + 48));
  v1 = *(v0 + 273);
  OUTLINED_FUNCTION_194_1();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DF00B1C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 224);

  *(v0 + 240) = [v1 intentDescription];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DF00B94()
{
  OUTLINED_FUNCTION_142_0();
  v1 = *(v0 + 240);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = sub_23DF05EB0(*(v0 + 128), *(v0 + 136), v1);
  *(v0 + 248) = v2;
  if (!v2)
  {
    v5 = *(v0 + 240);
LABEL_9:

LABEL_10:
    v6 = [*(v0 + 96) definition];
    v7 = [v6 objectForKey_];

    if (v7)
    {
      sub_23E1FE49C();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    OUTLINED_FUNCTION_201(v42, v41);
    if (v8)
    {
      if (OUTLINED_FUNCTION_210())
      {
        if ((*(v0 + 272) & 1) == 0)
        {
          goto LABEL_24;
        }

        v9 = 1;
LABEL_19:
        *(v0 + 274) = v9;
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        v10 = swift_dynamicCastObjCClass();
        if (v10 && [v10 loadsDefaultStateAsynchronously])
        {
          OUTLINED_FUNCTION_54_3();

LABEL_33:
          OUTLINED_FUNCTION_194_1();

          v39 = OUTLINED_FUNCTION_119_1();

          return v40(v39);
        }

        v11 = sub_23E1FDBDC();
        v12 = OUTLINED_FUNCTION_140_1();
        v14 = [v12 v13];

        if (v14)
        {
          swift_unknownObjectRelease();
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 264) = v15;
          *v15 = v16;
          OUTLINED_FUNCTION_91_3(v15);
          v19 = *(v0 + 104);
          goto LABEL_27;
        }

LABEL_24:

        sub_23E1FD3AC();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_18_0();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        goto LABEL_33;
      }
    }

    else
    {
      sub_23DE58BD0(v0 + 16, &qword_27E32C320, &unk_23E224B40);
    }

    v9 = 0;
    goto LABEL_19;
  }

  v3 = v2;
  if ([v2 valueStyle] != 1)
  {
    v5 = *(v0 + 240);

    goto LABEL_9;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 loadsDefaultStateAsynchronously])
  {
    OUTLINED_FUNCTION_54_3();

LABEL_32:
    v38 = *(v0 + 248);

    goto LABEL_33;
  }

  v24 = sub_23E1FDBDC();
  v25 = OUTLINED_FUNCTION_140_1();
  v27 = [v25 v26];

  if (!v27)
  {

    sub_23E1FD3AC();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    goto LABEL_32;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 256) = v28;
  *v28 = v29;
  v28[1] = sub_23DF00F24;
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
LABEL_27:
  v30 = *(v0 + 96);
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);

  return sub_23DF01784(v19, v31, v32, v17, v18, v30);
}

uint64_t sub_23DF00F24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DF01024()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 112);
  sub_23E1FD3AC();
  v3 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_93(v3, 1, v0);
  if (v4)
  {
    sub_23DE58BD0(v2, &unk_27E32D730, &unk_23E223790);
    v8 = *(v1 + 48);
    v9 = 1;
  }

  else
  {
    v5 = *(v1 + 48);
    OUTLINED_FUNCTION_21();
    v6 = OUTLINED_FUNCTION_35_0();
    v7(v6);
    v8 = v5;
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v0);
  v10 = *(v1 + 248);

  v11 = *(v1 + 8);

  return v11(1);
}

uint64_t sub_23DF01134()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DF01234()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 104);
  sub_23E1FD3AC();
  v3 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_93(v3, 1, v0);
  if (v4)
  {
    sub_23DE58BD0(v2, &unk_27E32D730, &unk_23E223790);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v0);
    v10 = *(v1 + 274);
  }

  else
  {
    OUTLINED_FUNCTION_21();
    v8 = OUTLINED_FUNCTION_35_0();
    v9(v8);
    v10 = 1;
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v0);
  }

  v14 = *(v1 + 8);

  return v14(v10);
}

uint64_t WFParameter.toolkitParameterFlags(for:)()
{
  v1 = v0;
  sub_23E1FD76C();
  OUTLINED_FUNCTION_6_0();
  v43 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  *&v42[0] = MEMORY[0x277D84F90];
  sub_23DF06038(&unk_280DAE590, MEMORY[0x277D73128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D6F8, &qword_23E229740);
  sub_23DF0607C(&unk_280DAE410, &unk_27E32D6F8, &qword_23E229740);
  sub_23E1FE4EC();
  if ([v0 isHidden])
  {
    sub_23E1FD75C();
    v5 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v5, v6);
    v7 = *(v43 + 8);
    v8 = OUTLINED_FUNCTION_203();
    v7(v8);
    v9 = OUTLINED_FUNCTION_164_1();
    v7(v9);
  }

  v10 = [v1 definition];
  v11 = [v10 objectForKey_];

  if (v11)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
    sub_23DE58BD0(v42, &qword_27E32C320, &unk_23E224B40);
    sub_23E1FD74C();
    v12 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v12, v13);
    v14 = *(v43 + 8);
    v15 = OUTLINED_FUNCTION_203();
    v14(v15);
    v16 = OUTLINED_FUNCTION_164_1();
    v14(v16);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    sub_23DE58BD0(v42, &qword_27E32C320, &unk_23E224B40);
  }

  v17 = [v1 key];
  v18 = sub_23E1FDC1C();
  v20 = v19;

  if (v18 == sub_23E1FDC1C() && v20 == v21)
  {

    goto LABEL_13;
  }

  v23 = sub_23E1FE75C();

  if (v23)
  {
LABEL_13:
    sub_23E1FD73C();
    v24 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v24, v25);
    v26 = *(v43 + 8);
    v27 = OUTLINED_FUNCTION_203();
    v26(v27);
    v28 = OUTLINED_FUNCTION_164_1();
    v26(v28);
  }

  v29 = [v1 key];
  v30 = sub_23E1FDC1C();
  v32 = v31;

  if (v30 == sub_23E1FDC1C() && v32 == v33)
  {

    goto LABEL_21;
  }

  v35 = sub_23E1FE75C();

  if (v35)
  {
LABEL_21:
    sub_23E1FD73C();
    v37 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v37, v38);
    v39 = *(v43 + 8);
    v40 = OUTLINED_FUNCTION_203();
    v39(v40);
    v41 = OUTLINED_FUNCTION_164_1();
    return (v39)(v41);
  }

  return result;
}

uint64_t sub_23DF01784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_23E1FDA1C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  v6[11] = swift_task_alloc();
  v8 = sub_23E1FD41C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for ParameterStateToTypedValueContext(0);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF0190C, 0, 0);
}

uint64_t sub_23DF0190C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[14];
  v2 = v0[4];
  (*(v0[13] + 16))(v1, v0[3], v0[12]);
  ParameterStateToTypedValueContext.init(from:)(v1);
  OUTLINED_FUNCTION_58_0();
  v3 = sub_23E1FDBDC();
  v4 = [v2 defaultParameterStateForKey_];
  v0[16] = v4;

  if (v4)
  {
    swift_getObjectType();
    sub_23E1FD9EC();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v0[17] = v5;
    *v5 = v6;
    v5[1] = sub_23DF01AB8;

    return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)();
  }

  else
  {
    sub_23DF0621C(v0[15]);
    sub_23E1FD3AC();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);

    OUTLINED_FUNCTION_19();

    return v12();
  }
}

uint64_t sub_23DF01AB8()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_50();
  v5(v4);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DF01C38()
{
  OUTLINED_FUNCTION_33_0();
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  sub_23DF0621C(v1);
  sub_23E1FD3AC();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_35_0();
  v6(v5);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_23DF01D2C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  swift_unknownObjectRelease();
  sub_23DF0621C(v1);
  sub_23E1FD3AC();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  sub_23DE58BD0(v2, &unk_27E32D730, &unk_23E223790);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);

  OUTLINED_FUNCTION_19();

  return v9();
}

uint64_t sub_23DF01E08(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v11 = sub_23E1FD33C();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_23E1FD3DC();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23E1FD46C();
  MEMORY[0x28223BE20](v15 - 8);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23E1FD3AC();
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x28223BE20](v17);
  v59 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_23E1FD03C();
  v57 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FCB9C();
  v22 = a2;
  sub_23E1FB7BC();
  v23 = sub_23E1FD02C();
  v24 = sub_23E1FE19C();

  v25 = os_log_type_enabled(v23, v24);
  v56 = a3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v55 = a1;
    v27 = v26;
    v53 = swift_slowAlloc();
    v68 = v53;
    *v27 = 136315394;
    v28 = [v22 identifier];
    v51 = v22;
    v29 = v28;
    v30 = sub_23E1FDC1C();
    v52 = v24;
    v31 = a4;
    v32 = v30;
    v54 = v19;
    v33 = a6;
    v35 = v34;

    v36 = v32;
    a4 = v31;
    v37 = sub_23DE56B40(v36, v35, &v68);
    a6 = v33;

    *(v27 + 4) = v37;
    *(v27 + 12) = 2080;
    v38 = a3;
    v39 = v51;
    *(v27 + 14) = sub_23DE56B40(v38, v31, &v68);
    _os_log_impl(&dword_23DE30000, v23, v52, "Creating deferred default value %s:%s", v27, 0x16u);
    v40 = v53;
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v40, -1, -1);
    v41 = v27;
    a1 = v55;
    MEMORY[0x23EF074C0](v41, -1, -1);

    (*(v57 + 8))(v21, v54);
  }

  else
  {

    (*(v57 + 8))(v21, v19);
    v39 = v22;
  }

  sub_23E1FD34C();
  v42 = swift_allocBox();
  sub_23E1FD3EC();
  (*(v58 + 16))(v64, a6, v60);
  v43 = [v39 identifier];
  v44 = sub_23E1FDC1C();
  v46 = v45;

  *v13 = v44;
  v13[1] = v46;
  v13[2] = v56;
  v13[3] = a4;
  (*(v66 + 104))(v13, *MEMORY[0x277D728F8], v67);
  sub_23E1FB7BC();
  sub_23E1FD32C();
  v47 = v59;
  *v59 = v42;
  v49 = v62;
  v48 = v63;
  (*(v62 + 104))(v47, *MEMORY[0x277D72A40], v63);
  (*(v49 + 32))(a1, v47, v48);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v48);
  return 1;
}

uint64_t WFParameter.toolkitUnitType.getter()
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    sub_23DF05F00(v1, &selRef_unitType);
    if (v2)
    {
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();

      v3 = sub_23E1FE2BC();

      return v3;
    }

    return 22;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    return 22;
  }

  return sub_23E1FE2BC();
}

uint64_t sub_23DF02448@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72ED0];
    goto LABEL_13;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72ED0];
  v10 = MEMORY[0x277D72ED0];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = sub_23E1FDC1C();
  v13 = v12;
  if (v11 == sub_23E1FDC1C() && v13 == v14)
  {
    v10 = MEMORY[0x277D72EA0];
    goto LABEL_13;
  }

  v16 = sub_23E1FE75C();

  if (v16)
  {
    v10 = MEMORY[0x277D72EA0];
    goto LABEL_14;
  }

  v21 = sub_23E1FDC1C();
  v23 = v22;
  if (v21 == sub_23E1FDC1C() && v23 == v24)
  {
    v10 = MEMORY[0x277D72EC0];
    goto LABEL_13;
  }

  v26 = sub_23E1FE75C();

  if (v26)
  {
    v10 = MEMORY[0x277D72EC0];
    goto LABEL_14;
  }

  v27 = sub_23E1FDC1C();
  v29 = v28;
  if (v27 == sub_23E1FDC1C() && v29 == v30)
  {
    v10 = MEMORY[0x277D72EC8];
    goto LABEL_13;
  }

  v32 = sub_23E1FE75C();

  if (v32)
  {
    v10 = MEMORY[0x277D72EC8];
    goto LABEL_14;
  }

  v33 = sub_23E1FDC1C();
  v35 = v34;
  if (v33 == sub_23E1FDC1C() && v35 == v36)
  {
    v10 = MEMORY[0x277D72EE8];
    goto LABEL_13;
  }

  v38 = sub_23E1FE75C();

  if (v38)
  {
    v10 = MEMORY[0x277D72EE8];
    goto LABEL_14;
  }

  v39 = sub_23E1FDC1C();
  v41 = v40;
  if (v39 == sub_23E1FDC1C() && v41 == v42)
  {
    v10 = MEMORY[0x277D72EE0];
    goto LABEL_13;
  }

  v44 = sub_23E1FE75C();

  if (v44)
  {
    v10 = MEMORY[0x277D72EE0];
    goto LABEL_14;
  }

  v45 = sub_23E1FDC1C();
  v47 = v46;
  if (v45 == sub_23E1FDC1C() && v47 == v48)
  {
    v10 = MEMORY[0x277D72EB0];
    goto LABEL_13;
  }

  v50 = sub_23E1FE75C();

  if (v50)
  {
    v10 = MEMORY[0x277D72EB0];
    goto LABEL_14;
  }

  v51 = sub_23E1FDC1C();
  v53 = v52;
  if (v51 == sub_23E1FDC1C() && v53 == v54)
  {
    v10 = MEMORY[0x277D72EA8];
    goto LABEL_13;
  }

  v56 = sub_23E1FE75C();

  if (v56)
  {
    v10 = MEMORY[0x277D72EA8];
    goto LABEL_14;
  }

  v57 = sub_23E1FDC1C();
  v59 = v58;
  if (v57 == sub_23E1FDC1C() && v59 == v60)
  {
    v10 = MEMORY[0x277D72E98];
    goto LABEL_13;
  }

  v62 = sub_23E1FE75C();

  if (v62)
  {
    v10 = MEMORY[0x277D72E98];
    goto LABEL_14;
  }

  v63 = sub_23E1FDC1C();
  v65 = v64;
  if (v63 == sub_23E1FDC1C() && v65 == v66)
  {
    v10 = MEMORY[0x277D72ED8];
    goto LABEL_13;
  }

  v68 = sub_23E1FE75C();

  if (v68)
  {
    v10 = MEMORY[0x277D72ED8];
    goto LABEL_14;
  }

  v69 = sub_23E1FDC1C();
  v71 = v70;
  if (v69 == sub_23E1FDC1C() && v71 == v72)
  {
    v10 = MEMORY[0x277D72EF0];
    goto LABEL_13;
  }

  v74 = sub_23E1FE75C();

  if (v74)
  {
    v10 = MEMORY[0x277D72EF0];
    goto LABEL_14;
  }

  v75 = sub_23E1FDC1C();
  v77 = v76;
  v78 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72EB8];
  if (v75 == v78 && v77 == v79)
  {
LABEL_13:

    goto LABEL_14;
  }

  v81 = sub_23E1FE75C();

  if ((v81 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v17 = *v10;
  v18 = sub_23E1FD5AC();
  v19 = *(*(v18 - 8) + 104);

  return v19(a2, v17, v18);
}

uint64_t sub_23DF02A74@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72F18];
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72F18];
  v10 = MEMORY[0x277D72F18];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = sub_23E1FDC1C();
  v13 = v12;
  if (v11 == sub_23E1FDC1C() && v13 == v14)
  {
    v10 = MEMORY[0x277D72F08];
    goto LABEL_13;
  }

  v16 = sub_23E1FE75C();

  if (v16)
  {
    v10 = MEMORY[0x277D72F08];
    goto LABEL_14;
  }

  v21 = sub_23E1FDC1C();
  v23 = v22;
  v24 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72F10];
  if (v21 == v24 && v23 == v25)
  {
    goto LABEL_13;
  }

  v27 = sub_23E1FE75C();

  if ((v27 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v17 = *v10;
  v18 = sub_23E1FD5EC();
  v19 = *(*(v18 - 8) + 104);

  return v19(a2, v17, v18);
}

uint64_t sub_23DF02C68@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72F38];
    goto LABEL_13;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72F38];
  v10 = MEMORY[0x277D72F38];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = sub_23E1FDC1C();
  v13 = v12;
  if (v11 == sub_23E1FDC1C() && v13 == v14)
  {
    v10 = MEMORY[0x277D72F40];
    goto LABEL_13;
  }

  v16 = sub_23E1FE75C();

  if (v16)
  {
    v10 = MEMORY[0x277D72F40];
    goto LABEL_14;
  }

  v21 = sub_23E1FDC1C();
  v23 = v22;
  if (v21 == sub_23E1FDC1C() && v23 == v24)
  {
    v10 = MEMORY[0x277D72F48];
    goto LABEL_13;
  }

  v26 = sub_23E1FE75C();

  if (v26)
  {
    v10 = MEMORY[0x277D72F48];
    goto LABEL_14;
  }

  v27 = sub_23E1FDC1C();
  v29 = v28;
  v30 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72F30];
  if (v27 == v30 && v29 == v31)
  {
LABEL_13:

    goto LABEL_14;
  }

  v33 = sub_23E1FE75C();

  if ((v33 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v17 = *v10;
  v18 = sub_23E1FD5FC();
  v19 = *(*(v18 - 8) + 104);

  return v19(a2, v17, v18);
}

uint64_t sub_23DF02ED4(uint64_t a1)
{
  v1 = sub_23E1FD5FC();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v33 - v4;
  v38 = sub_23E1FD5EC();
  v5 = *(v38 - 8);
  v6 = MEMORY[0x28223BE20](v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_23E1FD5AC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  sub_23E1FD5CC();
  (*(v12 + 104))(v15, *MEMORY[0x277D72ED0], v11);
  v18 = sub_23DE6185C(v17, v15);
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (v18 & 1) != 0 && (sub_23E1FD60C(), v20 = v38, (*(v5 + 104))(v8, *MEMORY[0x277D72F18], v38), v21 = sub_23DE6197C(v10, v8), v22 = *(v5 + 8), v22(v8, v20), v22(v10, v20), (v21) && (v23 = v34, sub_23E1FD61C(), v25 = v35, v24 = v36, v26 = v37, (*(v36 + 104))(v35, *MEMORY[0x277D72F48], v37), v27 = sub_23DE619C4(v23, v25), v28 = *(v24 + 8), v28(v25, v26), v28(v23, v26), (v27) && (sub_23E1FD5DC() & 1) == 0 && (v29 = v33, v30 = v33 != 0, ((v30 ^ sub_23E1FD62C()) & 1) == 0))
  {
    v31 = (v29 != 0) ^ sub_23E1FD63C() ^ 1;
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_23DF032A4()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DF032E0()
{
  type metadata accessor for WFExecutionPlatform(0);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DF0332C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D320, &qword_23E2288A0);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DF03384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23E1FE75C() & 1;
  }
}

uint64_t sub_23DF033C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23E229690;
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

BOOL sub_23DF0342C(char *a1, char *a2)
{
  v29 = a1;
  v4 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v10 = *v2;
  OUTLINED_FUNCTION_111_0();
  sub_23DF06038(v11, v12);
  v34 = a2;
  v13 = sub_23E1FDADC();
  v31 = v10;
  v32 = v10 + 56;
  v14 = ~(-1 << *(v10 + 32));
  v33 = v6 + 16;
  v30 = v6 + 8;
  while (1)
  {
    v15 = v13 & v14;
    v16 = (1 << (v13 & v14)) & *(v32 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      v22 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v34;
      (*(v6 + 16))(v9, v34, v4);
      v35 = *v22;
      v25 = OUTLINED_FUNCTION_66();
      sub_23DF046D0(v25, v26, isUniquelyReferenced_nonNull_native);
      *v22 = v35;
      (*(v6 + 32))(v29, v24, v4);
      return v16 == 0;
    }

    v17 = *(v6 + 72) * v15;
    v18 = *(v6 + 16);
    v18(v9, *(v31 + 48) + v17, v4);
    OUTLINED_FUNCTION_111_0();
    sub_23DF06038(&qword_27E32D8D0, v19);
    v20 = sub_23E1FDB2C();
    v21 = *(v6 + 8);
    v21(v9, v4);
    if (v20)
    {
      break;
    }

    v13 = v15 + 1;
  }

  v21(v34, v4);
  v18(v29, *(v31 + 48) + v17, v4);
  return v16 == 0;
}

BOOL sub_23DF036C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v8 = sub_23E1FE87C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_23E1FE75C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_23E1FB7BC();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  sub_23E1FB7BC();
  v17 = OUTLINED_FUNCTION_58_0();
  sub_23DF04980(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_23DF0380C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_23E1FD3DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
  v27 = a2;
  v9 = sub_23E1FDADC();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_23DF04AE8(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_23DF06038(&qword_27E32D720, MEMORY[0x277D72B00]);
    v15 = sub_23E1FDB2C();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_23DF03AD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_23E1FE83C();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v11 = OUTLINED_FUNCTION_79();
  sub_23DF04D98(v11, v12, v13);
  *v3 = v15;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_23DF03BA0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23E1FBBDC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898);
  result = sub_23E1FE56C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_23DF033C8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
    result = sub_23E1FDADC();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23DF03EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  result = sub_23E1FE56C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_23DF033C8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_23E1FE84C();
    sub_23E1FDCCC();
    result = sub_23E1FE87C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23DF04154(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23E1FD3DC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D728, &unk_23E2298A0);
  result = sub_23E1FE56C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_23DF033C8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
    result = sub_23E1FDADC();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23DF044AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  result = sub_23E1FE56C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_23DF033C8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_23E1FE83C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23DF046D0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_23E1FBBDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23DF03BA0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_23DF05384(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
      v13 = sub_23E1FDADC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_23DF06038(&qword_27E32D8D0, MEMORY[0x277CFC118]);
        v15 = sub_23E1FDB2C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_23DF0501C(MEMORY[0x277CFC118]);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_23DF04980(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23DF03EF8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23DF0569C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_23E1FE84C();
      sub_23E1FDCCC();
      result = sub_23E1FE87C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_23E1FE75C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_23DF04EC4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_23DF04AE8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_23E1FD3DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23DF04154(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_23DF058D0(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
      v13 = sub_23E1FDADC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_23DF06038(&qword_27E32D720, MEMORY[0x277D72B00]);
        v15 = sub_23E1FDB2C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_23DF0501C(MEMORY[0x277D72B00]);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_23DF04D98(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23DF044AC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23DF05BE8(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_23E1FE83C();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_23DF05244();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_23DF04EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  v2 = *v0;
  v3 = sub_23E1FE55C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_23E1FB7BC();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23DF0501C(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1(0);
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = OUTLINED_FUNCTION_128_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *v1;
  v12 = sub_23E1FE55C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v2;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v5 + 32;
    for (i = v5 + 16; v20; result = (*(v5 + 32))(*(v13 + 48) + v25, v8, v3))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v5 + 72) * (v22 | (v17 << 6));
      (*(v5 + 16))(v8, *(v11 + 48) + v25, v3);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v2 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v13;
  }

  return result;
}

void *sub_23DF05244()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  v2 = *v0;
  v3 = sub_23E1FE55C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23DF05384(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23E1FBBDC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898);
  v7 = sub_23E1FE56C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
        result = sub_23E1FDADC();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23DF0569C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  result = sub_23E1FE56C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_23E1FE84C();
        sub_23E1FB7BC();
        sub_23E1FDCCC();
        result = sub_23E1FE87C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23DF058D0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23E1FD3DC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D728, &unk_23E2298A0);
  v7 = sub_23E1FE56C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
        result = sub_23E1FDADC();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23DF05BE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  result = sub_23E1FE56C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_23E1FE83C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_23DF05DD4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DF05E44(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C5E0, &qword_23E2265D0);
  v3 = sub_23E1FDDEC();

  return v3;
}

id sub_23DF05EB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();
  v5 = [a3 slotByName_];

  return v5;
}

uint64_t sub_23DF05F00(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_23E1FDC1C();
  }

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_23DF05FA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_49();
  v6(v5);
  return a2;
}

uint64_t sub_23DF05FF8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23DE38DA8(255, a2, a3);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DF06038(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DF0607C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t get_enum_tag_for_layout_string_So11WFParameterC9ActionKitE04ToolC15ConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23DF06100(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DF06140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23DF06184(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23DF061AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF0621C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterStateToTypedValueContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_11()
{
  *(v1 - 96) = 0;
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v3 = v0[67];
  *(v1 - 168) = v0[68];
  *(v1 - 160) = v3;
  v5 = v0[62];
  v4 = v0[63];
  *(v1 - 152) = v0[66];
  *(v1 - 144) = v4;
  v7 = v0[58];
  v6 = v0[59];
  *(v1 - 136) = v5;
  *(v1 - 128) = v6;
  v8 = v0[55];
  *(v1 - 120) = v7;
  *(v1 - 112) = v8;
  *(v1 - 104) = v0[52];
}

unint64_t OUTLINED_FUNCTION_11_10()
{
  *(v1 + 16) = v2;
  v4 = *(v3 - 160);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(v3 - 104) = v1;
  return v1 + v5 + *(v4 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  v3 = v0[67];
  *(v1 - 152) = v0[68];
  *(v1 - 144) = v3;
  v5 = v0[62];
  v4 = v0[63];
  *(v1 - 136) = v0[66];
  *(v1 - 128) = v4;
  v7 = v0[58];
  v6 = v0[59];
  *(v1 - 120) = v5;
  *(v1 - 112) = v6;
  v8 = v0[55];
  *(v1 - 104) = v7;
  *(v1 - 96) = v8;
  *(v1 - 88) = v0[52];
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  v3 = v0[68];
  *(v1 - 168) = v0[71];
  *(v1 - 160) = v3;
  v4 = v0[66];
  *(v1 - 152) = v0[67];
  *(v1 - 144) = v4;
  v5 = v0[62];
  *(v1 - 136) = v0[63];
  *(v1 - 128) = v5;
  v6 = v0[58];
  *(v1 - 120) = v0[59];
  *(v1 - 112) = v6;
  v7 = v0[52];
  *(v1 - 104) = v0[55];
  *(v1 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_18_12()
{
  v3 = v0[68];
  *(v1 - 160) = v0[71];
  *(v1 - 152) = v3;
  v4 = v0[66];
  *(v1 - 144) = v0[67];
  *(v1 - 136) = v4;
  v5 = v0[62];
  *(v1 - 128) = v0[63];
  *(v1 - 120) = v5;
  v6 = v0[58];
  *(v1 - 112) = v0[59];
  *(v1 - 104) = v6;
  v7 = v0[52];
  *(v1 - 96) = v0[55];
  *(v1 - 88) = v7;
}

__n128 OUTLINED_FUNCTION_19_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, unint64_t a22, unint64_t a23, unint64_t a24, unint64_t a25, unint64_t a26, unint64_t arg88, unint64_t a27)
{
  result = a20;
  a1[1] = a20;
  a1[2].n128_u64[0] = 0xD000000000000018;
  a1[2].n128_u64[1] = a27;
  a1[3].n128_u64[0] = 0xD00000000000001ALL;
  a1[3].n128_u64[1] = arg88;
  a1[4].n128_u64[0] = 0xD000000000000018;
  a1[4].n128_u64[1] = a26;
  a1[5].n128_u64[0] = 0xD00000000000001CLL;
  a1[5].n128_u64[1] = a25;
  a1[6].n128_u64[0] = 0xD000000000000020;
  a1[6].n128_u64[1] = a24;
  a1[7].n128_u64[0] = 0xD00000000000002BLL;
  a1[7].n128_u64[1] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1)
{

  return sub_23E1FE0DC();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_35_6()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return static WFContentItem.toolkitTypeDefinition(context:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[17];

  return sub_23DF01E08(v6, v4, v2, v7, v5, v3);
}

id OUTLINED_FUNCTION_74_4()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t OUTLINED_FUNCTION_88_3()
{
  result = 0;
  *(v2 - 120) = v0 & 0xC000000000000001;
  v4 = *(v1 + 520);
  *(v2 - 160) = v4;
  *(v2 - 168) = v4 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_3()
{
  v3 = v0[159];
  *(v1 - 96) = v0[112];
  v4 = v0[109];
  *(v1 - 120) = v0[82];
  *(v1 - 112) = v4;
  v5 = v0[43];
  *(v1 - 136) = v3;
  *(v1 - 128) = v5;
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_23E1FD97C();
}

uint64_t OUTLINED_FUNCTION_97_0()
{
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  *(v0 + 24) = sub_23DEFF27C;

  return swift_continuation_init();
}

id OUTLINED_FUNCTION_112_0()
{
  v2 = *(*(v0 - 96) + 64);

  return v2;
}

uint64_t OUTLINED_FUNCTION_113_0(unint64_t *a1)
{

  return sub_23DF05FF8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1)
{

  return sub_23E1FC9CC();
}

void *OUTLINED_FUNCTION_122_0()
{
  v2 = *(v1 + 496);
  *v2 = v0;
  return v2;
}

void OUTLINED_FUNCTION_130_1()
{
  v2 = *(v0 + 528);
  *(v1 - 136) = *(v0 + 1272);
  *(v1 - 128) = v2;
}

id OUTLINED_FUNCTION_133_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *v15 = a15;
  *(v15 + 4) = v16;
  *a1 = v16;

  return v16;
}

uint64_t OUTLINED_FUNCTION_135_1()
{

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_137_1@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  v6 = v2[62];
  v5 = v2[63];
  *(v3 - 144) = v2[66];
  *(v3 - 136) = v5;
  v8 = v2[58];
  v7 = v2[59];
  *(v3 - 128) = v6;
  *(v3 - 120) = v7;
  v9 = v2[55];
  *(v3 - 112) = v8;
  *(v3 - 104) = v9;
  *(v3 - 96) = v2[52];
}

uint64_t OUTLINED_FUNCTION_146_1(uint64_t a1)
{
  v4 = *(v1 + 544);
  *(v2 - 136) = *(v1 + 1272);
  *(v2 - 128) = v4;

  return sub_23E1FDC1C();
}

uint64_t OUTLINED_FUNCTION_154_0()
{

  return sub_23E1FD83C();
}

uint64_t OUTLINED_FUNCTION_155_0()
{

  return sub_23E1FD3CC();
}

uint64_t OUTLINED_FUNCTION_159_1(uint64_t a1)
{

  return sub_23E1FD4AC();
}

uint64_t OUTLINED_FUNCTION_161_1()
{
}

void OUTLINED_FUNCTION_162_0()
{
  *(v0 + 96) = 126;
  *(v0 + 104) = 0xE100000000000000;

  JUMPOUT(0x23EF044F0);
}

uint64_t OUTLINED_FUNCTION_163_0()
{

  return sub_23E1FD43C();
}

id OUTLINED_FUNCTION_168_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_170_1()
{
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;

  return sub_23E1FB7BC();
}

id OUTLINED_FUNCTION_171_1()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t OUTLINED_FUNCTION_173_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23E1FC9CC();
}

void OUTLINED_FUNCTION_176_1(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  v4 = v2[62];
  *(v3 - 144) = v2[63];
  *(v3 - 136) = v4;
  v5 = v2[58];
  *(v3 - 128) = v2[59];
  *(v3 - 120) = v5;
}

uint64_t OUTLINED_FUNCTION_181_0()
{

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_182_0()
{

  return sub_23DE5733C(v0);
}

id OUTLINED_FUNCTION_183_0(void *a1)
{

  return [a1 symbol];
}