uint64_t sub_2315E3BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);

  v3 = OUTLINED_FUNCTION_26();
  sub_2315E3790(v3, v4, v2);
}

void sub_2315E3C58()
{
  OUTLINED_FUNCTION_93();
  v83 = v1;
  v84 = v2;
  v82 = v3;
  v85 = v4;
  sub_2316051D8();
  OUTLINED_FUNCTION_1_0();
  v76 = v6;
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v75 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60750, &qword_231609560);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  v80 = &v73 - v11;
  OUTLINED_FUNCTION_19();
  v12 = sub_231605238();
  OUTLINED_FUNCTION_1_0();
  v79 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v74 = (v15 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v78 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v81 = &v73 - v20;
  OUTLINED_FUNCTION_19();
  sub_2316056F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v86 = &v73 - v27;
  v28 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  if (v28)
  {
    v29 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  }

  else
  {
    sub_231605668();
    v29 = sub_231605658();
  }

  sub_231605688();
  memset(v87, 0, 40);
  v30 = v28;
  v31 = sub_231606728();
  sub_2316056E8();
  v32 = v86;
  sub_231605678();

  v33 = OUTLINED_FUNCTION_58_0();
  v34(v33);
  sub_2315B2F7C(v87, &qword_27DD601D0, &qword_231607A98);
  sub_2315DC458(v32, v25, &qword_27DD601F0, &qword_231607AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v25;
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v36 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v36, qword_280FE9558);
    v37 = v35;
    v38 = sub_2316066C8();
    v39 = sub_231606978();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_60();
      v41 = OUTLINED_FUNCTION_63();
      v87[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_231606C18();
      v44 = sub_2315B1574(v42, v43, v87);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2315AF000, v38, v39, "Error: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v41);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {
    }

    v62 = &qword_27DD601F0;
    v63 = &qword_231607AA8;
    v64 = v86;
  }

  else
  {
    v45 = v79;
    v46 = v81;
    v47 = OUTLINED_FUNCTION_41();
    v48 = v12;
    v49(v47);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v50 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v50, qword_280FE9558);
    v51 = *(v45 + 16);
    v52 = v78;
    v51(v78, v46, v48);
    v53 = sub_2316066C8();
    v54 = sub_231606958();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_60();
      v56 = OUTLINED_FUNCTION_63();
      v87[0] = v56;
      *v55 = 136315138;
      v31 = v74;
      v51(v74, v52, v48);
      sub_2316067A8();
      v57 = OUTLINED_FUNCTION_65();
      v31(v57);
      v58 = OUTLINED_FUNCTION_58_0();
      v61 = sub_2315B1574(v58, v59, v60);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_2315AF000, v53, v54, "Extracting learn more URL from templating result: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v56);
      v46 = v81;
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      v65 = OUTLINED_FUNCTION_65();
      v31(v65);
    }

    v66 = v80;
    v67 = sub_231605228();
    sub_2315DE8E0(v67, MEMORY[0x277D5BDD8], v66);

    v68 = sub_231605268();
    if (__swift_getEnumTagSinglePayload(v66, 1, v68) != 1)
    {
      v70 = v46;
      v71 = v75;
      sub_231605258();
      OUTLINED_FUNCTION_23();
      (*(v72 + 8))(v66, v68);
      sub_2316051C8();
      OUTLINED_FUNCTION_62_0();
      (*(v76 + 8))(v71, v77);
      OUTLINED_FUNCTION_85();
      sub_231604FE8();

      (v31)(v70, v48);
      sub_2315B2F7C(v86, &qword_27DD601F0, &qword_231607AA8);
      goto LABEL_20;
    }

    (v31)(v46, v48);
    sub_2315B2F7C(v86, &qword_27DD601F0, &qword_231607AA8);
    v62 = &qword_27DD60750;
    v63 = &qword_231609560;
    v64 = v66;
  }

  sub_2315B2F7C(v64, v62, v63);
  v69 = sub_231604FF8();
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v69);
LABEL_20:
  OUTLINED_FUNCTION_69();
}

void sub_2315E43E0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v34 = v4;
  v5 = sub_2316051B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = sub_231605188();
  v13 = OUTLINED_FUNCTION_24(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v14 = sub_2316052D8();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  sub_231605178();
  sub_231605278();
  if (v1)
  {
    (*(v7 + 104))(v11, *MEMORY[0x277D5BC50], v5);
    sub_231605288();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v21 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v21, qword_280FE9558);
    v22 = sub_2316066C8();
    v23 = sub_231606968();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      *v24 = 0;
      _os_log_impl(&dword_2315AF000, v22, v23, "SAE UI is enabled, setting response type to disambiguation to support tappable suggestions", v24, 2u);
      OUTLINED_FUNCTION_20();
    }
  }

  sub_2316052C8();
  sub_2316052B8();
  if (v3)
  {
    sub_2316052B8();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v25 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v25, qword_280FE9558);
    v26 = sub_2316066C8();
    v27 = sub_231606968();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_33();
      *v28 = 0;
      _os_log_impl(&dword_2315AF000, v26, v27, "relying on FF for followup rather than listen after speaking(LAS)", v28, 2u);
      OUTLINED_FUNCTION_20();
    }
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v29 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v29, qword_280FE9558);
  v30 = sub_2316066C8();
  v31 = sub_231606968();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    swift_beginAccess();
    v33 = sub_2316052A8();
    swift_endAccess();
    *(v32 + 4) = v33 & 1;
    _os_log_impl(&dword_2315AF000, v30, v31, "setting listenAfterSpeaking as %{BOOL}d in manifest", v32, 8u);
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_27_1(v20, &v35);
  sub_231605298();
  swift_endAccess();
  (*(v16 + 16))(v34, v20, v14);
  (*(v16 + 8))(v20, v14);
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = v11;
  v6[3] = a4;
  v7 = sub_231605098();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_231606158();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315E4924, 0, 0);
}

uint64_t sub_2315E4924()
{
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v1 = sub_2316066E8();
  v0[12] = __swift_project_value_buffer(v1, qword_280FE9558);
  v2 = sub_2316066C8();
  v3 = sub_231606968();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    *v4 = 0;
    _os_log_impl(&dword_2315AF000, v2, v3, "Donating interaction event", v4, 2u);
    OUTLINED_FUNCTION_20();
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[3];

  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  (*(v6 + 104))(v5, *MEMORY[0x277D60B98], v7);
  sub_231605E78();
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_2315E4AD0;
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[4];

  return MEMORY[0x2821C5F88](v14, v12, v13, v9, v10);
}

uint64_t sub_2315E4AD0()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 112) = v0;

  v7 = OUTLINED_FUNCTION_31_1();
  v8(v7);
  v9 = OUTLINED_FUNCTION_35();
  v10(v9);
  if (!v0)
  {

    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E4CC0()
{
  v16 = v0;
  v1 = *(v0 + 112);
  v2 = v1;
  v3 = sub_2316066C8();
  v4 = sub_231606978();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = OUTLINED_FUNCTION_60();
    v7 = OUTLINED_FUNCTION_63();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v9 = sub_2316067A8();
    v11 = sub_2315B1574(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2315AF000, v3, v4, "SirHelpDispatcher :: Error when donating interaction: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v7);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
    v12 = *(v0 + 112);
  }

  OUTLINED_FUNCTION_14();

  return v13();
}

uint64_t sub_2315E4E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_2315DC54C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
  sub_231605BB8();
  if (swift_dynamicCast())
  {
    v4 = a3();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v5 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v5, qword_280FE9558);

    v6 = sub_2316066C8();
    v7 = sub_231606958();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_60();
      v9 = OUTLINED_FUNCTION_63();
      v19[0] = v9;
      *v8 = 136315138;
      v10 = sub_231606048();
      v11 = MEMORY[0x231932D20](v4, v10);
      v13 = sub_2315B1574(v11, v12, v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2315AF000, v6, v7, "signal stats: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v9);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v14 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v14, qword_280FE9558);
    v15 = sub_2316066C8();
    v16 = sub_231606978();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_33();
      *v17 = 0;
      _os_log_impl(&dword_2315AF000, v15, v16, "Owner is not a signalled siri help owner!", v17, 2u);
      OUTLINED_FUNCTION_20();
    }

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_2315E5078()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_231606048();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v31 = sub_2315E4E44(v9, v5, v3);

  sub_2315E7458(&v31);

  v17 = v31;
  v18 = *(v31 + 16);
  if (v18)
  {
    v27[1] = 0;
    v27[2] = v5;
    v28 = v7;
    v29 = v1;
    v31 = MEMORY[0x277D84F90];
    sub_231606A98();
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v30 = v20;
    v21 = *(v19 + 64);
    v27[0] = v17;
    v22 = v17 + ((v21 + 32) & ~v21);
    v23 = *(v19 + 56);
    do
    {
      v30(v16, v22, v10);
      sub_231606038();
      (*(v19 - 8))(v16, v10);
      sub_231606A78();
      sub_231606AA8();
      sub_231606AB8();
      sub_231606A88();
      v22 += v23;
      --v18;
    }

    while (v18);

    v24 = v31;
    v7 = v28;
    v1 = v29;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v25 = sub_2315E52B8(v24);

  MEMORY[0x28223BE20](v26);
  v27[-2] = v7;
  sub_2315DEE98(v1, &v27[-4], v25);

  OUTLINED_FUNCTION_69();
}

unint64_t sub_2315E52B8(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v38 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_47;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v32 = v3 & 0xC000000000000001;
    v30 = v2;
    v28 = v4;
    v29 = v3;
    while (1)
    {
      if (v32)
      {
        MEMORY[0x231932F00](v5, v3);
      }

      else
      {
      }

      MEMORY[0x231932CF0](v6);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231606878();
      }

      sub_231606898();
      v36 = v38;
      v7 = sub_231606558();
      v8 = sub_2315E52B8(v7);

      if (v8 >> 62)
      {
        v9 = sub_231606AF8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v36 >> 62;
      if (v36 >> 62)
      {
        v11 = sub_231606AF8();
      }

      else
      {
        v11 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v9;
      v12 = __OFADD__(v11, v9);
      v13 = v11 + v9;
      if (v12)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        result = sub_231606AF8();
        v4 = result;
        if (!result)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_3;
      }

      v34 = v5;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_20;
      }

LABEL_21:
      v36 = sub_231606A58();
      v14 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = (*(v14 + 24) >> 1) - v15;
      v17 = v14 + 8 * v15;
      v33 = v14;
      if (v8 >> 62)
      {
        v19 = sub_231606AF8();
        if (v19)
        {
          v20 = v19;
          v21 = sub_231606AF8();
          if (v16 < v21)
          {
            goto LABEL_44;
          }

          if (v20 < 1)
          {
            goto LABEL_46;
          }

          v31 = v21;
          sub_2315E9360(&qword_27DD607A0, &qword_27DD60798, &qword_231609598);
          for (i = 0; i != v20; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60798, &qword_231609598);
            v23 = sub_2315E909C(v37, i, v8);
            v25 = *v24;

            (v23)(v37, 0);
            *(v17 + 32 + 8 * i) = v25;
          }

          v3 = v29;
          v2 = v30;
          v4 = v28;
          v18 = v31;
          goto LABEL_32;
        }
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          if (v16 < v18)
          {
            goto LABEL_45;
          }

          sub_231606568();
          swift_arrayInitWithCopy();
LABEL_32:

          if (v18 < v35)
          {
            goto LABEL_42;
          }

          if (v18 > 0)
          {
            v26 = *(v33 + 16);
            v12 = __OFADD__(v26, v18);
            v27 = v26 + v18;
            if (v12)
            {
              goto LABEL_43;
            }

            *(v33 + 16) = v27;
          }

          goto LABEL_37;
        }
      }

      if (v35 > 0)
      {
        goto LABEL_42;
      }

LABEL_37:
      v5 = v34 + 1;

      result = v36;
      v38 = v36;
      if (v34 + 1 == v4)
      {
        return result;
      }
    }

    if (!v10)
    {
      v14 = v36 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_20:
    sub_231606AF8();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2315E5680(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = sub_231606148();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60778, &qword_231609580);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60780, &qword_231609588);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_231606548();
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60788, &qword_231609590);
  v18 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v18 ^ 1u, 1, v2);
  (*(v3 + 16))(v14, v27, v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v19 = *(v6 + 56);
  sub_2315DC458(v16, v8, &qword_27DD60780, &qword_231609588);
  sub_2315DC458(v14, &v8[v19], &qword_27DD60780, &qword_231609588);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    v21 = v26;
    sub_2315DC458(v8, v26, &qword_27DD60780, &qword_231609588);
    if (__swift_getEnumTagSinglePayload(&v8[v19], 1, v2) != 1)
    {
      v22 = v25;
      (*(v17 + 32))(v25, &v8[v19], v2);
      sub_2315E9418(&qword_27DD60790, MEMORY[0x277D60B68], MEMORY[0x277D60B70]);
      v20 = sub_231606778();
      v23 = *(v17 + 8);
      v23(v22, v2);
      sub_2315B2F7C(v14, &qword_27DD60780, &qword_231609588);
      v23(v26, v2);
      sub_2315B2F7C(v8, &qword_27DD60780, &qword_231609588);
      goto LABEL_8;
    }

    sub_2315B2F7C(v14, &qword_27DD60780, &qword_231609588);
    (*(v17 + 8))(v21, v2);
    goto LABEL_6;
  }

  sub_2315B2F7C(v14, &qword_27DD60780, &qword_231609588);
  if (__swift_getEnumTagSinglePayload(&v8[v19], 1, v2) != 1)
  {
LABEL_6:
    sub_2315B2F7C(v8, &qword_27DD60778, &qword_231609580);
    v20 = 0;
    goto LABEL_8;
  }

  sub_2315B2F7C(v8, &qword_27DD60780, &qword_231609588);
  v20 = 1;
LABEL_8:
  sub_2315B2F7C(v16, &qword_27DD60780, &qword_231609588);
  return v20 & 1;
}

uint64_t sub_2315E5ACC(uint64_t a1)
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

  sub_2315E7254(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231605DD8();
  if (v7 < v3)
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

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2315E5BCC()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  sub_2316064A8();
  OUTLINED_FUNCTION_1_0();
  v98 = v5;
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v97 = v7 - v6;
  OUTLINED_FUNCTION_19();
  sub_231605EF8();
  OUTLINED_FUNCTION_1_0();
  v95 = v9;
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v94 = v11 - v10;
  OUTLINED_FUNCTION_19();
  v103 = sub_231605DD8();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v100 = v16 - v15;
  OUTLINED_FUNCTION_19();
  v92 = sub_2316063F8();
  OUTLINED_FUNCTION_1_0();
  v90 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v91 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v89 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60760, &qword_231609568);
  v24 = OUTLINED_FUNCTION_24(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (&v89 - v34);
  MEMORY[0x28223BE20](v33);
  v37 = &v89 - v36;
  sub_2315E64D4(&v89 - v36);
  v38 = sub_231606428();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
LABEL_2:
    v101 = v37;
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v39 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v39, qword_280FE9558);
    v40 = v100;
    (*(v13 + 16))(v100, v1, v103);
    v41 = sub_2316066C8();
    v42 = sub_231606978();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_60();
      v44 = OUTLINED_FUNCTION_63();
      v102 = v3;
      v45 = v44;
      v104 = v44;
      *v43 = 136315138;
      v46 = v94;
      sub_231605D68();
      v47 = v97;
      sub_231605ED8();
      (*(v95 + 8))(v46, v96);
      sub_231606488();
      (*(v98 + 8))(v47, v99);
      sub_2316067A8();
      OUTLINED_FUNCTION_62_0();
      (*(v13 + 8))(v40, v103);
      v48 = OUTLINED_FUNCTION_85();
      v51 = sub_2315B1574(v48, v49, v50);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_2315AF000, v41, v42, "Unknown icon asset: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v45);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      v62 = OUTLINED_FUNCTION_13_2();
      v63(v62);
    }

    sub_231605858();
    sub_2315B2F7C(v101, &qword_27DD60768, &qword_231609570);
    v103 = 0;
    goto LABEL_10;
  }

  v102 = v3;
  v52 = OUTLINED_FUNCTION_13_2();
  sub_2315DC458(v52, v53, v54, v55);
  v56 = *(v38 - 8);
  v57 = (*(v56 + 88))(v35, v38);
  if (v57 == *MEMORY[0x277D61228])
  {
    v58 = OUTLINED_FUNCTION_34_0();
    v59(v58);
    v60 = *v35;
    v61 = v35[1];
    sub_231605858();
    v103 = sub_231605028();
    sub_2315B300C(v60, v61);
    sub_2315B2F7C(v37, &qword_27DD60768, &qword_231609570);
LABEL_10:
    OUTLINED_FUNCTION_14_2();
    goto LABEL_11;
  }

  v101 = v37;
  if (v57 != *MEMORY[0x277D61230])
  {
    if (v57 == *MEMORY[0x277D61238])
    {
      v75 = OUTLINED_FUNCTION_34_0();
      v76(v75);
      sub_231605858();
      sub_2315B2F7C(v101, &qword_27DD60768, &qword_231609570);
      v103 = 0;
      OUTLINED_FUNCTION_14_2();
      goto LABEL_11;
    }

    (*(v56 + 8))(v35, v38);
    v37 = v101;
    v3 = v102;
    goto LABEL_2;
  }

  v64 = OUTLINED_FUNCTION_34_0();
  v65(v64);
  v67 = *v35;
  v66 = v35[1];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60770, &qword_231609578);
  sub_2315E92D0(v35 + *(v68 + 48), v30);
  sub_231605858();
  v69 = OUTLINED_FUNCTION_58_0();
  sub_2315DC458(v69, v70, v71, v72);
  v73 = v92;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v92);
  v99 = v67;
  v100 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_2315B2F7C(v30, &qword_27DD60760, &qword_231609568);
    sub_2315B2F7C(v27, &qword_27DD60760, &qword_231609568);
    OUTLINED_FUNCTION_14_2();
  }

  else
  {
    v78 = v89;
    v77 = v90;
    (*(v90 + 32))(v89, v27, v73);
    (*(v77 + 16))(v91, v78, v73);
    v79 = OUTLINED_FUNCTION_31_1();
    v81 = v80(v79);
    if (v81 == *MEMORY[0x277D61218])
    {
      (*(v77 + 8))(v78, v73);
      sub_2315B2F7C(v30, &qword_27DD60760, &qword_231609568);
      v82 = OUTLINED_FUNCTION_31_1();
      v83(v82);
    }

    else
    {
      v84 = v81;
      v85 = *MEMORY[0x277D61210];
      v86 = *(v77 + 8);
      v86(v78, v73);
      sub_2315B2F7C(v30, &qword_27DD60760, &qword_231609568);
      v87 = OUTLINED_FUNCTION_31_1();
      if (v84 == v85)
      {
        v88(v87);
      }

      else
      {
        (v86)(v87);
      }
    }
  }

  sub_2315B2F7C(v101, &qword_27DD60768, &qword_231609570);
  v103 = 0;
LABEL_11:
  sub_2316057F8();
  sub_231605848();
  sub_2316057B8();
  sub_231605828();
  sub_231605818();
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E64D4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v28 - v2;
  v33 = sub_2316064A8();
  v31 = *(v33 - 8);
  v3 = MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v32 = sub_231605EF8();
  v8 = *(v32 - 8);
  v9 = MEMORY[0x28223BE20](v32);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = sub_231606148();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605D58();
  (*(v15 + 104))(v17, *MEMORY[0x277D60B50], v14);
  sub_2315E5078();
  v19 = v18;
  (*(v15 + 8))(v17, v14);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v34);
  if (v19)
  {

    sub_231605D68();
    sub_231605ED8();
    v20 = *(v8 + 8);
    v20(v13, v32);
    v21 = v29;
    sub_231606498();
    v22 = *(v31 + 8);
    v23 = v7;
    v24 = v21;
    v22(v23, v33);
    v25 = sub_231606428();
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      sub_231605D68();
      sub_231605ED8();
      v20(v11, v32);
      sub_231606488();
      v22(v5, v33);
      result = __swift_getEnumTagSinglePayload(v24, 1, v25);
      if (result != 1)
      {
        return sub_2315B2F7C(v24, &qword_27DD60768, &qword_231609570);
      }
    }

    else
    {
      v27 = v30;
      (*(*(v25 - 8) + 32))(v30, v24, v25);
      return __swift_storeEnumTagSinglePayload(v27, 0, 1, v25);
    }
  }

  else
  {
    sub_231605D68();
    sub_231605ED8();
    (*(v8 + 8))(v11, v32);
    sub_231606488();
    return (*(v31 + 8))(v5, v33);
  }

  return result;
}

uint64_t sub_2315E6960()
{
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));

  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_templatesUrl;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker));
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils));
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider));
  return v0;
}

uint64_t sub_2315E6A18()
{
  sub_2315E6960();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315E6A70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return sub_2315DF430();
}

void SiriSuggestions.Suggestion.toIntentSuggestion()()
{
  OUTLINED_FUNCTION_93();
  v54 = sub_231605098();
  OUTLINED_FUNCTION_1_0();
  v56 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v53 = v4 - v3;
  OUTLINED_FUNCTION_19();
  v5 = sub_231606478();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_4();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v55 = sub_231606658();
  sub_231605D78();
  v52 = sub_231606468();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v15, v5);
  sub_231605D78();
  v19 = sub_231606468();
  v21 = v20;
  v18(v0, v5);
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = sub_2315E7000(v52, v17, v19, v21);
  sub_231605D78();
  sub_231606458();
  OUTLINED_FUNCTION_62_0();
  v18(v15, v5);
  v24 = OUTLINED_FUNCTION_85();
  v51 = v23;
  sub_2315E89C0(v24, v25, v23);
  sub_231605D78();
  v26 = sub_231606448();
  v18(v11, v5);
  v27 = MEMORY[0x277D84F90];
  v28 = *(v26 + 64);
  v57 = MEMORY[0x277D84F90];
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v52 = v56 + 8;
  v55 = v26;

  v33 = 0;
  if (v31)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      sub_2315E8A24(v27, v51);
      OUTLINED_FUNCTION_69();
      return;
    }

    v31 = *(v26 + 64 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      do
      {
LABEL_8:
        v35 = (v33 << 10) | (16 * __clz(__rbit64(v31)));
        v36 = (*(v55 + 48) + v35);
        v38 = *v36;
        v37 = v36[1];
        v39 = (*(v55 + 56) + v35);
        v40 = v39[1];
        v56 = *v39;

        v41 = v53;
        sub_231605088();
        sub_231605068();
        OUTLINED_FUNCTION_62_0();
        v42 = OUTLINED_FUNCTION_66_0();
        v43(v42, v54);
        sub_231606668();
        v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v45 = OUTLINED_FUNCTION_85();
        v47 = sub_2315E7000(v45, v46, v26, v41);
        sub_2315E8A98(v38, v37, v47);
        sub_2315E8AF0(v56, v40, v47);

        MEMORY[0x231932CF0](v48);
        v49 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v49 >> 1)
        {
          OUTLINED_FUNCTION_12_3(v49);
          sub_231606878();
        }

        v31 &= v31 - 1;
        sub_231606898();
        v27 = v57;
      }

      while (v31);
    }
  }

  __break(1u);
}

uint64_t SiriHelpDispatcherErrors.hashValue.getter()
{
  sub_231606C68();
  MEMORY[0x231933130](0);
  return sub_231606C88();
}

uint64_t sub_2315E6FC0(uint64_t a1)
{
  sub_231606C68();
  MEMORY[0x231933130](0);
  return sub_231606C88();
}

id sub_2315E7000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_231606788();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_231606788();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

uint64_t sub_2315E7094(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231606AF8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_2315E70B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603F0, &qword_2316095B0);
  v4 = sub_231605DD8();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v9);
  if (v6)
  {
    if ((result - v8) != 0x8000000000000000 || v6 != -1)
    {
      v9[2] = a1;
      v9[3] = 2 * ((result - v8) / v6);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2315E71AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

unint64_t sub_2315E7230(unint64_t result, char a2, uint64_t a3)
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

void sub_2315E7254(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_2315DA0CC();
    *v1 = v5;
  }
}

void sub_2315E72BC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x231933750](&v20, 8);
      v4 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v5 = -v1 % v1;
        if (v5 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x231933750](&v20, 8);
          }

          while (v5 > v20 * v1);
          v4 = (v20 * v1) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *v0;
        v8 = *(*v0 + 16);
        if (v3 >= v8)
        {
          goto LABEL_22;
        }

        if (v6 >= v8)
        {
          goto LABEL_23;
        }

        v9 = *(v7 + 32 + 8 * v6);
        v10 = *(v7 + 32 + 8 * v3);
        v11 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_2315E927C(v7);
          *v0 = v7;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v13 = v7 + 8 * v3;
        v14 = *(v13 + 32);
        *(v13 + 32) = v11;

        sub_231606A88();
        v15 = *v0;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v15;
        if ((v16 & 1) == 0)
        {
          v15 = sub_2315E927C(v15);
          *v0 = v15;
        }

        if (v6 >= *(v15 + 16))
        {
          goto LABEL_25;
        }

        v17 = v15 + 8 * v6;
        v18 = *(v17 + 32);
        *(v17 + 32) = v10;

        sub_231606A88();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_2315E7458(uint64_t *a1)
{
  v2 = *(sub_231606048() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2315E9268(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2315E7500(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2315E7500(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231606BB8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231606048();
        v6 = sub_231606888();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231606048() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2315E78D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2315E7630(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2315E7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231606048();
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v33 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = v16 + v19 * (a3 - 1);
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
    while (2)
    {
      v38 = v20;
      v39 = a3;
      v36 = v22;
      v37 = v21;
      v49 = v21;
      v23 = v20;
      do
      {
        v24 = v47;
        v25 = v45;
        v45(v47, v22, v8);
        v26 = v48;
        v25(v48, v23, v8);
        v27 = sub_231606028();
        v28 = sub_231606028();
        v29 = *v44;
        (*v44)(v26, v8);
        result = v29(v24, v8);
        if (v28 >= v27)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v30 = *v41;
        v31 = v43;
        (*v41)(v43, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v30)(v23, v31, v8);
        v23 += v40;
        v22 += v40;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v39 + 1;
      v20 = v38 + v34;
      v21 = v37 - 1;
      v22 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2315E78D0(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v126 = a1;
  v6 = sub_231606048();
  v7 = MEMORY[0x28223BE20](v6);
  v129 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v124 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v124 - v12;
  MEMORY[0x28223BE20](v11);
  v145 = &v124 - v14;
  v135 = v13;
  v136 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_104:
    v19 = *v126;
    if (!*v126)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v116 = (v17 + 16);
      v117 = *(v17 + 16);
      while (v117 >= 2)
      {
        if (!*v136)
        {
          goto LABEL_142;
        }

        v118 = v17;
        v17 += 16 * v117;
        v119 = *v17;
        v120 = &v116[2 * v117];
        v121 = v120[1];
        v122 = v137;
        sub_2315E82B4(*v136 + *(v135 + 72) * *v17, *v136 + *(v135 + 72) * *v120, *v136 + *(v135 + 72) * v121, v19);
        v137 = v122;
        if (v122)
        {
          break;
        }

        if (v121 < v119)
        {
          goto LABEL_130;
        }

        if (v117 - 2 >= *v116)
        {
          goto LABEL_131;
        }

        *v17 = v119;
        *(v17 + 8) = v121;
        v123 = *v116 - v117;
        if (*v116 < v117)
        {
          goto LABEL_132;
        }

        v117 = *v116 - 1;
        memmove(v120, v120 + 2, 16 * v123);
        *v116 = v117;
        v17 = v118;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v17 = sub_2315E87CC(v17);
    goto LABEL_106;
  }

  v124 = a4;
  v16 = 0;
  v143 = (v13 + 8);
  v144 = v13 + 16;
  v142 = (v13 + 32);
  v17 = MEMORY[0x277D84F90];
  v147 = v6;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v127 = v16;
    if (v16 + 1 >= v15)
    {
      v34 = v137;
    }

    else
    {
      v125 = v17;
      v20 = *v136;
      v21 = *(v13 + 72);
      v22 = v16;
      v23 = *v136 + v21 * v19;
      v24 = *(v13 + 16);
      v17 = v145;
      v134 = v15;
      v24(v145, v23, v6);
      v25 = v20 + v21 * v22;
      v26 = v146;
      v131 = v24;
      v24(v146, v25, v6);
      v27 = v19;
      v133 = sub_231606028();
      v132 = sub_231606028();
      v28 = v6;
      v29 = *(v135 + 8);
      v29(v26, v28);
      v30 = v28;
      v19 = v27;
      v130 = v29;
      v29(v17, v30);
      v31 = v134;
      v32 = (v127 + 2);
      v138 = v21;
      v33 = v20 + v21 * (v127 + 2);
      v34 = v137;
      while (1)
      {
        v35 = v32;
        v36 = v19 + 1;
        if (v36 >= v31)
        {
          break;
        }

        v137 = v34;
        LODWORD(v139) = v132 < v133;
        v37 = v145;
        v38 = v147;
        v39 = v131;
        v141 = v32;
        (v131)(v145, v33, v147);
        v40 = v146;
        v39(v146, v23, v38);
        v41 = v36;
        v42 = sub_231606028();
        v43 = sub_231606028();
        v44 = v40;
        v17 = v143;
        v45 = v130;
        v130(v44, v38);
        v45(v37, v38);
        v35 = v141;
        v31 = v134;
        v46 = v43 < v42;
        v19 = v41;
        v47 = !v46;
        v48 = v139 ^ v47;
        v34 = v137;
        v33 += v138;
        v23 += v138;
        v32 = v141 + 1;
        if ((v48 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v19 = v31;
LABEL_13:
      if (v132 >= v133)
      {
        v13 = v135;
        v17 = v125;
        v6 = v147;
      }

      else
      {
        v18 = v127;
        v6 = v147;
        if (v19 < v127)
        {
          goto LABEL_136;
        }

        if (v127 >= v19)
        {
          v13 = v135;
          v17 = v125;
          goto LABEL_36;
        }

        v49 = v31 >= v35 ? v35 : v31;
        v50 = v19;
        v51 = v138 * (v49 - 1);
        v52 = v138 * v49;
        v53 = v127;
        v54 = v127 * v138;
        v134 = v50;
        do
        {
          if (v53 != --v50)
          {
            v55 = *v136;
            if (!*v136)
            {
              goto LABEL_143;
            }

            v141 = *v142;
            (v141)(v129, v55 + v54, v6);
            v56 = v54 < v51 || v55 + v54 >= (v55 + v52);
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v141)(v55 + v51, v129, v6);
          }

          ++v53;
          v51 -= v138;
          v52 -= v138;
          v54 += v138;
        }

        while (v53 < v50);
        v19 = v134;
        v13 = v135;
        v17 = v125;
      }

      v18 = v127;
    }

LABEL_36:
    v57 = v136[1];
    if (v19 < v57)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_135;
      }

      if (v19 - v18 < v124)
      {
        break;
      }
    }

LABEL_52:
    if (v19 < v18)
    {
      goto LABEL_134;
    }

    v137 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2315DA1B4();
      v17 = v114;
    }

    v73 = *(v17 + 16);
    v74 = v73 + 1;
    if (v73 >= *(v17 + 24) >> 1)
    {
      sub_2315DA1B4();
      v17 = v115;
    }

    *(v17 + 16) = v74;
    v75 = v17 + 32;
    v76 = (v17 + 32 + 16 * v73);
    *v76 = v127;
    v76[1] = v19;
    v141 = *v126;
    if (!v141)
    {
      goto LABEL_144;
    }

    v134 = v19;
    if (v73)
    {
      while (1)
      {
        v19 = v74 - 1;
        v77 = (v75 + 16 * (v74 - 1));
        v78 = (v17 + 16 * v74);
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v79 = *(v17 + 32);
          v80 = *(v17 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_72:
          if (v82)
          {
            goto LABEL_121;
          }

          v94 = *v78;
          v93 = v78[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_124;
          }

          v98 = v77[1];
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_129;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v19 = v74 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v74 < 2)
        {
          goto LABEL_123;
        }

        v101 = *v78;
        v100 = v78[1];
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_87:
        if (v97)
        {
          goto LABEL_126;
        }

        v103 = *v77;
        v102 = v77[1];
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_128;
        }

        if (v104 < v96)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v19 - 1 >= v74)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v136)
        {
          goto LABEL_141;
        }

        v108 = v17;
        v109 = (v75 + 16 * (v19 - 1));
        v110 = *v109;
        v111 = (v75 + 16 * v19);
        v17 = v111[1];
        v112 = v137;
        sub_2315E82B4(*v136 + *(v135 + 72) * *v109, *v136 + *(v135 + 72) * *v111, *v136 + *(v135 + 72) * v17, v141);
        v137 = v112;
        if (v112)
        {
          goto LABEL_114;
        }

        if (v17 < v110)
        {
          goto LABEL_116;
        }

        v113 = *(v108 + 16);
        if (v19 > v113)
        {
          goto LABEL_117;
        }

        *v109 = v110;
        v109[1] = v17;
        if (v19 >= v113)
        {
          goto LABEL_118;
        }

        v74 = v113 - 1;
        memmove((v75 + 16 * v19), v111 + 2, 16 * (v113 - 1 - v19));
        v17 = v108;
        *(v108 + 16) = v113 - 1;
        if (v113 <= 2)
        {
          goto LABEL_101;
        }
      }

      v83 = v75 + 16 * v74;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_119;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_120;
      }

      v90 = v78[1];
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_122;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_125;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = v77[1];
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_133;
        }

        if (v81 < v107)
        {
          v19 = v74 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v13 = v135;
    v15 = v136[1];
    v16 = v134;
    if (v134 >= v15)
    {
      goto LABEL_104;
    }
  }

  v58 = (v18 + v124);
  if (__OFADD__(v18, v124))
  {
    goto LABEL_137;
  }

  if (v58 >= v57)
  {
    v58 = v136[1];
  }

  if (v58 < v18)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v19 == v58)
  {
    goto LABEL_52;
  }

  v125 = v17;
  v59 = *v136;
  v60 = *(v13 + 72);
  v141 = *(v13 + 16);
  v61 = v59 + v60 * (v19 - 1);
  v137 = v34;
  v138 = -v60;
  v62 = v18 - v19;
  v139 = v59;
  v128 = v60;
  v63 = (v59 + v19 * v60);
  v130 = v58;
LABEL_45:
  v133 = v61;
  v134 = v19;
  v131 = v63;
  v132 = v62;
  while (1)
  {
    v64 = v145;
    v65 = v141;
    (v141)(v145, v63, v6);
    v66 = v146;
    v65(v146, v61, v147);
    v67 = sub_231606028();
    v68 = sub_231606028();
    v69 = *v143;
    v70 = v66;
    v6 = v147;
    (*v143)(v70, v147);
    v69(v64, v6);
    if (v68 >= v67)
    {
LABEL_50:
      v19 = v134 + 1;
      v61 = v133 + v128;
      v62 = v132 - 1;
      v63 = &v131[v128];
      if ((v134 + 1) == v130)
      {
        v19 = v130;
        v34 = v137;
        v17 = v125;
        v18 = v127;
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    if (!v139)
    {
      break;
    }

    v71 = *v142;
    v72 = v140;
    (*v142)(v140, v63, v6);
    swift_arrayInitWithTakeFrontToBack();
    v71(v61, v72, v6);
    v61 += v138;
    v63 += v138;
    v56 = __CFADD__(v62++, 1);
    if (v56)
    {
      goto LABEL_50;
    }
  }

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
}

uint64_t sub_2315E82B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v69 = a4;
  v68 = sub_231606048();
  v7 = MEMORY[0x28223BE20](v68);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v64 = &v55 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v72 = a1;
  v71 = v69;
  v62 = (v10 + 8);
  v63 = (v10 + 16);
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v67 = a1;
    v34 = v69;
    sub_2315DA6F8(a2, v15 / v13, v69);
    v35 = v34 + v18 * v13;
    v36 = -v13;
    v37 = v35;
    v58 = -v13;
LABEL_36:
    v38 = a2 + v36;
    v56 = v37;
    v39 = v37;
    v59 = a2 + v36;
    v60 = a2;
    while (1)
    {
      if (v35 <= v69)
      {
        v72 = a2;
        v70 = v39;
        goto LABEL_58;
      }

      if (a2 <= v67)
      {
        break;
      }

      v57 = v39;
      v66 = a3 + v36;
      v40 = v64;
      v41 = *v63;
      v61 = v35 + v36;
      v42 = v68;
      v43 = a3;
      v41(v64);
      v44 = v65;
      (v41)(v65, v38, v42);
      v45 = sub_231606028();
      v46 = sub_231606028();
      v47 = *v62;
      (*v62)(v44, v42);
      v47(v40, v42);
      if (v46 < v45)
      {
        a3 = v66;
        if (v43 < v60 || v66 >= v60)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v57;
          v36 = v58;
        }

        else
        {
          v53 = v57;
          v37 = v57;
          v14 = v43 == v60;
          v36 = v58;
          v54 = v59;
          a2 = v59;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v54;
            v37 = v53;
          }
        }

        goto LABEL_36;
      }

      v48 = v66;
      if (v43 < v35 || v66 >= v35)
      {
        v50 = v61;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v48;
        v35 = v50;
        v39 = v50;
        v38 = v59;
        a2 = v60;
        v36 = v58;
      }

      else
      {
        a2 = v60;
        v51 = v61;
        v39 = v61;
        v14 = v35 == v43;
        a3 = v66;
        v35 = v61;
        v36 = v58;
        v38 = v59;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v48;
          v35 = v51;
          v39 = v51;
        }
      }
    }

    v72 = a2;
    v70 = v56;
  }

  else
  {
    v19 = v69;
    sub_2315DA6F8(a1, (a2 - a1) / v13, v69);
    v61 = v19 + v17 * v13;
    v70 = v61;
    v20 = a1;
    v66 = a3;
    v21 = v64;
    while (v69 < v61 && a2 < a3)
    {
      v67 = v20;
      v23 = *v63;
      v24 = v68;
      (*v63)(v21, a2, v68);
      v25 = a2;
      v26 = v65;
      (v23)(v65, v69, v24);
      v27 = sub_231606028();
      v28 = sub_231606028();
      v29 = *v62;
      (*v62)(v26, v24);
      v29(v21, v24);
      if (v28 >= v27)
      {
        a2 = v25;
        v32 = v69 + v13;
        v30 = v67;
        if (v67 < v69 || v67 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v66;
        }

        else
        {
          a3 = v66;
          if (v67 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v71 = v32;
        v69 = v32;
      }

      else
      {
        a2 = v25 + v13;
        v30 = v67;
        if (v67 < v25 || v67 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v66;
        }

        else
        {
          a3 = v66;
          if (v67 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      v20 = v30 + v13;
      v72 = v20;
    }
  }

LABEL_58:
  sub_2315E87E0(&v72, &v71, &v70);
  return 1;
}

uint64_t sub_2315E87E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231606048();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2315E88C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60538, &unk_2316095A0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2315E89C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();

  [a3 setActionIdentifier_];
}

void sub_2315E8A24(uint64_t a1, void *a2)
{
  sub_231606668();
  v3 = sub_231606848();

  [a2 setParameters_];
}

void sub_2315E8A98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();
  [a3 setKey_];
}

void sub_2315E8AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();
  [a3 setValue_];
}

unint64_t sub_2315E8B4C()
{
  result = qword_27DD606C0;
  if (!qword_27DD606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD606C0);
  }

  return result;
}

uint64_t type metadata accessor for SiriHelpDispatcher(uint64_t a1)
{
  result = qword_27DD60700;
  if (!qword_27DD60700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315E8BF4(uint64_t a1)
{
  result = sub_231604FF8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriHelpDispatcherErrors(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2315E8D70()
{
  v1 = sub_231605E98();
  OUTLINED_FUNCTION_24(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2315B4660;
  OUTLINED_FUNCTION_58();

  return sub_2315E47FC(v4, v5, v6, v7, v8, v9);
}

void *sub_2315E8E84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_231606AF8();
    if (v4)
    {
      v5 = v4;
      v2 = sub_2315E71AC(v4, 0);
      sub_2315E8F18((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_2315E8F18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_231606AF8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2315E7094(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2315E9360(&qword_27DD60748, &qword_27DD60740, &unk_231609550);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60740, &unk_231609550);
          v9 = sub_2315E912C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2315E909C(uint64_t *a1, unint64_t a2, uint64_t a3))(void *)
{
  v6 = sub_2315B56C4(a3);
  sub_2315E7230(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x231932F00](a2, a3);
  }

  *a1 = v7;
  return j__OUTLINED_FUNCTION_22_2;
}

void (*sub_2315E912C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2315B56C4(a3);
  sub_2315E7230(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x231932F00](a2, a3);
  }

  *a1 = v7;
  return sub_2315E91B8;
}

uint64_t sub_2315E91C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2315E9210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_231606AF8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_2315E9290(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2315E92D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60760, &qword_231609568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315E9360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2315E93B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2315E9418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2315E9460(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_50(void *a1)
{

  return sub_231604008(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_task_alloc();
}

uint64_t sub_2315E9668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
  result = sub_231606728();
  qword_280FE8FD8 = result;
  return result;
}

uint64_t sub_2315E96B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v18 = sub_2316066E8();
    OUTLINED_FUNCTION_5_7(v18, qword_280FE9578);
    v19 = sub_2316066C8();
    v20 = sub_231606978();

    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_28;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v34[2] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2315B1574(a1, a2, &v34[2]);
    _os_log_impl(&dword_2315AF000, v19, v20, "No remote application Id set. Refusing access to %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_20();
    goto LABEL_27;
  }

  v10 = a3 == a1 && a2 == a4;
  if (v10 || (sub_231606BD8() & 1) != 0)
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v11 = sub_2316066E8();
    OUTLINED_FUNCTION_5_7(v11, qword_280FE9578);

    v12 = sub_2316066C8();
    sub_231606958();

    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_12;
    }

    swift_slowAlloc();
    *&v34[2] = OUTLINED_FUNCTION_3_6();
    v13 = OUTLINED_FUNCTION_2_8(4.8151e-34);
    *(v5 + 14) = OUTLINED_FUNCTION_1_7(v13);
    v16 = "Access to %s is allowed for %s as it is the same process";
LABEL_11:
    OUTLINED_FUNCTION_6_5(&dword_2315AF000, v14, v15, v16);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
LABEL_12:

    return 1;
  }

  v23 = sub_2315DCCC0(a3, a4, *(v4 + 16));
  if (v23)
  {
    v24 = v23;
    v5 = &v33;
    *&v34[2] = a1;
    v35 = a2;
    MEMORY[0x28223BE20](v23);
    v32[2] = &v34[2];
    v25 = sub_2315E9B70(sub_2315BC994, v32, v24);

    if (v25)
    {
      if (qword_280FE9570 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_280FE9570);
      }

      v26 = sub_2316066E8();
      OUTLINED_FUNCTION_5_7(v26, qword_280FE9578);

      v12 = sub_2316066C8();
      sub_231606958();

      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_12;
      }

      swift_slowAlloc();
      *&v34[2] = OUTLINED_FUNCTION_3_6();
      v27 = OUTLINED_FUNCTION_2_8(4.8151e-34);
      *v34 = OUTLINED_FUNCTION_1_7(v27);
      v16 = "Access to %s is allowed for %s";
      goto LABEL_11;
    }
  }

  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v28 = sub_2316066E8();
  OUTLINED_FUNCTION_5_7(v28, qword_280FE9578);

  v19 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    swift_slowAlloc();
    *&v34[2] = OUTLINED_FUNCTION_3_6();
    v29 = OUTLINED_FUNCTION_2_8(4.8151e-34);
    *(v5 + 14) = OUTLINED_FUNCTION_1_7(v29);
    OUTLINED_FUNCTION_6_5(&dword_2315AF000, v30, v31, "Access to %s for %s is not allowed");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
LABEL_27:
    OUTLINED_FUNCTION_20();
  }

LABEL_28:

  return 0;
}

uint64_t sub_2315E9AD0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231606BD8() & 1;
  }
}

BOOL sub_2315E9B70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2315E9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(a7 + 16) + **(a7 + 16));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_7(v14);
  *v15 = v16;
  v15[1] = sub_2315B776C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2315E9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_6(v5);

  return v8(v7);
}

uint64_t sub_2315E9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_6(v5);

  return v8(v7);
}

uint64_t sub_2315E9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_7(v13);
  *v14 = v15;
  v14[1] = sub_2315B66C8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of HintsStateStore.submit(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2315B66C8;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

INInteraction __swiftcall INInteraction.init(intent:response:donatedBySiri:)(INIntent intent, INIntentResponse response, Swift::Bool donatedBySiri)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:intent.super.isa response:response.super.isa];
  [v6 _setDonatedBySiri_];

  return v6;
}

__n128 *static EventDrivenSuggestionsClient.getInteractionBuilder@Sendable (event:inAppIdentifier:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 **a4@<X8>)
{
  v8 = sub_2316061C8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2315B4568(a1, v17);
  (*(v10 + 16))(v13, a2, v8);
  sub_2315B4568(a3, v16);
  v14 = type metadata accessor for EventDrivenInteractionBuilder(0);
  swift_allocObject();
  result = EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(v17, v13, v16);
  a4[3] = v14;
  a4[4] = &protocol witness table for EventDrivenInteractionBuilder;
  *a4 = result;
  return result;
}

uint64_t EventDrivenSuggestionsClient.__allocating_init(clock:suggestionService:interactionBuilder:requestIdProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  OUTLINED_FUNCTION_22_3();
  v10 = swift_allocObject();
  EventDrivenSuggestionsClient.init(clock:suggestionService:interactionBuilder:requestIdProvider:)(v8, v7, v6, v5, a5);
  return v10;
}

void *EventDrivenSuggestionsClient.init(clock:suggestionService:interactionBuilder:requestIdProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v20 = a5;
  OUTLINED_FUNCTION_22_3();
  v10 = sub_231605B98();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_2316061C8();
  type metadata accessor for Connection(0);
  OUTLINED_FUNCTION_0_7();
  sub_2315F32A0(v16, v17, MEMORY[0x277D60C20]);
  v5[14] = sub_231606728();
  sub_231605B68();
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig, v15, v10);
  sub_2315B4648(v9, (v5 + 15));
  sub_2315B4648(v8, (v5 + 20));
  v5[25] = v7;
  v5[26] = v6;
  sub_2315B4648(v20, v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider);
  return v5;
}

uint64_t sub_2315EA5D0()
{
  OUTLINED_FUNCTION_8();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_2316061C8();
  v1[8] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_47_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607E8, &unk_231609900);
  OUTLINED_FUNCTION_24(v6);
  v1[13] = OUTLINED_FUNCTION_23_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010);
  v1[14] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_47_0();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2315EA738()
{
  v65 = v0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_53_0(*(v0 + 56) + 112);

  v6 = sub_2315F0C44(v5, v4, v3);

  sub_2315F169C(v6, &v64);
  v7 = MEMORY[0x277D84F90];
  v8 = &dword_231609010;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    sub_2315F16D8(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
    {
      break;
    }

    v12 = *(v0 + 152);
    OUTLINED_FUNCTION_27_2();
    sub_2315C7354(v13, v14, v15, &dword_231609010);
    v16 = *(v0 + 152);
    if (*v12 > 1)
    {
      sub_2315C7354(v16, *(v0 + 144), &qword_27DD60550, &dword_231609010);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231603FE8(0, *(v9 + 16) + 1, 1);
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_231603FE8((v17 > 1), v18 + 1, 1);
      }

      v19 = *(v0 + 144);
      *(v9 + 16) = v18 + 1;
      sub_2315C7354(v19, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, &qword_27DD60550, &dword_231609010);
    }

    else
    {
      sub_2315B2F7C(v16, &qword_27DD60550, &dword_231609010);
    }
  }

  v20 = *(v0 + 104);
  sub_2315F3278(v64);
  sub_2315B2F7C(v20, &qword_27DD607E8, &unk_231609900);
  v21 = *(v9 + 16);
  if (v21)
  {
    v62 = *(v0 + 112);
    v22 = *(v0 + 72);
    v64 = v7;
    sub_231603F90(0, v21, 0);
    v23 = v64;
    v8 = (v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
    v61 = v22;
    v24 = (v22 + 32);
    v60 = *(v2 + 72);
    do
    {
      v25 = *(v0 + 128);
      v26 = *(v0 + 136);
      v2 = *(v0 + 96);
      v63 = *(v0 + 64);
      v9 = v23;
      sub_2315C9580(v8, v26, &qword_27DD60550, &dword_231609010);
      sub_2315C7354(v26, v25, &qword_27DD60550, &dword_231609010);
      v27 = v25 + *(v62 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910);

      v28 = *v24;
      (*v24)(v2, v27, v63);
      v64 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      v1 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_231603F90((v29 > 1), v30 + 1, 1);
        v23 = v64;
      }

      v31 = *(v0 + 96);
      v32 = *(v0 + 64);
      *(v23 + 16) = v1;
      v28(v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v30, v31, v32);
      v8 = (v8 + v60);
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 160) = v23;
  v33 = *(v23 + 16);
  *(v0 + 168) = v33;
  if (!v33)
  {

    OUTLINED_FUNCTION_71_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_66_1();

    __asm { BRAA            X1, X16 }
  }

  v34 = *(v0 + 64);
  v35 = *(v0 + 72);
  v36 = *(v35 + 16);
  v35 += 16;
  v37 = *(v35 + 64);
  *(v0 + 216) = v37;
  *(v0 + 176) = *(v35 + 56);
  *(v0 + 184) = v36;
  *(v0 + 192) = 0;
  v36(*(v0 + 88), v23 + ((v37 + 32) & ~v37), v34);
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v38 = OUTLINED_FUNCTION_69_0();
  __swift_project_value_buffer(v38, qword_280FE9558);
  OUTLINED_FUNCTION_27_2();
  (v2)();
  swift_retain_n();
  v39 = sub_2316066C8();
  sub_231606958();
  OUTLINED_FUNCTION_39();
  v41 = os_log_type_enabled(v39, v40);
  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  if (v41)
  {
    swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_21_2();
    *v8 = 136315394;
    OUTLINED_FUNCTION_0_7();
    v46 = sub_2315F32A0(v44, v45, MEMORY[0x277D60C30]);
    OUTLINED_FUNCTION_52_0(v46);
    OUTLINED_FUNCTION_55_0();
    v47 = *(v43 + 8);
    v48 = OUTLINED_FUNCTION_17_0();
    v47(v48);
    sub_2315B1574(v9, v1, &v64);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_46_1();
    *(v8 + 14) = v42;

    OUTLINED_FUNCTION_45_0();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v47 = *(v43 + 8);
    v56 = OUTLINED_FUNCTION_17_0();
    v47(v56);
  }

  *(v0 + 200) = v47;
  v57 = swift_task_alloc();
  *(v0 + 208) = v57;
  *v57 = v0;
  OUTLINED_FUNCTION_12_4(v57);
  OUTLINED_FUNCTION_66_1();

  return sub_2315EBBA4();
}

uint64_t sub_2315EACF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315EADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v29 = *(v22 + 168);
  v30 = *(v22 + 192) + 1;
  (*(v22 + 200))(*(v22 + 88), *(v22 + 64));
  if (v30 == v29)
  {

    OUTLINED_FUNCTION_71_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v40 = *(v22 + 184);
    v41 = *(v22 + 192) + 1;
    *(v22 + 192) = v41;
    v40(*(v22 + 88), *(v22 + 160) + ((*(v22 + 216) + 32) & ~*(v22 + 216)) + *(v22 + 176) * v41, *(v22 + 64));
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v42 = OUTLINED_FUNCTION_69_0();
    __swift_project_value_buffer(v42, qword_280FE9558);
    OUTLINED_FUNCTION_27_2();
    v24();
    swift_retain_n();
    v43 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v22 + 72);
    v46 = *(v22 + 80);
    if (v45)
    {
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_21_2();
      *v23 = 136315394;
      OUTLINED_FUNCTION_0_7();
      v50 = sub_2315F32A0(v48, v49, MEMORY[0x277D60C30]);
      OUTLINED_FUNCTION_52_0(v50);
      OUTLINED_FUNCTION_55_0();
      v51 = *(v47 + 8);
      v52 = OUTLINED_FUNCTION_17_0();
      v51(v52);
      sub_2315B1574(v25, v26, &a11);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_46_1();
      *(v23 + 14) = v46;

      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      v51 = *(v47 + 8);
      v58 = OUTLINED_FUNCTION_17_0();
      v51(v58);
    }

    *(v22 + 200) = v51;
    v59 = swift_task_alloc();
    *(v22 + 208) = v59;
    *v59 = v22;
    OUTLINED_FUNCTION_12_4(v59);
    OUTLINED_FUNCTION_31();

    return sub_2315EBBA4();
  }
}

uint64_t sub_2315EB0A8()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2316061C8();
  v1[9] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[10] = v4;
  v1[11] = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v6 = sub_231605B98();
  v1[14] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_23_0();
  v8 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2315EB1AC()
{
  OUTLINED_FUNCTION_15();
  sub_2316061A8();
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_2315EB25C;

  return sub_2315EA5D0();
}

uint64_t sub_2315EB25C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2315EB378, v2, 0);
}

uint64_t sub_2315EB378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v13 = v12[16];
  v14 = v12[13];
  v15 = v12[12];
  v32 = v12[11];
  v16 = v12[9];
  v17 = v12[10];
  v19 = v12[7];
  v18 = v12[8];
  (*(v12[15] + 16))(v13, v18 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig, v12[14]);
  v20 = *(v17 + 16);
  v20(v14, v19, v16);
  sub_2315B4568(v18 + 120, (v12 + 2));
  v20(v15, v19, v16);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v17 + 32))(v22 + v21, v15, v16);
  type metadata accessor for Connection(0);
  swift_allocObject();

  sub_2315EE6E0(v13, v14, (v12 + 2), &unk_2316098F8, v22);

  OUTLINED_FUNCTION_58();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_2315EB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2315B4740;

  return sub_2315ED970();
}

uint64_t sub_2315EB5B8()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2316061C8();
  v1[10] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315EB668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  OUTLINED_FUNCTION_53_0(v22[9] + 112);

  v27 = OUTLINED_FUNCTION_72();
  v29 = sub_2315DCBBC(v27, v28);

  if (v29)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v30 = OUTLINED_FUNCTION_72_0();
    __swift_project_value_buffer(v30, qword_280FE9558);
    v31 = OUTLINED_FUNCTION_50_0();
    v32(v31);
    v33 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v22[13];
    if (v35)
    {
      v37 = OUTLINED_FUNCTION_60();
      a10 = v29;
      a11 = OUTLINED_FUNCTION_63();
      v38 = a11;
      *v37 = 136315138;
      OUTLINED_FUNCTION_0_7();
      v41 = sub_2315F32A0(v39, v40, MEMORY[0x277D60C30]);
      OUTLINED_FUNCTION_52_0(v41);
      OUTLINED_FUNCTION_55_0();
      v42 = OUTLINED_FUNCTION_17_0();
      v43(v42);
      sub_2315B1574(v23, v24, &a11);
      OUTLINED_FUNCTION_73();
      *(v37 + 4) = v36;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v44, v45, "Getting existing connection for: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x231933730](v38, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_17_0();
      v50(v49);
    }

    OUTLINED_FUNCTION_31();

    return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v46 = swift_task_alloc();
    v22[14] = v46;
    *v46 = v22;
    v46[1] = sub_2315EB8A8;
    OUTLINED_FUNCTION_29_0(v22[8]);
    OUTLINED_FUNCTION_31();

    return sub_2315EB0A8();
  }
}

uint64_t sub_2315EB8A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315EB9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_49();
  a18 = v20;
  v24 = qword_280FE9550;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v25 = OUTLINED_FUNCTION_70_0();
  __swift_project_value_buffer(v25, qword_280FE9558);
  v26 = OUTLINED_FUNCTION_14_3();
  v27(v26);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  v30 = OUTLINED_FUNCTION_51_1(v29);
  v31 = v20[12];
  if (v30)
  {
    OUTLINED_FUNCTION_60();
    v32 = OUTLINED_FUNCTION_21_2();
    a9 = v32;
    *v21 = 136315138;
    OUTLINED_FUNCTION_0_7();
    sub_2315F32A0(v33, v34, MEMORY[0x277D60C30]);
    v35 = sub_231606BC8();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_6_6();
    v39(v38);
    sub_2315B1574(v35, v37, &a9);
    OUTLINED_FUNCTION_30_1();

    *(v21 + 4) = v31;
    OUTLINED_FUNCTION_34_1(&dword_2315AF000, v40, v41, "Created new connection for: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v42 = OUTLINED_FUNCTION_6_6();
    v43(v42);
  }

  v44 = v20[9];
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  a9 = *(v44 + 112);
  v45 = OUTLINED_FUNCTION_56();
  sub_2315DBE6C(v45, v46);
  *(v44 + 112) = a9;
  swift_endAccess();

  OUTLINED_FUNCTION_58();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_2315EBBA4()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2316061C8();
  v1[10] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315EBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  OUTLINED_FUNCTION_53_0(v22[9] + 112);

  v27 = OUTLINED_FUNCTION_72();
  v29 = sub_2315DCBBC(v27, v28);

  if (v29)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v30 = OUTLINED_FUNCTION_72_0();
    __swift_project_value_buffer(v30, qword_280FE9558);
    v31 = OUTLINED_FUNCTION_50_0();
    v32(v31);
    v33 = sub_2316066C8();
    sub_231606968();
    OUTLINED_FUNCTION_39();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v22[13];
    if (v35)
    {
      v37 = OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_63();
      a11 = a10;
      *v37 = 136315138;
      OUTLINED_FUNCTION_0_7();
      v40 = sub_2315F32A0(v38, v39, MEMORY[0x277D60C30]);
      OUTLINED_FUNCTION_52_0(v40);
      HIDWORD(a9) = v23;
      OUTLINED_FUNCTION_55_0();
      v41 = OUTLINED_FUNCTION_17_0();
      v42(v41);
      sub_2315B1574(v29, v24, &a11);
      OUTLINED_FUNCTION_73();
      *(v37 + 4) = v36;
      _os_log_impl(&dword_2315AF000, v33, v23, "Disconnecting: %s", v37, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v60 = OUTLINED_FUNCTION_17_0();
      v61(v60);
    }

    sub_2315EF6A8();
    swift_beginAccess();
    sub_2315F0850();
    swift_endAccess();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v43 = OUTLINED_FUNCTION_70_0();
    __swift_project_value_buffer(v43, qword_280FE9558);
    v44 = OUTLINED_FUNCTION_14_3();
    v45(v44);
    v46 = sub_2316066C8();
    v47 = sub_231606958();
    v48 = OUTLINED_FUNCTION_51_1(v47);
    v49 = v22[12];
    if (v48)
    {
      OUTLINED_FUNCTION_60();
      v50 = OUTLINED_FUNCTION_21_2();
      a11 = v50;
      *v23 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v51, v52, MEMORY[0x277D60C30]);
      v53 = sub_231606BC8();
      v55 = v54;
      v56 = OUTLINED_FUNCTION_6_6();
      v57(v56);
      sub_2315B1574(v53, v55, &a11);
      OUTLINED_FUNCTION_30_1();

      *(v23 + 4) = v49;
      OUTLINED_FUNCTION_34_1(&dword_2315AF000, v58, v59, "no connection for %s found. Unable to disconnect");
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      v62 = OUTLINED_FUNCTION_6_6();
      v63(v62);
    }
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315EBF94()
{
  OUTLINED_FUNCTION_8();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C0, &unk_2316096D0);
  v1[14] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_23_0();
  v6 = sub_231606158();
  v1[17] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_23_0();
  v8 = sub_231606348();
  v1[20] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[21] = v9;
  v1[22] = OUTLINED_FUNCTION_23_0();
  v10 = sub_2316060C8();
  v1[23] = v10;
  OUTLINED_FUNCTION_4(v10);
  v1[24] = v11;
  v1[25] = OUTLINED_FUNCTION_47_0();
  v1[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  OUTLINED_FUNCTION_24(v12);
  v1[27] = OUTLINED_FUNCTION_23_0();
  v13 = sub_231605098();
  v1[28] = v13;
  OUTLINED_FUNCTION_4(v13);
  v1[29] = v14;
  v1[30] = OUTLINED_FUNCTION_23_0();
  v15 = sub_2316061C8();
  v1[31] = v15;
  OUTLINED_FUNCTION_4(v15);
  v1[32] = v16;
  v1[33] = OUTLINED_FUNCTION_47_0();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v17 = sub_231606188();
  v1[36] = v17;
  OUTLINED_FUNCTION_4(v17);
  v1[37] = v18;
  v1[38] = OUTLINED_FUNCTION_23_0();
  v19 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2315EC260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64_1();
  a22 = v24;
  a23 = v25;
  a21 = v23;
  v26 = *(v23 + 272);
  v27 = *(v23 + 248);
  v28 = *(v23 + 256);
  sub_2316060A8();
  sub_231606078();
  sub_231605F38();
  OUTLINED_FUNCTION_56();
  v29 = sub_2316061B8();
  v30 = *(v28 + 8);
  *(v23 + 312) = v30;
  *(v23 + 320) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = OUTLINED_FUNCTION_26();
  v30(v31);
  v32 = (v30)(v26, v27);
  if (v29)
  {
    v33 = MEMORY[0x231932570](v32);
    sub_2315DCC0C(0x4974736575716572, 0xE900000000000064, v33, (v23 + 16));

    v34 = *(v23 + 216);
    v35 = *(v23 + 224);
    if (*(v23 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v36 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v34, v36 ^ 1u, 1, v35);
      if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
      {
        (*(*(v23 + 232) + 32))(*(v23 + 240), *(v23 + 216), *(v23 + 224));
        if (qword_280FE9550 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280FE9550);
        }

        v37 = sub_2316066E8();
        __swift_project_value_buffer(v37, qword_280FE9558);
        v38 = sub_2316066C8();
        v39 = sub_231606958();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_2315AF000, v38, v39, "Mapping siri hints identifier", v40, 2u);
          OUTLINED_FUNCTION_17();
        }

        v41 = *(v23 + 272);
        v42 = *(v23 + 240);
        v43 = *(v23 + 248);
        v44 = *(v23 + 232);
        v69 = *(v23 + 224);

        sub_231606078();
        sub_2316061A8();
        (v30)(v41, v43);
        v45 = sub_231605068();
        strcpy(&a12, "conversation-");
        HIWORD(a12) = -4864;
        MEMORY[0x231932CB0](v45);

        sub_231606198();
        (*(v44 + 8))(v42, v69);
        goto LABEL_17;
      }
    }

    else
    {
      sub_2315B2F7C(v23 + 16, &qword_27DD60390, &qword_231608910);
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v35);
    }

    sub_2315B2F7C(*(v23 + 216), &qword_27DD60268, &qword_231608230);
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v49 = sub_2316066E8();
  __swift_project_value_buffer(v49, qword_280FE9558);
  v50 = OUTLINED_FUNCTION_14_3();
  v51(v50);
  v52 = sub_2316066C8();
  v53 = sub_231606958();
  v54 = OUTLINED_FUNCTION_51_1(v53);
  v55 = *(v23 + 208);
  if (v54)
  {
    OUTLINED_FUNCTION_60();
    v56 = OUTLINED_FUNCTION_21_2();
    *&a12 = v56;
    *v27 = 136315138;
    sub_2315F32A0(&qword_280FE95E8, MEMORY[0x277D60A70], MEMORY[0x277D60A78]);
    v57 = sub_231606BC8();
    v59 = v58;
    v60 = OUTLINED_FUNCTION_6_6();
    v61(v60);
    sub_2315B1574(v57, v59, &a12);
    OUTLINED_FUNCTION_30_1();

    *(v27 + 4) = v55;
    OUTLINED_FUNCTION_34_1(&dword_2315AF000, v62, v63, "using identifier for inapp as is. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_6_6();
    v65(v64);
  }

  sub_231606078();
LABEL_17:
  v66 = swift_task_alloc();
  *(v23 + 328) = v66;
  *v66 = v23;
  v66[1] = sub_2315EC708;
  OUTLINED_FUNCTION_29_0(*(v23 + 280));
  OUTLINED_FUNCTION_33_1();

  return sub_2315EB5B8();
}

uint64_t sub_2315EC708()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 336) = v5;

  v7 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315EC804(uint64_t a1)
{
  v54 = v1;
  v2 = v1[39];
  v3 = v1[34];
  v4 = v1[31];
  sub_231606078();
  sub_231605F38();
  OUTLINED_FUNCTION_0_7();
  sub_2315F32A0(v5, v6, MEMORY[0x277D60C28]);
  OUTLINED_FUNCTION_56();
  v7 = sub_231606778();
  v8 = OUTLINED_FUNCTION_26();
  (v2)(v8);
  (v2)(v3, v4);
  if (v7)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v9 = v1[42];
    v10 = sub_2316066E8();
    __swift_project_value_buffer(v10, qword_280FE9558);

    v11 = sub_2316066C8();
    v12 = sub_231606958();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v1[42];
      v9 = OUTLINED_FUNCTION_60();
      v14 = OUTLINED_FUNCTION_63();
      v53 = v14;
      *v9 = 136315138;
      swift_beginAccess();
      v15 = *(v13 + 16);

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
      v2 = MEMORY[0x231932D20](v15, v16);
      v18 = v17;

      v19 = sub_2315B1574(v2, v18, &v53);

      *(v9 + 4) = v19;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_28_1();
    v26 = v1[15];
    v25 = v1[16];
    v27 = v1[14];
    v51 = v28;
    v29 = swift_task_alloc();
    OUTLINED_FUNCTION_67_1(v29);
    (*(v26 + 104))(v25, *MEMORY[0x277D858A0], v27);
    OUTLINED_FUNCTION_15_3();

    v52(v12, v51);
    (*(v2 + 8))(v9);

    OUTLINED_FUNCTION_14();

    return v30();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v32 = sub_2316066E8();
    __swift_project_value_buffer(v32, qword_280FE9558);
    v33 = sub_2316066C8();
    v34 = sub_231606958();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_17();
    }

    v41 = v1[24];
    v40 = v1[25];
    v42 = v1[23];
    v44 = v1[18];
    v43 = v1[19];
    v45 = v1[17];
    v47 = v1[12];
    v46 = v1[13];

    sub_231606078();
    (*(v44 + 104))(v43, *MEMORY[0x277D60B90], v45);
    __swift_project_boxed_opaque_existential_1((v46 + 120), *(v46 + 144));
    sub_2316063E8();
    (*(v41 + 16))(v40, v47, v42);
    sub_231606338();
    v48 = swift_task_alloc();
    v1[43] = v48;
    *v48 = v1;
    v48[1] = sub_2315ECCD4;
    v49 = OUTLINED_FUNCTION_29_0(v1[22]);

    return sub_2315F1A7C(v49, v50);
  }
}

uint64_t sub_2315ECCD4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = v1[13];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2315ECE30, v5, 0);
}

void sub_2315ECE30()
{
  OUTLINED_FUNCTION_28_1();
  v11 = v4;
  v6 = v2[15];
  v5 = v2[16];
  v7 = v2[14];
  v8 = swift_task_alloc();
  OUTLINED_FUNCTION_67_1(v8);
  (*(v6 + 104))(v5, *MEMORY[0x277D858A0], v7);
  OUTLINED_FUNCTION_15_3();

  v12(v0, v11);
  (*(v3 + 8))(v1);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66_1();

  __asm { BRAA            X1, X16 }
}

void sub_2315ECF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_231606188();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2315EFAD8();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a3 + 112);
  sub_2315DBE6C(a2, a4);
  *(a3 + 112) = v22;
  swift_endAccess();
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v13 = sub_2316066E8();
  __swift_project_value_buffer(v13, qword_280FE9558);
  (*(v10 + 16))(v12, a5, v9);
  v14 = sub_2316066C8();
  v15 = sub_231606958();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    sub_2315F32A0(&qword_280FE95D0, MEMORY[0x277D60C08], MEMORY[0x277D60C10]);
    v18 = sub_231606BC8();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = sub_2315B1574(v18, v20, v23);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2315AF000, v14, v15, "Finished setting up connection for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x231933730](v17, -1, -1);
    MEMORY[0x231933730](v16, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2315ED270()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2316061C8();
  v1[9] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_23_0();
  v5 = sub_231606158();
  v1[12] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_47_0();
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315ED36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[7];
  v26 = v25[3];
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_231606418();
  v27 = OUTLINED_FUNCTION_56();
  if (v28(v27) == *MEMORY[0x277D60B90])
  {
    (*(v22[13] + 96))(v22[15], v22[12]);
    OUTLINED_FUNCTION_27_2();
    v29();
    v30 = swift_task_alloc();
    v22[16] = v30;
    *v30 = v22;
    v30[1] = sub_2315ED670;
    OUTLINED_FUNCTION_29_0(v22[11]);
    OUTLINED_FUNCTION_31();

    return sub_2315EB5B8();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v33 = v22[7];
    v34 = sub_2316066E8();
    __swift_project_value_buffer(v34, qword_280FE9558);
    sub_2315B4568(v33, (v22 + 2));
    v35 = sub_2316066C8();
    v36 = sub_231606978();
    if (OUTLINED_FUNCTION_51_1(v36))
    {
      v37 = v22[13];
      v38 = v22[14];
      v39 = v22[12];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_21_2();
      a11 = a10;
      *v26 = 136315138;
      __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
      HIDWORD(a9) = v36;
      OUTLINED_FUNCTION_30_1();
      sub_231606418();
      sub_2315F32A0(&qword_27DD603B8, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
      v40 = sub_231606BC8();
      v42 = v41;
      v43 = *(v37 + 8);
      v43(v38, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
      sub_2315B1574(v40, v42, &a11);
      OUTLINED_FUNCTION_30_1();

      *(v26 + 4) = v40;
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
      v49 = v22[13];

      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
      v43 = *(v49 + 8);
    }

    v43(v22[15], v22[12]);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2315ED670()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v4 + 136) = v2;

  v10 = *(v7 + 32);
  v11 = OUTLINED_FUNCTION_26();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v13 = swift_task_alloc();
  *(v4 + 144) = v13;
  *v13 = v8;
  v13[1] = sub_2315ED7DC;
  v14 = OUTLINED_FUNCTION_44_0();

  return sub_2315F226C(v14, v15, v16, v10);
}

uint64_t sub_2315ED7DC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315ED8D4()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2315ED970()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = sub_231605098();
  OUTLINED_FUNCTION_24(v5);
  v1[26] = OUTLINED_FUNCTION_23_0();
  v6 = sub_231605E28();
  v1[27] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_23_0();
  v8 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2315EDA38()
{
  OUTLINED_FUNCTION_15();
  __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 160), *(*(v0 + 200) + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 240) = v1;
  *v1 = v2;
  v1[1] = sub_2315EDAEC;
  OUTLINED_FUNCTION_40_1();

  return MEMORY[0x2821C5CD8](v3);
}

uint64_t sub_2315EDAEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315EDBE4()
{
  OUTLINED_FUNCTION_15();
  __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 160), *(*(v0 + 200) + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 248) = v1;
  *v1 = v2;
  v1[1] = sub_2315EDC9C;
  OUTLINED_FUNCTION_40_1();

  return MEMORY[0x2821C5CE0](v3);
}

uint64_t sub_2315EDC9C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315EDD94()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_2316055E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  (*(v2 + 200))(v3, v1, v0 + 7);
  v4 = v0[20];
  v5 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
  v6 = (v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider);
  v7 = *(v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider + 24);
  v8 = *(v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider + 32);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v0[32] = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v17 = (*(v5 + 8) + **(v5 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[33] = v13;
  *v13 = v14;
  v13[1] = sub_2315EDF74;
  v15 = v0[29];

  return v17(v15, v11, v12, v4, v5);
}

uint64_t sub_2315EDF74()
{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  *(v7 + 272) = v0;

  v8 = *(v2 + 200);
  if (v0)
  {
    v9 = sub_2315EE308;
  }

  else
  {
    v9 = sub_2315EE0C0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2315EE0C0()
{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[35] = v3;
  *v3 = v4;
  v3[1] = sub_2315EE180;
  v5 = v0[29];
  v6 = v0[22];

  return MEMORY[0x2821C5C98](v6, v5, v1, v2);
}

uint64_t sub_2315EE180()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315EE278()
{
  OUTLINED_FUNCTION_8();
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315EE308()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  sub_231606528();
  sub_231606058();
  sub_2315F32A0(&qword_280FE95F0, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
  sub_231605088();
  sub_231605E58();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v2();
}

char *EventDrivenSuggestionsClient.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));

  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig;
  sub_231605B98();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t EventDrivenSuggestionsClient.__deallocating_deinit()
{
  EventDrivenSuggestionsClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315EE504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return sub_2315EBF94();
}

uint64_t sub_2315EE5B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return sub_2315EBBA4();
}

uint64_t sub_2315EE648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return sub_2315ED270();
}

uint64_t sub_2315EE6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22_3();
  *(v5 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock;
  *(v5 + v15) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v16 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_config;
  sub_231605B98();
  OUTLINED_FUNCTION_5_1();
  (*(v17 + 32))(v5 + v16, v9);
  v18 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_key;
  sub_2316061C8();
  OUTLINED_FUNCTION_5_1();
  (*(v19 + 32))(v5 + v18, v8);
  sub_2315B4648(v7, v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock);
  v20 = (v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions);
  *v20 = v6;
  v20[1] = a5;
  return v5;
}

uint64_t sub_2315EE818(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v35 = a3;
  v6 = sub_2316061C8();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  sub_2315C9580(a1 + v15, v10, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2315B2F7C(v10, &qword_27DD607D0, &qword_2316098B0);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v16 = sub_2316066E8();
    __swift_project_value_buffer(v16, qword_280FE9558);
    v17 = v36;
    v18 = v37;
    v19 = v38;
    (*(v37 + 16))(v36, v35, v38);
    v20 = sub_2316066C8();
    v21 = sub_231606958();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40[0] = v23;
      *v22 = 136315138;
      sub_2315F32A0(&qword_280FE95B8, MEMORY[0x277D60C18], MEMORY[0x277D60C30]);
      v24 = sub_231606BC8();
      v25 = v17;
      v26 = v24;
      v28 = v27;
      (*(v18 + 8))(v25, v19);
      v29 = sub_2315B1574(v26, v28, v40);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_2315AF000, v20, v21, "No connection for %s created yet. Adding to buffer", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x231933730](v23, -1, -1);
      MEMORY[0x231933730](v22, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    sub_2315EF2C4();
    swift_beginAccess();
    sub_2315CAAEC();
    v32 = *(*(a1 + 16) + 16);
    sub_2315CAB78(v32);
    v33 = *(a1 + 16);
    *(v33 + 16) = v32 + 1;
    sub_2315B4568(v39, v33 + 40 * v32 + 32);
    *(a1 + 16) = v33;
    return swift_endAccess();
  }

  else
  {
    v30 = *(v12 + 32);
    v30(v14, v10, v11);
    sub_2315B2F7C(a2, &qword_27DD607D0, &qword_2316098B0);
    v30(a2, v14, v11);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }
}

uint64_t sub_2315EED18()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607E0, &qword_2316098E8);
  OUTLINED_FUNCTION_24(v4);
  v1[20] = OUTLINED_FUNCTION_23_0();
  v5 = type metadata accessor for PreFetchedSuggestionEvent(0);
  v1[21] = v5;
  OUTLINED_FUNCTION_24(v5);
  v1[22] = OUTLINED_FUNCTION_23_0();
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315EEDC4()
{
  v39 = v0;
  sub_2315B4568(v0[18], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
  if (swift_dynamicCast())
  {
    v2 = v0[22];
    v3 = v0[20];
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v0[21]);
    sub_2315F3134(v3, v2);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v4 = sub_2316066E8();
    __swift_project_value_buffer(v4, qword_280FE9558);
    v5 = sub_2316066C8();
    v6 = sub_231606958();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_17();
    }

    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[17];

    v15 = *(v13 + 24);
    sub_231605E98();
    OUTLINED_FUNCTION_5_1();
    (*(v16 + 16))(v14, v12 + v15);
    sub_2315BE3F0(v12);

    OUTLINED_FUNCTION_14();

    return v17();
  }

  else
  {
    v19 = v0[20];
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_2315B2F7C(v19, &qword_27DD607E0, &qword_2316098E8);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v24 = v0[18];
    v25 = sub_2316066E8();
    __swift_project_value_buffer(v25, qword_280FE9558);
    sub_2315B4568(v24, (v0 + 7));
    v26 = sub_2316066C8();
    v27 = sub_231606958();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_60();
      v28 = OUTLINED_FUNCTION_21_2();
      v38 = v28;
      *v1 = 136315138;
      sub_2315B4568((v0 + 7), (v0 + 12));
      v29 = sub_2316067A8();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v32 = sub_2315B1574(v29, v31, &v38);

      *(v1 + 4) = v32;
      _os_log_impl(&dword_2315AF000, v26, v27, "Got event of type: %s. Generating suggestions", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    v37 = (*(v0[19] + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions) + **(v0[19] + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions));
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[23] = v33;
    *v33 = v34;
    v33[1] = sub_2315EF1A4;
    v35 = v0[17];
    v36 = v0[18];

    return v37(v35, v36);
  }
}

uint64_t sub_2315EF1A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_2315EF2C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock), *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock + 24));
  sub_2316063E8();
  v3 = v2;
  swift_beginAccess();
  v4 = *(*(v0 + 16) + 16);
  v5 = sub_231605B78();
  if (!__OFADD__(v5, 1))
  {
    v30 = v4;
    v31 = v5 + 1;
    v1 = *(v0 + 16);
    v6 = *(v1 + 16);
    v7 = v1 + 32;

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (v6 != v8)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_2315B4568(v7, &v33);
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      sub_231606408();
      v11 = v3 - v10;
      sub_231605B88();
      if (v11 >= v12)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
      }

      else
      {
        sub_2315B4648(&v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_231604130(0, *(v9 + 16) + 1, 1);
          v9 = v35;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_231604130((v14 > 1), v15 + 1, 1);
          v9 = v35;
        }

        *(v9 + 16) = v15 + 1;
        sub_2315B4648(v32, v9 + 40 * v15 + 32);
      }

      v7 += 40;
      ++v8;
    }

    sub_2315EF610(v31, v9);
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_231606BE8();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x277D84F90];
      }

      v25 = *(v24 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        __break(1u);
      }

      else if (v25 == (v19 >> 1) - v17)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v23)
        {
          goto LABEL_22;
        }

        v23 = MEMORY[0x277D84F90];
LABEL_21:
        swift_unknownObjectRelease();
LABEL_22:
        *(v0 + 16) = v23;

        v1 = *(*(v0 + 16) + 16);
        if (qword_280FE9550 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    v20 = OUTLINED_FUNCTION_72();
    sub_2315F0B5C(v20, v21, v17, v19);
    v23 = v22;
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0(&qword_280FE9550);
LABEL_23:
  v26 = sub_2316066E8();
  __swift_project_value_buffer(v26, qword_280FE9558);
  v27 = sub_2316066C8();
  v28 = sub_231606958();
  if (OUTLINED_FUNCTION_51_1(v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v30;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v1;
    _os_log_impl(&dword_2315AF000, v27, v28, "before purging %ld elements, after purging %ld", v29, 0x16u);
    OUTLINED_FUNCTION_17();
  }
}

uint64_t sub_2315EF610(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2315E91C0(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2315F1630(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315EF6A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock);

  [v1 lock];
  sub_2315EF728(v0);
  [v1 unlock];
}

uint64_t sub_2315EF728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v22 = v21 - v10;
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v11 = sub_2316066E8();
  v21[1] = __swift_project_value_buffer(v11, qword_280FE9558);
  v12 = sub_2316066C8();
  v13 = sub_231606968();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2315AF000, v12, v13, "Disconnecting connection", v14, 2u);
    MEMORY[0x231933730](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  sub_2315C9580(a1 + v15, v7, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2315B2F7C(v7, &qword_27DD607D0, &qword_2316098B0);
  }

  else
  {
    (*(v9 + 32))(v22, v7, v8);
    v16 = sub_2316066C8();
    v17 = sub_231606968();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2315AF000, v16, v17, "Notifying downstream subscribers of events that connection is disconnected", v18, 2u);
      MEMORY[0x231933730](v18, -1, -1);
    }

    v21[2] = 0;
    v19 = v22;
    sub_231606918();
    (*(v9 + 8))(v19, v8);
  }

  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  swift_beginAccess();
  sub_2315F30C4(v5, a1 + v15);
  return swift_endAccess();
}

void sub_2315EFB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v5 = *(v4 - 8);
  v58 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  v50 = v16;
  sub_2315C9580(a1 + v16, v15, &qword_27DD607D0, &qword_2316098B0);
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v15, 1, v4);
  sub_2315B2F7C(v15, &qword_27DD607D0, &qword_2316098B0);
  if (v16 == 1)
  {
    sub_2315EF2C4();
    swift_beginAccess();
    v55 = v5 + 16;
    v54 = v5 + 32;
    *&v17 = 136315138;
    v52 = v17;
    while (1)
    {
      v18 = *(a1 + 16);
      if (!*(v18 + 16))
      {
        break;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2315F2F0C();
        v18 = v46;
      }

      v20 = *(v18 + 16);
      if (!v20)
      {
        __break(1u);
        return;
      }

      *(v18 + 16) = v20 - 1;
      *(a1 + 16) = v18;
      sub_2315B4648((v18 + 40 * v20 - 8), v66);
      swift_endAccess();
      if (qword_280FE9550 != -1)
      {
        swift_once();
      }

      v21 = sub_2316066E8();
      __swift_project_value_buffer(v21, qword_280FE9558);
      sub_2315B4568(v66, &v64);
      v22 = sub_2316066C8();
      v23 = sub_231606958();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v67 = v53;
        *v24 = v52;
        __swift_project_boxed_opaque_existential_1(&v64, v65);
        swift_getDynamicType();
        v25 = sub_231606CD8();
        v26 = a1;
        v27 = v5;
        v28 = a2;
        v29 = v4;
        v31 = v30;
        __swift_destroy_boxed_opaque_existential_1Tm(&v64);
        v32 = sub_2315B1574(v25, v31, &v67);
        v4 = v29;
        a2 = v28;
        v5 = v27;
        a1 = v26;

        *(v24 + 4) = v32;
        _os_log_impl(&dword_2315AF000, v22, v23, "sending event %s from buffer to new connection", v24, 0xCu);
        v33 = v53;
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x231933730](v33, -1, -1);
        MEMORY[0x231933730](v24, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      }

      v34 = sub_2316068E8();
      v35 = v59;
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v34);
      sub_2315B4568(v66, &v64);
      v36 = v57;
      (*(v5 + 16))(v57, a2, v4);
      v37 = (*(v5 + 80) + 80) & ~*(v5 + 80);
      v38 = swift_allocObject();
      *(v38 + 2) = 0;
      *(v38 + 3) = 0;
      *(v38 + 4) = a1;
      sub_2315B4648(&v64, (v38 + 40));
      (*(v5 + 32))(&v38[v37], v36, v4);
      v39 = v56;
      sub_2315C9580(v35, v56, &qword_27DD60398, &qword_231609BD0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v34);

      if (EnumTagSinglePayload == 1)
      {
        sub_2315B2F7C(v39, &qword_27DD60398, &qword_231609BD0);
      }

      else
      {
        sub_2316068D8();
        (*(*(v34 - 8) + 8))(v39, v34);
      }

      v41 = *(v38 + 2);
      swift_unknownObjectRetain();

      if (v41)
      {
        swift_getObjectType();
        v42 = sub_2316068A8();
        v44 = v43;
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0;
        v44 = 0;
      }

      sub_2315B2F7C(v59, &qword_27DD60398, &qword_231609BD0);
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_2316098C0;
      *(v45 + 24) = v38;
      if (v44 | v42)
      {
        v60 = 0;
        v61 = 0;
        v62 = v42;
        v63 = v44;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }
  }

  v47 = v51;
  (*(v5 + 16))(v51, a2, v4);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v4);
  v48 = v50;
  swift_beginAccess();
  sub_2315F30C4(v47, a1 + v48);
  swift_endAccess();
}

uint64_t sub_2315F0278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v6[3] = v7;
  v6[4] = *(v7 - 8);
  v6[5] = swift_task_alloc();
  v8 = sub_231605E98();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[10] = v9;
  *v9 = v6;
  v9[1] = sub_2315F03F8;

  return sub_2315EED18();
}

uint64_t sub_2315F03F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315F04DC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v0[8], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  sub_231606908();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_14();

  return v7();
}

uint64_t sub_2315F05E4()
{

  sub_2315B2F7C(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection, &qword_27DD607D0, &qword_2316098B0);
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_config;
  sub_231605B98();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_key;
  sub_2316061C8();
  OUTLINED_FUNCTION_5_1();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock));

  return v0;
}

uint64_t sub_2315F06D0()
{
  sub_2315F05E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315F0728()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315F080C(uint64_t a1)
{
  sub_2315B2D08(a1, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  return sub_2316067A8();
}

uint64_t sub_2315F0850()
{
  v1 = v0;
  v2 = sub_2315CD118();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60570, &qword_231609030);
  sub_231606AC8();
  v5 = *(v9 + 48);
  v6 = sub_2316061C8();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  type metadata accessor for Connection(0);
  sub_2315F32A0(&qword_280FE95C8, MEMORY[0x277D60C18], MEMORY[0x277D60C20]);
  sub_231606AE8();
  *v1 = v9;
  return v7;
}

double sub_2315F0990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_2315CD0A0(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
    sub_231606AC8();

    sub_2315CAB60((*(v9 + 56) + 48 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    sub_231606AE8();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_2315F0A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2315F0B5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t *sub_2315F0C44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = sub_2315F11EC(v14, v9, a1, a2, a3);
      MEMORY[0x231933730](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = (v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2315DC1C0(0, v9, v11);

  v12 = sub_2315F0E1C(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_2315F0E1C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v59 = a5;
  v57 = a4;
  v45 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910);
  v6 = MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = sub_2316061C8();
  result = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  v58 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v47 = (v20 + 63) >> 6;
  v48 = v18;
  v53 = v12 + 16;
  v54 = v12;
  v51 = v9;
  v52 = v12 + 8;
  v50 = v14;
  while (2)
  {
    v46 = v15;
    while (1)
    {
      if (!v22)
      {
        v24 = v16;
        while (1)
        {
          v16 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v16 >= v47)
          {
            goto LABEL_22;
          }

          v25 = v48[v16];
          ++v24;
          if (v25)
          {
            v60 = (v25 - 1) & v25;
            v23 = __clz(__rbit64(v25)) | (v16 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v60 = (v22 - 1) & v22;
      v23 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_12:
      v26 = v58;
      v27 = v54;
      v28 = *(v54 + 16);
      v28(v14, v58[6] + *(v54 + 72) * v23, v10);
      v29 = v26[7];
      v30 = v14;
      v49 = v23;
      v31 = *(v29 + 8 * v23);
      v32 = v51;
      v28(v51, v30, v10);
      v33 = v55;
      *(v32 + *(v56 + 48)) = v31;
      sub_2315C9580(v32, v33, &qword_27DD607F0, &qword_231609910);
      swift_retain_n();

      v34 = sub_2316061A8();
      v36 = v35;
      v37 = *(v27 + 8);
      v37(v33, v10);
      if (v34 == v57 && v36 == v59)
      {
        break;
      }

      v39 = sub_231606BD8();

      sub_2315B2F7C(v32, &qword_27DD607F0, &qword_231609910);

      v14 = v50;
      result = (v37)(v50, v10);
      v22 = v60;
      if (v39)
      {
        goto LABEL_19;
      }
    }

    sub_2315B2F7C(v32, &qword_27DD607F0, &qword_231609910);

    v14 = v50;
    result = (v37)(v50, v10);
    v22 = v60;
LABEL_19:
    v40 = v46;
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v41 = __OFADD__(v40, 1);
    v15 = v40 + 1;
    if (!v41)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  v42 = sub_2315F1294(v45, v44, v46, v58);

  return v42;
}

unint64_t *sub_2315F11EC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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

    swift_bridgeObjectRetain_n();
    v10 = sub_2315F0E1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_2315F1294(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_2316061C8();
  v7 = *(v46 - 8);
  v8 = MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60800, &unk_231609920);
  result = sub_231606B38();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_2315F32A0(&qword_280FE95C8, MEMORY[0x277D60C18], MEMORY[0x277D60C20]);
    v42 = v23;

    result = sub_231606758();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2315F1630(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2315F169C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_2315F16D8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010);
  MEMORY[0x28223BE20](v2);
  v36 = (&v34 - v3);
  v4 = sub_2316061C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F8, &qword_231609918);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910);
  result = MEMORY[0x28223BE20](v11);
  v13 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v35 = &v34 - v18;
  if (v17)
  {
    v38 = v1;
    v39 = v16;
    v40 = v2;
    v19 = v15;
LABEL_7:
    v37 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v19 << 6);
    v21 = v7;
    v22 = v7;
    v23 = v13;
    (*(v5 + 16))(v22, *(v13 + 48) + *(v5 + 72) * v20, v4);
    v24 = *(*(v23 + 56) + 8 * v20);
    v25 = *(v11 + 48);
    (*(v5 + 32))(v10, v21, v4);
    *&v10[v25] = v24;
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);

    v26 = v37;
    v1 = v38;
    v16 = v39;
    v2 = v40;
LABEL_8:
    *v1 = v23;
    v1[1] = v14;
    v1[2] = v16;
    v1[3] = v15;
    v1[4] = v26;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_2315B2F7C(v10, &qword_27DD607F8, &qword_231609918);
      v27 = v41;
      v28 = 1;
      return __swift_storeEnumTagSinglePayload(v27, v28, 1, v2);
    }

    v29 = v35;
    sub_2315C7354(v10, v35, &qword_27DD607F0, &qword_231609910);
    v30 = *(v2 + 48);
    v31 = v1[5];
    v32 = v36;
    *v36 = v31;
    result = sub_2315C7354(v29, v32 + v30, &qword_27DD607F0, &qword_231609910);
    if (!__OFADD__(v31, 1))
    {
      v1[5] = v31 + 1;
      v33 = v41;
      sub_2315C7354(v32, v41, &qword_27DD60550, &dword_231609010);
      v27 = v33;
      v28 = 0;
      return __swift_storeEnumTagSinglePayload(v27, v28, 1, v2);
    }
  }

  else
  {
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v19 >= ((v16 + 64) >> 6))
      {
        v23 = v13;
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
        v26 = 0;
        goto LABEL_8;
      }

      v17 = *(v14 + 8 * v19);
      ++v15;
      if (v17)
      {
        v38 = v1;
        v39 = v16;
        v40 = v2;
        v15 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2315F1A7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  sub_231605E98();
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_2316061C8();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = sub_231606348();
  v2[5] = v7;
  v2[6] = sub_2315F32A0(&qword_280FE95A0, MEMORY[0x277D61020], MEMORY[0x277D61018]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);

  return MEMORY[0x2822009F8](sub_2315F1D0C, 0, 0);
}

uint64_t sub_2315F1D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_64_1();
  a23 = v32;
  a24 = v33;
  a22 = v26;
  OUTLINED_FUNCTION_37_1();
  v34 = OUTLINED_FUNCTION_62_1();
  v35(v34);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v39 = swift_task_alloc();
  v39[2] = v31;
  v39[3] = v29;
  v39[4] = v25;
  v39[5] = v30;
  sub_2315EECA0(sub_2315F32E8);

  sub_2315C9580(v29, v28, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    OUTLINED_FUNCTION_27_2();
    sub_2315B2F7C(v40, v41, v42);
    OUTLINED_FUNCTION_26_1();
    (*(v24 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_1();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_59_0();
    v53(v52);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v54 = sub_2316066E8();
    __swift_project_value_buffer(v54, qword_280FE9558);
    v55 = OUTLINED_FUNCTION_44_0();
    a11(v55);
    v56 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v26[19];
    if (v58)
    {
      v60 = OUTLINED_FUNCTION_60();
      v61 = OUTLINED_FUNCTION_63();
      a12 = v61;
      *v60 = 136315138;
      OUTLINED_FUNCTION_0_7();
      v64 = sub_2315F32A0(v62, v63, MEMORY[0x277D60C30]);
      v65 = OUTLINED_FUNCTION_52_0(v64);
      v67 = v66;
      v68 = OUTLINED_FUNCTION_17_0();
      v69(v68);
      sub_2315B1574(v65, v67, &a12);
      OUTLINED_FUNCTION_30_1();

      *(v60 + 4) = v59;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v70, v71, "Sending suggestions to connection for %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x231933730](v61, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_17_0();
      v73(v72);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v26[21] = v74;
    *v74 = v75;
    v74[1] = sub_2315F2058;
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_33_1();

    return sub_2315EED18();
  }
}

uint64_t sub_2315F2058()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315F213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v14 = v12[13];
  v13 = v12[14];
  v15 = v12[12];
  sub_231606908();
  v16 = OUTLINED_FUNCTION_26();
  v17(v16);
  (*(v14 + 8))(v13, v15);
  sub_2315B2F7C(v12[16], &qword_27DD607D0, &qword_2316098B0);
  v18 = OUTLINED_FUNCTION_72();
  v19(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2315F226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a2;
  sub_231605E98();
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v10 = sub_2316061C8();
  v4[17] = v10;
  v4[18] = *(v10 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

  return MEMORY[0x2822009F8](sub_2315F24C8, 0, 0);
}

uint64_t sub_2315F24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_64_1();
  a23 = v32;
  a24 = v33;
  a22 = v26;
  OUTLINED_FUNCTION_37_1();
  v34 = OUTLINED_FUNCTION_62_1();
  v35(v34);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v39 = swift_task_alloc();
  v39[2] = v31;
  v39[3] = v29;
  v39[4] = v25;
  v39[5] = v30;
  sub_2315EECA0(sub_2315F3280);

  sub_2315C9580(v29, v28, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    OUTLINED_FUNCTION_27_2();
    sub_2315B2F7C(v40, v41, v42);
    OUTLINED_FUNCTION_26_1();
    (*(v24 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_1();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_59_0();
    v53(v52);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v54 = sub_2316066E8();
    __swift_project_value_buffer(v54, qword_280FE9558);
    v55 = OUTLINED_FUNCTION_44_0();
    a11(v55);
    v56 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v26[19];
    if (v58)
    {
      v60 = OUTLINED_FUNCTION_60();
      v61 = OUTLINED_FUNCTION_63();
      a12 = v61;
      *v60 = 136315138;
      OUTLINED_FUNCTION_0_7();
      v64 = sub_2315F32A0(v62, v63, MEMORY[0x277D60C30]);
      v65 = OUTLINED_FUNCTION_52_0(v64);
      v67 = v66;
      v68 = OUTLINED_FUNCTION_17_0();
      v69(v68);
      sub_2315B1574(v65, v67, &a12);
      OUTLINED_FUNCTION_30_1();

      *(v60 + 4) = v59;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v70, v71, "Sending suggestions to connection for %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x231933730](v61, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_17_0();
      v73(v72);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v26[21] = v74;
    *v74 = v75;
    v74[1] = sub_2315F2814;
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_33_1();

    return sub_2315EED18();
  }
}

uint64_t sub_2315F2814()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315F2920(uint64_t a1)
{
  result = sub_231605B98();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of EventDrivenSuggestionsClient.disconnect(for:)()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_58_1(v1);

  return v3(v2);
}

uint64_t dispatch thunk of EventDrivenSuggestionsClient.getSuggestionsForApp(for:)()
{
  OUTLINED_FUNCTION_21();
  v5 = (*(*v0 + 200) + **(*v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12(v1);
  *v2 = v3;
  v2[1] = sub_2315B4660;
  OUTLINED_FUNCTION_40_1();

  return v5();
}

uint64_t dispatch thunk of EventDrivenSuggestionsClient.submit(event:)()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_58_1(v1);

  return v3(v2);
}

void sub_2315F2D54(uint64_t a1)
{
  sub_2315F2E8C(319);
  if (v1 <= 0x3F)
  {
    sub_231605B98();
    if (v2 <= 0x3F)
    {
      sub_2316061C8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2315F2E8C(uint64_t a1)
{
  if (!qword_280FE85B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD607C8, &unk_2316098A0);
    v1 = sub_2316069A8();
    if (!v2)
    {
      atomic_store(v1, &qword_280FE85B8);
    }
  }
}

uint64_t sub_2315F2F20()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_24(v3);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12(v9);
  *v10 = v11;
  v10[1] = sub_2315B4740;

  return sub_2315F0278(v2, v6, v7, v8, (v0 + 5), v0 + v5);
}

uint64_t sub_2315F3018()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v1[1] = sub_2315B4660;

  return sub_2315B2268();
}

uint64_t sub_2315F30C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315F3134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreFetchedSuggestionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315F3198()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_2316061C8();
  OUTLINED_FUNCTION_24(v1);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4740;
  OUTLINED_FUNCTION_40_1();

  return sub_2315EB500(v6, v7, v2, v8);
}

uint64_t sub_2315F32A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_26_1()
{
  v4 = *(v2 + 128);

  return sub_2315B2F7C(v4, v0, v1);
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
}

BOOL OUTLINED_FUNCTION_51_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return sub_231606BC8();
}

uint64_t OUTLINED_FUNCTION_67_1(void *a1)
{
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v1;
  a1[5] = v2;

  return sub_231605E98();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_2316066E8();
}

uint64_t OUTLINED_FUNCTION_71_0()
{
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_2316066E8();
}

uint64_t OUTLINED_FUNCTION_73()
{
}

void *sub_2315F3588(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_231605DD8();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x231932CF0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231606878();
      }

      result = sub_231606898();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_2315F36F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v7[2] = a1;
  sub_2315B4648(a2, (v7 + 3));
  v7[8] = a3;
  v7[9] = a4;
  v7[10] = a5;
  sub_2315B4648(a6, (v7 + 11));
  sub_2315B4648(a7, (v7 + 16));
  return v7;
}

void sub_2315F376C()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_79_0();
  v8 = v7;
  v34 = *v0;
  v35 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v11);
  v33 = &v31 - v12;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v13 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v13, qword_280FE9578);

  v14 = sub_2316066C8();
  v15 = sub_231606968();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_60();
    v31 = v6;
    v32 = v1;
    v17 = v3;
    v18 = v16;
    v19 = OUTLINED_FUNCTION_63();
    v36 = v19;
    *v18 = 136315138;
    v20 = v35;
    *(v18 + 4) = sub_2315B1574(v35, v8, &v36);
    _os_log_impl(&dword_2315AF000, v14, v15, "executing SiriSuggestionsXPCService suggestNext on request: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_20();
    v3 = v17;
    v6 = v31;
    v1 = v32;
    OUTLINED_FUNCTION_20();
  }

  else
  {

    v20 = v35;
  }

  v21 = v4[2];
  sub_2316068E8();
  v22 = v33;
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_76_0();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v20;
  v27[5] = v8;
  v27[6] = v2;
  v27[7] = v1;
  v27[8] = v21;
  v27[9] = v4;
  v27[10] = v3;
  v27[11] = v6;
  v27[12] = v34;

  sub_2315B2F24(v2, v1);

  v28 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v28, v29, v22, v30, v27);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F39B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 88) = v15;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_231605E98();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  v10 = sub_2316066B8();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F3AEC, 0, 0);
}

uint64_t sub_2315F3AEC()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_2316064E8();
  sub_2316064C8();

  sub_231605FF8();
  v2 = sub_2316064E8();
  v3 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_83_0(v3);

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2315F3BD4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_2315F4480(v9, v7, v8, v5, v6);
}

uint64_t sub_2315F3BD4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v3 + 160) = v7;
    *v7 = v8;
    v7[1] = sub_2315F3D34;

    return StatefulSuggestionsClient.suggestNext(requestId:)();
  }
}

uint64_t sub_2315F3D34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F3E1C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[8];
  v4 = sub_231605E38();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = sub_2315F3588(sub_2315FCA78, v5, v4);
  v0[21] = v6;
  v0[22] = v1;

  v7 = v3[14];
  v8 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v7);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_2315F3F38;

  return MEMORY[0x2821B7128](v6, v7, v8);
}

uint64_t sub_2315F3F38()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F403C()
{
  OUTLINED_FUNCTION_49();
  v30 = v0;
  v3 = v0[22];
  v4 = sub_231604F78();
  OUTLINED_FUNCTION_32(v4);
  v5 = sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v6, v7, MEMORY[0x277D60710]);
  OUTLINED_FUNCTION_53();
  sub_231604F58();
  v8 = v0[14];
  if (v3)
  {

    v9 = OUTLINED_FUNCTION_53();
    v10(v9);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v11 = sub_2316066E8();
    v12 = OUTLINED_FUNCTION_17_5(v11, qword_280FE9578);
    v13 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v14 = OUTLINED_FUNCTION_21_2();
      v29 = v14;
      *v8 = 136315138;
      v0[2] = v3;
      v15 = v3;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v17 = OUTLINED_FUNCTION_89_0(v16);
      sub_2315B1574(v17, v18, &v29);
      OUTLINED_FUNCTION_72_1();
      *(v8 + 4) = v2;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v19, v5, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v20 = v0[9];
    sub_2315F53D4(v3);
    v21 = OUTLINED_FUNCTION_31_2();
    v20(v21);
  }

  else
  {
    OUTLINED_FUNCTION_75_0();
    (v0[9])();
    sub_2315B300C(v1, v2);

    v22 = OUTLINED_FUNCTION_53();
    v23(v22);
  }

  sub_231605FF8();
  v24 = sub_2316064E8();
  OUTLINED_FUNCTION_60_0(v24);

  v25 = OUTLINED_FUNCTION_36();
  v26(v25);

  OUTLINED_FUNCTION_14();

  return v27();
}

uint64_t sub_2315F42BC()
{
  OUTLINED_FUNCTION_49();
  v22 = v1;
  v4 = v1[19];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v5 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v5, qword_280FE9578);
  v6 = v4;
  v7 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_21_2();
    v21 = v8;
    *v2 = 136315138;
    v1[2] = v4;
    v9 = v4;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v11 = OUTLINED_FUNCTION_89_0(v10);
    sub_2315B1574(v11, v12, &v21);
    OUTLINED_FUNCTION_72_1();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v13, v0, "could not suggest next turn info because of: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v14 = v1[9];
  sub_2315F53D4(v4);
  v15 = OUTLINED_FUNCTION_31_2();
  v14(v15);

  sub_231605FF8();
  v16 = sub_2316064E8();
  OUTLINED_FUNCTION_60_0(v16);

  v17 = OUTLINED_FUNCTION_36();
  v18(v17);

  OUTLINED_FUNCTION_14();

  return v19();
}

uint64_t sub_2315F4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60830, &qword_231609AA8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F45BC, 0, 0);
}

uint64_t sub_2315F45BC()
{
  v1 = sub_2315F8058(v0[4], v0[5]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v57 = v0[12];
    v58 = v0[14];
    v56 = v0[11];
    v54 = v0[8];
    v55 = v0[9];
    v69 = MEMORY[0x277D84F90];
    sub_231604150(0, v2, 0);
    v3 = v69;
    v4 = sub_2315FC1E8(v1);
    v9 = 0;
    v10 = v1 + 64;
    v49 = v5;
    v50 = v2;
    v48 = v1 + 72;
    v52 = v1;
    v53 = v1 + 64;
    v51 = v0;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      if ((*(v10 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v61 = 1 << v4;
      v62 = v4 >> 6;
      v60 = v5;
      v59 = v6;
      v11 = *(v54 + 48);
      v12 = v0[13];
      v13 = v0[12];
      v68 = v0[11];
      v65 = v0[14];
      v66 = v0[10];
      v14 = v3;
      v15 = *(v1 + 56);
      v16 = (*(v1 + 48) + 16 * v4);
      v17 = v16[1];
      v63 = *v16;
      v18 = v4;
      v19 = sub_2316061F8();
      OUTLINED_FUNCTION_1_0();
      v21 = v20;
      v67 = v18;
      (*(v20 + 16))(v12 + v11, v15 + *(v22 + 72) * v18, v19);
      *v13 = v63;
      *(v57 + 8) = v17;
      v23 = *(v21 + 32);
      v23(&v13[*(v54 + 48)], v12 + v11, v19);
      v64 = *(v54 + 48);
      sub_2315FC964(v13, v68, &qword_27DD60540, &unk_231609000);
      v24 = *(v56 + 8);
      v25 = *(v54 + 48);
      *v65 = *v68;
      *(v58 + 8) = v24;
      sub_2315FC228(v13, v66);

      v23(&v65[v64], v66 + *(v54 + 48), v19);
      (*(v21 + 8))(&v68[v25], v19);
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      v3 = v14;
      if (v27 >= v26 >> 1)
      {
        sub_231604150((v26 > 1), v27 + 1, 1);
        v3 = v14;
      }

      v0 = v51;
      v28 = v51[14];
      *(v3 + 16) = v27 + 1;
      sub_2315FC228(v28, v3 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v27);
      v1 = v52;
      v10 = v53;
      v29 = 1 << *(v52 + 32);
      v4 = v67;
      if (v67 >= v29)
      {
        goto LABEL_28;
      }

      v30 = *(v53 + 8 * v62);
      if ((v30 & v61) == 0)
      {
        goto LABEL_29;
      }

      v5 = v60;
      if (*(v52 + 36) != v60)
      {
        goto LABEL_30;
      }

      v31 = v30 & (-2 << (v67 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v67 & 0x7FFFFFFFFFFFFFC0;
        v32 = v50;
      }

      else
      {
        v33 = v62 << 6;
        v34 = (v48 + 8 * v62);
        v35 = v62 + 1;
        v32 = v50;
        while (v35 < (v29 + 63) >> 6)
        {
          v37 = *v34++;
          v36 = v37;
          v33 += 64;
          ++v35;
          if (v37)
          {
            sub_2315FC348(v67, v60, v59 & 1);
            v29 = __clz(__rbit64(v36)) + v33;
            goto LABEL_19;
          }
        }

        sub_2315FC348(v67, v60, v59 & 1);
      }

LABEL_19:
      v6 = 0;
      ++v9;
      v4 = v29;
      v5 = v49;
      if (v9 == v32)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    v0[16] = v3;
    v38 = v0[6];
    v39 = v0[2];
    v40 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60838, &qword_231609AB0);
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = swift_allocObject();
    v0[17] = v45;
    v45[2] = v38;
    v45[3] = v39;
    v45[4] = v40;

    v46 = swift_task_alloc();
    v0[18] = v46;
    *v46 = v0;
    v46[1] = sub_2315F4B44;
    v5 = v0[15];
    v8 = v0[8];
    v6 = &unk_231609AC0;
    v4 = v3;
    v7 = v45;
  }

  return MEMORY[0x2821C6B08](v4, v5, v6, v7, v8);
}

void sub_2315F4B44()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (!v0)
  {
    v9 = *(v3 + 120);

    sub_2315B2F7C(v9, &qword_27DD60830, &qword_231609AA8);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_58();
}

uint64_t sub_2315F4CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16[0] = a3;
  v16[1] = a2;
  v18 = a4;
  v17 = sub_231605098();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231606158();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605DA8();
  v12 = (*(v9 + 88))(v11, v8);
  v13 = *MEMORY[0x277D60B78];
  result = (*(v9 + 8))(v11, v8);
  v15 = 0;
  if (v12 == v13)
  {
    sub_231605E78();
    v15 = sub_2315F4EBC(a1, v7);
    result = (*(v5 + 8))(v7, v17);
  }

  *v18 = v15;
  return result;
}

uint64_t sub_2315F4EBC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60868, &qword_231609B88);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60870, &qword_231609B90);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60878, &qword_231609B98);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v37 - v9;
  v38 = sub_2316065D8();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231606478();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231605EF8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_231605D68();
  v23 = sub_231605EC8();
  v42 = v24;
  v43 = v23;
  v37 = *(v17 + 8);
  v37(v22, v16);
  sub_231605D88();
  v41 = v25;
  sub_231605D78();
  v26 = sub_231606468();
  v39 = v27;
  v40 = v26;
  (*(v13 + 8))(v15, v12);
  (*(v10 + 104))(v48, *MEMORY[0x277D55860], v38);
  v28 = sub_231606428();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v28);
  v46 = sub_231605068();
  v38 = v29;
  v30 = sub_231605048();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v30);
  v31 = sub_2316066F8();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v31);
  sub_231605D68();
  sub_231605EE8();
  v37(v20, v16);
  v32 = v47;
  sub_231605D98();
  v33 = sub_231605F78();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v34 = sub_231606648();
  v35 = sub_231606638();
  v51 = v34;
  v52 = MEMORY[0x277D55898];
  v50 = v35;
  sub_2316065F8();
  swift_allocObject();
  return sub_2316065E8();
}

id sub_2315F53D4(uint64_t a1)
{
  sub_231606A28();

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60828, &qword_231609A70);
  v1 = sub_2316067A8();
  MEMORY[0x231932CB0](v1);

  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_2315FC030(0xD000000000000023, 0x800000023160B4C0, 1, 0);
}

void sub_2315F54E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231605018();
  if (a3)
  {
    v7 = sub_231604F88();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_2315F556C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_78();
  (*(v16 + 64))(0);
  OUTLINED_FUNCTION_77_0();
  v32 = v20;
  v33 = v21;
  sub_231605FF8();
  OUTLINED_FUNCTION_75_0();
  v22 = sub_2316064E8();
  OUTLINED_FUNCTION_56_1(v22);

  (*(v18 + 8))(v17, v32);
  (*(v15 + 8))(v14, v33);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_2315F573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v27 = sub_2316066E8();
  v28 = OUTLINED_FUNCTION_17_5(v27, qword_280FE9578);
  v29 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (OUTLINED_FUNCTION_71_1())
  {
    v30 = v22[19];
    v31 = OUTLINED_FUNCTION_60();
    v23 = OUTLINED_FUNCTION_63();
    a11 = v23;
    *v31 = 136315138;
    v22[2] = v30;
    v32 = v30;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v34 = OUTLINED_FUNCTION_89_0(v33);
    v36 = sub_2315B1574(v34, v35, &a11);

    *(v31 + 4) = v36;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v42 = v22[19];
  v43 = v22[9];
  v44 = v22[8];
  sub_2315F53D4(v42);
  OUTLINED_FUNCTION_67_2();
  (v44)();

  OUTLINED_FUNCTION_77_0();
  v57 = v45;
  v58 = v46;
  sub_231605FF8();
  OUTLINED_FUNCTION_75_0();
  v47 = sub_2316064E8();
  OUTLINED_FUNCTION_56_1(v47);

  (*(v44 + 8))(v23, v57);
  (*(v43 + 8))(v42, v58);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, v57, v58, a11, a12, a13, a14);
}

uint64_t sub_2315F5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2315FC964(a3, v21 - v9, &qword_27DD60398, &qword_231609BD0);
  v11 = sub_2316068E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2315B2F7C(v10, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2316068A8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2316067C8() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2315B2F7C(a3, &qword_27DD60398, &qword_231609BD0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2315B2F7C(a3, &qword_27DD60398, &qword_231609BD0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_2315F5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *v23;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v37);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_78_0();
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v35;
  v45[5] = v33;
  v45[6] = v23;
  v45[7] = v31;
  v45[8] = v29;
  v45[9] = v27;
  v45[10] = v25;
  v45[11] = v36;

  v46 = OUTLINED_FUNCTION_5_8();
  sub_2315F5918(v46, v47, v40, v48, v45);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v15;
  *(v8 + 56) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_231606608();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_231606628();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v11 = sub_2316066E8();
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F5E84, 0, 0);
}

uint64_t sub_2315F5E84()
{
  OUTLINED_FUNCTION_49();
  sub_2316064B8();

  v1 = sub_2316066C8();
  v2 = sub_231606968();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_60();
    v15 = OUTLINED_FUNCTION_63();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_59_1();
    *(v7 + 4) = sub_2315B1574(v8, v9, v10);
    _os_log_impl(&dword_2315AF000, v1, v2, "Got autocomplete query: %s on XPC service", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v0[4] + 88), *(v0[4] + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[20] = v11;
  *v11 = v12;
  v11[1] = sub_2315F6024;
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2821B70F8]();
}

uint64_t sub_2315F6024()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F6120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  v11 = *(v10 + 168);
  sub_231605A98();
  if (v11)
  {
    (*(*(v10 + 112) + 8))(*(v10 + 128), *(v10 + 104));
    OUTLINED_FUNCTION_73_0();
    (*(v12 + 104))(v11, *MEMORY[0x277D55888]);

    OUTLINED_FUNCTION_59_1();
    sub_231606618();
    OUTLINED_FUNCTION_87();
    v13 = OUTLINED_FUNCTION_55_1();
    v14(v13);
  }

  else
  {
    v15 = *(v10 + 128);
    v16 = *(v10 + 104);
    v17 = *(v10 + 112);
    (*(v10 + 56))();
    v18 = OUTLINED_FUNCTION_53();
    sub_2315B300C(v18, v19);
    (*(v17 + 8))(v15, v16);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_2315F62F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  v13 = *(v11 + 168);
  OUTLINED_FUNCTION_73_0();
  (*(v14 + 104))(v10, *MEMORY[0x277D55888]);

  OUTLINED_FUNCTION_59_1();
  sub_231606618();
  OUTLINED_FUNCTION_87();
  if (v10)
  {
    v15 = OUTLINED_FUNCTION_55_1();
    v16(v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_1();
    v18(v17);
    v19 = sub_2315F53D4(v13);
    v20 = OUTLINED_FUNCTION_53();
    v12(v20);

    v21 = OUTLINED_FUNCTION_53();
    sub_2315B300C(v21, v22);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

void sub_2315F6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(void), uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v72 = v32;
  v73 = v33;
  v35 = v34;
  v37 = v36;
  v74 = a23;
  v71 = *v23;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v38);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v69 - v40;
  sub_2315B4568((v23 + 3), v76);
  if (sub_2315E96B8(v37, v35, v23[8], v23[9]))
  {
    v70 = a22;
    sub_2316068E8();
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    sub_2315B4568(v76, v75);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v31;
    v46[5] = v29;
    v46[6] = v27;
    v46[7] = v25;
    v46[8] = v37;
    v46[9] = v35;
    v47 = v73;
    v46[10] = v72;
    v46[11] = v47;
    sub_2315B4648(v75, (v46 + 12));
    v46[17] = a21;
    v46[18] = v23;
    v46[19] = v71;
    sub_2315B2F24(v31, v29);
    sub_2315FC7EC(v27, v25);

    swift_unknownObjectRetain();

    v48 = OUTLINED_FUNCTION_5_8();
    sub_2315FD77C(v48, v49, v41, v50, v46);

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v51 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v51, qword_280FE9578);
    v52 = sub_2316066C8();
    v53 = sub_231606968();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v70;
    if (v54)
    {
      v56 = OUTLINED_FUNCTION_33();
      *v56 = 0;
      _os_log_impl(&dword_2315AF000, v52, v53, "Finished in app request setup. Events will flow when ready through the bridge", v56, 2u);
      OUTLINED_FUNCTION_17();
    }

    (v55)(0);
  }

  else
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v57 = sub_2316066E8();
    OUTLINED_FUNCTION_17_5(v57, qword_280FE9578);

    v58 = sub_2316066C8();
    v59 = sub_231606978();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_91_0();
      *&v75[0] = OUTLINED_FUNCTION_90_0();
      *v60 = 136315394;
      v61 = OUTLINED_FUNCTION_72();
      *(v60 + 4) = sub_2315B1574(v61, v62, v63);
      *(v60 + 12) = 2080;
      sub_231605A88();
      v64 = sub_231605A68();
      v66 = sub_2315B1574(v64, v65, v75);

      *(v60 + 14) = v66;
      _os_log_impl(&dword_2315AF000, v58, v59, "Unauthorised access to query %s suggestions. Check entitlement of %s is set correctly", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_20();
    }

    sub_2315FC0E0();
    v67 = swift_allocError();
    *v68 = 0;
    v68[1] = 0;
    a22();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v19;
  *(v8 + 160) = v17;
  *(v8 + 176) = v18;
  *(v8 + 144) = v16;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_231605E98();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60850, &qword_231609B30);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60858, &qword_231609B38);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  sub_2316061C8();
  *(v8 + 280) = swift_task_alloc();
  v12 = sub_2316060C8();
  *(v8 + 288) = v12;
  *(v8 + 296) = *(v12 - 8);
  *(v8 + 304) = swift_task_alloc();
  v13 = sub_2316061F8();
  *(v8 + 312) = v13;
  *(v8 + 320) = *(v13 - 8);
  *(v8 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F6BC8, 0, 0);
}

uint64_t sub_2315F6BC8()
{
  v83 = v0;
  v2 = 0;
  v16 = sub_2315F8058(*(v0 + 104), *(v0 + 112));
  v17 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
  v18 = sub_231606B18();
  v19 = 0;
  *(v0 + 336) = v18;
  v20 = v16 + 64;
  v21 = 1 << *(v16 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v16 + 64);
  v24 = (v21 + 63) >> 6;
  v77 = v17;
  v76 = v18 + 64;
  v78 = v18;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v79 = (v23 - 1) & v23;
LABEL_16:
      v17 = v25 | (v19 << 6);
      v28 = *(v0 + 328);
      v29 = *(v0 + 312);
      v30 = *(v16 + 56);
      v1 = v16;
      v31 = (*(v16 + 48) + 16 * v17);
      v32 = v31[1];
      v80 = *v31;
      v2 = v77;
      (*(v77 + 16))(v28, v30 + *(v77 + 72) * v17, v29);

      sub_2316061E8();
      (*(v77 + 8))(v28, v29);
      *(v76 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v33 = (v78[6] + 16 * v17);
      *v33 = v80;
      v33[1] = v32;
      sub_2315CAB60((v0 + 16), (v78[7] + 48 * v17));
      v34 = v78[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v78[2] = v36;
      v16 = v1;
      v23 = v79;
      if (!v79)
      {
        goto LABEL_11;
      }
    }

LABEL_34:
    __break(1u);
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    v3 = sub_2316066E8();
    v4 = OUTLINED_FUNCTION_17_5(v3, qword_280FE9578);
    v5 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v6 = OUTLINED_FUNCTION_21_2();
      v82[0] = v6;
      *v17 = 136315138;
      *(v0 + 64) = v2;
      v7 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v8 = sub_2316067A8();
      sub_2315B1574(v8, v9, v82);
      OUTLINED_FUNCTION_72_1();
      *(v17 + 4) = v1;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v10, v24, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v11 = *(v0 + 176);
    v12 = sub_2315F53D4(v2);
    v13 = sub_231604F88();

    [v11 connectionErrorWithError_];
    OUTLINED_FUNCTION_36_1();

    OUTLINED_FUNCTION_14();

    return v14();
  }

  else
  {
LABEL_11:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v19 >= v24)
      {
        break;
      }

      v27 = *(v20 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v79 = (v27 - 1) & v27;
        goto LABEL_16;
      }
    }

    v37 = *(v0 + 128);

    if (v37 >> 60 != 15)
    {
      v38 = sub_231604F38();
      OUTLINED_FUNCTION_32(v38);
      v39 = OUTLINED_FUNCTION_59_1();
      sub_2315B2F24(v39, v40);
      sub_231604F28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60500, &qword_231608FB8);
      sub_2315FC800();
      sub_231604F08();
      v41 = *(v0 + 88);
      v42 = qword_280FE9570;

      if (v42 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_280FE9570);
      }

      v43 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v43, qword_280FE9578);

      v44 = sub_2316066C8();
      v45 = sub_231606968();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 120);
      v48 = *(v0 + 128);
      if (v46)
      {
        v49 = OUTLINED_FUNCTION_60();
        v50 = OUTLINED_FUNCTION_63();
        v82[0] = v50;
        *v49 = 136315138;
        *(v0 + 96) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60860, &qword_231609B50);
        v81 = v47;
        sub_231606998();

        v51 = OUTLINED_FUNCTION_17_0();
        v54 = sub_2315B1574(v51, v52, v53);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_2315AF000, v44, v45, "Decoded intentToSuggest: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_20();

        v55 = v81;
      }

      else
      {

        v55 = v47;
      }

      sub_2315C95D0(v55, v48);
    }

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v56 = sub_2316066E8();
    *(v0 + 344) = OUTLINED_FUNCTION_47(v56, qword_280FE9578);

    v57 = sub_2316066C8();
    v58 = sub_231606958();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v0 + 136);
      v59 = *(v0 + 144);
      v61 = OUTLINED_FUNCTION_63();
      v82[0] = swift_slowAlloc();
      *v61 = 136315650;
      *(v61 + 4) = sub_2315B1574(v60, v59, v82);
      *(v61 + 12) = 2080;

      v62 = OUTLINED_FUNCTION_68_0();
      v65 = sub_2315B1574(v62, v63, v64);

      *(v61 + 14) = v65;
      *(v61 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v66 = sub_231606718();
      v68 = sub_2315B1574(v66, v67, v82);

      *(v61 + 24) = v68;
      _os_log_impl(&dword_2315AF000, v57, v58, "XPC Stream for appBundleId: %s, placementId: %s, entities: %s opened.", v61, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_22_4();
    }

    v69 = *(v0 + 168);

    sub_231606198();

    sub_231606068();
    v70 = v69[3];
    v71 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v70);
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 352) = v72;
    *v72 = v73;
    v72[1] = sub_2315F7414;
    v74 = *(v0 + 304);
    v75 = *(v0 + 272);

    return MEMORY[0x2821C5D70](v75, v74, v70, v71);
  }
}

uint64_t sub_2315F7414()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F74FC()
{
  OUTLINED_FUNCTION_8();
  sub_231606928();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 360) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_4(v1);

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_2315F7578()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F767C()
{
  v105 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v3 = sub_2316066C8();
    sub_231606958();

    if (OUTLINED_FUNCTION_71_1())
    {
      v4 = *(v0 + 152);
      v5 = *(v0 + 160);
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      if (v5)
      {
        v8 = *(v0 + 160);
      }

      else
      {
        v8 = 0xE300000000000000;
      }

      if (!v5)
      {
        v4 = 4271950;
      }

      v102 = v4;
      v9 = OUTLINED_FUNCTION_63();
      v104[0] = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_2315B1574(v7, v6, v104);
      *(v9 + 12) = 2080;

      v10 = sub_2315B1574(v102, v8, v104);

      *(v9 + 14) = v10;
      *(v9 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      sub_231606718();
      OUTLINED_FUNCTION_75_0();

      v11 = sub_2315B1574(v10, 0x820uLL, v104);

      *(v9 + 24) = v11;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    v44 = *(v0 + 264);
    v43 = *(v0 + 272);
    v45 = *(v0 + 256);
    [*(v0 + 176) finalise];
    (*(v44 + 8))(v43, v45);
    v46 = OUTLINED_FUNCTION_36();
    v47(v46);
    goto LABEL_17;
  }

  v17 = *(v0 + 368);
  (*(*(v0 + 208) + 32))(*(v0 + 216), v1, v2);
  v18 = sub_231604F78();
  OUTLINED_FUNCTION_32(v18);
  sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v19, v20, MEMORY[0x277D60710]);
  OUTLINED_FUNCTION_15_4();
  v21 = sub_231604F58();
  if (v17)
  {
    v23 = *(v0 + 296);
    v101 = *(v0 + 304);
    v103 = v17;
    v24 = *(v0 + 264);
    v98 = *(v0 + 272);
    v100 = *(v0 + 288);
    v97 = *(v0 + 256);
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 200);

    v29 = *(v26 + 8);
    v28 = v26 + 8;
    v29(v25, v27);
    v30 = OUTLINED_FUNCTION_68_0();
    v31(v30);
    (*(v24 + 8))(v98, v97);
    (*(v23 + 8))(v101, v100);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v32 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v32, qword_280FE9578);
    v33 = v103;
    v34 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v35 = OUTLINED_FUNCTION_21_2();
      v104[0] = v35;
      *v27 = 136315138;
      *(v0 + 64) = v103;
      v36 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v37 = sub_2316067A8();
      sub_2315B1574(v37, v38, v104);
      OUTLINED_FUNCTION_72_1();
      *(v27 + 4) = v28;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v39, v25, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v40 = *(v0 + 176);
    v41 = sub_2315F53D4(v103);
    v42 = sub_231604F88();

    [v40 connectionErrorWithError_];
LABEL_17:
    OUTLINED_FUNCTION_36_1();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_64_2();

    __asm { BRAA            X1, X16 }
  }

  v50 = v21;
  v51 = v22;
  sub_2315B2F24(v21, v22);

  v52 = OUTLINED_FUNCTION_15_4();
  sub_2315B2F24(v52, v53);
  v54 = sub_2316066C8();
  sub_231606958();

  if (OUTLINED_FUNCTION_71_1())
  {
    v99 = v54;
    v55 = *(v0 + 136);
    v56 = *(v0 + 144);
    v57 = swift_slowAlloc();
    *(v0 + 80) = swift_slowAlloc();
    *v57 = 136315906;
    *(v57 + 4) = sub_2315B1574(v55, v56, (v0 + 80));
    *(v57 + 12) = 2080;

    v58 = OUTLINED_FUNCTION_72();
    v61 = sub_2315B1574(v58, v59, v60);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v62 = sub_231606718();
    v64 = sub_2315B1574(v62, v63, (v0 + 80));

    *(v57 + 24) = v64;
    *(v57 + 32) = 2048;
    switch(v51 >> 62)
    {
      case 1uLL:
        v78 = OUTLINED_FUNCTION_15_4();
        v80 = sub_2315B300C(v78, v79);
        LODWORD(v67) = HIDWORD(v50) - v50;
        if (!__OFSUB__(HIDWORD(v50), v50))
        {
          v67 = v67;
          goto LABEL_30;
        }

        __break(1u);
        return MEMORY[0x2822005A8](v80);
      case 2uLL:
        v72 = *(v50 + 16);
        v73 = *(v50 + 24);
        v74 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v74, v75);
        v67 = v73 - v72;
        if (!__OFSUB__(v73, v72))
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_27;
      case 3uLL:
LABEL_27:
        v76 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v76, v77);
        v67 = 0;
        goto LABEL_30;
      default:
        v65 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v65, v66);
        v67 = BYTE6(v51);
LABEL_30:
        v54 = v99;
        *(v57 + 34) = v67;
        v81 = OUTLINED_FUNCTION_15_4();
        sub_2315B300C(v81, v82);
        OUTLINED_FUNCTION_47_1();
        _os_log_impl(v83, v84, v85, v86, v57, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_22_4();
        break;
    }
  }

  else
  {
    v68 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v68, v69);
    v70 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v70, v71);
  }

  v87 = *(v0 + 176);
  OUTLINED_FUNCTION_15_4();
  v88 = sub_231605018();
  [v87 sendSuggestionsWithSuggestions_];

  v89 = OUTLINED_FUNCTION_15_4();
  sub_2315B300C(v89, v90);
  v91 = OUTLINED_FUNCTION_72();
  v92(v91);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 360) = v93;
  *v93 = v94;
  OUTLINED_FUNCTION_14_4(v93);
  OUTLINED_FUNCTION_64_2();

  return MEMORY[0x2822005A8](v80);
}

uint64_t sub_2315F7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  v23 = v18[33];
  v22 = v18[34];
  v24 = v18[32];
  (*(v18[30] + 8))(v18[31], v18[29]);
  (*(v23 + 8))(v22, v24);
  v25 = OUTLINED_FUNCTION_36();
  v26(v25);
  v27 = v18[9];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v28 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v28, qword_280FE9578);
  v29 = v27;
  v30 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    OUTLINED_FUNCTION_60();
    v31 = OUTLINED_FUNCTION_21_2();
    a9 = v31;
    *v24 = 136315138;
    v18[8] = v27;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v33 = sub_2316067A8();
    sub_2315B1574(v33, v34, &a9);
    OUTLINED_FUNCTION_72_1();
    *(v24 + 4) = v19;
    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v35, v22, "could not suggest next turn info because of: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v36 = v18[22];
  v37 = sub_2315F53D4(v27);
  v38 = sub_231604F88();

  [v36 connectionErrorWithError_];
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_2315F8058(uint64_t a1, uint64_t a2)
{
  sub_231604F38();
  swift_allocObject();
  sub_231604F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60840, &qword_231609AD0);
  sub_2315FC354();
  sub_231604F08();

  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_2315F82B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_231604F88();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2315F8314()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v14);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_62_2();
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v0;
  v20[5] = v13;
  v20[6] = v11;
  v20[7] = v9;
  v20[8] = v7;
  v20[9] = v5;
  v20[10] = v3;

  v21 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v21, v22, v1, v23, v20);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v12;
  v8[8] = v13;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_2316061C8();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F84F4, 0, 0);
}

uint64_t sub_2315F84F4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[2];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);

  OUTLINED_FUNCTION_15_4();
  sub_231606198();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2315F85F4;
  v5 = v0[11];

  return MEMORY[0x2821C5D78](v5, v2, v3);
}

uint64_t sub_2315F85F4()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F8738()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 56))(0);

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315F8898(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v10);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_62_2();
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_2315B4568(v4 + 128, v21);
  OUTLINED_FUNCTION_74_0();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  sub_2315B4648(v21, (v16 + 6));
  v16[11] = a3;
  v16[12] = a4;
  v16[13] = v4;
  sub_2315B2F24(a1, a2);

  v17 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v17, v18, v5, v19, v16);
}

uint64_t sub_2315F89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = sub_231605E98();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F8A84, 0, 0);
}

uint64_t sub_2315F8A84()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_231604F38();
  OUTLINED_FUNCTION_32(v1);
  v2 = sub_231604F28();
  v0[2] = 200;
  v0[14] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60848, &qword_231609AF8);
  sub_2315FC56C();
  OUTLINED_FUNCTION_15_4();
  sub_231604F08();
  v0[15] = 0;
  v3 = v0[3];
  v0[16] = v3;
  v4 = qword_280FE9570;
  swift_bridgeObjectRetain_n();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v5 = sub_2316066E8();
  v0[17] = OUTLINED_FUNCTION_47(v5, qword_280FE9578);

  v6 = sub_2316066C8();
  v7 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v7))
  {
    v8 = OUTLINED_FUNCTION_60();
    *v8 = 134217984;
    v9 = *(v3 + 16);

    *(v8 + 4) = v9;

    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v10, v7, "Decoded %ld intent queries: XPC Stream for intent opened.");
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[7];
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[18] = v14;
  *v14 = v15;
  v14[1] = sub_2315F8DF8;
  v16 = v0[13];

  return MEMORY[0x2821C5D90](v16, v3, v12, v13);
}

uint64_t sub_2315F8DF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F8EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[15];
  v26 = sub_231604F78();
  OUTLINED_FUNCTION_32(v26);
  sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v27, v28, MEMORY[0x277D60710]);
  OUTLINED_FUNCTION_53();
  v29 = sub_231604F58();
  if (v25)
  {
    (*(v22[12] + 8))(v22[13], v22[11]);

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v31 = sub_2316066E8();
    v32 = OUTLINED_FUNCTION_17_5(v31, qword_280FE9578);
    v33 = sub_2316066C8();
    v34 = sub_231606978();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_60();
      v36 = OUTLINED_FUNCTION_63();
      a10 = v36;
      *v35 = 136315138;
      v22[4] = v25;
      v37 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v38 = sub_2316067A8();
      v40 = sub_2315B1574(v38, v39, &a10);

      *(v35 + 4) = v40;
      OUTLINED_FUNCTION_84_0(&dword_2315AF000, v41, v42, "could not get suggestions because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_29();
    }

    v43 = v22[15];
    v44 = v22[8];
    v45 = sub_2315F53D4(v25);
    v44(0, 0xC000000000000000, v45);

    if (!v43)
    {
    }
  }

  else
  {
    v46 = v29;
    v47 = v30;

    v48 = OUTLINED_FUNCTION_15_4();
    sub_2315B2F24(v48, v49);
    v50 = sub_2316066C8();
    v51 = sub_231606958();
    if (OUTLINED_FUNCTION_93_0(v51))
    {
      result = OUTLINED_FUNCTION_60();
      *result = 134217984;
      v53 = result;
      v54 = 0;
      switch(v47 >> 62)
      {
        case 1uLL:
          LODWORD(v54) = HIDWORD(v46) - v46;
          if (!__OFSUB__(HIDWORD(v46), v46))
          {
            v54 = v54;
            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_21;
        case 2uLL:
          v58 = *(v46 + 16);
          v57 = *(v46 + 24);
          v59 = __OFSUB__(v57, v58);
          v54 = v57 - v58;
          if (!v59)
          {
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return result;
        case 3uLL:
          goto LABEL_15;
        default:
          v54 = BYTE6(v47);
LABEL_15:
          *(result + 4) = v54;
          v60 = OUTLINED_FUNCTION_15_4();
          sub_2315B300C(v60, v61);
          OUTLINED_FUNCTION_47_1();
          _os_log_impl(v62, v63, v64, v65, v53, 0xCu);
          OUTLINED_FUNCTION_22_4();
          goto LABEL_16;
      }
    }

    v55 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v55, v56);
LABEL_16:
    v66 = v22[13];
    v67 = v22[11];
    v68 = v22[12];
    v69 = v22[8];

    v70 = OUTLINED_FUNCTION_15_4();
    v69(v70);

    v71 = OUTLINED_FUNCTION_15_4();
    sub_2315B300C(v71, v72);
    (*(v68 + 8))(v66, v67);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315F9324(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v5);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(v2 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v9;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = v2;

  v15 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v15, v16, v8, v17, v14);
}

uint64_t sub_2315F941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_2315F94B8;

  return StatefulSuggestionsClient.refreshService()();
}

uint64_t sub_2315F94B8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F95B4()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315F9614()
{
  OUTLINED_FUNCTION_4_0();
  v22 = v0;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v2 = sub_2316066E8();
  v3 = OUTLINED_FUNCTION_17_5(v2, qword_280FE9578);
  v4 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (OUTLINED_FUNCTION_71_1())
  {
    v5 = v0[7];
    v6 = OUTLINED_FUNCTION_60();
    v1 = OUTLINED_FUNCTION_63();
    v21 = v1;
    *v6 = 136315138;
    v0[2] = v5;
    v7 = v5;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v9 = OUTLINED_FUNCTION_89_0(v8);
    v11 = sub_2315B1574(v9, v10, &v21);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v17 = v0[7];
  v18 = v0[3];
  sub_2315F53D4(v17);
  OUTLINED_FUNCTION_67_2();
  v18();

  OUTLINED_FUNCTION_14();

  return v19();
}

uint64_t sub_2315F9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F98EC, 0, 0);
}

uint64_t sub_2315F98EC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v0[8] = v0[11];
  v4 = *v3;
  v5 = v3[1];
  sub_2315FC964(v3, v1, &qword_27DD60540, &unk_231609000);

  v6 = *(v2 + 48);
  sub_2316061E8();
  v0[19] = sub_2316061F8();
  OUTLINED_FUNCTION_5_1();
  v8 = *(v7 + 8);
  v0[20] = v8;
  v0[21] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1 + v6);
  v9 = swift_task_alloc();
  v0[22] = v9;
  v10 = type metadata accessor for StatefulSuggestionsClient();
  OUTLINED_FUNCTION_24_3();
  v13 = sub_2315B3174(v11, v12, &protocol conformance descriptor for StatefulSuggestionsClient);
  *v9 = v0;
  v9[1] = sub_2315F9A60;
  v14 = v0[12];
  v15 = v0[13];

  return MEMORY[0x2821C5FC8](v14, v15, v4, v5, v0 + 2, v10, v13);
}

uint64_t sub_2315F9A60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 184) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F9B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t), uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v25 = v22[17];
  v26 = v22[10];
  v27 = sub_2316066E8();
  __swift_project_value_buffer(v27, qword_280FE9578);
  sub_2315FC964(v26, v25, &qword_27DD60540, &unk_231609000);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v29))
  {
    a9 = v22[20];
    a10 = v22[21];
    v30 = v22[19];
    v32 = v22[16];
    v31 = v22[17];
    v33 = v22[14];
    v34 = OUTLINED_FUNCTION_60();
    v35 = OUTLINED_FUNCTION_63();
    a11 = v35;
    *v34 = 136315138;
    sub_2315FC228(v31, v32);
    v36 = *v32;
    v37 = v32[1];
    a9(v32 + *(v33 + 48), v30);
    v38 = sub_2315B1574(v36, v37, &a11);

    *(v34 + 4) = v38;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v44 = v22[17];

    sub_2315B2F7C(v44, &qword_27DD60540, &unk_231609000);
  }

  OUTLINED_FUNCTION_31();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

void sub_2315F9D38()
{
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = sub_2316066E8();
  __swift_project_value_buffer(v4, qword_280FE9578);
  sub_2315FC964(v3, v2, &qword_27DD60540, &unk_231609000);
  v5 = v1;
  v6 = sub_2316066C8();
  sub_231606978();

  v7 = OUTLINED_FUNCTION_7();
  v8 = v0[23];
  if (v7)
  {
    v28 = v0[20];
    v27 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = OUTLINED_FUNCTION_91_0();
    v29 = OUTLINED_FUNCTION_90_0();
    *v12 = 136315394;
    sub_2315FC228(v10, v9);
    v28(v9 + *(v11 + 48), v27);
    v13 = OUTLINED_FUNCTION_68_0();
    v16 = sub_2315B1574(v13, v14, v15);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[9] = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v18 = sub_2316067A8();
    sub_2315B1574(v18, v19, &v29);
    OUTLINED_FUNCTION_72_1();
    *(v12 + 14) = v9;
    OUTLINED_FUNCTION_47_1();
    _os_log_impl(v20, v21, v22, v23, v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    v24 = v0[15];

    sub_2315B2F7C(v24, &qword_27DD60540, &unk_231609000);
  }

  OUTLINED_FUNCTION_33_1();

  __asm { BRAA            X2, X16 }
}

void sub_2315F9F98()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_79_0();
  v8 = v7;
  v29 = v9;
  v10 = *v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v15 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v15, qword_280FE9578);
  v16 = sub_2316066C8();
  v17 = sub_231606958();
  if (OUTLINED_FUNCTION_93_0(v17))
  {
    v18 = OUTLINED_FUNCTION_33();
    v28 = v8;
    *v18 = 0;
    _os_log_impl(&dword_2315AF000, v16, v17, "Submitting all local state store properties", v18, 2u);
    v8 = v28;
    OUTLINED_FUNCTION_20();
  }

  v19 = v4[2];
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_76_0();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v29;
  v24[5] = v8;
  v24[6] = v2;
  v24[7] = v1;
  v24[8] = v19;
  v24[9] = v3;
  v24[10] = v6;
  v24[11] = v4;
  v24[12] = v10;

  sub_2315B2F24(v2, v1);

  v25 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v25, v26, v14, v27, v24);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FA19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = v18;
  *(v8 + 16) = v17;
  v14 = swift_task_alloc();
  *(v8 + 40) = v14;
  *v14 = v8;
  v14[1] = sub_2315FA274;

  return sub_2315F4480(a4, a5, a6, a7, a8);
}

uint64_t sub_2315FA274()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FA370()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 16))(0);
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315FA3D0()
{
  OUTLINED_FUNCTION_21();
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v3 = sub_2316066E8();
  v4 = OUTLINED_FUNCTION_17_5(v3, qword_280FE9578);
  v5 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (os_log_type_enabled(v5, v0))
  {
    v6 = *(v1 + 48);
    OUTLINED_FUNCTION_60();
    v7 = OUTLINED_FUNCTION_41_0();
    *v2 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v9);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v10, v0, "Error when submitting to state store: %@");
    sub_2315B2F7C(v7, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v11 = *(v1 + 48);
  v12 = *(v1 + 16);

  sub_2315F53D4(v11);
  OUTLINED_FUNCTION_67_2();
  v12();

  OUTLINED_FUNCTION_14();

  return v13();
}

void sub_2315FA55C()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v32 = v3;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v15);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *(v0 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_74_0();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v8;
  v24[5] = v6;
  v24[6] = v14;
  v24[7] = v12;
  v26 = v32;
  v25 = v33;
  v24[8] = v19;
  v24[9] = v26;
  v24[10] = v10;
  v24[11] = v25;
  v24[12] = v2;
  v24[13] = v0;
  v27 = OUTLINED_FUNCTION_59_1();
  sub_2315B2F24(v27, v28);

  v29 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v29, v30, v18, v31, v24);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FA690()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FA78C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 224))(0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315FA808()
{
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v3 = v1[36];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v4 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v4, qword_280FE9578);
  v5 = v3;
  v6 = sub_2316066C8();
  sub_231606978();

  if (os_log_type_enabled(v6, v0))
  {
    OUTLINED_FUNCTION_60();
    v7 = OUTLINED_FUNCTION_41_0();
    *v2 = 138412290;
    v8 = v3;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v9);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v10, v0, "Error when submitting to state store: %@");
    sub_2315B2F7C(v7, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v11 = v1[28];

  sub_2315F53D4(v3);
  OUTLINED_FUNCTION_67_2();
  v11();

  OUTLINED_FUNCTION_14();

  return v12();
}

void sub_2315FAA9C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_280FE9570 != -1)
  {
    swift_once();
  }

  v3 = sub_2316066E8();
  __swift_project_value_buffer(v3, qword_280FE9578);
  v4 = sub_2316066C8();
  v5 = sub_231606958();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2315AF000, v4, v5, "warm up started!", v6, 2u);
    MEMORY[0x231933730](v6, -1, -1);
  }

  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_2315FABFC()
{
  OUTLINED_FUNCTION_93();
  v47 = v1;
  v48 = v0;
  v45 = v2;
  v46 = v3;
  v5 = v4;
  v43 = v6;
  v44 = v7;
  v42 = v8;
  v9 = sub_231605098();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v16);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v11 + 16))(v15, v5, v9);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v11 + 32))(v28 + v24, v15, v9);
  v29 = (v28 + v25);
  v30 = v42;
  v31 = v43;
  *v29 = v42;
  v29[1] = v31;
  v32 = (v28 + v26);
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  v34 = (v28 + v27);
  v35 = v44;
  v37 = v47;
  v36 = v48;
  *v34 = v44;
  v34[1] = v37;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  sub_2315B2F24(v30, v31);

  sub_2315B2F24(v35, v37);

  v38 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v38, v39, v19, v40, v28);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315FAE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 160) = v14;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60808, &qword_231609A60);
  *(v8 + 184) = swift_task_alloc();
  v9 = sub_231606158();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  v10 = sub_2316061F8();
  *(v8 + 216) = v10;
  *(v8 + 224) = *(v10 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v11 = sub_231605098();
  *(v8 + 248) = v11;
  *(v8 + 256) = *(v11 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315FAFE8, 0, 0);
}

uint64_t sub_2315FAFE8()
{
  v81 = v0;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[15];
  v5 = sub_2316066E8();
  v0[35] = __swift_project_value_buffer(v5, qword_280FE9578);
  v78 = *(v3 + 16);
  v78(v1, v4, v2);
  v6 = sub_2316066C8();
  v7 = sub_231606968();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_60();
    v9 = OUTLINED_FUNCTION_63();
    v80 = v9;
    *v8 = 136315138;
    OUTLINED_FUNCTION_25_1();
    sub_2315B3174(v10, v11, MEMORY[0x277CC9628]);
    sub_231606BC8();
    v12 = OUTLINED_FUNCTION_17_0();
    v79 = v13;
    v13(v12);
    v14 = OUTLINED_FUNCTION_68_0();
    v17 = sub_2315B1574(v14, v15, v16);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_2315AF000, v6, v7, "Received log XPC call for: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    v18 = OUTLINED_FUNCTION_17_0();
    v79 = v19;
    v19(v18);
  }

  v20 = sub_231604F38();
  OUTLINED_FUNCTION_32(v20);
  v0[36] = sub_231604F28();
  OUTLINED_FUNCTION_26_2();
  sub_2315B3174(v21, v22, MEMORY[0x277D60D70]);
  sub_231604F18();
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[28];
  sub_2316061E8();
  v26 = *(v25 + 8);
  v26(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60810, &qword_231609A68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = sub_2316066C8();
    v29 = sub_231606978();
    if (os_log_type_enabled(v28, v29))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_86_0(&dword_2315AF000, v30, v31, "unknown type of suggestions");
      OUTLINED_FUNCTION_17();
    }

    v32 = v0[18];

    sub_2315FC0E0();
    v33 = swift_allocError();
    *v34 = 0xD00000000000001CLL;
    v34[1] = 0x800000023160B4A0;
LABEL_11:
    v32();

    OUTLINED_FUNCTION_54_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_64_2();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[14];
  v0[37] = v27;
  sub_231604F18();
  sub_2316061E8();
  v37 = OUTLINED_FUNCTION_72();
  (v26)(v37);
  v38 = swift_dynamicCast();
  if ((v38 & 1) == 0)
  {
    v62 = v0[23];
    v61 = v0[24];

    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
    sub_2315B2F7C(v62, &qword_27DD60808, &qword_231609A60);
    v66 = sub_2316066C8();
    v67 = sub_231606978();
    if (os_log_type_enabled(v66, v67))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_86_0(&dword_2315AF000, v68, v69, "unknown type of deliveryVehicle");
      OUTLINED_FUNCTION_17();
    }

    v32 = v0[18];

    sub_2315FC0E0();
    v33 = swift_allocError();
    *v70 = xmmword_231609930;
    goto LABEL_11;
  }

  v39 = v0[33];
  v40 = v0[31];
  v41 = v27;
  v42 = v0[25];
  v43 = v0[26];
  v45 = v0[23];
  v44 = v0[24];
  v46 = v0[15];
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
  (*(v42 + 32))(v43, v45, v44);
  v78(v39, v46, v40);

  v47 = sub_2316066C8();
  v48 = sub_231606968();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_91_0();
    v80 = OUTLINED_FUNCTION_90_0();
    *v49 = 136315394;
    OUTLINED_FUNCTION_25_1();
    sub_2315B3174(v50, v51, MEMORY[0x277CC9628]);
    sub_231606BC8();
    v52 = OUTLINED_FUNCTION_17_0();
    v79(v52);
    v53 = OUTLINED_FUNCTION_68_0();
    v56 = sub_2315B1574(v53, v54, v55);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2080;
    v57 = sub_231605DD8();
    v58 = MEMORY[0x231932D20](v41, v57);
    v60 = sub_2315B1574(v58, v59, &v80);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_2315AF000, v47, v48, "executing SiriSuggestionsXPCService log on generationId: %s with suggestions: %s)", v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v71 = OUTLINED_FUNCTION_17_0();
    v79(v71);
  }

  v72 = swift_task_alloc();
  v0[38] = v72;
  *v72 = v0;
  v72[1] = sub_2315FB7E4;
  OUTLINED_FUNCTION_64_2();

  return StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(v73, v74, v75);
}