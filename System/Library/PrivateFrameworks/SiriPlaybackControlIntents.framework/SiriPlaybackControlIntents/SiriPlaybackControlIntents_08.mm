uint64_t sub_2689768CC@<X0>(uint64_t a1@<X8>)
{
  if (sub_268B36524())
  {
    sub_2689BB2D8(a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_268976954()
{
  if (!sub_268B36524())
  {
    return 4;
  }

  v0 = sub_2689BC188();

  if (v0 == 7)
  {
    return 4;
  }

  return v0;
}

uint64_t sub_2689769A8()
{
  if (!sub_268B36524())
  {
    return 2;
  }

  v0 = sub_2689BC314();

  return v0;
}

uint64_t sub_2689769F4@<X0>(char *a1@<X8>)
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v9 = (v7 - v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v38 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  v17 = sub_268B36534();
  if (v38[1])
  {
    sub_268963658();
    if (v18)
    {
      if (qword_2802A4F30 != -1)
      {
        v18 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_14(v18, qword_2802CDA10);
      v19(v16);
      v20 = sub_268B37A34();
      v21 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        *v22 = 0;
        _os_log_impl(&dword_2688BB000, v20, v21, "UsoTask_increaseBy_common_Setting#shouldHandle Task is settings. Handling in controls", v22, 2u);
        OUTLINED_FUNCTION_12();
      }

      v23 = 2;
    }

    else
    {
      sub_2689633E8();
      if (v28)
      {
        if (qword_2802A4F30 != -1)
        {
          v28 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v28, qword_2802CDA10);
        v29(v1);
        v30 = sub_268B37A34();
        v31 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v31))
        {
          v32 = OUTLINED_FUNCTION_14();
          *v32 = 0;
          _os_log_impl(&dword_2688BB000, v30, v31, "UsoTask_increaseBy_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls", v32, 2u);
          OUTLINED_FUNCTION_12();
        }

        v23 = 0;
        v16 = v1;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v28 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v28, qword_2802CDA10);
        v33(v13);
        v34 = sub_268B37A34();
        v35 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v35))
        {
          v36 = OUTLINED_FUNCTION_14();
          *v36 = 0;
          _os_log_impl(&dword_2688BB000, v34, v35, "UsoTask_increaseBy_common_Setting#shouldHandle Task is not setting: Not handling in controls", v36, 2u);
          OUTLINED_FUNCTION_12();
        }

        v23 = 3;
        v16 = v13;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v17 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_14(v17, qword_2802CDA10);
    v24(v9);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v26))
    {
      v27 = OUTLINED_FUNCTION_14();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "UsoTask_increaseBy_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v27, 2u);
      OUTLINED_FUNCTION_12();
    }

    v23 = 3;
    v16 = v9;
  }

  result = (*(v5 + 8))(v16, v3);
  *a1 = v23;
  return result;
}

uint64_t sub_268976E60(uint64_t a1)
{
  result = sub_2689774AC(&qword_2802A6560, MEMORY[0x277D5F158], &protocol conformance descriptor for UsoTask_increaseBy_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268976FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268976FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268977050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689770A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689770F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26897714C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689771A0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689771F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268977258(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689772AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268977310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268977374(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689773D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_26897743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689774AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_268977560(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v47 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v8);
  v46 = (&v42 - v9);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v44 = *(v11 + 16);
  v45 = v16;
  v44(v15);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = a1;
    v20 = a4;
    v21 = a5;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "SkipTimeDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v19, 2u);
    v23 = v22;
    a5 = v21;
    a4 = v20;
    a1 = v43;
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v11 + 8);
  v24(v15, v10);
  v25 = [a1 duration];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 direction];

    v28 = sub_2688F06FC();
    sub_268AE2278(v28);
    v30 = v29;
    sub_268AE23DC(v28);
    v32 = v31;

    if (v32)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    if (v27 == 1)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v33;
    }

    sub_268AB745C(v30, v34, a4, a5);
  }

  else
  {
    (v44)(v48, v45, v10);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "Missing direction in intent", v38, 2u);
      MEMORY[0x26D6266E0](v38, -1, -1);
    }

    v24(v48, v10);
    sub_2688C2ECC();
    v39 = swift_allocError();
    *v40 = -125;
    v41 = v46;
    *v46 = v39;
    swift_storeEnumTagMultiPayload();
    a4(v41);
    return sub_268919854(v41);
  }
}

void sub_268977958()
{
  type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268977A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268977AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268977BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268977C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268977CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SkipTimeDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268977D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268977E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SkipTimeDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_26897805C(uint64_t a1, uint64_t a2)
{
  result = sub_2689780B4(&qword_2802A6598, a2, type metadata accessor for SkipTimeDeviceDisambiguationStrategy, &unk_268B3FB48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689780B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t CloseAccessoryItemAppIntent.init(destination:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  swift_allocObject();
  result = sub_268B369C4();
  *a3 = result;
  return result;
}

void sub_26897820C()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v80 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v81 = v20;
  OUTLINED_FUNCTION_8();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v77 - v23;
  if (v6(v22))
  {
    v25 = v4(v1);
    if (v25)
    {
      v26 = v25;
      v77 = v0;
      v78 = v12;
      v79 = v14;
      v2 = sub_2688EFD0C();
      v27 = 0;
      v14 = v26 & 0xC000000000000001;
      v12 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v2 == v27)
        {

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v38 = v78;
          OUTLINED_FUNCTION_82(v78, qword_2802CDA10);
          v39 = v79;
          OUTLINED_FUNCTION_32_3();
          v40(v24);
          v41 = sub_268B37A34();
          v42 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v42))
          {
            v43 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v43);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v44, v45, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect queries don't contain an accessory name, returning false");
            OUTLINED_FUNCTION_83_0();
          }

          (*(v39 + 8))(v24, v38);
          goto LABEL_34;
        }

        if (v14)
        {
          v28 = MEMORY[0x26D625BD0](v27, v26);
        }

        else
        {
          if (v27 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v28 = *(v26 + 8 * v27 + 32);
        }

        v29 = v28;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_268ACBA54(v28);
        v31 = v30;

        ++v27;
        if (v31)
        {

          for (i = 0; v2 != i; ++i)
          {
            if (v14)
            {
              v47 = MEMORY[0x26D625BD0](i, v26);
            }

            else
            {
              if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_50;
              }

              v47 = *(v26 + 8 * i + 32);
            }

            v48 = v47;
            if (__OFADD__(i, 1))
            {
              goto LABEL_49;
            }

            DeviceQuery.deviceType.getter();

            v49 = sub_268B37034();
            if (__swift_getEnumTagSinglePayload(v11, 1, v49) == 1)
            {

              sub_2688C058C(v11, &qword_2802A58F0, &unk_268B3BEC0);
              if ([v7 mediaType])
              {
                v59 = v79;
                if (qword_2802A4F30 != -1)
                {
                  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
                }

                v60 = v78;
                OUTLINED_FUNCTION_82(v78, qword_2802CDA10);
                v61 = v77;
                (*(v59 + 16))(v77);
                v62 = v59;
                v63 = v7;
                v64 = sub_268B37A34();
                v65 = sub_268B37ED4();
                if (OUTLINED_FUNCTION_115_0(v65))
                {
                  v66 = swift_slowAlloc();
                  v67 = swift_slowAlloc();
                  v82 = v67;
                  *v66 = 136315138;
                  v68 = NLMediaType.description.getter([v63 mediaType]);
                  v70 = v69;

                  v71 = sub_26892CDB8(v68, v70, &v82);

                  *(v66 + 4) = v71;
                  _os_log_impl(&dword_2688BB000, v64, &qword_2802A58F0, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect we have a mediaType specified %s, returning false", v66, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v67);
                  OUTLINED_FUNCTION_12();
                  OUTLINED_FUNCTION_12();
                }

                else
                {
                }

                (*(v62 + 8))(v61, v60);
                goto LABEL_34;
              }

              v51 = v79;
              if (qword_2802A4F30 != -1)
              {
                OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
              }

              v50 = v78;
              OUTLINED_FUNCTION_82(v78, qword_2802CDA10);
              OUTLINED_FUNCTION_32_3();
              v52 = v80;
              v72(v80);
              v54 = sub_268B37A34();
              v73 = sub_268B37ED4();
              if (OUTLINED_FUNCTION_19(v73))
              {
                v74 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v74);
                OUTLINED_FUNCTION_112_1(&dword_2688BB000, v75, v76, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect intent can potentially redirect to HomeAutomation, returning true");
                OUTLINED_FUNCTION_83_0();
              }

LABEL_33:

              (*(v51 + 8))(v52, v50);
              goto LABEL_34;
            }

            sub_2688C058C(v11, &qword_2802A58F0, &unk_268B3BEC0);
          }

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v50 = v78;
          OUTLINED_FUNCTION_82(v78, qword_2802CDA10);
          v51 = v79;
          OUTLINED_FUNCTION_32_3();
          v52 = v81;
          v53(v81);
          v54 = sub_268B37A34();
          v55 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v55))
          {
            v56 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v56);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v57, v58, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect all queries specify a deviceType, pushing PauseMediaFlow, returning false");
            OUTLINED_FUNCTION_83_0();
          }

          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v12, qword_2802CDA10);
  OUTLINED_FUNCTION_32_3();
  v32(v2);
  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_19(v34))
  {
    v35 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v35);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v36, v37, "HomeAutomationRedirectableIntent#shouldCheckForHomeAutomationRedirect this is an implicit request, returning false");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v14 + 8))(v2, v12);
LABEL_34:
  OUTLINED_FUNCTION_23();
}

void sub_2689788B0()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v101 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v89 = &v86 - v6;
  OUTLINED_FUNCTION_9();
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v99 = v8;
  v100 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v92 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v12);
  v90 = &v86 - v13;
  v14 = OUTLINED_FUNCTION_9();
  v91 = type metadata accessor for MediaPlayerIntent(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v87 = v16;
  OUTLINED_FUNCTION_9();
  v17 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_0();
  v94 = v21 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  v26 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v88 = v30 - v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v95 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v86 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
  v37 = *(v28 + 16);
  v96 = v38;
  v97 = v37;
  v98 = v28 + 16;
  (v37)(v0);
  v39 = sub_268B37A34();
  v40 = sub_268B37F04();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_14();
    v93 = v19;
    *v41 = 0;
    _os_log_impl(&dword_2688BB000, v39, v40, "PauseMediaRoutingFlow#on called", v41, 2u);
    v2 = v0;
    v19 = v93;
    OUTLINED_FUNCTION_12();
  }

  v42 = *(v28 + 8);
  v42(v0, v26);
  sub_268B35414();
  v43 = (*(v19 + 88))(v25, v17);
  if (v43 == *MEMORY[0x277D5C128] || v43 == *MEMORY[0x277D5C160])
  {
    (*(v19 + 8))(v25, v17);
    v45 = v94;
    sub_268B35414();
    v46 = v90;
    sub_26893BC0C(v45, 1, v47, v48, v49, v50, v51, v52, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v53 = v91;
    if (__swift_getEnumTagSinglePayload(v46, 1, v91) == 1)
    {
      sub_2688C058C(v46, &qword_2802A5650, &unk_268B3BAC0);
      v54 = v86;
      v97(v86, v96, v26);
      v55 = sub_268B37A34();
      v56 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v56))
      {
        v57 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v57);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v58, v59, "PauseMediaRoutingFlow#on unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_6();
      }

      v42(v54, v26);
    }

    else
    {
      v74 = v46;
      v75 = v87;
      sub_2688C0464(v74, v87);
      sub_2688C0464(v75, v1);
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v53);
      v76 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v1, v2 + v76, &qword_2802A5650, &unk_268B3BAC0);
      swift_endAccess();
      v77 = v88;
      v97(v88, v96, v26);
      v78 = sub_268B37A34();
      v79 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v79))
      {
        v80 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v80);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v81, v82, "PauseMediaRoutingFlow#on supported parse");
        OUTLINED_FUNCTION_12();
      }

      v42(v77, v26);
      v83 = v100;
      v84 = v89;
      (*(v99 + 16))(v89, v101, v100);
      __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
      v85 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v84, v2 + v85, &qword_2802A5660, &qword_268B3B8E8);
      swift_endAccess();
    }
  }

  else
  {
    v90 = v17;
    v91 = v25;
    v60 = v95;
    v97(v95, v96, v26);
    v61 = v92;
    (*(v99 + 16))(v92, v101, v100);
    v62 = sub_268B37A34();
    v63 = sub_268B37EE4();
    if (os_log_type_enabled(v62, v63))
    {
      v65 = v61;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v101 = v42;
      v102 = v67;
      v68 = v67;
      *v66 = 136315138;
      sub_268B35414();
      v69 = v90;
      v70 = sub_268B37C24();
      v93 = v19;
      v72 = v71;
      (*(v99 + 8))(v65, v100);
      v73 = sub_26892CDB8(v70, v72, &v102);

      *(v66 + 4) = v73;
      _os_log_impl(&dword_2688BB000, v62, v63, "PauseMediaRoutingFlow#on received an unsupported parse type %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_6();

      v101(v95, v26);
      v19 = v93;
    }

    else
    {

      (*(v99 + 8))(v61, v100);
      v42(v60, v26);
      v69 = v90;
    }

    (*(v19 + 8))(v91, v69);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268979084()
{
  OUTLINED_FUNCTION_26();
  v54 = v2;
  v55 = v3;
  v4 = *v0;
  v56 = v0;
  v48 = v4;
  v49 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v53 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v52 = v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v50 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v21 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v51 = *(v16 + 16);
  v51(v0, v21, v14);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_14();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "PauseMediaRoutingFlow#execute called", v24, 2u);
    OUTLINED_FUNCTION_12();
  }

  v25 = *(v16 + 8);
  v25(v0, v14);
  v26 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  sub_2688C063C();
  v27 = sub_268B38054();
  [v26 setIsDirectInvocation_];

  v28 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent;
  v29 = v56;
  swift_beginAccess();
  sub_2688C053C(v29 + v28, v11, &qword_2802A5650, &unk_268B3BAC0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v53) == 1)
  {
    sub_2688C058C(v11, &qword_2802A5650, &unk_268B3BAC0);
    v51(v1, v21, v14);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v31))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_33_3(&dword_2688BB000, v32, v33, "PauseMediaRoutingFlow#execute mediaPlayerIntent is nil, falling back to PauseMediaFlow");
      OUTLINED_FUNCTION_12();
    }

    v25(v1, v14);
    sub_26897A3F4();
  }

  else
  {
    v34 = v52;
    sub_2688C0464(v11, v52);
    sub_268982750(v34);
    sub_26897820C();
    if (v35)
    {
      v37 = v46;
      v36 = v47;
      v38 = v49;
      (*(v47 + 104))(v46, *MEMORY[0x277D5F658], v49);
      v39 = v26;

      sub_26894E93C();

      (*(v36 + 8))(v37, v38);
      OUTLINED_FUNCTION_7_8();
      v41 = v34;
    }

    else
    {
      v51(v50, v21, v14);
      v42 = sub_268B37A34();
      v43 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v43))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_33_3(&dword_2688BB000, v44, v45, "PauseMediaRoutingFlow#execute not necessary to check for HomeAutomation redirect, pushing PauseMediaFlow");
        OUTLINED_FUNCTION_12();
      }

      v25(v50, v14);
      sub_26897A3F4();

      OUTLINED_FUNCTION_7_8();
      v41 = v52;
    }

    sub_2688C05E4(v41, v40);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689795F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v175 = v24;
  v176 = v25;
  v177 = v26;
  v174 = v27;
  v29 = v28;
  v31 = v30;
  sub_268B34F84();
  OUTLINED_FUNCTION_1();
  v167 = v33;
  v168 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v164 = v34;
  OUTLINED_FUNCTION_9();
  sub_268B34E44();
  OUTLINED_FUNCTION_1();
  v165 = v36;
  v166 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v163 = v37;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5658, &qword_268B3B8E0);
  OUTLINED_FUNCTION_1();
  v158 = v38;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v39);
  v157 = v153 - v40;
  v41 = OUTLINED_FUNCTION_9();
  v156 = type metadata accessor for DevicesWithParse(v41);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  v162 = v43;
  OUTLINED_FUNCTION_9();
  v171 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_0();
  v155 = v47 - v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  v154 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18();
  v161 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  v170 = v153 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v56);
  v58 = v153 - v57;
  v173 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v169 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_20_0();
  v160 = v61 - v62;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v63);
  v172 = v153 - v64;
  OUTLINED_FUNCTION_9();
  v65 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v67 = v66;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_20_0();
  v70 = MEMORY[0x28223BE20](v69);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = v153 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v76 = v153 - v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_15();
  if (!v29)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v65, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v88(v21);
    v89 = sub_268B37A34();
    v76 = sub_268B37F04();
    if (os_log_type_enabled(v89, v76))
    {
      v90 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v90);
      OUTLINED_FUNCTION_20(&dword_2688BB000, v91, v76, "PauseMediaRoutingFlow#execute setting devices in intent and pushing PauseMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v92 = *(v67 + 8);
    v67 += 8;
    v92(v21, v65);
    v93 = sub_2688EFD0C();
    v94 = MEMORY[0x277D84F90];
    if (v93)
    {
      v179 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v93 < 0)
      {
        __break(1u);
        goto LABEL_40;
      }

      sub_2688C063C();
      v95 = 0;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v96 = MEMORY[0x26D625BD0](v95, v31);
        }

        else
        {
          v96 = *(v31 + 8 * v95 + 32);
        }

        v97 = v96;
        ++v95;
        v98 = sub_268B38054();
        [v97 setIsPreResolved_];

        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v93 != v95);
      v94 = v179;
    }

    sub_2688C04C8(v94, v174);
LABEL_26:
    sub_26897A3F4();
    goto LABEL_27;
  }

  if (v29 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v65, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v99(v20);
    v100 = sub_268B37A34();
    v101 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v101))
    {
      v102 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v102);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v103, v104, "PauseMediaRoutingFlow#execute pushing PauseMediaFlow so we can dialog a relevant error");
      OUTLINED_FUNCTION_6();
    }

    (*(v67 + 8))(v20, v65);
    goto LABEL_26;
  }

  v153[5] = v79;
  v153[4] = v78;
  v80 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input;
  v81 = v177;
  swift_beginAccess();
  sub_2688C053C(v81 + v80, v58, &qword_2802A5660, &qword_268B3B8E8);
  v82 = v173;
  if (__swift_getEnumTagSinglePayload(v58, 1, v173) == 1)
  {
    sub_2688C058C(v58, &qword_2802A5660, &qword_268B3B8E8);
    if (qword_2802A4F30 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v65, qword_2802CDA10);
      OUTLINED_FUNCTION_17();
      v83(v76);
      v84 = sub_268B37A34();
      v85 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v85))
      {
        v86 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v86);
        OUTLINED_FUNCTION_20(&dword_2688BB000, v87, v76, "PauseMediaRoutingFlow#execute input is nil, can't redirect to HomeAutomation");
        OUTLINED_FUNCTION_6();
      }

      (*(v67 + 8))(v76, v65);
      goto LABEL_26;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_5;
  }

  v177 = v65;
  v105 = v169;
  v106 = v172;
  (*(v169 + 32))(v172, v58, v82);
  v107 = v170;
  sub_268B35414();
  v108 = v171;
  if ((*(v45 + 88))(v107, v171) == *MEMORY[0x277D5C128])
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v177, qword_2802CDA10);
    v109 = *(v67 + 16);
    v153[1] = v110;
    v153[2] = v109;
    v109(v73);
    v111 = sub_268B37A34();
    v112 = sub_268B37EC4();
    v113 = v45;
    if (OUTLINED_FUNCTION_19(v112))
    {
      v114 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v114);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v115, v116, "PauseMediaRoutingFlow#execute input is NLv3IntentOnly, transform to HomeAutomationNLV3Intent parse");
      v108 = v171;
      OUTLINED_FUNCTION_12();
    }

    v174 = *(v67 + 8);
    v153[3] = v67 + 8;
    (v174)(v73, v177);
    v117 = v162;
    sub_268B35414();
    *(v117 + *(v156 + 20)) = v31;
    v118 = v117;

    v119 = v157;
    sub_268B36764();
    v120 = v159;
    v121 = sub_268B36774();
    (v158[1])(v119, v120);
    v122 = v161;
    v123 = v108;
    v121(v118);

    v127 = OUTLINED_FUNCTION_11(&a9);
    v128(v127);
    v129 = v154;
    v130 = v122;
    v131 = *(v113 + 16);
    v131(v154, v130, v108);
    v132 = sub_268B37A34();
    v133 = sub_268B37EC4();
    if (os_log_type_enabled(v132, v133))
    {
      v135 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v178 = v158;
      *v135 = 136315138;
      v136 = v155;
      v131(v155, v129, v123);
      v137 = sub_268B37C24();
      v138 = v129;
      v139 = v137;
      v159 = v131;
      v141 = v140;
      v171 = *(v113 + 8);
      v171(v138, v123);
      v142 = sub_26892CDB8(v139, v141, &v178);
      v131 = v159;

      *(v135 + 4) = v142;
      _os_log_impl(&dword_2688BB000, v132, v133, "PauseMediaRoutingFlow#execute transformed home automation NLV3 parse %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v158);
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_16();
      v143();
      v145 = v167;
      v144 = v168;
      v146 = v165;
    }

    else
    {

      v171 = *(v113 + 8);
      v171(v129, v108);
      OUTLINED_FUNCTION_16();
      v147();
      v145 = v167;
      v144 = v168;
      v146 = v165;
      v136 = v155;
    }

    v148 = v161;
    v131(v136, v161, v123);
    sub_268B35424();
    v149 = v163;
    sub_268B34E34();
    v150 = v164;
    sub_268B34F74();
    v175(v150);
    (*(v145 + 8))(v150, v144);
    (*(v146 + 8))(v149, v166);
    v151 = v171;
    v171(v148, v123);
    OUTLINED_FUNCTION_5();
    sub_2688C05E4(v162, v152);
    (*(v169 + 8))(v172, v173);
    v151(v170, v123);
  }

  else
  {
    v124 = v82;
    (*(v105 + 16))(v160, v106, v82);
    v125 = v163;
    sub_268B34E34();
    v126 = v164;
    sub_268B34F74();
    v175(v126);
    (*(v167 + 8))(v126, v168);
    (*(v165 + 8))(v125, v166);
    (*(v105 + 8))(v106, v124);
    (*(v45 + 8))(v107, v108);
  }

LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26897A3F4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider + 24);
  v8 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider), v7);
  v9 = OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_analyticsService;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v2;
  v10[4] = v0;
  v10[5] = v6;

  sub_268AD35F4(v6, &off_287953B08, v0 + v9, sub_26897A938, v10, v7, v8);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26897A4CC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_268B34F84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory), *(a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory + 24));
  sub_268B0399C();
  sub_268B34F54();

  a1(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26897A5E4()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_mediaPlayerIntent, &qword_2802A5650, &unk_268B3BAC0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_analyticsService));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory));
  return v0;
}

uint64_t sub_26897A69C()
{
  sub_26897A5E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PauseMediaRoutingFlow(uint64_t a1)
{
  result = qword_2802A65D0;
  if (!qword_2802A65D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26897A748(uint64_t a1)
{
  sub_2688BFEF0(319, &qword_2802A5640, MEMORY[0x277D5C118]);
  if (v1 <= 0x3F)
  {
    sub_2688BFEF0(319, &qword_2802A5648, type metadata accessor for MediaPlayerIntent);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26897A8B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PauseMediaRoutingFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_26897A8F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void OUTLINED_FUNCTION_33_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

Swift::String_optional __swiftcall UsoTask_seekBackward_common_MediaItem.verb()()
{
  v0 = 0x6B63614270696B73;
  v1 = 0xEC00000064726177;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26897AA2C(uint64_t a1)
{
  result = sub_26897AAD8(&qword_2802A65E0, &protocol conformance descriptor for UsoTask_seekBackward_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26897AAD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B364A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26897AB60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_26897ABB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26897AC08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_26897AC5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26897ACB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_26897AD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_26897AD58(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_26897ADAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_26897AE10(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_26897AE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26897AEC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_26897AF2C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26897AF90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_26897B01C@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v48 = v6 - v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  OUTLINED_FUNCTION_8();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  sub_268B34614();
  OUTLINED_FUNCTION_2_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v46 = v19 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v47 = &v44 - v22;
  OUTLINED_FUNCTION_8();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v44 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  v29 = type metadata accessor for QuickStopContext(0);
  v30 = *(v29 + 32);
  sub_2688F33D8(v3 + v30, v15);
  OUTLINED_FUNCTION_13_2(v15);
  if (v33)
  {
    v13 = v15;
  }

  else
  {
    v45 = a1;
    v31 = v15;
    v32 = *(v17 + 32);
    v32(v28, v31, v2);
    sub_2688F33D8(v3 + *(v29 + 36), v13);
    OUTLINED_FUNCTION_13_2(v13);
    if (!v33)
    {
      v32(v26, v13, v2);
      v39 = sub_268B345A4();
      v40 = *(v17 + 8);
      if (v39)
      {
        v40(v26, v2);
        v32(v45, v28, v2);
      }

      else
      {
        v40(v28, v2);
        v32(v45, v26, v2);
      }

      goto LABEL_16;
    }

    (*(v17 + 8))(v28, v2);
    a1 = v45;
  }

  sub_2688F3448(v13);
  v34 = v3 + v30;
  v35 = v49;
  sub_2688F33D8(v34, v49);
  OUTLINED_FUNCTION_13_2(v35);
  if (v33)
  {
    sub_2688F3448(v35);
    v36 = v48;
    sub_2688F33D8(v3 + *(v29 + 36), v48);
    OUTLINED_FUNCTION_13_2(v36);
    if (v33)
    {
      sub_2688F3448(v36);
    }

    else
    {
      v41 = *(v17 + 32);
      v42 = v46;
      v41(v46, v36, v2);
      v41(a1, v42, v2);
    }
  }

  else
  {
    v37 = *(v17 + 32);
    v38 = v47;
    v37(v47, v35, v2);
    v37(a1, v38, v2);
  }

LABEL_16:
  type metadata accessor for QuickStopContext.FiringItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26897B408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for QuickStopContext.FiringItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897B674(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return sub_268B34574();
  }

  v7 = sub_268B34614();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t sub_26897B508(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  sub_268B34614();
  OUTLINED_FUNCTION_2_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_26897B408(&v16 - v12);
  sub_26897B408(v10);
  LOBYTE(a3) = a3(v13, v10);
  v14 = *(v6 + 8);
  v14(v10, v3);
  v14(v13, v3);
  return a3 & 1;
}

uint64_t sub_26897B674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext.FiringItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26897B6F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26897B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B34674();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 24));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26897B840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B34674();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_26897B914(uint64_t a1)
{
  sub_268B34674();
  if (v1 <= 0x3F)
  {
    sub_2688F3310(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26897B9C8(uint64_t a1)
{
  sub_26897BA28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_26897BA28()
{
  if (!qword_2802A6618)
  {
    v0 = sub_268B34614();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A6618);
    }
  }
}

unint64_t sub_26897BAB0()
{
  result = qword_2802A6620;
  if (!qword_2802A6620)
  {
    type metadata accessor for QuickStopContext.FiringItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6620);
  }

  return result;
}

uint64_t sub_26897BB20(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      result = 7628147;
      break;
    case 2:
      result = 0x6573616572636E69;
      break;
    case 3:
      result = 0x6573616572636564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897BBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  (*(v6 + 16))(v10, a1, v4);
  sub_26897BD30(v10, 0, v14);
  (*(v6 + 8))(a1, v4);
  v15 = type metadata accessor for SettingsIntent(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    sub_2688C058C(v14, &qword_2802A5D40, &qword_268B3FFE0);
    v16 = 1;
  }

  else
  {
    sub_26891E594(v14, a2);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v16, 1, v15);
}

uint64_t sub_26897BD30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v384 = a2;
  v406 = a1;
  v402 = a3;
  v385 = sub_268B35474();
  OUTLINED_FUNCTION_1();
  v383 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79(&v363 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v11);
  v372 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v370 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v30);
  v382 = type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v404 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v405 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_79(&v363 - v46);
  v47 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v403 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v52 = (v51 - v50);
  v53 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  v60 = &v363 - v59;
  v61 = type metadata accessor for SettingsIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v65 = (v64 - v63);
  *(v64 - v63) = 772;
  v67 = *(v66 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  v387 = v67;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v386 = v61[7];
  v65[v386] = 7;
  v388 = v61[8];
  v65[v388] = 2;
  v389 = v61[9];
  v65[v389] = 1;
  v398 = v61[10];
  v65[v398] = 3;
  OUTLINED_FUNCTION_45_1(v61[11]);
  v72 = &v65[v61[12]];
  *v72 = 0;
  v72[1] = 0;
  v390 = v72;
  OUTLINED_FUNCTION_45_1(v61[13]);
  OUTLINED_FUNCTION_45_1(v61[14]);
  v73 = v61[15];
  sub_268B37924();
  v391 = v73;
  OUTLINED_FUNCTION_96();
  v381 = v74;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
  OUTLINED_FUNCTION_45_1(v61[16]);
  OUTLINED_FUNCTION_45_1(v61[17]);
  OUTLINED_FUNCTION_45_1(v61[18]);
  v78 = v61[19];
  sub_268B37464();
  v392 = v78;
  v79 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = &v65[v61[20]];
  *v83 = 0;
  v83[1] = 0;
  v379 = v83;
  v84 = v61[21];
  sub_268B37034();
  v393 = v84;
  v85 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v401 = v61;
  v89 = v61[22];
  sub_268B378F4();
  v394 = v89;
  v90 = OUTLINED_FUNCTION_25_5();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  v94 = *(v55 + 2);
  v94(v60, v406, v53);
  v95 = (*(v55 + 11))(v60, v53);
  if (v95 == *MEMORY[0x277D5C128])
  {
    (*(v55 + 12))(v60, v53);
    v96 = *(v403 + 32);
    v399 = v52;
    v385 = v47;
    v97 = v96(v52, v60, v47);
    if (qword_2802A4F30 != -1)
    {
      v97 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_40_2(v97, qword_2802CDA10);
    OUTLINED_FUNCTION_176();
    (*(v98 + 16))(v400);
    v99 = sub_268B37A34();
    v100 = sub_268B37ED4();
    v101 = OUTLINED_FUNCTION_183_0(v100);
    v102 = v406;
    if (v101)
    {
      v103 = OUTLINED_FUNCTION_14();
      *v103 = 0;
      _os_log_impl(&dword_2688BB000, v99, v100, "Creating SettingsNLv3Intent", v103, 2u);
      OUTLINED_FUNCTION_21_8();
    }

    OUTLINED_FUNCTION_153();
    v104 = OUTLINED_FUNCTION_46_3();
    v105(v104);
    (*(v403 + 16))(v34, v399, v385);
    if (qword_2802A4E70 != -1)
    {
      swift_once();
    }

    sub_26897FB8C(&qword_2802A5A90, type metadata accessor for SettingNLv3Intent, &unk_268B44454);
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    *v65 = v412;
    if (qword_2802A4E68 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    v65[1] = v412;
    if (qword_2802A4E78 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8();
    sub_268932694(v100, v106, v107, v108);
    if (qword_2802A4E80 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v412);
    if (qword_2802A4E90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v412);
    if (qword_2802A4E60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v412);
    if (qword_2802A4E88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_38_1(v412);
    if (qword_2802A4D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v109 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v109, &v410 + 8);
    if (qword_2802A4D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    *v390 = v412;
    if (qword_2802A4D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v110 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v110, &v412);
    if (qword_2802A4DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v111 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v111, &v412 + 8);
    if (qword_2802A4DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v112 = sub_268B35C74();
    OUTLINED_FUNCTION_15_8(v112, &v413);
    if (qword_2802A4DB0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_14();
    v113 = sub_268B35C74();
    v114 = OUTLINED_FUNCTION_15_8(v113, &v414);
    sub_26893F318(v114);
    OUTLINED_FUNCTION_15_8(v115, &v415);
    if (qword_2802A4DC0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8();
    sub_268932694(v100, v116, v117, v118);
    if (qword_2802A4DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8();
    sub_268932694(v100, v119, v120, v121);
    if (qword_2802A4DD8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_3_14();
    sub_268B35C64();
    OUTLINED_FUNCTION_20_8();
    sub_268932694(v100, v122, v123, v124);
    sub_2688C058C(&v65[v391], &qword_2802A5CA8, &unk_268B3CE30);
    v125 = OUTLINED_FUNCTION_25_5();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v381);
    if (v384)
    {
      v128 = sub_2689405DC();
      v130 = v129;
      (*(v55 + 1))(v102, v53);
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_153();
      v131 = OUTLINED_FUNCTION_46_3();
      v132(v131);
      v133 = v379;
      *v379 = v128;
      v133[1] = v130;
    }

    else
    {
      (*(v55 + 1))(v102, v53);
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_153();
      v153 = OUTLINED_FUNCTION_46_3();
      v154(v153);
    }

    goto LABEL_65;
  }

  v400 = v60;
  v403 = v53;
  if (v95 == *MEMORY[0x277D5C150])
  {
    v364 = v55;
    v134 = v400;
    (*(v55 + 12))(v400, v403);
    v135 = v383;
    v136 = v399;
    v137 = v385;
    v138 = (*(v383 + 32))(v399, v134, v385);
    v139 = v405;
    if (qword_2802A4F30 != -1)
    {
      v138 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v140 = OUTLINED_FUNCTION_40_2(v138, qword_2802CDA10);
    v141 = *(v139 + 16);
    v395 = v140;
    v397 = v139 + 16;
    v396 = v141;
    v141(v380);
    v142 = *(v135 + 16);
    v143 = v378;
    v142(v378, v136, v137);
    v144 = sub_268B37A34();
    v145 = sub_268B37EE4();
    v146 = os_log_type_enabled(v144, v145);
    v394 = v135 + 16;
    v393 = v142;
    if (v146)
    {
      v60 = OUTLINED_FUNCTION_172_0();
      v392 = OUTLINED_FUNCTION_173_0();
      *&v412 = v392;
      *v60 = 136315138;
      v142(v376, v143, v137);
      OUTLINED_FUNCTION_45_3();
      v147 = sub_268B37C24();
      v149 = v148;
      v150 = OUTLINED_FUNCTION_37_5();
      v151(v150);
      v152 = sub_26892CDB8(v147, v149, &v412);
      v139 = v405;

      *(v60 + 4) = v152;
      _os_log_impl(&dword_2688BB000, v144, v145, "SettingsIntent#init directInvocation: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v392);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_21_8();
    }

    else
    {

      v176 = OUTLINED_FUNCTION_37_5();
      v177(v176);
    }

    v178 = *(v139 + 8);
    v178(v380, v60);
    v179 = sub_268B35454();
    v181 = v180;
    v182 = v179 == 0xD00000000000003CLL && 0x8000000268B57880 == v180;
    if (v182 || (v183 = v179, (sub_268B38444() & 1) != 0))
    {

      type metadata accessor for DirectInvocationHelper();
      sub_268A69384(v399);
      if (v185)
      {
        v186 = sub_268AA3904(v184);
        v187 = OUTLINED_FUNCTION_1_18();
        v188(v187);
        v189 = OUTLINED_FUNCTION_7_9();
        v190(v189);
        v65[v398] = v186;
LABEL_65:
        v191 = v402;
        sub_26897EC08(v65, v402);
        __swift_storeEnumTagSinglePayload(v191, 0, 1, v401);
        return OUTLINED_FUNCTION_18_4();
      }

      v209 = v374;
      OUTLINED_FUNCTION_8_9();
      v210();
      v211 = sub_268B37A34();
      v212 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_183_0(v212))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v213, v214, "SettingsIntent#init returning nil for intent since we could not find a button pressed.");
        OUTLINED_FUNCTION_12();
      }

      v215 = OUTLINED_FUNCTION_1_18();
      v216(v215);
      v217 = v209;
    }

    else
    {
      if (v183 == 0xD000000000000046 && 0x8000000268B56FE0 == v181)
      {

        v222 = v399;
      }

      else
      {
        v221 = sub_268B38444();

        v222 = v399;
        if ((v221 & 1) == 0)
        {
          v223 = v371;
          OUTLINED_FUNCTION_8_9();
          v224();
          v225 = v368;
          v226 = v385;
          v393(v368, v222, v385);
          v227 = sub_268B37A34();
          v228 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_183_0(v228))
          {
            v229 = OUTLINED_FUNCTION_172_0();
            v230 = OUTLINED_FUNCTION_173_0();
            *&v412 = v230;
            *v229 = 136315138;
            v231 = sub_268B35454();
            v233 = v232;
            v234 = v226;
            v235 = v400;
            (v400)(v225, v234);
            v236 = sub_26892CDB8(v231, v233, &v412);

            *(v229 + 4) = v236;
            _os_log_impl(&dword_2688BB000, v227, v228, "SettingsIntent#init unexpected direct invocation identifier: %s", v229, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v230);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            OUTLINED_FUNCTION_153();
            v237(v406, v403);
            OUTLINED_FUNCTION_176();
            v178(v371, v404);
            (v235)(v399, v385);
          }

          else
          {

            v290 = OUTLINED_FUNCTION_1_18();
            v291(v290);
            v292 = OUTLINED_FUNCTION_45_3();
            v293 = v400;
            (v400)(v292);
            OUTLINED_FUNCTION_176();
            v178(v223, v60);
            (v293)(v399, v226);
          }

          goto LABEL_98;
        }
      }

      type metadata accessor for DirectInvocationHelper();
      sub_268A69394(v222);
      v250 = v222;
      if (v249)
      {
        v251 = v248;
        v252 = v249;
        v253 = OUTLINED_FUNCTION_1_18();
        v254(v253);
        (v400)(v250, v385);
        v255 = v379;
        *v379 = v251;
        v255[1] = v252;
        goto LABEL_65;
      }

      sub_268A693B4(v222);
      if (v281)
      {
        v282 = v280;
        v283 = v281;
        v284 = OUTLINED_FUNCTION_1_18();
        v285(v284);
        v286 = OUTLINED_FUNCTION_7_9();
        v287(v286);
        v288 = v379;
        *v379 = v282;
        v288[1] = v283;
        goto LABEL_65;
      }

      v355 = v365;
      OUTLINED_FUNCTION_8_9();
      v356();
      v357 = sub_268B37A34();
      v358 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_183_0(v358))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v359, v360, "SettingsIntent#init returning nil for intent since we could not find a DeviceID.");
        OUTLINED_FUNCTION_12();
      }

      v361 = OUTLINED_FUNCTION_1_18();
      v362(v361);
      OUTLINED_FUNCTION_176();
      v217 = v355;
    }

    v178(v217, v60);
    v218 = OUTLINED_FUNCTION_7_9();
    v219(v218);
  }

  else
  {
    v155 = v405;
    if (v95 == *MEMORY[0x277D5C160])
    {
      v156 = v406;
      if (qword_2802A4F30 != -1)
      {
        v95 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_40_2(v95, qword_2802CDA10);
      v157 = *(v155 + 16);
      OUTLINED_FUNCTION_44_2();
      v157();
      v158 = sub_268B37A34();
      v159 = sub_268B37ED4();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = OUTLINED_FUNCTION_14();
        *v160 = 0;
        _os_log_impl(&dword_2688BB000, v158, v159, "Creating SettingsUsoIntent", v160, 2u);
        OUTLINED_FUNCTION_21_8();
      }

      OUTLINED_FUNCTION_176();
      v161 = OUTLINED_FUNCTION_46_3();
      v405 = v162;
      v399 = v163;
      (v163)(v161);
      v164 = sub_268A40454();
      if (v164)
      {
        v165 = v164;
        sub_268B35DC4();
        sub_268932738(&v416, v408, &byte_2802A6450, &byte_268B3BE10);
        v364 = v55;
        if (v408[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6630, &qword_268B3FFF0);
          if (swift_dynamicCast())
          {
            if (*(&v410 + 1))
            {
              sub_2688E6514(&v409, &v412);
              v166 = v366;
              OUTLINED_FUNCTION_44_2();
              v157();
              sub_268932738(&v416, &v409, &byte_2802A6450, &byte_268B3BE10);
              v167 = sub_268B37A34();
              v168 = sub_268B37F04();
              v169 = OUTLINED_FUNCTION_183_0(v168);
              v385 = v165;
              if (v169)
              {
                v170 = OUTLINED_FUNCTION_172_0();
                v171 = OUTLINED_FUNCTION_173_0();
                v407 = v171;
                *v170 = 136315138;
                v166 = &byte_2802A6450;
                sub_268932738(&v409, v408, &byte_2802A6450, &byte_268B3BE10);
                __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
                v172 = sub_268B37C24();
                v174 = v173;
                sub_2688C058C(&v409, &byte_2802A6450, &byte_268B3BE10);
                v175 = sub_26892CDB8(v172, v174, &v407);
                v156 = v406;

                *(v170 + 4) = v175;
                _os_log_impl(&dword_2688BB000, v167, v168, "Setting attributes for SettingsIntent from task: %s", v170, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v171);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();
              }

              else
              {

                sub_2688C058C(&v409, &byte_2802A6450, &byte_268B3BE10);
              }

              OUTLINED_FUNCTION_11_10();
              v294();
              v295 = v403;
              v296 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v296, v297);
              OUTLINED_FUNCTION_129();
              sub_268B37324();
              *v65 = sub_26897E110();
              v298 = v415;
              v299 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v299, v300);
              v301 = OUTLINED_FUNCTION_129();
              v65[1] = v302(v301, v298);
              v303 = v415;
              v304 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v304, v305);
              v306 = OUTLINED_FUNCTION_129();
              v308 = v307(v306, v303);
              v65[v386] = v308;
              v309 = v415;
              v310 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v310, v311);
              v312 = OUTLINED_FUNCTION_129();
              v314 = v313(v312, v309);
              v65[v388] = v314;
              v315 = v415;
              v316 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v316, v317);
              v318 = OUTLINED_FUNCTION_10_10();
              v319(v318, v315);
              OUTLINED_FUNCTION_20_8();
              sub_268932694(v166, v320, v321, v322);
              v323 = v415;
              v324 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v324, v325);
              v326 = OUTLINED_FUNCTION_129();
              v328 = v327(v326, v323);
              OUTLINED_FUNCTION_38_1(v328 & 1);
              v329 = OUTLINED_FUNCTION_23_3();
              __swift_project_boxed_opaque_existential_1(v329, v330);
              v331 = v367;
              sub_268B37364();
              OUTLINED_FUNCTION_20_8();
              sub_268932694(v331, v332, v333, v334);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v335 = sub_268B377B4();
              OUTLINED_FUNCTION_15_8(v335, &v410 + 8);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v336 = sub_268B37784();
              v337 = v390;
              *v390 = v336;
              *(v337 + 1) = v338;
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v339 = sub_268B377C4();
              OUTLINED_FUNCTION_15_8(v339, &v412);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v340 = sub_268B37814();
              OUTLINED_FUNCTION_15_8(v340, &v412 + 8);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v341 = sub_268B377F4();
              OUTLINED_FUNCTION_15_8(v341, &v413);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v342 = sub_268B37804();
              OUTLINED_FUNCTION_15_8(v342, &v414);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_129();
              v343 = sub_268B377E4();
              OUTLINED_FUNCTION_15_8(v343, &v415);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10();
              sub_268B37824();
              OUTLINED_FUNCTION_20_8();
              sub_268932694(v331, v344, v345, v346);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10();
              sub_268B377D4();
              OUTLINED_FUNCTION_20_8();
              sub_268932694(v331, v347, v348, v349);
              OUTLINED_FUNCTION_3_9();
              OUTLINED_FUNCTION_10_10();
              sub_268B37794();

              v350 = *(v364 + 1);
              v350(v156, v295);
              sub_2688C058C(&v416, &byte_2802A6450, &byte_268B3BE10);
              OUTLINED_FUNCTION_20_8();
              sub_268932694(v331, v351, v352, v353);
              __swift_destroy_boxed_opaque_existential_0Tm(&v412);
              v354 = OUTLINED_FUNCTION_36_3();
              v350(v354, v295);
              goto LABEL_65;
            }
          }

          else
          {
            v411 = 0;
            v409 = 0u;
            v410 = 0u;
          }
        }

        else
        {
          sub_2688C058C(v408, &byte_2802A6450, &byte_268B3BE10);
          v409 = 0u;
          v410 = 0u;
          v411 = 0;
        }

        sub_2688C058C(&v409, &qword_2802A6628, &qword_268B3FFE8);
        OUTLINED_FUNCTION_44_2();
        v157();
        sub_268932738(&v416, &v412, &byte_2802A6450, &byte_268B3BE10);
        v256 = sub_268B37A34();
        v257 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_183_0(v257))
        {
          v258 = OUTLINED_FUNCTION_172_0();
          v259 = OUTLINED_FUNCTION_173_0();
          v408[0] = v259;
          *v258 = 136315138;
          v55 = &byte_268B3BE10;
          sub_268932738(&v412, &v409, &byte_2802A6450, &byte_268B3BE10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&byte_2802A6450, &byte_268B3BE10);
          sub_268B37C24();
          v165 = v260;
          sub_2688C058C(&v412, &byte_2802A6450, &byte_268B3BE10);
          v261 = OUTLINED_FUNCTION_45_3();
          v264 = sub_26892CDB8(v261, v262, v263);

          *(v258 + 4) = v264;
          _os_log_impl(&dword_2688BB000, v256, v257, "Fatal: Unable to cast task: %s to ControlsSettingsTask", v258, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v259);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          v265 = OUTLINED_FUNCTION_24_7();
          v165(v265);
        }

        else
        {

          v267 = OUTLINED_FUNCTION_24_7();
          v165(v267);
          v268 = OUTLINED_FUNCTION_23_3();
          sub_2688C058C(v268, v269, &byte_268B3BE10);
        }

        OUTLINED_FUNCTION_11_10();
        v266();
        sub_2688C058C(&v416, &byte_2802A6450, &byte_268B3BE10);
        v270 = OUTLINED_FUNCTION_36_3();
        (v165)(v270, v55);
      }

      else
      {
        OUTLINED_FUNCTION_44_2();
        v157();
        v239 = sub_268B37A34();
        v240 = sub_268B37ED4();
        if (os_log_type_enabled(v239, v240))
        {
          v241 = OUTLINED_FUNCTION_14();
          *v241 = 0;
          _os_log_impl(&dword_2688BB000, v239, v240, "No tasks found in usoTasks input, might be a confirmation response.", v241, 2u);
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_11_10();
        v242();
        OUTLINED_FUNCTION_35_4();
        sub_268A3FD3C(v243);
        v244 = v372;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v240, 1, v372);
        v246 = v403;
        if (EnumTagSinglePayload == 1)
        {
          v247 = *(v55 + 1);
          v247(v156, v403);
          sub_2688C058C(v240, &qword_2802A5E08, &unk_268B3D910);
        }

        else
        {
          v271 = v370;
          v272 = v369;
          v273 = OUTLINED_FUNCTION_45_3();
          v274(v273);
          v275 = sub_2689F8358();
          v247 = *(v55 + 1);
          v247(v156, v246);
          (*(v271 + 8))(v272, v244);
          if (v275 != 3)
          {
            v65[v398] = v275;
            v289 = OUTLINED_FUNCTION_36_3();
            v247(v289, v246);
            goto LABEL_65;
          }
        }

        v276 = OUTLINED_FUNCTION_36_3();
        v247(v276, v246);
      }
    }

    else
    {
      v193 = v406;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v194 = v404;
      v195 = __swift_project_value_buffer(v404, qword_2802CDA10);
      v196 = v377;
      (*(v155 + 16))(v377, v195, v194);
      v197 = v375;
      v198 = v403;
      v94(v375, v193, v403);
      v199 = sub_268B37A34();
      v200 = sub_268B37ED4();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = OUTLINED_FUNCTION_172_0();
        v399 = OUTLINED_FUNCTION_173_0();
        *&v412 = v399;
        *v201 = 136315138;
        v94(v373, v197, v198);
        v398 = sub_268B37C24();
        v203 = v202;
        v204 = *(v55 + 1);
        v204(v197, v198);
        v205 = sub_26892CDB8(v398, v203, &v412);

        *(v201 + 4) = v205;
        _os_log_impl(&dword_2688BB000, v199, v200, "Unexpected parse type: %s, returning nil SettingsIntent", v201, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v399);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v204(v406, v198);
        OUTLINED_FUNCTION_153();
        v207 = v377;
        v208 = v404;
      }

      else
      {

        v204 = *(v55 + 1);
        v204(v406, v198);
        v204(v197, v198);
        OUTLINED_FUNCTION_153();
        v207 = v196;
        v208 = v194;
      }

      v206(v207, v208);
      v238 = OUTLINED_FUNCTION_36_3();
      v204(v238, v198);
    }
  }

LABEL_98:
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_96();
  return __swift_storeEnumTagSinglePayload(v277, v278, v279, v401);
}

uint64_t type metadata accessor for SettingsIntent(uint64_t a1)
{
  result = qword_2802A6638;
  if (!qword_2802A6638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26897E0CC()
{
  sub_268B37924();
  OUTLINED_FUNCTION_96();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

unint64_t sub_26897E110()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26897E154()
{
  v1 = *(v0 + *(type metadata accessor for SettingsIntent(0) + 40));
  v2 = 1;
  v3 = 0;
  switch(v1)
  {
    case 2:
      goto LABEL_6;
    case 3:
      return v3 & 1;
    default:
      v4 = sub_268B38444();

      if (v4)
      {
        v3 = 1;
      }

      else
      {
        if (!v1)
        {
          v2 = sub_268B38444();
        }

LABEL_6:

        v3 = v2;
      }

      break;
  }

  return v3 & 1;
}

unint64_t sub_26897E25C()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26897E2AC(char a1)
{
  if (!a1)
  {
    return 0x656D756C6F76;
  }

  if (a1 == 1)
  {
    return 0x6563696F76;
  }

  return 0x707954616964656DLL;
}

BOOL sub_26897E300()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

unint64_t sub_26897E364()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26897E3B4(char a1)
{
  result = 1936942444;
  switch(a1)
  {
    case 1:
      v3 = 1769496941;
      goto LABEL_6;
    case 2:
      result = 1851876717;
      break;
    case 3:
      v3 = 1768843629;
LABEL_6:
      result = v3 | 0x6D756D00000000;
      break;
    case 4:
      result = 1701998445;
      break;
    case 5:
      result = 1702131053;
      break;
    case 6:
      result = 0x6574756D6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897E464()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26897E4BC(char a1)
{
  if (a1)
  {
    return 0x746F6C5F61;
  }

  else
  {
    return 0x656C7474696C5F61;
  }
}

BOOL sub_26897E4F0()
{
  OUTLINED_FUNCTION_71_3();
  sub_268B382F4();
  OUTLINED_FUNCTION_129();

  return v0 != 0;
}

unint64_t sub_26897E584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26897E110();
  *a1 = result;
  return result;
}

uint64_t sub_26897E5B4()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897BB20(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_26897E650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26897E25C();
  *a1 = result;
  return result;
}

uint64_t sub_26897E680()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E2AC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_26897E704@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26897E300();
  *a1 = result;
  return result;
}

unint64_t sub_26897E7C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26897E364();
  *a1 = result;
  return result;
}

uint64_t sub_26897E7F8()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E3B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26897E894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26897E464();
  *a1 = result;
  return result;
}

uint64_t sub_26897E8C4()
{
  v1 = OUTLINED_FUNCTION_78_2();
  result = sub_26897E4BC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_26897E948@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26897E4F0();
  *a1 = result;
  return result;
}

uint64_t sub_26897E9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_26897EC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26897EC6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.SettingVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x26897ED90);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.FloatSettingName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x26897EE94);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsIntent.NumericSettingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.NumericSettingState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x26897F020);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsIntent.NumericSettingQualifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26897F124);
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

_BYTE *sub_26897F174(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26897F210);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26897F25C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  OUTLINED_FUNCTION_182();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_182();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[15];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      OUTLINED_FUNCTION_182();
      if (*(v15 + 84) == a2)
      {
        v8 = v14;
        v9 = a3[19];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        OUTLINED_FUNCTION_182();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v9 = a3[21];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v9 = a3[22];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[11]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_26897F438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6320, &qword_268B3EDF0);
  OUTLINED_FUNCTION_182();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_182();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[15];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
      OUTLINED_FUNCTION_182();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[19];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
        OUTLINED_FUNCTION_182();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[21];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
          v11 = a4[22];
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26897F5FC(uint64_t a1)
{
  sub_26897FA80(319, &qword_2802A6648, &type metadata for SettingsIntent.SettingVerb, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26897FA80(319, &qword_2802A6650, &type metadata for SettingsIntent.FloatSettingName, MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26897FA1C(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26897FA80(319, &qword_2802A6660, &type metadata for SettingsIntent.NumericSettingState, MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_26897FA80(319, &qword_2802A6668, &type metadata for SettingsIntent.NumericSettingQualifier, MEMORY[0x277D83D88]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_26897FA80(319, &qword_2802A6670, &type metadata for SettingsIntent.SettingAttribute, MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_26897FA80(319, &qword_2802A5E58, &type metadata for ConfirmationStateValue, MEMORY[0x277D83D88]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_26897FA80(319, &qword_2802A5E68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_26897FA80(319, &qword_2802A5E50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                  if (v19 > 0x3F)
                  {
                    return v18;
                  }

                  else
                  {
                    sub_26897FAD0(319, &qword_2802A5E70, MEMORY[0x277D5FA18], MEMORY[0x277D83D88]);
                    if (v21 > 0x3F)
                    {
                      return v20;
                    }

                    else
                    {
                      sub_26897FAD0(319, &qword_2802A5E78, MEMORY[0x277D5F790], MEMORY[0x277D83940]);
                      v2 = v22;
                      if (v23 <= 0x3F)
                      {
                        sub_26897FAD0(319, &qword_2802A5E80, MEMORY[0x277D5F880], MEMORY[0x277D83D88]);
                        v2 = v24;
                        if (v25 <= 0x3F)
                        {
                          sub_26897FAD0(319, &qword_2802A5E88, MEMORY[0x277D5F748], MEMORY[0x277D83D88]);
                          v2 = v26;
                          if (v27 <= 0x3F)
                          {
                            sub_26897FAD0(319, &qword_2802A5E90, MEMORY[0x277D5F9D0], MEMORY[0x277D83D88]);
                            v2 = v28;
                            if (v29 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_26897FA1C(uint64_t a1)
{
  if (!qword_2802A6658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5D00, &unk_268B51080);
    v1 = sub_268B380A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A6658);
    }
  }
}

void sub_26897FA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26897FAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26897FB34(uint64_t a1)
{
  result = sub_26897FB8C(&qword_2802A6678, type metadata accessor for SettingsIntent, &unk_268B40848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26897FB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26897FBD8()
{
  result = qword_2802A6680;
  if (!qword_2802A6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6680);
  }

  return result;
}

unint64_t sub_26897FC60()
{
  result = qword_2802A6698;
  if (!qword_2802A6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6698);
  }

  return result;
}

unint64_t sub_26897FCB8()
{
  result = qword_2802A66A0;
  if (!qword_2802A66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66A0);
  }

  return result;
}

unint64_t sub_26897FD40()
{
  result = qword_2802A66B8;
  if (!qword_2802A66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66B8);
  }

  return result;
}

unint64_t sub_26897FD98()
{
  result = qword_2802A66C0;
  if (!qword_2802A66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66C0);
  }

  return result;
}

unint64_t sub_26897FDF0()
{
  result = qword_2802A66C8;
  if (!qword_2802A66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66C8);
  }

  return result;
}

unint64_t sub_26897FE78()
{
  result = qword_2802A66E0;
  if (!qword_2802A66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66E0);
  }

  return result;
}

unint64_t sub_26897FED0()
{
  result = qword_2802A66E8;
  if (!qword_2802A66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66E8);
  }

  return result;
}

unint64_t sub_26897FF28()
{
  result = qword_2802A66F0;
  if (!qword_2802A66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A66F0);
  }

  return result;
}

unint64_t sub_26897FFB0()
{
  result = qword_2802A6708;
  if (!qword_2802A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6708);
  }

  return result;
}

unint64_t sub_268980008()
{
  result = qword_2802A6710;
  if (!qword_2802A6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6710);
  }

  return result;
}

unint64_t sub_268980060()
{
  result = qword_2802A6718;
  if (!qword_2802A6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6718);
  }

  return result;
}

unint64_t sub_2689800E8()
{
  result = qword_2802A6730;
  if (!qword_2802A6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6730);
  }

  return result;
}

unint64_t sub_268980140()
{
  result = qword_2802A6738;
  if (!qword_2802A6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6738);
  }

  return result;
}

unint64_t sub_268980198()
{
  result = qword_2802A6740;
  if (!qword_2802A6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6740);
  }

  return result;
}

unint64_t sub_268980220()
{
  result = qword_2802A6758;
  if (!qword_2802A6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6758);
  }

  return result;
}

unint64_t sub_268980278()
{
  result = qword_2802A6760;
  if (!qword_2802A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6760);
  }

  return result;
}

unint64_t sub_2689802D0()
{
  result = qword_2802A6768;
  if (!qword_2802A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6768);
  }

  return result;
}

unint64_t sub_268980324()
{
  result = qword_2802A6770;
  if (!qword_2802A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6770);
  }

  return result;
}

unint64_t sub_268980378()
{
  result = qword_2802A6778;
  if (!qword_2802A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6778);
  }

  return result;
}

unint64_t sub_2689803CC()
{
  result = qword_2802A6780;
  if (!qword_2802A6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6780);
  }

  return result;
}

unint64_t sub_268980420()
{
  result = qword_2802A6788;
  if (!qword_2802A6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6788);
  }

  return result;
}

unint64_t sub_268980474()
{
  result = qword_2802A6790;
  if (!qword_2802A6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6790);
  }

  return result;
}

unint64_t sub_2689804C8()
{
  result = qword_2802A6798;
  if (!qword_2802A6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6798);
  }

  return result;
}

unint64_t sub_26898051C()
{
  result = qword_2802A67A0;
  if (!qword_2802A67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67A0);
  }

  return result;
}

unint64_t sub_268980570()
{
  result = qword_2802A67A8;
  if (!qword_2802A67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67A8);
  }

  return result;
}

unint64_t sub_2689805C4()
{
  result = qword_2802A67B0;
  if (!qword_2802A67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67B0);
  }

  return result;
}

unint64_t sub_268980618()
{
  result = qword_2802A67B8;
  if (!qword_2802A67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67B8);
  }

  return result;
}

unint64_t sub_26898066C()
{
  result = qword_2802A67C0;
  if (!qword_2802A67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67C0);
  }

  return result;
}

unint64_t sub_2689806C0()
{
  result = qword_2802A67C8;
  if (!qword_2802A67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67C8);
  }

  return result;
}

unint64_t sub_268980714()
{
  result = qword_2802A67D0;
  if (!qword_2802A67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67D0);
  }

  return result;
}

unint64_t sub_268980768()
{
  result = qword_2802A67D8;
  if (!qword_2802A67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67D8);
  }

  return result;
}

unint64_t sub_2689807BC()
{
  result = qword_2802A67E0;
  if (!qword_2802A67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67E0);
  }

  return result;
}

unint64_t sub_268980810()
{
  result = qword_2802A67E8;
  if (!qword_2802A67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67E8);
  }

  return result;
}

unint64_t sub_268980864()
{
  result = qword_2802A67F0;
  if (!qword_2802A67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67F0);
  }

  return result;
}

unint64_t sub_2689808B8()
{
  result = qword_2802A67F8;
  if (!qword_2802A67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A67F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return sub_26897EC6C(v0, type metadata accessor for SettingsIntent);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_26897EC6C(v0, type metadata accessor for SettingNLv3Intent);
}

void OUTLINED_FUNCTION_21_8()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_37_5()
{
  result = v1;
  *(v2 - 304) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_268980B04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v58 = a6;
  v59 = a2;
  v64 = a5;
  v60 = a1;
  v61 = a3;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v56 = v9;
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v67 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput()", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  sub_268B36754();
  v25 = sub_268B36734();
  if (!v25)
  {
    v25 = sub_268B36744();
  }

  v26 = v25;
  v27 = v67;
  v20(v67, v19, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v54 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v68 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v33 = v55;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v56 + 8))(v33, v57);
    v37 = sub_26892CDB8(v34, v36, &v68);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);

    v54(v67, v11);
  }

  else
  {

    v24(v27, v11);
  }

  OUTLINED_FUNCTION_1_19();
  v38 = swift_allocObject();
  v40 = v60;
  v39 = v61;
  v38[2] = v26;
  v38[3] = v39;
  v42 = v62;
  v41 = v63;
  v43 = v58;
  v44 = v59;
  v38[4] = v63;
  v38[5] = v44;
  v46 = v65;
  v45 = v66;
  v38[6] = v43;
  v38[7] = v45;
  v38[8] = v40;
  v38[9] = v46;
  v38[10] = v42;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v47 = v43;
  v48 = v44;
  swift_retain_n();
  swift_retain_n();

  v49 = v48;
  v50 = v47;

  sub_2689F8CEC(v40, v49, v39, v41, v64, v50, v45, v46, v42, v39, v41, v50, v49, v45, sub_268982638, v38, v40, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_26898107C(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v101 = a8;
  v88 = a7;
  v96 = a6;
  v86 = a5;
  v97 = a4;
  v85 = a3;
  v83 = a2;
  v92 = a1;
  v100 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v79 - v10;
  v11 = sub_268B37A54();
  v98 = *(v11 - 8);
  v99 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v95 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v79 - v20;
  v21 = sub_268B34E24();
  v93 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v89 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = &v79 - v33;
  sub_268935590(v92, &v79 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v99;
    v36 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v37 = v98;
    (*(v98 + 16))(v95, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v95, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -83;
    v102[0] = v41;
    v103 = 1;
    v101(v102);
    return sub_2688EF38C(v102, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v44 = v97;
    v81 = sub_2688E1B9C(15, 3, v83, v85, v97, 0x6E776F6E6B6E75, 0xE700000000000000, v86);
    v82 = v45;
    v46 = __swift_project_boxed_opaque_existential_1(v96 + 13, v96[16]);
    v47 = *MEMORY[0x277D5BBE0];
    v48 = *(v93 + 104);
    v85 = v23;
    v86 = v21;
    v48(v23, v47, v21);
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v95 = v24;

    v49 = sub_268B350F4();
    v50 = *(v49 - 8);
    v51 = v84;
    (*(v50 + 32))(v84, v29, v49);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v49);
    v52 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v52);
    v53 = *v46;
    v54 = v87;
    sub_268935590(v51, v87, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v49);
    v83 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v54, &unk_2802A57B0, &unk_268B3CE00);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v58 = v54;
      v56 = sub_268B350B4();
      v57 = v59;
      (*(v50 + 8))(v58, v49);
    }

    v80 = v50;
    v92 = v49;
    v78 = v53;
    v60 = v85;
    v61 = v94;
    sub_2688E2F3C(v88, v85, v44, v56, v57, v81, v82, v94, v78);

    sub_2688EF38C(v61, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v51, &unk_2802A57B0, &unk_268B3CE00);
    (*(v93 + 8))(v60, v86);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v62 = v99;
    v63 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v64 = v98;
    v65 = v90;
    (*(v98 + 16))(v90, v63, v62);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v96;
    if (v68)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "SetSubtitleStateUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v70, 2u);
      MEMORY[0x26D6266E0](v70, -1, -1);
    }

    (*(v64 + 8))(v65, v62);
    v71 = v69[21];
    v72 = v69[22];
    __swift_project_boxed_opaque_existential_1(v69 + 18, v71);
    v73 = v83;
    v74 = v89;
    sub_268935590(v83, v89, &unk_2802A56E0, &unk_268B3CDF0);
    v75 = *(v74 + *(v95 + 12));
    v76 = v91;
    sub_268A82B50(v97, v91);
    v77 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    (*(v72 + 40))(v74, v75, v76, v101, v100, v71, v72);

    sub_2688EF38C(v76, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v80 + 8))(v74, v92);
  }
}

uint64_t sub_268981A40(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_268935590(a1, v42, &unk_2802A57C0, &qword_268B3BE00);
  v18 = v43;
  sub_2688EF38C(v42, &unk_2802A57C0, &qword_268B3BE00);
  if (v18 == 1)
  {
    v19 = a4 == 0x65676175676E616CLL && a5 == 0xE800000000000000;
    if (v19 || (sub_268B38444() & 1) != 0)
    {
      v20 = SetSubtitleStateLanguageUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
      if (v21)
      {
LABEL_8:
        v22 = sub_2688C2ECC();
        v23 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v22);
        v25 = 98;
LABEL_9:
        *v24 = v25;
        v42[0] = v23;
        v43 = 1;
        a2(v42);
        return sub_2688EF38C(v42, &unk_2802A57C0, &qword_268B3BE00);
      }

      if (v20 == 4)
      {
        v34 = sub_268AAC1F4(a8 + 2);
        OUTLINED_FUNCTION_1_19();
        v35 = swift_allocObject();
        v35[2] = a2;
        v35[3] = a3;
        v35[4] = a4;
        v35[5] = a5;
        v35[6] = a7;
        v35[7] = a6;
        v35[8] = a8;
        v35[9] = a11;
        v35[10] = v34;

        v36 = a7;
        v37 = a6;

        sub_268A365F4(0, 0, sub_2689826B4, v35);
      }

      if (v20 == 2)
      {
        v32 = a8[26];
        v33 = a8[27];
        __swift_project_boxed_opaque_existential_1(a8 + 23, v32);
        return sub_2689CE88C(0xD000000000000028, 0x8000000268B587A0, a9, a10, v32, v33);
      }

      if (v20 != 1)
      {
        goto LABEL_8;
      }

      v27 = [a7 type] == 2 || objc_msgSend(a7, sel_type) == 3;
      sub_268B37B84();
      sub_268A363C0(0, 0, v27);
    }

    v28 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
    if (!v28 && (sub_268B38444() & 1) == 0)
    {
      v39 = sub_2688C2ECC();
      v23 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v39);
      v25 = 101;
      goto LABEL_9;
    }

    v29 = SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if ((v30 & 1) == 0)
    {
      if ((v29 - 2) < 2)
      {
        v38 = v29 == 3;
        sub_268B37B84();
        sub_268A367E4(v38);
      }

      if (v29 == 1)
      {
        v40 = sub_2688C2ECC();
        v23 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v40);
        v25 = 99;
        goto LABEL_9;
      }
    }

    v31 = sub_2688C2ECC();
    v23 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v31);
    v25 = 100;
    goto LABEL_9;
  }

  return a2(a1);
}

uint64_t sub_268981E24(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v62 = a8;
  v59 = a7;
  v66 = a6;
  v58 = a5;
  v57 = a4;
  v67 = a3;
  v68 = a2;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = sub_268B34E24();
  v65 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v28);
  v30 = (&v53 - v29);
  sub_268935590(v64, &v53 - v29, &qword_2802A6300, &unk_268B3BD80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v71[0] = *v30;
  }

  else
  {
    v56 = EnumCaseMultiPayload;
    v55 = a10;
    v54 = a9;
    sub_2689186C8(v30, v27);
    v53 = sub_2688E1B9C(15, 3, v57, v58, v66, 0x6E776F6E6B6E75, 0xE700000000000000, v59);
    v57 = v32;
    v33 = v62;
    v34 = __swift_project_boxed_opaque_existential_1(v62 + 13, v62[16]);
    v35 = *MEMORY[0x277D5BBE0];
    v36 = *(v65 + 104);
    v58 = v21;
    v59 = v19;
    v36(v21, v35, v19);
    v64 = v27;
    sub_268935590(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);

    v37 = sub_268B350F4();
    v38 = *(v37 - 8);
    (*(v38 + 32))(v18, v25, v37);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v37);
    v39 = sub_268B34B94();
    v40 = v61;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v39);
    v41 = *v34;
    v42 = v60;
    sub_268935590(v18, v60, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v42, 1, v37) == 1)
    {
      sub_2688EF38C(v42, &unk_2802A57B0, &unk_268B3CE00);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v43 = sub_268B350B4();
      v44 = v45;
      (*(v38 + 8))(v42, v37);
    }

    v46 = v58;
    v47 = v66;
    sub_2688E2F3C(v54, v58, v66, v43, v44, v53, v57, v40, v41);

    sub_2688EF38C(v40, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v18, &unk_2802A57B0, &unk_268B3CE00);
    (*(v65 + 8))(v46, v59);
    __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
    sub_268B34CA4();
    v48 = v63;
    sub_268A82B50(v47, v63);
    v49 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
    v50 = sub_268B354F4();
    memset(v69, 0, sizeof(v69));
    v70 = 0;
    v71[3] = v50;
    v71[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v71);
    v51 = v64;
    sub_268B34F44();
    sub_2688EF38C(v69, &unk_2802A5800, &unk_268B3CE10);
    sub_2688EF38C(v48, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v51, &unk_2802A56E0, &unk_268B3CDF0);
    EnumCaseMultiPayload = v56;
  }

  v72 = EnumCaseMultiPayload == 1;
  v68(v71);
  return sub_2688EF38C(v71, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_2689824FC()
{
  v0 = sub_268A9AAA4();
  sub_26895F84C((v0 + 23));

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for SetSubtitleStateUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A6800;
  if (!qword_2802A6800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689825D4()
{

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268982650()
{

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_268982750(uint64_t a1)
{
  v2 = v1;
  sub_268982938(a1, v2);
  sub_268982CFC(a1);
  v4 = type metadata accessor for MediaPlayerIntent(0);
  v5 = 0;
  v6 = 0;
  if (*(a1 + *(v4 + 48)) != 26)
  {
    v5 = sub_268942D54(*(a1 + *(v4 + 48)));
  }

  [v2 setMediaType_];
  v7 = *(a1 + *(v4 + 56));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for ControlsSettingAttribute();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = (v7 + 32);
    do
    {
      v12 = *v11++;
      v13 = objc_allocWithZone(ObjCClassFromMetadata);
      v14 = sub_26893A824(0, 0, 0, 0xE000000000000000);
      if (v12)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      [v14 setSettingName_];
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      --v8;
    }

    while (v8);
    v9 = v16;
  }

  sub_2689828C4(v9, v2);
}

void sub_2689828C4(uint64_t a1, void *a2)
{
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CE4();

  [a2 setSettingAttributes_];
}

void sub_268982938(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959E18;
    v30 = type metadata accessor for PauseMediaIntent();
    v24 = v26;
    v29(v28, v30, &off_287959DF8);
LABEL_13:
  }
}

void sub_268982CFC(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_268965BF8();
  v9 = sub_268B37854();
  sub_2688C2F6C(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BAD8;
    v14 = type metadata accessor for PauseMediaIntent();
    v13(v12, v14, &off_28795BAC8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_268982FF8(uint64_t a1)
{
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v42 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v40 = *(v12 + 16);
  v41 = v19;
  v40(v18);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v10;
    v23 = v12;
    v24 = a1;
    v25 = v16;
    v26 = v9;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetVolumeLevel.shouldHandle() called", v22, 2u);
    v28 = v27;
    v9 = v26;
    v16 = v25;
    a1 = v24;
    v12 = v23;
    v10 = v39;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v12 + 8);
  v29(v18, v10);
  v30 = v43;
  (*(v44 + 16))(v43, a1, v45);
  sub_26897BBA8(v30, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v42) == 1)
  {
    sub_26891E52C(v7);
  }

  else
  {
    sub_26891E594(v7, v9);
    v31 = *v9;
    if (v31 != 4 && sub_268AD3EDC(v31, &unk_28794FF08))
    {
      sub_26891E5F8(v9);
      return 1;
    }

    (v40)(v16, v41, v10);
    v33 = sub_268B37A34();
    v34 = sub_268B37EC4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v9;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "Incorrect verb in intent for flow, ignoring input", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);

      v29(v16, v10);
      v37 = v35;
    }

    else
    {

      v29(v16, v10);
      v37 = v9;
    }

    sub_26891E5F8(v37);
  }

  return 0;
}

uint64_t sub_268983434(uint64_t a1)
{
  v2 = sub_2689840D4();
  if ((v2 - 1) < 4)
  {
    v3 = sub_26892D418(v1);
    v5 = v4;
    sub_268B36C54();
    v6 = sub_268B36C24();
    if (v5)
    {
      if (v3 == v6 && v5 == v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_268B38444();
      }
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }

  if (!v2)
  {
    v9 = 1;
    return v9 & 1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t Device.namedEntities.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = sub_268988510(v0);
  if (v3)
  {
    sub_268984918(v3);
    v2 = v21;
  }

  v4 = sub_2688EF000(v0, &selRef_roomName);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_88();
      sub_2689876A4();
      v2 = v17;
    }

    v8 = *(v2 + 16);
    if (v8 >= *(v2 + 24) >> 1)
    {
      sub_2689876A4();
      v2 = v18;
    }

    *(v2 + 16) = v8 + 1;
    v9 = v2 + 16 * v8;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
  }

  v10 = sub_2688EF000(v1, &selRef_name);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_88();
      sub_2689876A4();
      v2 = v19;
    }

    v14 = *(v2 + 16);
    if (v14 >= *(v2 + 24) >> 1)
    {
      sub_2689876A4();
      v2 = v20;
    }

    *(v2 + 16) = v14 + 1;
    v15 = v2 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
  }

  return v2;
}

uint64_t Device.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2688EF000(v1, &selRef_type);
  if (v3)
  {
    sub_268B37004();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_268B37034();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

void Device.isPlayingOrHasPausedContentOnScreen.getter()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v57 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v54 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AF0, &unk_268B3C500);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v10 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  v55 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v56 = v22 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  v30 = [v0 context];
  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = v30;
  v53 = v9;
  v32 = v1;
  v33 = [v30 nowPlayingState];

  if (v33 <= 1)
  {
    goto LABEL_16;
  }

  if (v33 == 2)
  {
    Device.deviceType.getter(v19);
    v34 = v32;
    if (__swift_getEnumTagSinglePayload(v19, 1, v10))
    {
      sub_2688C058C(v19, &qword_2802A58F0, &unk_268B3BEC0);
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
    }

    else
    {
      v38 = v55;
      (*(v55 + 16))(v15, v19, v10);
      sub_2688C058C(v19, &qword_2802A58F0, &unk_268B3BEC0);
      sub_268B36FE4();
      (*(v38 + 8))(v15, v10);
    }

    v39 = v53;
    sub_268B371A4();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v34);
    v40 = *(v6 + 48);
    sub_2688F1FA4(v29, v39, &qword_2802A58F8, &unk_268B3C510);
    sub_2688F1FA4(v27, v39 + v40, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_1_17(v39);
    if (v42)
    {
      OUTLINED_FUNCTION_12_2(v27);
      OUTLINED_FUNCTION_12_2(v29);
      OUTLINED_FUNCTION_1_17(v39 + v40);
      if (v42)
      {
        sub_2688C058C(v39, &qword_2802A58F8, &unk_268B3C510);
LABEL_16:
        OUTLINED_FUNCTION_23();
        return;
      }
    }

    else
    {
      v41 = v56;
      sub_2688F1FA4(v39, v56, &qword_2802A58F8, &unk_268B3C510);
      OUTLINED_FUNCTION_1_17(v39 + v40);
      if (!v42)
      {
        v43 = v57;
        v44 = v54;
        v45 = OUTLINED_FUNCTION_52_3();
        v46(v45);
        OUTLINED_FUNCTION_4_11();
        sub_268988A28(v47, v48, MEMORY[0x277D5F7F0]);
        sub_268B37BB4();
        v49 = *(v43 + 8);
        v49(v44, v34);
        sub_2688C058C(v27, &qword_2802A58F8, &unk_268B3C510);
        sub_2688C058C(v29, &qword_2802A58F8, &unk_268B3C510);
        v49(v41, v34);
        v50 = OUTLINED_FUNCTION_0_1();
        sub_2688C058C(v50, v51, &unk_268B3C510);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_12_2(v27);
      OUTLINED_FUNCTION_12_2(v29);
      (*(v57 + 8))(v41, v34);
    }

    sub_2688C058C(v39, &qword_2802A5AF0, &unk_268B3C500);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6810, &qword_268B40978);
  sub_268B38434();
  __break(1u);
}

uint64_t sub_268983C00()
{
  sub_268B381C4();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_37_6();
  v1 = sub_2688EF000(v0, &selRef_roomName);
  OUTLINED_FUNCTION_64_2(v1, v2);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000013);
  v3 = sub_2688EF000(v0, &selRef_displayableName);
  OUTLINED_FUNCTION_64_2(v3, v4);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_35_5();
  v5 = sub_26892D418(v0);
  OUTLINED_FUNCTION_64_2(v5, v6);
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_47_1();
  v7 = sub_2688EF000(v0, &selRef_type);
  v9 = OUTLINED_FUNCTION_64_2(v7, v8);
  if (v11)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x26D625650](v9, v12);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

void sub_268983D74(uint64_t a1)
{
  v3 = [v1 context];
  if (v3)
  {
LABEL_24:

    return;
  }

  v4 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      v14 = 0;
      goto LABEL_23;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = v6;
    v7 = sub_268A52360(v6);
    v9 = v8;
    v10 = sub_26892D418(v1);
    if (!v9)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

LABEL_17:

      continue;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

    if (v7 == v10 && v9 == v11)
    {

LABEL_22:
      v14 = v15;
LABEL_23:
      v16 = v14;
      [v1 setContext_];
      v3 = v16;
      goto LABEL_24;
    }

    v13 = sub_268B38444();

    if (v13)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_268983F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  OUTLINED_FUNCTION_26();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_182_0();
  v31 = sub_268B37BC4();
  v32 = OUTLINED_FUNCTION_60_0();
  v34 = sub_268988448(v32, v33, v31, v23);

  v35 = v34;
  if (v29)
  {
    v36 = sub_268B37BC4();
  }

  else
  {
    v36 = 0;
  }

  [v34 setName_];

  v37 = OUTLINED_FUNCTION_60_0();
  sub_2689884A0(v37, v38, v34);
  if (v27)
  {
    v39 = sub_268B37BC4();
  }

  else
  {
    v39 = 0;
  }

  [v34 setRoomName_];

  [v34 setContext_];
  sub_2688C063C();
  v40 = sub_268B38054();
  OUTLINED_FUNCTION_70_3(v40, sel_setIsDeviceSelectedUsingContext_);

  v41 = sub_268B38054();
  OUTLINED_FUNCTION_70_3(v41, sel_setIsPreResolved_);

  if (a21)
  {
    sub_268A3239C();
    if (v42)
    {

      v43 = sub_268B38054();
      OUTLINED_FUNCTION_70_3(v43, sel_setIsEndpoint_);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689840D4()
{
  v1 = sub_26892D418(v0);
  v3 = v2;
  sub_268B36C54();
  v4 = sub_268B36C24();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {

      return 0;
    }

    v7 = sub_268B38444();

    if (v7)
    {
      return 0;
    }
  }

  else
  {
  }

  v8 = [v0 context];
  if (!v8)
  {
    return 4;
  }

  v9 = v8;
  v10 = [v8 proximity];

  return v10;
}

void sub_2689841C4()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - v3;
  v5 = sub_268B35894();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v63 = v10 - v9;
  OUTLINED_FUNCTION_9();
  sub_268B34674();
  OUTLINED_FUNCTION_1();
  v61 = v12;
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  v27 = sub_268988510(v0);
  if (v27)
  {
    if (*(v27 + 16))
    {
      sub_2689858AC();

      goto LABEL_12;
    }
  }

  sub_268B35754();
  v28 = sub_26894E030(v0);
  v29 = MEMORY[0x26D6237C0]();
  if (v29)
  {
    v58 = v29;
    v60 = v7;
    sub_268B35BD4();
    v30 = OUTLINED_FUNCTION_14_7();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v59 = v28;
    v34 = MEMORY[0x26D623510](v28, v26);
    sub_2688C058C(v26, &unk_2802A62D0, &qword_268B3EDD0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v35 = __swift_project_value_buffer(v16, qword_2802CDA10);
    (*(v18 + 16))(v22, v35, v16);

    v36 = sub_268B37A34();
    v37 = sub_268B37ED4();

    v38 = os_log_type_enabled(v36, v37);
    v57 = v34;
    if (v38)
    {
      v39 = v34;
      OUTLINED_FUNCTION_68();
      v40 = swift_slowAlloc();
      v56 = v4;
      v41 = v40;
      OUTLINED_FUNCTION_69();
      v42 = swift_slowAlloc();
      v64 = v39;
      v65 = v42;
      *v41 = 136315138;
      sub_268B36624();
      v55 = v5;
      OUTLINED_FUNCTION_20_9();
      sub_268988A28(v43, v44, MEMORY[0x277D5F430]);
      v45 = sub_268B38404();
      v47 = sub_26892CDB8(v45, v46, &v65);

      *(v41 + 4) = v47;
      v5 = v55;
      _os_log_impl(&dword_2688BB000, v36, v37, "Device#toRREntities UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v18 + 8))(v22, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6820, &qword_268B40A30);
    sub_268B37A94();
    *(swift_allocObject() + 16) = xmmword_268B3BBC0;
    sub_268B34664();
    sub_268B34634();
    (*(v61 + 8))(v15, v62);
    v48 = v60;
    v49 = v63;
    (*(v60 + 104))(v63, *MEMORY[0x277D5F638], v5);
    sub_268B35884();
    (*(v48 + 8))(v49, v5);
    sub_268B37A74();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);

    sub_268B37A84();
  }

  else
  {
  }

LABEL_12:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689847C0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268984918(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2688E1508(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2689849D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2688E1520(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268984AD8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_268984BA0()
{
  v2 = v0;
  v3 = [v0 isEndpoint];
  OUTLINED_FUNCTION_182_0();
  sub_2688C063C();
  v4 = sub_268B38054();
  v5 = v4;
  if (!v1)
  {

    return 0;
  }

  OUTLINED_FUNCTION_100();
  v6 = sub_268B38074();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [v2 context];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [v7 nowPlayingState];

  return v9 != 1;
}

uint64_t sub_268984C64()
{
  v1 = sub_26892D418(v0);
  v3 = v2;
  v4 = sub_268B37724();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_268B38444();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_268984D14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_2688EF000(v1, &selRef_type);
  if (v14)
  {
    sub_268B37154();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      v16 = OUTLINED_FUNCTION_100();
      v17(v16);
      sub_268B371A4();
      OUTLINED_FUNCTION_4_11();
      sub_268988A28(v18, v19, MEMORY[0x277D5F800]);
      OUTLINED_FUNCTION_0_1();
      v15 = sub_268B380F4();
      v20 = *(v8 + 8);
      v20(v12, v6);
      v21 = OUTLINED_FUNCTION_0_1();
      (v20)(v21);
      return v15 & 1;
    }

    sub_2688C058C(v5, &qword_2802A58F8, &unk_268B3C510);
  }

  v15 = 0;
  return v15 & 1;
}

BOOL sub_268984EE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  sub_2688EF000(v1, &selRef_type);
  if (!v13)
  {
    return 0;
  }

  sub_268B37154();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2688C058C(v5, &qword_2802A58F8, &unk_268B3C510);
    return 0;
  }

  (*(v8 + 32))(v12, v5, v6);
  sub_268B371D4();
  OUTLINED_FUNCTION_4_11();
  sub_268988A28(v15, v16, MEMORY[0x277D5F7F8]);
  sub_268B37CA4();
  sub_268B37CA4();
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_0_1();
  v17(v18);
  (v17)(v12, v6);
  return v19[1] == v19[0];
}

uint64_t sub_2689850E8()
{
  result = [v0 disambiguated];
  if (result || (result = [v0 skipConfirmation]) != 0)
  {

    return 1;
  }

  return result;
}

id sub_26898513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_268B37BC4();
  sub_268B37894();
  v9 = objc_allocWithZone(v4);
  v10 = sub_268B37BC4();

  v11 = OUTLINED_FUNCTION_52_3();
  v13 = [v11 v12];

  v14 = v13;
  sub_268B37894();
  if (v15)
  {
    v16 = sub_268B37BC4();
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_52_3();
  [v17 v18];

  sub_268B378B4();
  if (v19)
  {
    v20 = sub_268B37BC4();
  }

  else
  {
    v20 = 0;
  }

  v21 = OUTLINED_FUNCTION_52_3();
  [v21 v22];

  sub_2689884A0(a2, a3, v14);
  sub_268B378A4();
  if (v23)
  {
    v24 = sub_268B37BC4();
  }

  else
  {
    v24 = 0;
  }

  [v14 setType_];

  sub_268B37884();
  if (v25)
  {
    v26 = sub_268B37BC4();
  }

  else
  {
    v26 = 0;
  }

  [v14 setMediaSystemId_];

  sub_268B37874();
  v27 = sub_268B37D64();
  [v14 setIsEndpoint_];

  sub_268B378C4();
  OUTLINED_FUNCTION_4();
  (*(v28 + 8))(a1);
  return v14;
}

uint64_t Device.description.getter()
{
  v1 = v0;
  v2 = 0x65736C6166;
  v3 = 7104878;
  sub_268B381C4();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v4 = sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_44_3(v4, v5);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_37_6();
  v6 = sub_2688EF000(v0, &selRef_roomName);
  OUTLINED_FUNCTION_44_3(v6, v7);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v8 = sub_2688EF000(v0, &selRef_displayableName);
  OUTLINED_FUNCTION_44_3(v8, v9);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_35_5();
  v10 = sub_26892D418(v0);
  OUTLINED_FUNCTION_44_3(v10, v11);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000011);
  v12 = sub_2688EF000(v0, &selRef_mediaSystemId);
  OUTLINED_FUNCTION_44_3(v12, v13);
  OUTLINED_FUNCTION_56_2();

  MEMORY[0x26D625650](0x70646E457369202CLL, 0xEE00203A746E696FLL);
  v14 = [v0 isEndpoint];
  sub_2688C063C();
  v15 = sub_268B38054();
  v16 = v15;
  if (v14)
  {
    v17 = OUTLINED_FUNCTION_40_3();

    if (v17)
    {
      OUTLINED_FUNCTION_45_4();
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_47_1();
  v18 = sub_2688EF000(v1, &selRef_type);
  OUTLINED_FUNCTION_44_3(v18, v19);
  if (v21)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v22 = v20;
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650](0xD000000000000011);
  v23 = [v1 disambiguated];
  v24 = OUTLINED_FUNCTION_53_3();
  v25 = v24;
  if (v22)
  {
    v26 = OUTLINED_FUNCTION_40_3();

    if (v26)
    {
      OUTLINED_FUNCTION_45_4();
      goto LABEL_13;
    }
  }

  else
  {
  }

  v22 = 0xE500000000000000;
LABEL_13:
  OUTLINED_FUNCTION_65_2();

  MEMORY[0x26D625650](0x7269666E6F63202CLL, 0xED0000203A64656DLL);
  v27 = [v1 confirmed];
  v28 = OUTLINED_FUNCTION_53_3();
  v29 = OUTLINED_FUNCTION_40_3();

  if (v29)
  {
    OUTLINED_FUNCTION_45_4();
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_36_4();
  MEMORY[0x26D625650]();
  v30 = [v1 skipConfirmation];
  v31 = OUTLINED_FUNCTION_53_3();
  v32 = OUTLINED_FUNCTION_40_3();

  if (v32)
  {
    v33 = 0xE400000000000000;
    v2 = 1702195828;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v2, v33);

  MEMORY[0x26D625650](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v34 = [v1 context];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 description];

    v3 = sub_268B37BF4();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  MEMORY[0x26D625650](v3, v38);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_26898580C()
{
  v1 = [v0 context];
  v2 = [v1 silentPrimary];

  sub_2688C063C();
  v3 = sub_268B38054();
  if (v2)
  {
    v4 = sub_268B38074();

    v3 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_2689858AC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v82 = &v66 - v4;
  OUTLINED_FUNCTION_9();
  v81 = sub_268B35894();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v80 = v9 - v8;
  OUTLINED_FUNCTION_9();
  v79 = sub_268B34674();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v78 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v77 = sub_268B37A94();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  v76 = &v66 - v31;
  v32 = *(v1 + 16);
  if (v32)
  {
    v72 = (v23 + 8);
    v73 = (v23 + 16);
    v71 = (v11 + 8);
    v70 = *MEMORY[0x277D5F638];
    v68 = (v6 + 8);
    v69 = (v6 + 104);
    v67 = v16 + 32;
    v33 = v1 + 40;
    v86 = MEMORY[0x277D84F90];
    *&v30 = 136315138;
    v66 = v30;
    v83 = v27;
    v84 = v21;
    v74 = v20;
    v75 = v16;
    do
    {

      OUTLINED_FUNCTION_138();
      sub_268985F20();
      v35 = v34;

      if (MEMORY[0x26D6237C0](v35))
      {
        sub_268B35BD4();
        v36 = v76;
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
        v41 = MEMORY[0x26D623510](v35, v36);
        sub_2688C058C(v36, &unk_2802A62D0, &qword_268B3EDD0);
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v42 = __swift_project_value_buffer(v21, qword_2802CDA10);
        (*v73)(v27, v42, v21);

        v43 = sub_268B37A34();
        v44 = sub_268B37ED4();

        v45 = os_log_type_enabled(v43, v44);
        v85 = v35;
        if (v45)
        {
          OUTLINED_FUNCTION_68();
          v46 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v47 = swift_slowAlloc();
          v87 = v41;
          v88 = v47;
          *v46 = v66;
          sub_268B36624();
          OUTLINED_FUNCTION_20_9();
          sub_268988A28(&qword_2802A6830, v48, MEMORY[0x277D5F430]);
          v49 = sub_268B38404();
          v51 = sub_26892CDB8(v49, v50, &v88);

          *(v46 + 4) = v51;
          _os_log_impl(&dword_2688BB000, v43, v44, "Device#toRREntitiesForZoneNames UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          (*v72)(v83, v84);
        }

        else
        {

          (*v72)(v27, v21);
        }

        v52 = v78;
        sub_268B34664();
        sub_268B34634();
        (*v71)(v52, v79);
        v53 = v80;
        v54 = v81;
        (*v69)(v80, v70, v81);
        sub_268B35884();
        (*v68)(v53, v54);
        sub_268B37A74();
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);

        v59 = v74;
        OUTLINED_FUNCTION_70_1();
        sub_268B37A84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_88();
          sub_268987774();
          v86 = v64;
        }

        v60 = v75;
        v61 = *(v86 + 16);
        v27 = v83;
        v21 = v84;
        if (v61 >= *(v86 + 24) >> 1)
        {
          sub_268987774();
          v86 = v65;
        }

        *(v86 + 16) = v61 + 1;
        OUTLINED_FUNCTION_258();
        (*(v60 + 32))(v63 + v62 + *(v60 + 72) * v61, v59, v77);
      }

      else
      {
      }

      v33 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_23();
}

void sub_268985F20()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  sub_268B35754();
  swift_allocObject();
  sub_268B35744();
  sub_268B35724();
  sub_268B35E54();

  v7 = sub_268B35B54();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_2688EFD10();
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v8);
  }

  else
  {
  }

  sub_268B357F4();
  sub_268B357B4();

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_0_1();
  v9(v10);
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D625BD0](0, v8);
  }

  else
  {
  }

  MEMORY[0x26D623200](v3, v1);
  sub_268B357B4();

  v11 = OUTLINED_FUNCTION_0_1();
  v9(v11);
  sub_268B35874();
  sub_268B357B4();

  v12 = OUTLINED_FUNCTION_0_1();
  v9(v12);
  OUTLINED_FUNCTION_23();
}

uint64_t Device.deviceQuantifier.getter()
{
  sub_268B37464();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26898616C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2688F1FA4(a1, &v6 - v3, &qword_2802A5BA8, &qword_268B3C690);
  return Device.deviceQuantifier.setter(v4);
}

void (*Device.deviceQuantifier.modify(void **a1))(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  OUTLINED_FUNCTION_22(v2);
  *a1 = __swift_coroFrameAllocStub(*(v3 + 64));
  sub_268B37464();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  return sub_268988A74;
}

uint64_t sub_2689862B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2688F1FA4(a1, &v6 - v3, &qword_2802A58F0, &unk_268B3BEC0);
  return Device.deviceType.setter(v4);
}

uint64_t Device.deviceType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  sub_2688F1FA4(a1, &v12 - v4, &qword_2802A58F0, &unk_268B3BEC0);
  v6 = sub_268B37034();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = sub_2688C058C(v5, &qword_2802A58F0, &unk_268B3BEC0);
    v8 = 0;
  }

  else
  {
    sub_268B37014();
    v9 = OUTLINED_FUNCTION_138();
    v10(v9);
    OUTLINED_FUNCTION_70_1();
    v8 = sub_268B37BC4();
  }

  OUTLINED_FUNCTION_70_3(v7, sel_setType_);

  return sub_2688C058C(a1, &qword_2802A58F0, &unk_268B3BEC0);
}

void (*Device.deviceType.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  Device.deviceType.getter(v6);
  return sub_26898654C;
}

void sub_26898654C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_0_1();
    sub_2688F1FA4(v4, v5, &qword_2802A58F0, &unk_268B3BEC0);
    Device.deviceType.setter(v2);
    v6 = OUTLINED_FUNCTION_100();
    sub_2688C058C(v6, v7, &unk_268B3BEC0);
  }

  else
  {
    Device.deviceType.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Device.placeHint.getter()
{
  sub_268B378F4();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Device.reference.getter()
{
  sub_268B37924();
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void (*sub_2689866DC(uint64_t *a1))(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v3 = __swift_coroFrameAllocStub(*(*(v2 - 8) + 64));
  *a1 = v3;
  v4 = sub_268B37464();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_26898676C;
}

void sub_26898676C(uint64_t *a1)
{
  v1 = *a1;
  sub_2688C058C(*a1, &qword_2802A5BA8, &qword_268B3C690);

  free(v1);
}

void (*sub_268986800(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0) - 8) + 64);
  *a1 = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  Device.deviceType.getter(v4);
  return sub_26898689C;
}

void sub_26898689C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_0_1();
    sub_2688F1FA4(v4, v5, &qword_2802A58F0, &unk_268B3BEC0);
    Device.deviceType.setter(v3);
    v6 = OUTLINED_FUNCTION_100();
    sub_2688C058C(v6, v7, &unk_268B3BEC0);
  }

  else
  {
    Device.deviceType.setter(*(a1 + 8));
  }

  free(v2);

  free(v3);
}

void sub_268986960(void **a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = *a1;
  v13 = sub_26892D418(*a1);
  v15 = v14;
  sub_268B36C54();
  v16 = sub_268B36C24();
  if (!v15)
  {

    goto LABEL_16;
  }

  if (v13 == v16 && v15 == v17)
  {
  }

  else
  {
    v19 = sub_268B38444();

    if ((v19 & 1) == 0)
    {
LABEL_16:
      if (a2)
      {
        v29 = [v12 context];
        if (!v29 || (v30 = sub_268B0F784(v29), !v31))
        {
          v32 = [v12 routeId];
          if (v32)
          {
            v33 = v32;
            v22 = sub_268B37BF4();
            v23 = v34;
          }

          else
          {

            v22 = 0;
            v23 = 0;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v30 = sub_26892D418(v12);
      }

      v22 = v30;
      v23 = v31;
      goto LABEL_23;
    }
  }

  v20 = sub_268A3239C();
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v20;
  v23 = v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v24 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v7 + 16))(v11, v24, v5);

  v25 = sub_268B37A34();
  v26 = sub_268B37F04();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_68();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_26892CDB8(v22, v23, &v36);
    _os_log_impl(&dword_2688BB000, v25, v26, "Local SideKick device, using endpointId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v7 + 8))(v11, v5);
LABEL_23:
  *v35 = v22;
  v35[1] = v23;
}

uint64_t sub_268986C68(void *a1, void **a2)
{
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = *a2;
  v15 = sub_268A52360(*a2);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = OUTLINED_FUNCTION_60_0();
      v23 = sub_26892E438(v20, v21, v22);
      if (v23)
      {
        v24 = v23;
        v63 = v17;
        v64 = a1;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v25 = __swift_project_value_buffer(v4, qword_2802CDA10);
        (*(v6 + 16))(v13, v25, v4);

        v26 = v24;
        v27 = v14;
        v61 = v24;
        v28 = v27;
        v29 = sub_268B37A34();
        v30 = sub_268B37EE4();
        v62 = v28;

        v65 = v26;

        if (os_log_type_enabled(v29, v30))
        {
          OUTLINED_FUNCTION_69();
          v31 = swift_slowAlloc();
          v58 = v29;
          v32 = v31;
          v60 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v59 = swift_slowAlloc();
          v66 = v59;
          *v32 = 136315650;
          v17 = v63;
          v33 = OUTLINED_FUNCTION_60_0();
          *(v32 + 4) = sub_26892CDB8(v33, v34, v35);
          *(v32 + 12) = 2112;
          v36 = v65;
          *(v32 + 14) = v65;
          *(v32 + 22) = 2112;
          v37 = v61;
          v38 = v62;
          *(v32 + 24) = v62;
          v39 = v60;
          *v60 = v37;
          v39[1] = v38;
          v65 = v36;
          v40 = v38;
          v41 = v30;
          v42 = v58;
          _os_log_impl(&dword_2688BB000, v58, v41, "Context contains duplicate routeId: %s with context: %@. Keeping only last processed context: %@", v32, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          __swift_destroy_boxed_opaque_existential_0Tm(v59);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v43 = OUTLINED_FUNCTION_138();
          v44(v43);
        }

        else
        {

          v53 = OUTLINED_FUNCTION_138();
          v54(v53);
          v17 = v63;
        }

        a1 = v64;
      }

      v55 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *a1;
      sub_268A0E5A4(v55, v17, v18, isUniquelyReferenced_nonNull_native);

      *a1 = v66;
      return result;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v45 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v6 + 16))(v10, v45, v4);
  v46 = v14;
  v47 = sub_268B37A34();
  v48 = sub_268B37EE4();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_68();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&dword_2688BB000, v47, v48, "Context missing route ID while converting to Intent Device: %@. Skipping device.", v49, 0xCu);
    sub_2688C058C(v50, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  return (*(v6 + 8))(v10, v4);
}

void sub_2689870EC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v53 = a2;
  v54 = sub_268B378C4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_268B37864();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = sub_26892E438(v20, v21, v53);
    type metadata accessor for Device();
    (*(v5 + 16))(v9, a1, v54);
    v25 = sub_26898513C(v9, v22, v23);
    sub_268B378B4();
    if (v26)
    {
      v27 = sub_268B37BC4();
    }

    else
    {
      v27 = 0;
    }

    [v25 setRoomName_];

    v45 = OUTLINED_FUNCTION_52_3();
    [v45 v46];
    v47 = sub_268B37D64();
    [v25 setIsDeviceSelectedUsingContext_];
  }

  else
  {
    v28 = v5;
    v29 = v54;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v30 = v13;
    v31 = __swift_project_value_buffer(v13, qword_2802CDA10);
    v32 = v15;
    v33 = v19;
    (*(v15 + 16))(v19, v31, v30);
    v34 = v12;
    v35 = a1;
    v36 = v29;
    (*(v28 + 16))(v12, v35, v29);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_68();
      v39 = swift_slowAlloc();
      v53 = v33;
      v40 = v39;
      OUTLINED_FUNCTION_69();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v40 = 136315138;
      sub_268988A28(&qword_2802A6860, MEMORY[0x277D5F998], MEMORY[0x277D5F9A0]);
      sub_268B38404();
      v51 = v30;
      (*(v28 + 8))(v34, v36);
      v41 = OUTLINED_FUNCTION_138();
      v44 = sub_26892CDB8(v41, v42, v43);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2688BB000, v37, v38, "Device missing identifier, skipping conversion: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      (*(v32 + 8))(v53, v51);
    }

    else
    {

      (*(v28 + 8))(v12, v36);
      v48 = OUTLINED_FUNCTION_138();
      v50(v48, v49);
    }

    v25 = 0;
  }

  *v55 = v25;
}

void sub_2689874FC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6898, qword_268B40A88);
  OUTLINED_FUNCTION_182_0();
  sub_268B37074();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5F790], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_2689875D4()
{
  OUTLINED_FUNCTION_223();
  if (v4)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  OUTLINED_FUNCTION_86();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6848, &qword_268B40A50);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_2689876A4()
{
  OUTLINED_FUNCTION_223();
  if (v4)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  OUTLINED_FUNCTION_86();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v7 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_9();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268987774()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6820, &qword_268B40A30);
  OUTLINED_FUNCTION_182_0();
  sub_268B37A94();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5FEB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_26898784C()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6838, &qword_268B40A40);
  OUTLINED_FUNCTION_182_0();
  sub_268B355B4();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5DB80], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987924()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &unk_2802A57A0, &qword_268B3BDE8);
  OUTLINED_FUNCTION_182_0();
  sub_268B34DE4();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5BAF8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_2689879FC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6840, &qword_268B40A48);
  OUTLINED_FUNCTION_182_0();
  sub_268B36A44();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D55538], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987AD4()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A5A00, &qword_268B3C040);
  v8 = OUTLINED_FUNCTION_182_0();
  type metadata accessor for QuickStopContext(v8);
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(type metadata accessor for QuickStopContext, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987BAC()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A5A28, qword_268B43980);
  OUTLINED_FUNCTION_182_0();
  sub_268B37594();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5F918], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987C84()
{
  OUTLINED_FUNCTION_223();
  if (v3)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6850, &qword_268B40A58);
    v9 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_9();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_268987D58()
{
  OUTLINED_FUNCTION_223();
  if (v4)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  OUTLINED_FUNCTION_86();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59F0, &qword_268B3C030);
    v7 = OUTLINED_FUNCTION_317();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_9();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268987E28()
{
  OUTLINED_FUNCTION_9_9();
  if (v4)
  {
    OUTLINED_FUNCTION_7_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_33_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_13();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_48_3(v2, v5, &qword_2802A6858, &qword_268B40A60);
  OUTLINED_FUNCTION_182_0();
  sub_268B35C14();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v1)
  {
    OUTLINED_FUNCTION_19_7(MEMORY[0x277D5E678], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }
}

void sub_268987F00()
{
  OUTLINED_FUNCTION_223();
  if (v4)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  OUTLINED_FUNCTION_86();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6868, &qword_268B40A68);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_62_2();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_268987FD0()
{
  OUTLINED_FUNCTION_223();
  if (v3)
  {
    OUTLINED_FUNCTION_49();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_145();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6870, &qword_268B40A70);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2689880CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v4 = OUTLINED_FUNCTION_317();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_15_9();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_268988138(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v4 = OUTLINED_FUNCTION_317();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_2689881B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_182_0();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2689882A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_2689882C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_268988330(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

void sub_268988388(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_59_1();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_59_1();

    MEMORY[0x2821FE820](v9);
  }
}

id sub_268988448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_268B37BC4();
  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

void sub_2689884A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setRouteId_];
}

uint64_t sub_268988510(void *a1)
{
  v1 = [a1 zoneNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37CF4();

  return v3;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_2689885CC(uint64_t a1)
{
  result = sub_268988A28(&qword_2802A6818, type metadata accessor for Device, MEMORY[0x277CC9E10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268988A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_19_7(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_268988388(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_35_5()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_37_6()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_268B38074();
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_47_1()
{

  JUMPOUT(0x26D625650);
}

void *OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2689881B0(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_268B38054();
}

void OUTLINED_FUNCTION_56_2()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_65_2()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_66_1()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_67_1(unint64_t *a1)
{

  return sub_26890CAA0(a1, v1, v2);
}

id OUTLINED_FUNCTION_70_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_71_4(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

Swift::String_optional __swiftcall UsoTask_resume_uso_NoEntity.verb()()
{
  v0 = 0x656D75736572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_resume_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268988F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268988FA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268988FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268989048(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_26898909C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689890F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268989144(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268989198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689891FC(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268989250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689892B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268989318(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_26898937C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689893E0(uint64_t a1)
{
  result = sub_26898948C(&qword_2802A68A0, &protocol conformance descriptor for UsoTask_resume_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26898948C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689894E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v64 = a5;
  v65 = a7;
  v60 = a2;
  v61 = a6;
  v66 = a4;
  v62 = a1;
  v63 = a3;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v58 = v9;
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput...", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  sub_268B36754();
  v25 = sub_268B36734();
  if (!v25)
  {
    v25 = sub_268B36744();
  }

  v26 = v25;
  v27 = v69;
  v20(v69, v19, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v56 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v70 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v33 = v57;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v58 + 8))(v33, v59);
    v37 = sub_26892CDB8(v34, v36, &v70);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);

    v56(v69, v11);
  }

  else
  {

    v24(v27, v11);
  }

  v38 = swift_allocObject();
  v40 = v62;
  v39 = v63;
  v38[2] = v26;
  v38[3] = v39;
  v42 = v66;
  v41 = v67;
  v43 = v60;
  v44 = v61;
  v38[4] = v66;
  v38[5] = v43;
  v38[6] = v44;
  v38[7] = v41;
  v45 = v65;
  v38[8] = v40;
  v38[9] = v45;
  v46 = v68;
  v38[10] = v68;
  swift_retain_n();
  v47 = v43;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v48 = v44;
  v49 = v47;
  v50 = v48;

  v51 = v49;
  v52 = v50;

  sub_2689F9694(v53, v51, v39, v42, v64, v52, v41, v45, v46, v51, v39, v42, v41, v52, sub_26898AB0C, v38, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
}

uint64_t sub_268989A88(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v93 = a8;
  v80 = a7;
  v88 = a6;
  v78 = a5;
  v89 = a4;
  v77 = a3;
  v75 = a2;
  v84 = a1;
  v92 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v71 - v10;
  v11 = sub_268B37A54();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v79 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v71 - v20;
  v21 = sub_268B34E24();
  v85 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v81 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v71 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = &v71 - v33;
  sub_268935590(v84, &v71 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v91;
    v36 = __swift_project_value_buffer(v91, qword_2802CDA10);
    v37 = v90;
    (*(v90 + 16))(v87, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v87, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -82;
    v94[0] = v41;
    v95 = 1;
    v93(v94);
    return sub_2688EF38C(v94, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v73 = sub_2688E1B54(26, 3, v75, v77, v89, 0x6E776F6E6B6E75, 0xE700000000000000, v78);
    v74 = v44;
    __swift_project_boxed_opaque_existential_1(v88 + 13, v88[16]);
    v45 = *MEMORY[0x277D5BBE0];
    v46 = *(v85 + 104);
    v77 = v23;
    v78 = v21;
    v46(v23, v45, v21);
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v87 = v24;

    v47 = sub_268B350F4();
    v48 = *(v47 - 8);
    v49 = v76;
    (*(v48 + 32))(v76, v29, v47);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    v50 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v50);
    v51 = v79;
    sub_268935590(v49, v79, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v47);
    v75 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v51, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v48 + 8))(v51, v47);
    }

    v72 = v48;
    v84 = v47;
    v53 = v77;
    v54 = v86;
    sub_2688E2B50();

    sub_2688EF38C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v85 + 8))(v53, v78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v55 = v91;
    v56 = __swift_project_value_buffer(v91, qword_2802CDA10);
    v57 = v90;
    v58 = v82;
    (*(v90 + 16))(v82, v56, v55);
    v59 = sub_268B37A34();
    v60 = sub_268B37ED4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v88;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v59, v60, "SetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v63, 2u);
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    (*(v57 + 8))(v58, v55);
    v64 = v62[21];
    v65 = v62[22];
    __swift_project_boxed_opaque_existential_1(v62 + 18, v64);
    v66 = v75;
    v67 = v81;
    sub_268935590(v75, v81, &unk_2802A56E0, &unk_268B3CDF0);
    v68 = *(v67 + *(v87 + 12));
    v69 = v83;
    sub_268A82B50(v89, v83);
    v70 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
    (*(v65 + 40))(v67, v68, v69, v93, v92, v64, v65);

    sub_2688EF38C(v69, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v66, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v72 + 8))(v67, v84);
  }
}

void sub_26898A44C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v21, &unk_2802A57C0, &qword_268B3BE00);
  v16 = v21[40];
  sub_2688EF38C(v21, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 == 1)
  {
    v17 = sub_2689B8400();
    v18 = a5 == 0x73656369766564 && a6 == 0xE700000000000000;
    if (v18 || (sub_268B38444() & 1) != 0)
    {
      sub_26898A618(a8, a9, a10, a2, a3);
LABEL_8:

      return;
    }

    v19 = a5 == 0x654C656D756C6F76 && a6 == 0xEB000000006C6576;
    if (v19 || (sub_268B38444() & 1) != 0)
    {
      sub_26898A7BC(v17, a8, a9, a10, a2, a3);
      goto LABEL_8;
    }

    sub_2688C2ECC();
    swift_allocError();
    OUTLINED_FUNCTION_1_20(v20, 105);
    (a2)();

    sub_2688EF38C(v21, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    a2(a1);
  }
}

uint64_t sub_26898A618(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v7 = SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)([a1 unsupportedReason]);
  if (v8)
  {
LABEL_2:
    sub_2688C2ECC();
    v9 = swift_allocError();
    *v10 = 106;
    v17[0] = v9;
    BYTE8(v18) = 1;
    a4(v17);
    return sub_2688EF38C(v17, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    switch(v7)
    {
      case 1:
      case 4:
        BYTE4(v17[0]) = 0;
        LODWORD(v17[0]) = 0;
        v17[1] = 0;
        v17[2] = 0;
        v17[3] = 1;
        v18 = 0u;
        v19 = 0u;
        memset(v20, 0, sizeof(v20));
        sub_268B37B84();
        OUTLINED_FUNCTION_2_16();
        sub_268A328D8(v12);

        result = sub_26896F3AC(v17);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_2_16();
        result = sub_2689CE88C(v13, v14, v15, v16, a4, a5);
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26898A7BC(void *a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v9 = SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)([a2 unsupportedReason]);
  if (v10)
  {
LABEL_2:
    sub_2688C2ECC();
    swift_allocError();
    OUTLINED_FUNCTION_1_20(v11, 107);
    a5();
    return sub_2688EF38C(&v20, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    switch(v9)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_2_16();
        result = sub_2689CE88C(v14, v15, v16, v17, a5, a6);
        break;
      case 2:
        if (a1)
        {
          v18 = [a1 context];
          if (v18)
          {
            v19 = v18;
            [v18 nowPlayingState];
          }
        }

        OUTLINED_FUNCTION_2_16();
        result = sub_268A32B60();
        break;
      case 3:
        v21 = 0;
        v20 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 1;
        v25 = 0u;
        v26 = 0u;
        memset(v27, 0, sizeof(v27));
        sub_268B37B84();
        OUTLINED_FUNCTION_2_16();
        sub_268A328D8(v13);

        result = sub_26896F3AC(&v20);
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26898A9CC()
{
  v0 = sub_268A9AAA4();
  sub_2689542A4((v0 + 23));

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for SetVolumeLevelUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A68B8;
  if (!qword_2802A68B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26898AAA4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26898ABC4(void *a1)
{
  v3 = type metadata accessor for PauseMediaIntent();
  if (OUTLINED_FUNCTION_1_21(v3))
  {
    OUTLINED_FUNCTION_2_17();
    v4 = a1;
    OUTLINED_FUNCTION_0_18();
    v5 = sub_268B38074();

    if (v5)
    {
      if (OUTLINED_FUNCTION_4_12() && (v6 = v1, v7 = sub_268921060(), v6, (v7 & 1) != 0))
      {
        return 13;
      }

      else
      {
        return 2;
      }
    }
  }

  v9 = type metadata accessor for ResumeMediaIntent();
  if (OUTLINED_FUNCTION_3_15(v9))
  {
    OUTLINED_FUNCTION_2_17();
    v10 = a1;
    OUTLINED_FUNCTION_0_18();
    v11 = sub_268B38074();

    if (v11)
    {
      return 19;
    }
  }

  v12 = type metadata accessor for AddSpeakerIntent();
  if (OUTLINED_FUNCTION_3_15(v12))
  {
    OUTLINED_FUNCTION_2_17();
    v13 = a1;
    OUTLINED_FUNCTION_0_18();
    v14 = sub_268B38074();

    if (v14)
    {
      return 12;
    }
  }

  v15 = type metadata accessor for MoveSpeakerIntent();
  if (OUTLINED_FUNCTION_3_15(v15))
  {
    OUTLINED_FUNCTION_2_17();
    v16 = a1;
    OUTLINED_FUNCTION_0_18();
    v17 = sub_268B38074();

    if (v17)
    {
      return 14;
    }
  }

  VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
  if (OUTLINED_FUNCTION_3_15(VolumeLevelIntent))
  {
    OUTLINED_FUNCTION_2_17();
    v19 = a1;
    OUTLINED_FUNCTION_0_18();
    v20 = sub_268B38074();

    if (v20)
    {
      return 18;
    }
  }

  v21 = type metadata accessor for SeekTimeIntent();
  if (OUTLINED_FUNCTION_3_15(v21))
  {
    OUTLINED_FUNCTION_2_17();
    v22 = a1;
    OUTLINED_FUNCTION_0_18();
    v23 = sub_268B38074();

    if (v23)
    {
      return 20;
    }
  }

  v24 = type metadata accessor for SetAudioLanguageIntent();
  if (OUTLINED_FUNCTION_3_15(v24))
  {
    OUTLINED_FUNCTION_2_17();
    v25 = a1;
    OUTLINED_FUNCTION_0_18();
    v26 = sub_268B38074();

    if (v26)
    {
      return 28;
    }
  }

  v27 = type metadata accessor for SetRepeatStateIntent();
  if (OUTLINED_FUNCTION_1_21(v27))
  {
    OUTLINED_FUNCTION_2_17();
    v28 = a1;
    OUTLINED_FUNCTION_0_18();
    v29 = sub_268B38074();

    if (v29)
    {
      result = OUTLINED_FUNCTION_4_12();
      if (!result)
      {
        return result;
      }

      v30 = [result repeatState];
      if ((v30 - 1) < 3)
      {
        return dword_268B40CA0[(v30 - 1)];
      }

      return 0;
    }
  }

  v31 = type metadata accessor for SetShuffleStateIntent();
  if (OUTLINED_FUNCTION_3_15(v31))
  {
    OUTLINED_FUNCTION_2_17();
    v32 = a1;
    OUTLINED_FUNCTION_0_18();
    v33 = sub_268B38074();

    if (v33)
    {
      return 22;
    }
  }

  v34 = type metadata accessor for SetSubtitleStateIntent();
  if (OUTLINED_FUNCTION_1_21(v34) && (OUTLINED_FUNCTION_2_17(), v35 = a1, OUTLINED_FUNCTION_0_18(), v36 = sub_268B38074(), v1, (v36 & 1) != 0))
  {
    v37 = OUTLINED_FUNCTION_4_12();
    if (v37 && [v37 enable] == 2)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }

  else
  {
    v38 = type metadata accessor for SetVolumeLevelIntent();
    if (OUTLINED_FUNCTION_1_21(v38) && (OUTLINED_FUNCTION_2_17(), v39 = a1, OUTLINED_FUNCTION_0_18(), v40 = sub_268B38074(), v1, (v40 & 1) != 0))
    {
      if (!OUTLINED_FUNCTION_4_12())
      {
        return 15;
      }

      v41 = v1;
      if (sub_2689B859C())
      {

        return 16;
      }

      v61 = v41;
      v62 = sub_2689B85F4();

      if (v62)
      {
        return 17;
      }

      else
      {
        return 15;
      }
    }

    else
    {
      v42 = type metadata accessor for SkipContentIntent();
      if (OUTLINED_FUNCTION_1_21(v42) && (OUTLINED_FUNCTION_2_17(), v43 = a1, OUTLINED_FUNCTION_0_18(), v44 = sub_268B38074(), v1, (v44 & 1) != 0))
      {
        v45 = OUTLINED_FUNCTION_4_12();
        if (v45 && [v45 direction] == 1)
        {
          return 3;
        }

        else
        {
          return 30;
        }
      }

      else
      {
        v46 = type metadata accessor for SkipTimeIntent();
        if (!OUTLINED_FUNCTION_1_21(v46) || (OUTLINED_FUNCTION_2_17(), v47 = a1, OUTLINED_FUNCTION_0_18(), v48 = sub_268B38074(), v1, (v48 & 1) == 0))
        {
          v55 = type metadata accessor for WhatDidTheySayIntent();
          if (OUTLINED_FUNCTION_3_15(v55))
          {
            OUTLINED_FUNCTION_2_17();
            v56 = a1;
            OUTLINED_FUNCTION_0_18();
            v57 = sub_268B38074();

            if (v57)
            {
              return 29;
            }
          }

          v58 = type metadata accessor for SetPlaybackSpeedIntent();
          if (OUTLINED_FUNCTION_3_15(v58))
          {
            OUTLINED_FUNCTION_2_17();
            v59 = a1;
            v60 = sub_268B38074();

            if (v60)
            {
              return 32;
            }
          }

          return 0;
        }

        v49 = OUTLINED_FUNCTION_4_12();
        if (v49)
        {
          v50 = v49;
          v51 = v1;
          v52 = [v50 duration];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 direction];

            if (v54 == 1)
            {
              return 21;
            }
          }

          else
          {
          }
        }

        return 31;
      }
    }
  }
}

uint64_t sub_26898B0CC(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_268B40CAC[a1 - 1];
  }
}

id sub_26898B0F0(unint64_t a1, char a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D57740]) init];
  v5 = result;
  if (!result)
  {
    return v5;
  }

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v6))
  {
    [result setEligibleDeviceCount_];
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_26898B16C()
{
  result = qword_2802A68C8;
  if (!qword_2802A68C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A68C8);
  }

  return result;
}

void *sub_26898B1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v13)
    {
      v14 = v13;
      [v13 setTaskType_];
      v15 = a4[3](a3, a4);
      [v14 setMediaType_];
      [v14 setIsWholeHouseAudio_];
      v16 = a4[2](a3, a4);
      v18 = sub_26898B0F0(v16, v17 & 1);
      [v14 setWholeHouseAudioDestinationContext_];

      [v12 setMediaPlayerContext_];
      return v12;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v19, v7);
  v20 = sub_268B37A34();
  v21 = sub_268B37EE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v22, 2u);
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return swift_dynamicCastClass();
}

unint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_26898B16C();
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_dynamicCastClass();
}

uint64_t sub_26898B4FC(void (*a1)(uint64_t))
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v64 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v63 = v6 - v5;
  v7 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v16)
  {
    v17 = v16;
    [v16 synchronize];
    v18 = sub_268B37BC4();
    v19 = [v17 arrayForKey_];

    if (v19)
    {
      v62 = v2;
      v20 = sub_268B37CF4();

      v21 = sub_268997584(v20);

      if (v21)
      {
        v22 = *(v21 + 16);
        if (v22)
        {
          v61 = v17;
          type metadata accessor for DeviceContext();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v23 = (v9 + 8);
          v65 = -v22;
          v24 = 4;
          while (1)
          {
            v25 = *(v21 + 8 * v24);
            v26 = objc_allocWithZone(ObjCClassFromMetadata);

            v27 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
            v28 = sub_26892E200(0x6979616C50776F6ELL, 0xEF6574617453676ELL, v25);
            if (!v29)
            {
              break;
            }

            v30 = v28;
            v31 = v29;
            v32 = v28 == 0x676E6979616C70 && v29 == 0xE700000000000000;
            if (v32 || (OUTLINED_FUNCTION_0_19(0x676E6979616C70) & 1) != 0)
            {

              v33 = 1;
              goto LABEL_21;
            }

            if (v30 == 0x646573756170 && v31 == 0xE600000000000000)
            {
            }

            else
            {
              v35 = OUTLINED_FUNCTION_0_19(0x646573756170);

              if ((v35 & 1) == 0)
              {
                break;
              }
            }

            v33 = 2;
LABEL_21:
            [v27 setNowPlayingState_];
            v36 = sub_26892E200(0x74696D69786F7270, 0xE900000000000079, v25);
            if (!v37)
            {
              goto LABEL_45;
            }

            v38 = v36;
            v39 = v37;
            v40 = v36 == 0x7972616D697270 && v37 == 0xE700000000000000;
            if (v40 || (OUTLINED_FUNCTION_0_19(0x7972616D697270) & 1) != 0)
            {

              v41 = 0;
            }

            else
            {
              v42 = v38 == 1918985582 && v39 == 0xE400000000000000;
              if (v42 || (OUTLINED_FUNCTION_0_19(1918985582) & 1) != 0)
              {

                v41 = 2;
              }

              else
              {
                v43 = v38 == 7496038 && v39 == 0xE300000000000000;
                if (!v43 && (OUTLINED_FUNCTION_0_19(7496038) & 1) == 0)
                {
                  if (v38 == 0x74616964656D6D69 && v39 == 0xE900000000000065)
                  {

LABEL_57:
                    v41 = 1;
                    goto LABEL_46;
                  }

                  v45 = OUTLINED_FUNCTION_0_19(0x74616964656D6D69);

                  if (v45)
                  {
                    goto LABEL_57;
                  }

LABEL_45:
                  v41 = 4;
                  goto LABEL_46;
                }

                v41 = 3;
              }
            }

LABEL_46:
            [v27 setProximity_];
            sub_26892E200(0x64496574756F72, 0xE700000000000000, v25);
            if (v46)
            {
              v47 = sub_268B37BC4();
            }

            else
            {
              v47 = 0;
            }

            [v27 setRouteId_];

            sub_26892E200(0x644970756F7267, 0xE700000000000000, v25);
            if (v48)
            {
              v49 = sub_268B37BC4();
            }

            else
            {
              v49 = 0;
            }

            [v27 setGroupId_];

            v50 = sub_26892E200(0xD000000000000013, 0x8000000268B58940, v25);
            v52 = v51;

            [v27 setNowPlayingMediaType_];
            sub_268B345C4();
            v53 = sub_268B34594();
            (*v23)(v13, v7);
            [v27 setNowPlayingTimestamp_];

            MEMORY[0x26D6256C0]();
            if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_268B37D14();
            }

            sub_268B37D44();
            ++v24;
            if (v65 + v24 == 4)
            {
              v14 = v67;

              goto LABEL_61;
            }
          }

          v33 = 0;
          goto LABEL_21;
        }
      }

      v14 = MEMORY[0x277D84F90];
LABEL_61:
      v2 = v62;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }
  }

  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v2, qword_2802CDB30);
  (*(v64 + 16))(v63, v54, v2);

  v55 = sub_268B37A34();
  v56 = sub_268B37F04();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 134218242;
    *(v57 + 4) = sub_2688EFD0C();

    *(v57 + 12) = 2112;
    type metadata accessor for DeviceContext();
    v59 = sub_268B37CE4();
    *(v57 + 14) = v59;
    *v58 = v59;
    _os_log_impl(&dword_2688BB000, v55, v56, "Returning %ld contexts: %@", v57, 0x16u);
    sub_26898BED0(v58);
    MEMORY[0x26D6266E0](v58, -1, -1);
    MEMORY[0x26D6266E0](v57, -1, -1);
  }

  else
  {
  }

  (*(v64 + 8))(v63, v2);
  a1(v14);
}

uint64_t sub_26898BCF8(uint64_t (*a1)(void))
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_268B37A34();
  v11 = sub_268B37EE4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "fetchQuickStopContext not implemented in SimulatedContextProvider", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  return a1(MEMORY[0x277D84F90]);
}

uint64_t sub_26898BED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1)
{

  return sub_268B38444();
}

id SkipTimeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SkipTimeIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v26 = sub_268B36C44();
  sub_268B37204();
  v25 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v33);
  sub_268AD33CC(v32);
  sub_268B36754();
  v24 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v1 = type metadata accessor for MultiUserConnectionProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v2 + 16) = [v3 init];
  __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v30 = v0;
  v31 = MEMORY[0x277D5F680];
  *&v29 = v0;
  v10 = type metadata accessor for AnalyticsServiceLogger();
  v28[4] = &off_28795F5E0;
  v28[3] = v10;
  v28[0] = v9;
  v27[4] = &off_287960608;
  v27[3] = v1;
  v27[0] = v2;
  type metadata accessor for AnalyticsServiceImpl();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v1);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v15;
  v23 = *v20;
  v11[5] = v10;
  v11[6] = &off_28795F5E0;
  v11[2] = v22;
  v11[21] = v1;
  v11[22] = &off_287960608;
  v11[18] = v23;
  sub_2688E6514(v32, (v11 + 7));
  v11[12] = v24;
  sub_2688E6514(&v29, (v11 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  sub_268B34C64();
  sub_26898F0B8(v26, v25, &v34, v11, v33);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_26898C364()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v20 = v19 + v10;
  v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleSkipTimeMedia";
  *(v22 + 24) = 19;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_26898C5BC(v24, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_26898C5BC(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v69 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  v20 = swift_allocObject();
  v70 = a3;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268958D98;
  *(v21 + 24) = v20;
  v71 = a4;

  v22 = sub_268B18100(a1);
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  if (!sub_2688EFD0C())
  {

LABEL_8:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v19, v28, v7);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "No devices found in SkipTimeIntent, returning failure", v31, 2u);
      MEMORY[0x26D6266E0](v31, -1, -1);
    }

    (*(v8 + 8))(v19, v7);
    goto LABEL_20;
  }

  v24 = [a1 duration];
  if (!v24)
  {
LABEL_15:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v32, v7);
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "Unable to get time from intent, returning failure", v35, 2u);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
LABEL_20:
    v36 = sub_268B36EA4();
    v37 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
    v38 = v36;
    v39 = SkipTimeIntentResponse.init(code:userActivity:)(5, v36);
    v72 = v39;
    v70(&v72);

    return;
  }

  v68 = v24;
  v25 = [v24 duration];
  if (!v25)
  {
    v26 = v68;
    goto LABEL_14;
  }

  v26 = v25;
  sub_268B37DE4();
  if (v27)
  {

LABEL_14:
    goto LABEL_15;
  }

  v67 = v26;
  sub_268921344();
  if (!v40[2])
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v17, v49, v7);
    v50 = sub_268B37A34();
    v51 = sub_268B37EE4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "Missing routeId in intent, returning failure", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v8 + 8))(v17, v7);
    goto LABEL_39;
  }

  v42 = v40[4];
  v41 = v40[5];

  v43 = [v68 direction];
  if (v43 == 1)
  {
    v53 = v69;
    __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService], *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService + 24]);
    sub_268920C54(v23);
    sub_268949478(0x656D695470696B73, 0xE800000000000000, v54, v23);

    __swift_project_boxed_opaque_existential_1(&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController], *&v53[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_268B3BBC0;
    *(v55 + 32) = v42;
    *(v55 + 40) = v41;
    v56 = swift_allocObject();
    v56[2] = sub_2688E19F8;
    v56[3] = v21;
    v56[4] = v53;
    v57 = v53;
    sub_268B36CB4();
    goto LABEL_31;
  }

  if (v43 != 2)
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v14, v59, v7);
    v60 = sub_268B37A34();
    v61 = sub_268B37EE4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v60, v61, "Unknown skip direction provided in intent, returning failure", v62, 2u);
      MEMORY[0x26D6266E0](v62, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
LABEL_39:
    v63 = sub_268B36EA4();
    v64 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
    v65 = v63;
    v66 = SkipTimeIntentResponse.init(code:userActivity:)(5, v63);
    v72 = v66;
    v70(&v72);

    return;
  }

  v44 = v69;
  __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService], *&v69[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService + 24]);
  sub_268920C54(v23);
  sub_268949478(0x656D695470696B73, 0xE800000000000000, v45, v23);

  __swift_project_boxed_opaque_existential_1(&v44[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController], *&v44[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_268B3BBC0;
  *(v46 + 32) = v42;
  *(v46 + 40) = v41;
  v47 = swift_allocObject();
  v47[2] = sub_2688E19F8;
  v47[3] = v21;
  v47[4] = v44;
  v48 = v44;
  sub_268B36E64();
LABEL_31:

  v58 = v68;
}