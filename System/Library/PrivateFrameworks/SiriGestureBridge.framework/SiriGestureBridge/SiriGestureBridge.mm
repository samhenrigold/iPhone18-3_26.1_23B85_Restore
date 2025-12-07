void sub_266E29D60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = v2;
  v6 = v4;
  v7 = v3;
  v8 = v4 ^ v3;
  if (((v4 ^ v3) & 8) != 0)
  {
    if ((v3 & 8) != 0)
    {
      if ((v4 & 8) != 0)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v25 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v25, qword_281320F40);
      v11 = sub_266E463FC();
      v26 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v26))
      {
        goto LABEL_25;
      }

LABEL_24:
      v27 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v27);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_15_1();
LABEL_25:

      v24 = 0;
      goto LABEL_26;
    }

    if ((v4 & 8) == 0)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v13 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v13, qword_281320F40);
    v14 = sub_266E463FC();
    v15 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v15))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      if (!*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v10 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v10, qword_281320F40);
      v11 = sub_266E463FC();
      v12 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v12))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v16 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v16, qword_281320F40);
    v14 = sub_266E463FC();
    v17 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v17))
    {
LABEL_18:
      v18 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v18);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  v24 = 1;
LABEL_26:
  sub_266E2E058(v24);
LABEL_27:
  if ((v8 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      if (!*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v33 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v33, qword_281320F40);
      v34 = sub_266E463FC();
      v35 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v35))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v39 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v39, qword_281320F40);
    v37 = sub_266E463FC();
    v40 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v40))
    {
LABEL_45:

      sub_266E2AF6C(1);
      goto LABEL_53;
    }

LABEL_44:
    v41 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v41);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v42, v43, v44, v45, v46, 2u);
    OUTLINED_FUNCTION_15_1();
    goto LABEL_45;
  }

  if ((v7 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v36 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v36, qword_281320F40);
    v37 = sub_266E463FC();
    v38 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v38))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v6)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_24_0();
  if (!v9)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v47 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v47, qword_281320F40);
  v34 = sub_266E463FC();
  v48 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v48))
  {
LABEL_50:
    v49 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v49);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    OUTLINED_FUNCTION_15_1();
  }

LABEL_51:

  if (*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) == 1)
  {
    *(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) = 0;
  }

LABEL_53:
  if ((v8 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {
      if ((v6 & 4) != 0)
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v69 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v69, qword_281320F40);
      v56 = sub_266E463FC();
      v70 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v70))
      {
        goto LABEL_78;
      }

LABEL_77:
      v71 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v71);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v72, v73, v74, v75, v76, 2u);
      OUTLINED_FUNCTION_15_1();
LABEL_78:

      sub_266E3DB3C(0);
      goto LABEL_79;
    }

    if ((v6 & 4) == 0)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v58 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v58, qword_281320F40);
    v59 = sub_266E463FC();
    v60 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v60))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if ((v6 & 4) == 0)
    {
      if (!*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v9)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v55 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v55, qword_281320F40);
      v56 = sub_266E463FC();
      v57 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v57))
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening))
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v61 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v61, qword_281320F40);
    v59 = sub_266E463FC();
    v62 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v62))
    {
LABEL_70:
      v63 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v63);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  if ((*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) & 1) == 0)
  {
    OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening);
  }

LABEL_79:
  if ((v8 & 2) != 0)
  {
    if ((v7 & 2) != 0)
    {
      if ((v6 & 2) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        if (!v9)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v107 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v107, qword_281320F40);
        v108 = sub_266E463FC();
        v109 = sub_266E465BC();
        if (OUTLINED_FUNCTION_20_0(v109))
        {
          v110 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v110);
          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v111, v112, v113, v114, v115, 2u);
          OUTLINED_FUNCTION_10_0();
        }

        if (*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) == 1)
        {
          *(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) = 0;
        }
      }

      goto LABEL_111;
    }

    if ((v6 & 2) == 0)
    {
LABEL_111:
      OUTLINED_FUNCTION_32();
      return;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v88 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v88, qword_281320F40);
    v89 = sub_266E463FC();
    v90 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v90))
    {
      v91 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v91);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v97 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive;
LABEL_102:
    if ((*(v5 + v97) & 1) == 0)
    {
      OUTLINED_FUNCTION_79(v97);
    }

    goto LABEL_111;
  }

  if ((v6 & 2) != 0)
  {
    if (*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive))
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v9)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v98 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v98, qword_281320F40);
    v99 = sub_266E463FC();
    v100 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v100))
    {
      v101 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v101);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v97 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening;
    goto LABEL_102;
  }

  if (!*(v5 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive))
  {
    goto LABEL_111;
  }

  OUTLINED_FUNCTION_24_0();
  if (!v9)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v77 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v77, qword_281320F40);
  v78 = sub_266E463FC();
  v79 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v79))
  {
    v80 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v80);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v81, v82, v83, v84, v85, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_32();

  sub_266E3DB3C(v86);
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_20_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *OUTLINED_FUNCTION_24()
{
  v2 = *(v0 + 16) + 1;

  return sub_266E37738(0, v2, 1, v0);
}

uint64_t sub_266E2A7CC()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_266E45AEC();
  OUTLINED_FUNCTION_5();
  v62 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v61 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  OUTLINED_FUNCTION_12(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v15 = sub_266E4640C();
  __swift_project_value_buffer(v15, qword_281320F58);
  v16 = v1;
  v17 = sub_266E463FC();
  v18 = sub_266E465BC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_21();
    v60 = v10;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_23_0();
    v59 = v2;
    v22 = v21;
    v64[0] = v21;
    *v20 = 136315138;
    v23 = [v16 debugDescription];
    v24 = sub_266E4651C();
    v26 = v25;

    v27 = sub_266E2B0EC(v24, v26, v64);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_266E28000, v17, v18, "Handling SessionStartedMessage: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v2 = v59;
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    v10 = v60;
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  sub_266E4609C();
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
  v31 = qword_281320FA0;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v14, v0 + v31, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v32 = sub_266E460BC();
  v33 = (v0 + qword_281320F88);
  *v33 = v32;
  v33[1] = v34;

  sub_266E45D5C();
  sub_266E4629C();
  OUTLINED_FUNCTION_13();
  v60 = v35;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = qword_281320FA8;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v10, v0 + v39, &qword_2800E8098, &qword_266E479F0);
  swift_endAccess();
  sub_266E4638C();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v40 = v61;
  sub_266E4609C();
  sub_266E4627C();
  (*(v62 + 8))(v40, v2);
  v41 = qword_281320B80;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v63, v0 + v41, &qword_2800E82B0, &unk_266E47190);
  swift_endAccess();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v43 = qword_281320F80;
  v44 = *(v0 + qword_281320F80);
  if (v44)
  {

    sub_266E4609C();
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v2);
    v48 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_266E2B3B0(v14, v44 + v48, &qword_2800E8080, &qword_266E479C0);
    swift_endAccess();

    v49 = *(v0 + v43);
    if (v49)
    {

      v50 = sub_266E460BC();
      v51 = (v49 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
      *v51 = v50;
      v51[1] = v52;

      v53 = *(v0 + v43);
      if (v53)
      {

        sub_266E45D5C();
        OUTLINED_FUNCTION_13();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v60);
        v57 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        sub_266E2B3B0(v10, v53 + v57, &qword_2800E8098, &qword_266E479F0);
        swift_endAccess();
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_21_0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_266E2B0EC(0xD000000000000013, v4 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1)
{

  return sub_266E2BE40(a1, v1, v2);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x26D5F4920);
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_266E2BE40(v2, v0, v1);
}

unint64_t OUTLINED_FUNCTION_30(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 176);

  return sub_266E2B0EC(v5, v1, (v3 - 96));
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D5F4920);
}

void sub_266E2AF6C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) = result & 1;
    if ((result & 1) != 0 && (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) & 1) == 0)
    {
      sub_266E2AFC0();
      *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
    }
  }
}

void sub_266E2AFC0()
{
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation) = 0;
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_266E2B0EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266E2B280(v11, 0, 0, 1, a1, a2);
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
    sub_266E2B224(v11, *a3);
    *a3 = v9 + 32;
  }

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

uint64_t sub_266E2B224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266E2B280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266E2CD6C(a5, a6);
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
    result = sub_266E466FC();
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

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_266E2B3B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10();
  (*(v6 + 40))(v4, v5);
  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266E2B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v95 = a8;
  v96 = a7;
  v91 = a4;
  v90 = a3;
  v103 = a2;
  v97 = a1;
  v11 = sub_266E45AEC();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v98 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8078, &unk_266E47180) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v87[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v22 = OUTLINED_FUNCTION_12(v21);
  v23 = MEMORY[0x28223BE20](v22);
  v92 = &v87[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v87[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v87[-v28];
  v30 = qword_281320FA0;
  swift_beginAccess();
  v99 = v13;
  v31 = v13;
  v32 = v11;
  v33 = *(v31 + 16);
  v89 = a5;
  v34 = a5;
  v35 = v9;
  v94 = v31 + 16;
  v93 = v33;
  v33(v29, v34, v11);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
  v39 = *(v17 + 56);
  sub_266E2BDC8(v9 + v30, v20, &qword_2800E8080, &qword_266E479C0);
  sub_266E2BDC8(v29, &v20[v39], &qword_2800E8080, &qword_266E479C0);
  if (OUTLINED_FUNCTION_22(v20) == 1)
  {
    sub_266E2BE40(v29, &qword_2800E8080, &qword_266E479C0);
    if (OUTLINED_FUNCTION_22(&v20[v39]) == 1)
    {
      sub_266E2BE40(v20, &qword_2800E8080, &qword_266E479C0);
      v40 = v103;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_266E2BDC8(v20, v27, &qword_2800E8080, &qword_266E479C0);
  if (OUTLINED_FUNCTION_22(&v20[v39]) == 1)
  {
    sub_266E2BE40(v29, &qword_2800E8080, &qword_266E479C0);
    (*(v99 + 8))(v27, v11);
LABEL_6:
    sub_266E2BE40(v20, &qword_2800E8078, &unk_266E47180);
LABEL_7:
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v41 = sub_266E4640C();
    __swift_project_value_buffer(v41, qword_281320F58);

    v42 = sub_266E463FC();
    v43 = sub_266E465CC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v44 = 136315394;
      v45 = v92;
      sub_266E2BDC8(v35 + v30, v92, &qword_2800E8080, &qword_266E479C0);
      if (OUTLINED_FUNCTION_22(v45))
      {
        sub_266E2BE40(v45, &qword_2800E8080, &qword_266E479C0);
        v46 = 0xE300000000000000;
        v47 = 7104878;
      }

      else
      {
        v80 = v98;
        OUTLINED_FUNCTION_14();
        v81();
        sub_266E2BE40(v45, &qword_2800E8080, &qword_266E479C0);
        v47 = sub_266E45ABC();
        v46 = v82;
        (*(v99 + 8))(v80, v32);
      }

      v83 = v97;
      v84 = sub_266E2B0EC(v47, v46, v102);

      *(v44 + 4) = v84;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_266E2B0EC(v83, v103, v102);
      _os_log_impl(&dword_266E28000, v42, v43, "Request does not belong to current sessionId: %s for requestId: %s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    v74 = 0;
    goto LABEL_31;
  }

  v49 = v98;
  v48 = v99;
  (*(v99 + 32))(v98, &v20[v39], v32);
  sub_266E2BEFC();
  v88 = sub_266E464FC();
  v50 = *(v48 + 8);
  v50(v49, v32);
  sub_266E2BE40(v29, &qword_2800E8080, &qword_266E479C0);
  v50(v27, v32);
  sub_266E2BE40(v20, &qword_2800E8080, &qword_266E479C0);
  v40 = v103;
  if ((v88 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  v51 = qword_281320B80;
  swift_beginAccess();
  sub_266E2BDC8(v35 + v51, &v100, &qword_2800E82B0, &unk_266E47190);
  if (!v101)
  {
    sub_266E2BE40(&v100, &qword_2800E82B0, &unk_266E47190);
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v75 = sub_266E4640C();
    __swift_project_value_buffer(v75, qword_281320F58);
    v76 = sub_266E463FC();
    v77 = sub_266E465CC();
    if (os_log_type_enabled(v76, v77))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19(&dword_266E28000, v78, v79, "‼️ Unable to find SessionState to pass to GestureProcessor.");
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    v74 = 1;
LABEL_31:
    sub_266E34864();
    swift_allocError();
    *v85 = v74;
    swift_willThrow();
    return v74;
  }

  sub_266E2CE9C(&v100, v102);
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v52 = sub_266E4640C();
  __swift_project_value_buffer(v52, qword_281320F58);
  v53 = sub_266E463FC();
  v54 = sub_266E465BC();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v97;
  v57 = v95;
  if (v55)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19(&dword_266E28000, v58, v59, "Updating session state");
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v60 = v35 + qword_281320F90;
  v61 = *(v35 + qword_281320F90);
  if (v61)
  {
    sub_266E2BE98(v102, &v100);
    v62 = v56;
    v63 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v64 = v61;
    v65 = v61 + v63;
    v56 = v62;
    v57 = v95;
    sub_266E2B3B0(&v100, v65, &qword_2800E82B0, &unk_266E47190);
    swift_endAccess();
  }

  if (*(v35 + qword_281320F80))
  {

    sub_266E2CEB4();
  }

  v66 = v98;
  OUTLINED_FUNCTION_14();
  v67();
  v68 = v91;

  v103 = sub_266E4639C();
  v99 = v69;
  sub_266E4637C();
  v70 = sub_266E4636C();
  v71 = *v60;
  v72 = *(v60 + 8);
  type metadata accessor for GestureRequestProcessor(0);
  swift_allocObject();
  v73 = v71;

  v74 = sub_266E2D890(v90, v68, v66, v56, v40, v103, v99, &v100, v70, v96, v57, v71, v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  return v74;
}

uint64_t sub_266E2BDC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266E2BE40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266E2BE98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266E2BEFC()
{
  result = qword_281320F20;
  if (!qword_281320F20)
  {
    sub_266E45AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281320F20);
  }

  return result;
}

void sub_266E2BF98()
{
  OUTLINED_FUNCTION_16();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  OUTLINED_FUNCTION_12(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  v5 = &v55[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v55[-1] - v8;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v10 = sub_266E4640C();
  __swift_project_value_buffer(v10, qword_281320F58);
  v11 = v1;
  v12 = sub_266E463FC();
  v13 = sub_266E465BC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_21();
    v15 = OUTLINED_FUNCTION_23_0();
    v55[0] = v15;
    *v14 = 136315138;
    v16 = [v11 debugDescription];
    v17 = sub_266E4651C();
    v19 = v18;

    v20 = sub_266E2B0EC(v17, v19, v55);

    *(v14 + 4) = v20;
    OUTLINED_FUNCTION_20(&dword_266E28000, v21, v22, "Handling SessionEndedMessage: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v23 = sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = qword_281320FA0;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v9, v0 + v27, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v28 = (v0 + qword_281320F88);
  *v28 = 0;
  v28[1] = 0;

  v29 = sub_266E4629C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = qword_281320FA8;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v5, v0 + v33, &qword_2800E8098, &qword_266E479F0);
  swift_endAccess();
  v34 = qword_281320F80;
  v35 = *(v0 + qword_281320F80);
  if (v35)
  {
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v23);
    v39 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_266E2B3B0(v9, v35 + v39, &qword_2800E8080, &qword_266E479C0);
    swift_endAccess();

    v40 = *(v0 + v34);
    if (v40)
    {
      v41 = (v40 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
      *v41 = 0;
      v41[1] = 0;

      v42 = *(v0 + v34);
      if (v42)
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v29);
        v46 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();

        sub_266E2B3B0(v5, v42 + v46, &qword_2800E8098, &qword_266E479F0);
        swift_endAccess();
      }
    }
  }

  v47 = qword_281320F90;
  v48 = *(v0 + qword_281320F90);
  if (v48)
  {
    v49 = v48;
    sub_266E2C3FC(6);

    v50 = *(v0 + v47);
    if (v50)
    {
      v51 = v50;
      sub_266E2C640();

      v52 = *(v0 + v47);
      if (v52)
      {
        v53 = v52;
        sub_266E2DB58();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_266E2BE40(v2, v0, v1);
}

void sub_266E2C3FC(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  if ((*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) & 1) != 0 || *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting) == 1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v5 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v5, qword_281320F40);
    v6 = sub_266E463FC();
    v7 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v7))
    {
      v8 = OUTLINED_FUNCTION_21();
      v9 = OUTLINED_FUNCTION_23_0();
      v35 = v9;
      *v8 = 136315138;
      v10 = sub_266E2CBA8(v4);
      sub_266E2B0EC(v10, v11, &v35);
      OUTLINED_FUNCTION_74();

      *(v8 + 4) = v2;
      OUTLINED_FUNCTION_10_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10_0();
    }

    sub_266E2AFC0();
    *(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
    OUTLINED_FUNCTION_85();

    sub_266E3A2E0(v17);
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v19 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v19, qword_281320F40);
    oslog = sub_266E463FC();
    v20 = sub_266E465BC();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_23_0();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_266E2CBA8(v4);
      v25 = sub_266E2B0EC(v23, v24, &v35);

      *(v21 + 4) = v25;
      OUTLINED_FUNCTION_83(&dword_266E28000, v26, v27, "Not running gesture recognition, no need to stop gesture recognition for reason: %s", v28, v29, v30, v31, oslog);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_27_0();
    }

    OUTLINED_FUNCTION_85();
  }
}

void OUTLINED_FUNCTION_84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_266E2C640()
{
  v1 = v0;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v5);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  sub_266E2AFC0();
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
}

void sub_266E2C708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v6 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v6, qword_281320F40);
    v7 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v9);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    sub_266E301D4();
    sub_266E31F7C();
    sub_266E31008();
  }

  OUTLINED_FUNCTION_46();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v15 = sub_266E4640C();
  __swift_project_value_buffer(v15, qword_281320F40);
  v16 = v3;
  v17 = sub_266E463FC();
  v18 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109888;
    v20 = OUTLINED_FUNCTION_33_0(v19, v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation]);
    v22 = OUTLINED_FUNCTION_66(v20, v21);
    *(v22 + 16) = v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation];
    *(v22 + 20) = v23;
    *(v22 + 22) = v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation];

    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v24, v25, v26, v27, v28, 0x1Au);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v17 = v16;
  }

  v29 = v16;
  v30 = sub_266E463FC();
  v31 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109632;
    v33 = OUTLINED_FUNCTION_33_0(v32, v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement]);
    *(OUTLINED_FUNCTION_66(v33, v34) + 16) = v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady];

    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v35, v36, v37, v38, v39, 0x14u);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v30 = v29;
  }

  if (sub_266E2EC5C())
  {
    if (sub_266E3DF04())
    {
      v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 0;
      sub_266E397EC();
      if (sub_266E2E584())
      {
        v40 = sub_266E463FC();
        v41 = sub_266E465BC();
        if (OUTLINED_FUNCTION_23(v41))
        {
          v42 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v42);
          OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_22_0();
          _os_log_impl(v43, v44, v45, v46, v47, v48);
          OUTLINED_FUNCTION_10_0();
        }

        v49 = *&v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
        if (v49 && ([*&v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_] & 1) != 0)
        {

          [v49 deferAudioSessionDeactivationForAnnouncementRequest];
        }
      }
    }

    else
    {
      v62 = sub_266E463FC();
      v63 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v63))
      {
        v64 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v64);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_0();
        _os_log_impl(v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_10_0();
      }

      v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 1;
    }
  }

  else if ((v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] & 1) != 0 || v29[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] == 1)
  {
    sub_266E3AAD0();
    sub_266E2C3FC(a2);
    oslog = sub_266E463FC();
    v50 = sub_266E465BC();
    if (os_log_type_enabled(oslog, v50))
    {
      v51 = OUTLINED_FUNCTION_21();
      v52 = OUTLINED_FUNCTION_23_0();
      v73 = v52;
      *v51 = 136315138;
      v53 = sub_266E2CBA8(a2);
      v55 = sub_266E2B0EC(v53, v54, &v73);

      *(v51 + 4) = v55;
      OUTLINED_FUNCTION_83(&dword_266E28000, v56, v57, "Not expecting gesture response, will stop head gesture recognition for reason: %s", v58, v59, v60, v61, oslog);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
    }
  }
}

unint64_t sub_266E2CBA8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6D73694469726973;
      break;
    case 6:
      result = 0x456E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266E2CD6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_266E2D5FC(a1, a2);
  sub_266E2CDB8(&unk_287872328);
  return v3;
}

uint64_t sub_266E2CDB8(uint64_t result)
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

    result = sub_266E34A78(result, v7, 1, v3);
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

uint64_t sub_266E2CE9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_266E2CEB4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v9 = sub_266E4640C();
  v10 = __swift_project_value_buffer(v9, qword_281320F28);

  v11 = sub_266E463FC();
  v12 = sub_266E465BC();

  v13 = 0x281320000;
  if (os_log_type_enabled(v11, v12))
  {
    v35[5] = v10;
    v14 = 7104878;
    v15 = OUTLINED_FUNCTION_23_0();
    v39[0] = swift_slowAlloc();
    *v15 = 136315650;
    v36 = v8;
    v37 = v6;
    *(v15 + 4) = sub_266E2B0EC(v8, v6, v39);
    *(v15 + 12) = 2080;
    if (v3)
    {
      v16 = v38;
    }

    else
    {
      v16 = 7104878;
    }

    if (v3)
    {
      v17 = v3;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_266E2B0EC(v16, v17, v39);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2080;
    if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId + 8))
    {
      v14 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
      v19 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId + 8);
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_266E2B0EC(v14, v19, v39);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_266E28000, v11, v12, "🆔 Request started with requestId: %s, rootRequestId: %s, pendingGestureRequestId: %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();

    v8 = v36;
    v6 = v37;
    v13 = 0x281320000uLL;
  }

  else
  {
  }

  v21 = (v1 + *(v13 + 4080));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83F8, &qword_266E47A08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266E47930;
    *(inited + 32) = v8;
    *(inited + 40) = v6;
    *(inited + 48) = v38;
    *(inited + 56) = v3;
    v39[0] = v23;
    v39[1] = v22;
    MEMORY[0x28223BE20](inited);
    v35[2] = v39;

    v25 = sub_266E40C5C(sub_266E445B8, v35, inited);
    swift_setDeallocating();
    sub_266E44164();

    v26 = sub_266E463FC();
    if (v25)
    {
      v27 = sub_266E465BC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_26();
        *v28 = 0;
        _os_log_impl(&dword_266E28000, v26, v27, "✅ Gesture activation request has begun, posting gesture RC", v28, 2u);
        OUTLINED_FUNCTION_14_0();
      }

      sub_266E41974();
      sub_266E42844();
    }

    else
    {
      sub_266E465AC();
      OUTLINED_FUNCTION_35_1();
      if (os_log_type_enabled(v26, v33))
      {
        v34 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v34);
        _os_log_impl(&dword_266E28000, v26, v23, "‼️ Gesture response is pending, but this is not the request", v25, 2u);
        OUTLINED_FUNCTION_11_0();
      }
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    v38 = sub_266E463FC();
    sub_266E465AC();
    OUTLINED_FUNCTION_35_1();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = OUTLINED_FUNCTION_26();
      *v30 = 0;
      _os_log_impl(&dword_266E28000, v38, v1, "No pending gesture response to post", v30, 2u);
      OUTLINED_FUNCTION_14_0();
    }

    OUTLINED_FUNCTION_32();
  }
}

void sub_266E2D370(void *a1, const char *a2, uint64_t a3)
{
  v4 = a3;
  v6 = v3;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v8 = sub_266E4640C();
  __swift_project_value_buffer(v8, qword_281320F58);
  v9 = a1;
  v10 = sub_266E463FC();
  v11 = sub_266E465BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_23_0();
    v19 = v13;
    *v12 = 136315138;
    v14 = [v9 debugDescription];
    v15 = sub_266E4651C();
    v17 = v16;

    v18 = sub_266E2B0EC(v15, v17, &v19);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_266E28000, v10, v11, a2, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_1();
  }

  if (*(v6 + qword_281320D00))
  {
    sub_266E2D4E8(v4);
  }
}

void sub_266E2D4E8(char a1)
{
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v3 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v18 = v7;
    *v6 = 136315138;
    v8 = sub_266E2CBA8(a1);
    sub_266E2B0EC(v8, v9, &v18);
    OUTLINED_FUNCTION_74();

    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_10_0();
  }

  sub_266E2AFC0();
  OUTLINED_FUNCTION_85();

  sub_266E2C708(v15, v16);
}

uint64_t sub_266E2D5FC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_266E4656C())
  {
    result = sub_266E2D714(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266E466DC();
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
          result = sub_266E466FC();
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

void *sub_266E2D714(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8108, &unk_266E472C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t type metadata accessor for GestureRequestProcessor(uint64_t a1)
{
  result = qword_281320CF0;
  if (!qword_281320CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E2D830(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t sub_266E2D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v37 = sub_266E45AEC();
  OUTLINED_FUNCTION_5();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_1(v17);
  v18 = sub_266E4640C();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = qword_281320FC0;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v26 = v13 + v25;
  v27 = __swift_project_value_buffer(v18, qword_281320F58);
  v28 = *(v20 + 16);
  v28(v24, v27, v18);
  sub_266E4647C();
  v29 = type metadata accessor for EventDeduper(0);
  v30 = (v26 + v29[6]);
  *v30 = 1953066569;
  v30[1] = 0xE400000000000000;
  v31 = v29[7];
  v28(v26 + v31, v27, v18);
  *(v26 + v29[5]) = 1000000;
  (*(v20 + 40))(v26 + v31, v24, v18);
  v32 = (v14 + qword_281320D00);
  *v32 = a12;
  v32[1] = a13;
  (*(v36 + 16))(v35, a3, v37);
  sub_266E2BE98(a8, v40);
  v33 = sub_266E4632C();
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  (*(v36 + 8))(a3, v37);
  return v33;
}

uint64_t sub_266E2DB58()
{
  v1 = v0;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v5);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  v11 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager);
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager) = 0;

  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) = 0;

  return sub_266E2DC3C();
}

uint64_t sub_266E2DC3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_67();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession) = 0;
  sub_266E4619C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
  OUTLINED_FUNCTION_57(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo);
  sub_266E2B3B0(v8, v0 + v13, &qword_2800E81E8, &unk_266E474D0);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall) = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_32_0();
  v18 = OUTLINED_FUNCTION_77();
  sub_266E2B3B0(v18, v19, &qword_2800E8080, &qword_266E479C0);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_266E2DDE8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_33();
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E4650C();
    v4 = OUTLINED_FUNCTION_18_0();
    v6 = [v4 v5];

    if (v6)
    {

      return 1;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v17 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
    v18 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v19))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v20, v21, "isWaitingToneEnabled: false");
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v2 = sub_266E463FC();
    v9 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v9))
    {
      v10 = OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_23_0();
      *(v10 + 4) = OUTLINED_FUNCTION_21_0(4.8149e-34, v22, v11);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_11_0();
    }
  }

  return 0;
}

BOOL OUTLINED_FUNCTION_31_0(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

id sub_266E2DFC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266E4650C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_266E2E058(uint64_t a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive;
  if (v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] == (a1 & 1))
  {
    OUTLINED_FUNCTION_62();
    return;
  }

  v4 = v1;
  v5 = a1;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v6 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v6, qword_281320F40);
    v7 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v9);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured);
  }

  v15 = *&v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState];
  v16 = v15 == 6 || v15 == 3;
  if (v16 && (v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] & 1) == 0)
  {
    v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = v2;
LABEL_23:
    v26 = OUTLINED_FUNCTION_50();
    sub_266E2C708(v26, v27);
    goto LABEL_24;
  }

  if ((v5 & 1) != 0 && v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] == 1)
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v17 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
    v18 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v19))
    {
      v20 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v20);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    goto LABEL_23;
  }

LABEL_24:
  if (sub_266E2DDE8())
  {
    v28 = OUTLINED_FUNCTION_50();
    sub_266E2C708(v28, v29);
    v30 = sub_266E2FFC8(0);
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_46();
      if (!v16)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v32 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v32, qword_281320F40);
      v33 = v4;
      v34 = sub_266E463FC();
      sub_266E465BC();
      OUTLINED_FUNCTION_40();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109888;
        v37 = OUTLINED_FUNCTION_33_0(v36, *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation));
        v39 = OUTLINED_FUNCTION_66(v37, v38);
        *(v39 + 16) = *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation);
        *(v39 + 20) = v40;
        *(v39 + 22) = *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation);

        _os_log_impl(&dword_266E28000, v34, OS_LOG_TYPE_DEFAULT, "Expecting Confirmation: Siri X %{BOOL}d, Siri Classic: %{BOOL}d, POMMES: %{BOOL}d IntelligenceEngine: %{BOOL}d", v36, 0x1Au);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v34 = v33;
      }

      v68 = v33;
      v69 = sub_266E463FC();
      v70 = sub_266E465BC();
      if (OUTLINED_FUNCTION_12_1(v70))
      {
        v71 = OUTLINED_FUNCTION_23_0();
        *v71 = 67110144;
        v72 = OUTLINED_FUNCTION_33_0(v71, *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement));
        v74 = OUTLINED_FUNCTION_66(v72, v73);
        *(v74 + 16) = *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured);
        *(v74 + 20) = v75;
        *(v74 + 22) = v4[v3];
        *(v74 + 26) = v75;
        *(v74 + 28) = *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing);

        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v76, v77, v78, v79, v80, 0x20u);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v69 = v68;
      }

      if ((v4[v3] & 1) == 0 && *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) == 1 && (sub_266E2E584() & 1) != 0 && *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) == 1)
      {
        v81 = sub_266E3DF04();
      }

      else
      {
        v81 = 0;
      }

      v82 = *(&v68->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
      v83 = v68;
      sub_266E3FA88(v82, v83, v81 & 1, v31, v83);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v58 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v58, qword_281320F40);
    logb = sub_266E463FC();
    v59 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_31_0(v59, v60, v61, v62, v63, v64, v65, v66, v86, logb))
    {
      goto LABEL_50;
    }

    v67 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_42(v67);
    v57 = "HGManager is nil";
  }

  else
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v41 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v41, qword_281320F40);
    loga = sub_266E463FC();
    v42 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_31_0(v42, v43, v44, v45, v46, v47, v48, v49, v86, loga))
    {
      goto LABEL_50;
    }

    v50 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_42(v50);
    v57 = "🔇 Not playing waiting tone, it's disabled in the user defaults";
  }

  OUTLINED_FUNCTION_26_0(&dword_266E28000, v51, v52, v57, v53, v54, v55, v56, v87, log);
  OUTLINED_FUNCTION_27_0();
LABEL_50:
  OUTLINED_FUNCTION_62();
}

uint64_t OUTLINED_FUNCTION_69()
{
  *(v1 - 184) = v0;

  return sub_266E45A8C();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_beginAccess();
}

uint64_t sub_266E2E584()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v91[-v6];
  v8 = sub_266E45AEC();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v91[-v15];
  OUTLINED_FUNCTION_39();
  if (!v36)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v29 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v29, qword_281320F40);
    v30 = sub_266E463FC();
    v31 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v31))
    {
      v32 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v32);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v33, v34, "❓ Siri did not prompt for confirmation yet");
      OUTLINED_FUNCTION_11_0();
    }

    return 0;
  }

  sub_266E45ADC();
  OUTLINED_FUNCTION_39();
  if (!v36)
  {
    OUTLINED_FUNCTION_39();
    if (v36)
    {
      MEMORY[0x28223BE20](v37);
      OUTLINED_FUNCTION_35_0();
      *(v38 - 16) = v16;
      OUTLINED_FUNCTION_90(v39, v40);
      OUTLINED_FUNCTION_32_0();
      v41 = OUTLINED_FUNCTION_77();
      sub_266E2B3B0(v41, v42, v43, v44);
      swift_endAccess();
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v45 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v45, qword_281320F40);
      v46 = sub_266E463FC();
      sub_266E465AC();
      OUTLINED_FUNCTION_28_0();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_39();
      if (v61)
      {
        MEMORY[0x28223BE20](v62);
        OUTLINED_FUNCTION_35_0();
        *(v63 - 16) = v16;
        OUTLINED_FUNCTION_90(v64, v65);
        OUTLINED_FUNCTION_32_0();
        v66 = OUTLINED_FUNCTION_77();
        sub_266E2B3B0(v66, v67, v68, v69);
        swift_endAccess();
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v70 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v70, qword_281320F40);
        v46 = sub_266E463FC();
        sub_266E465AC();
        OUTLINED_FUNCTION_28_0();
        if (!os_log_type_enabled(v46, v71))
        {
          goto LABEL_42;
        }
      }

      else
      {
        OUTLINED_FUNCTION_39();
        if (!v72)
        {
LABEL_12:
          v27 = OUTLINED_FUNCTION_64();
          v28(v27);
          return 0;
        }

        MEMORY[0x28223BE20](v73);
        OUTLINED_FUNCTION_35_0();
        *(v74 - 16) = v16;
        OUTLINED_FUNCTION_90(v75, v76);
        OUTLINED_FUNCTION_32_0();
        v77 = OUTLINED_FUNCTION_77();
        sub_266E2B3B0(v77, v78, v79, v80);
        swift_endAccess();
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v81 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v81, qword_281320F40);
        v46 = sub_266E463FC();
        sub_266E465AC();
        OUTLINED_FUNCTION_28_0();
        if (!os_log_type_enabled(v46, v82))
        {
          goto LABEL_42;
        }
      }
    }

    v83 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_34_0(v83);
    OUTLINED_FUNCTION_11_1();
    _os_log_impl(v84, v85, v86, v87, v88, 2u);
    OUTLINED_FUNCTION_17_1();
LABEL_42:

    v89 = OUTLINED_FUNCTION_64();
    v90(v89);
    return 1;
  }

  v17 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId;
  OUTLINED_FUNCTION_58(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId);
  sub_266E2BDC8(v0 + v17, v7, &qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_63(v7, 1, v8);
  if (v36)
  {
    sub_266E2BE40(v7, &qword_2800E8080, &qword_266E479C0);
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v18 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v18, qword_281320F40);
    v19 = sub_266E463FC();
    sub_266E465CC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v21);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    goto LABEL_12;
  }

  v48 = OUTLINED_FUNCTION_67();
  v50 = v49(v48);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_35_0();
  *(v51 - 16) = v14;
  OUTLINED_FUNCTION_90(v52, v53);
  v54 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
  OUTLINED_FUNCTION_57(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo);
  sub_266E2B3B0(v1, &v54[v0], &qword_2800E81E8, &unk_266E474D0);
  swift_endAccess();
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v55 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v55, qword_281320F40);
  v56 = sub_266E463FC();
  sub_266E465AC();
  OUTLINED_FUNCTION_28_0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v58);
    _os_log_impl(&dword_266E28000, v56, v1, "Expecting confirmation for IntelligenceEngine", v54, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  v59 = *(v10 + 8);
  (v59)(v14, v8);
  v60 = OUTLINED_FUNCTION_64();
  v59(v60);
  return 1;
}

uint64_t sub_266E2EC5C()
{
  if (sub_266E2E584())
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement);
  }
}

uint64_t sub_266E2ECA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v3 = OUTLINED_FUNCTION_12(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_1(v4);
  v116 = sub_266E461AC();
  OUTLINED_FUNCTION_5();
  v114 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v105 = v8 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8418, &unk_266E47A60);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  v11 = &v102 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  v13 = OUTLINED_FUNCTION_12(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_2();
  v107 = v14 - v15;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v16);
  v113 = &v102 - v17;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v18);
  v112 = &v102 - v19;
  v20 = sub_266E4622C();
  OUTLINED_FUNCTION_5();
  v117 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v108 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v26);
  v118 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v29 = OUTLINED_FUNCTION_12(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_2();
  v111 = v30 - v31;
  OUTLINED_FUNCTION_41();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v33);
  v119 = &v102 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v38 = OUTLINED_FUNCTION_12(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_2();
  v104 = v39 - v40;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v41);
  v109 = &v102 - v42;
  OUTLINED_FUNCTION_41();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v102 - v45;
  MEMORY[0x28223BE20](v44);
  v121 = &v102 - v47;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v48 = sub_266E4640C();
  __swift_project_value_buffer(v48, qword_281320F58);
  v49 = a1;
  v50 = sub_266E463FC();
  v51 = sub_266E465BC();

  v52 = os_log_type_enabled(v50, v51);
  v115 = v35;
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_21();
    v103 = v25;
    v54 = v53;
    v102 = OUTLINED_FUNCTION_23_0();
    v122[0] = v102;
    *v54 = 136315138;
    v55 = [v49 debugDescription];
    v56 = v11;
    v57 = sub_266E4651C();
    v58 = v20;
    v60 = v59;

    v61 = v57;
    v11 = v56;
    v62 = sub_266E2B0EC(v61, v60, v122);
    v20 = v58;

    *(v54 + 4) = v62;
    _os_log_impl(&dword_266E28000, v50, v51, "❓ Handling SiriWillPromptMessage: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    OUTLINED_FUNCTION_14_0();
    v25 = v103;
    OUTLINED_FUNCTION_14_0();
  }

  v63 = v121;
  sub_266E460DC();
  v64 = sub_266E4619C();
  OUTLINED_FUNCTION_10_2(v63);
  v65 = v119;
  if (v73)
  {
    goto LABEL_29;
  }

  sub_266E4436C(v121, v46, &qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_10_2(v46);
  if (v73)
  {
    sub_266E2BE40(v46, &qword_2800E81E8, &unk_266E474D0);
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v20);
  }

  else
  {
    sub_266E4613C();
    OUTLINED_FUNCTION_12_2();
    (*(v66 + 8))(v46, v64);
  }

  v67 = v115;
  (*(v117 + 104))(v115, *MEMORY[0x277D5CFB0], v20);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v20);
  v68 = *(v25 + 48);
  v69 = v118;
  sub_266E4436C(v65, v118, &qword_2800E83C0, &unk_266E479E0);
  sub_266E4436C(v67, v69 + v68, &qword_2800E83C0, &unk_266E479E0);
  OUTLINED_FUNCTION_18_2(v69);
  if (!v73)
  {
    v72 = v111;
    sub_266E4436C(v69, v111, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_18_2(v69 + v68);
    if (!v73)
    {
      v77 = v117;
      v78 = v69 + v68;
      v79 = v108;
      (*(v117 + 32))(v108, v78, v20);
      sub_266E450A4(&qword_2800E83D0, MEMORY[0x277D5CFB8], MEMORY[0x277D5CFC0]);
      v80 = sub_266E464FC();
      v81 = *(v77 + 8);
      v81(v79, v20);
      sub_266E2BE40(v67, &qword_2800E83C0, &unk_266E479E0);
      sub_266E2BE40(v119, &qword_2800E83C0, &unk_266E479E0);
      v81(v72, v20);
      v71 = v112;
      sub_266E2BE40(v118, &qword_2800E83C0, &unk_266E479E0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_11_2();
    v70 = v118;
    sub_266E2BE40(v119, &qword_2800E83C0, &unk_266E479E0);
    (*(v117 + 8))(v72, v20);
LABEL_17:
    v74 = &qword_2800E83B8;
    v75 = &unk_266E47A70;
    v76 = v70;
LABEL_28:
    sub_266E2BE40(v76, v74, v75);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_2();
  v70 = v118;
  sub_266E2BE40(v65, &qword_2800E83C0, &unk_266E479E0);
  OUTLINED_FUNCTION_18_2(v70 + v68);
  if (!v73)
  {
    goto LABEL_17;
  }

  sub_266E2BE40(v70, &qword_2800E83C0, &unk_266E479E0);
  v71 = v112;
LABEL_19:
  v82 = v109;
  sub_266E4436C(v121, v109, &qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_10_2(v82);
  if (v73)
  {
    sub_266E2BE40(v82, &qword_2800E81E8, &unk_266E474D0);
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v116);
  }

  else
  {
    sub_266E4611C();
    OUTLINED_FUNCTION_12_2();
    (*(v83 + 8))(v82, v64);
  }

  v84 = v113;
  v85 = v116;
  (*(v114 + 104))(v113, *MEMORY[0x277D5CE68], v116);
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
  v86 = *(v110 + 48);
  sub_266E4436C(v71, v11, &unk_2800E82E0, &unk_266E478B0);
  sub_266E4436C(v84, &v11[v86], &unk_2800E82E0, &unk_266E478B0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v85) == 1)
  {
    sub_266E2BE40(v84, &unk_2800E82E0, &unk_266E478B0);
    OUTLINED_FUNCTION_11_2();
    if (__swift_getEnumTagSinglePayload(&v11[v86], 1, v116) == 1)
    {
      sub_266E2BE40(v11, &unk_2800E82E0, &unk_266E478B0);
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v87 = v107;
  sub_266E4436C(v11, v107, &unk_2800E82E0, &unk_266E478B0);
  if (__swift_getEnumTagSinglePayload(&v11[v86], 1, v116) == 1)
  {
    sub_266E2BE40(v113, &unk_2800E82E0, &unk_266E478B0);
    OUTLINED_FUNCTION_11_2();
    (*(v114 + 8))(v87, v116);
LABEL_27:
    v74 = &qword_2800E8418;
    v75 = &unk_266E47A60;
    v76 = v11;
    goto LABEL_28;
  }

  v91 = v114;
  v92 = &v11[v86];
  v93 = v105;
  v94 = v116;
  (*(v114 + 32))(v105, v92, v116);
  sub_266E450A4(&qword_2800E8420, MEMORY[0x277D5CE70], MEMORY[0x277D5CE78]);
  v95 = sub_266E464FC();
  v96 = *(v91 + 8);
  v96(v93, v94);
  sub_266E2BE40(v113, &unk_2800E82E0, &unk_266E478B0);
  sub_266E2BE40(v71, &unk_2800E82E0, &unk_266E478B0);
  v96(v87, v94);
  sub_266E2BE40(v11, &unk_2800E82E0, &unk_266E478B0);
  if (v95)
  {
LABEL_34:
    if (*(v120 + qword_281320D00))
    {
      sub_266E2FDD8();
      v97 = v104;
      sub_266E4436C(v121, v104, &qword_2800E81E8, &unk_266E474D0);
      OUTLINED_FUNCTION_10_2(v97);
      if (v73)
      {
        sub_266E2BE40(v97, &qword_2800E81E8, &unk_266E474D0);
        v99 = 1;
      }

      else
      {
        sub_266E4614C();
        OUTLINED_FUNCTION_12_2();
        (*(v98 + 8))(v97, v64);
        v99 = 0;
      }

      v100 = sub_266E45AEC();
      v101 = v106;
      __swift_storeEnumTagSinglePayload(v106, v99, 1, v100);
      sub_266E3D6D8();
      sub_266E2BE40(v101, &qword_2800E8080, &qword_266E479C0);
    }

    return sub_266E2BE40(v121, &qword_2800E81E8, &unk_266E474D0);
  }

LABEL_29:
  swift_beginAccess();
  sub_266E2F920();
  v89 = v88;
  swift_endAccess();
  if ((v89 & 1) != 0 && *(v120 + qword_281320D00))
  {
    sub_266E2FDD8();
  }

  return sub_266E2BE40(v121, &qword_2800E81E8, &unk_266E474D0);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_266E4619C();
}

void sub_266E2F920()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_266E4640C();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v56 = sub_266E464AC();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  sub_266E4649C();
  v20 = sub_266E4648C();
  v21 = sub_266E4648C();
  v22 = v20 >= v21;
  v23 = v20 - v21;
  if (v22)
  {
    v53 = v19;
    v55 = v15;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_266E466EC();

    v58 = 0x6465766965636552;
    v59 = 0xE900000000000020;
    v49 = v5;
    v50 = v3;
    MEMORY[0x26D5F4210](v5, v3);
    MEMORY[0x26D5F4210](32, 0xE100000000000000);
    v57 = v23 / 0xF4240;
    v24 = sub_266E4672C();
    MEMORY[0x26D5F4210](v24);

    MEMORY[0x26D5F4210](0x6574666120736D20, 0xEA00000000002072);
    v25 = type metadata accessor for EventDeduper(0);
    v26 = (v0 + v25[6]);
    MEMORY[0x26D5F4210](*v26, v26[1]);
    v52 = *(v0 + v25[5]);
    v48 = v58;
    v27 = v25[7];
    v28 = *(v8 + 16);
    v54 = v23;
    if (v23 < v52)
    {
      v37 = v6;
      v28(v13, v0 + v27, v6);

      v38 = sub_266E463FC();
      v39 = sub_266E465BC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_21();
        v41 = OUTLINED_FUNCTION_23_0();
        v58 = v41;
        v42 = OUTLINED_FUNCTION_30(4.8149e-34);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_266E28000, v38, v39, "%s, event is a dupe", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      (*(v8 + 8))(v13, v37);
      (*(v55 + 8))(v53, v56);
    }

    else
    {
      v29 = v51;
      v28(v51, v0 + v27, v6);

      v30 = sub_266E463FC();
      v31 = sub_266E465BC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_21();
        v47 = v8;
        v33 = v32;
        v34 = OUTLINED_FUNCTION_23_0();
        v58 = v34;
        v35 = v6;
        v36 = OUTLINED_FUNCTION_30(4.8149e-34);

        *(v33 + 4) = v36;
        _os_log_impl(&dword_266E28000, v30, v31, "%s, event isn't a dupe", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_14_0();

        (*(v47 + 8))(v51, v35);
      }

      else
      {

        (*(v8 + 8))(v29, v6);
      }

      v43 = v55;
      v44 = v53;
      v45 = v50;

      *v26 = v49;
      v26[1] = v45;
      (*(v43 + 40))(v1, v44, v56);
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    __break(1u);
  }
}

void sub_266E2FDD8()
{
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 1;
  sub_266E2FF00();

  sub_266E2C708(1, 8);
}

uint64_t sub_266E2FE18()
{
  OUTLINED_FUNCTION_39();
  if (v1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v2 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
    v3 = sub_266E463FC();
    v4 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v4))
    {
      v5 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v5);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v6, v7, "🧪 Assuming bobble is available");
      OUTLINED_FUNCTION_11_0();
    }

    return 1;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
    if (v9 && ([v9 respondsToSelector_] & 1) != 0)
    {
      return [v9 isBobbleAvailable];
    }

    else
    {
      return 0;
    }
  }
}

void sub_266E2FF00()
{
  v0 = sub_266E2FE18();
  v1 = sub_266E2FFC8(v0 & 1);
  if (!v1)
  {
    if ((v0 & 1) == 0)
    {
      return;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v2 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
    v20 = sub_266E463FC();
    v3 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
    {
      v11 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v12, v13, "Failed to initialize HGManager", v14, v15, v16, v17, v19, v21);
      OUTLINED_FUNCTION_27_0();
    }

    v1 = v21;
  }
}

void *sub_266E2FFC8(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager;
  v4 = *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
  if (!v4 && (a1 & 1) != 0)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v5 = sub_266E4640C();
    __swift_project_value_buffer(v5, qword_281320F40);
    v6 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v8);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    sub_266E45B4C();
    sub_266E45B1C();
    objc_allocWithZone(sub_266E45BFC());
    v14 = v2;
    v15 = sub_266E45BEC();
    v16 = *&v2[v3];
    *&v2[v3] = v15;

    if (AFIsInternalInstall())
    {
      v17 = sub_266E463FC();
      v18 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v18))
      {
        v19 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_34_0(v19);
        OUTLINED_FUNCTION_84(&dword_266E28000, v20, v21, "📝 Enabling raw data logging, device is using an internal install");
        OUTLINED_FUNCTION_17_1();
      }

      v22 = v14;
      v23 = OUTLINED_FUNCTION_72();
      sub_266E3E68C(v23, v24, v24);
    }

    sub_266E39330();
    v4 = *&v2[v3];
  }

  v25 = v4;
  return v4;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x26D5F4920);
}

void sub_266E301D4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = sub_266E4629C();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = sub_266E4624C();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState);
  sub_266E2BDC8(v1 + v16, v39, &qword_2800E82B0, &unk_266E47190);
  if (!v39[3])
  {
    sub_266E2BE40(v39, &qword_2800E82B0, &unk_266E47190);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_6;
  }

  sub_266E2BE98(v39, v38);
  sub_266E2BE40(v39, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  (*(v11 + 104))(v15, *MEMORY[0x277D5D1D0], v9);
  sub_266E4628C();
  sub_266E4625C();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (!*(&v41 + 1))
  {
LABEL_6:
    sub_266E2BE40(&v40, &qword_2800E82B8, &qword_266E47890);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82C0, &qword_266E47898);
  if (swift_dynamicCast())
  {
    v17 = v39[0];
    OUTLINED_FUNCTION_54();
    v18 = swift_allocObject();
    *(v18 + 16) = MEMORY[0x277D84F90];
    v19 = sub_266E3067C(v17, (v18 + 16));

    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  v19 = 0;
  *(v18 + 16) = MEMORY[0x277D84F90];
LABEL_8:
  v20 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation) = v19;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v21 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v21, qword_281320F40);
  v22 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_21();
    v25 = OUTLINED_FUNCTION_23_0();
    v38[0] = v25;
    *v24 = 136315138;
    OUTLINED_FUNCTION_58(v18 + 16);
    v26 = sub_266E45C8C();

    MEMORY[0x26D5F4240](v27, v26);

    v28 = OUTLINED_FUNCTION_75();
    v31 = sub_266E2B0EC(v28, v29, v30);

    *(v24 + 4) = v31;
    OUTLINED_FUNCTION_86(&dword_266E28000, v22, v15, "Confirmation SDAs: %s", v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_17_1();
  }

  if (*(v1 + v20))
  {
  }

  else
  {
    v32 = sub_266E463FC();
    v33 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v33))
    {
      v34 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v34);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v35, v36, "Not expecting SiriX confirmation");
      OUTLINED_FUNCTION_11_0();
    }
  }

  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E30614()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_266E2B0EC(v6, v7, va);
}

BOOL sub_266E3067C(uint64_t a1, void *a2)
{
  v41 = a2;
  v43 = sub_266E45C8C();
  v3 = *(v43 - 8);
  v4 = MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = 0;
  v44 = *(a1 + 16);
  while (1)
  {
    v9 = v8;
    if (v44 == v8)
    {
      break;
    }

    ++v8;
    v10 = v7;
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = *(v3 + 72);
    v13 = a1 + v11 + v12 * v9;
    v14 = sub_266E45C6C();
    v7 = v10;
    if (v14)
    {
      v15 = v41;
      sub_266E30A2C();
      v16 = *(*v15 + 16);
      sub_266E30C5C(v16);
      v17 = *v15;
      *(v17 + 16) = v16 + 1;
      v18 = v17 + v11 + v16 * v12;
      v19 = *(v3 + 16);
      v20 = v43;
      (v19)(v18, v13, v43);
      if (qword_281320A90 != -1)
      {
        swift_once();
      }

      v21 = sub_266E4640C();
      __swift_project_value_buffer(v21, qword_281320F40);
      v22 = v10;
      (v19)(v10, v13, v20);
      v23 = v42;
      v19();
      v24 = sub_266E463FC();
      v25 = sub_266E465BC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45 = v41;
        *v26 = 134218242;
        v40 = v25;
        v27 = sub_266E45C7C();
        v39 = v24;
        v28 = *(v3 + 8);
        v28(v22, v20);
        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        sub_266E40994(&unk_281320F08, MEMORY[0x277D5DC70]);
        v29 = sub_266E462BC();
        v30 = v20;
        v32 = v31;
        v28(v23, v30);
        v33 = sub_266E2B0EC(v29, v32, &v45);

        *(v26 + 14) = v33;
        v34 = v39;
        _os_log_impl(&dword_266E28000, v39, v40, "Expecting confirmation for SDA %ld: %s", v26, 0x16u);
        v35 = v41;
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x26D5F4920](v35, -1, -1);
        MEMORY[0x26D5F4920](v26, -1, -1);
      }

      else
      {
        v36 = *(v3 + 8);
        v36(v22, v20);

        v36(v23, v20);
      }

      return v44 != v9;
    }
  }

  return v44 != v9;
}

void *sub_266E30A2C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_266E30B74(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_266E30A78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8270, qword_266E47760);
  v4 = *(sub_266E45C8C() - 8);
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

void *sub_266E30B74(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_266E30A78(v8, v7);
  sub_266E45C8C();
  OUTLINED_FUNCTION_13_0();
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_266E37840(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_266E30C5C(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_266E30B74((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_266E30CEC(void *a1, const char *a2, ...)
{
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  oslog = sub_266E463FC();
  v6 = sub_266E465BC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_21();
    v8 = OUTLINED_FUNCTION_23_0();
    v15 = v8;
    *v7 = 136315138;
    v9 = [v5 debugDescription];
    v10 = sub_266E4651C();
    v12 = v11;

    v13 = sub_266E2B0EC(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_266E28000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }
}

void sub_266E30E50(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "❓ Handling SiriWillAskForConfirmationMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  swift_beginAccess();
  sub_266E2F920();
  v16 = v15;
  swift_endAccess();
  if (v16)
  {
    if (*(v2 + qword_281320D00))
    {
      sub_266E2FDD8();
    }
  }
}

void sub_266E31008()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  v3 = OUTLINED_FUNCTION_12(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  v75 = v4;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - v6;
  OUTLINED_FUNCTION_55();
  v80 = sub_266E45C5C();
  OUTLINED_FUNCTION_5();
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v76 = v10 - v9;
  OUTLINED_FUNCTION_55();
  v81 = sub_266E4629C();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v17 = sub_266E4624C();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D8, &qword_266E478A8);
  OUTLINED_FUNCTION_12(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v26 = sub_266E462DC();
  OUTLINED_FUNCTION_5();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v79 = v31 - v30;
  v32 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState);
  sub_266E2BDC8(v0 + v32, v83, &qword_2800E82B0, &unk_266E47190);
  if (!v83[3])
  {
    sub_266E2BE40(v83, &qword_2800E82B0, &unk_266E47190);
    v84 = 0u;
    v85 = 0u;
    goto LABEL_12;
  }

  v74 = v28;
  v73 = v0;
  sub_266E2BE98(v83, v82);
  sub_266E2BE40(v83, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  (*(v19 + 104))(v23, *MEMORY[0x277D5D1B8], v17);
  sub_266E4628C();
  OUTLINED_FUNCTION_52();
  sub_266E4625C();
  (*(v12 + 8))(v16, v81);
  v33 = OUTLINED_FUNCTION_67();
  v34(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  if (!*(&v85 + 1))
  {
LABEL_12:
    sub_266E2BE40(&v84, &qword_2800E82B8, &qword_266E47890);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v26);
    goto LABEL_13;
  }

  v35 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v35 ^ 1u, 1, v26);
  OUTLINED_FUNCTION_63(v1, 1, v26);
  if (!v36)
  {
    v37 = v74;
    v38 = v79;
    (*(v74 + 32))(v79, v1, v26);
    v39 = v78;
    sub_266E462CC();
    v40 = v80;
    OUTLINED_FUNCTION_63(v39, 1, v80);
    if (v36)
    {
      sub_266E2BE40(v39, &qword_2800E82D0, &qword_266E478A0);
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v41 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v41, qword_281320F40);
      v42 = sub_266E463FC();
      v43 = sub_266E465BC();
      if (OUTLINED_FUNCTION_23(v43))
      {
        v44 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v44);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_0();
        _os_log_impl(v45, v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_10_0();
      }

      (*(v37 + 8))(v38, v26);
    }

    else
    {
      v60 = v77;
      v61 = v76;
      (*(v77 + 32))(v76, v39, v40);
      type metadata accessor for GestureController(0);
      v62 = v75;
      (*(v60 + 16))(v75, v61, v40);
      OUTLINED_FUNCTION_13();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v40);
      sub_266E316F0();
      v67 = v66;
      sub_266E2BE40(v62, &qword_2800E82D0, &qword_266E478A0);
      if ((v67 & 1) == 0)
      {
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v68 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v68, qword_281320F40);
        v69 = sub_266E463FC();
        v70 = sub_266E465BC();
        if (OUTLINED_FUNCTION_12_1(v70))
        {
          *OUTLINED_FUNCTION_26() = 0;
          OUTLINED_FUNCTION_81(&dword_266E28000, v71, v72, "Not expecting POMMES confirmation");
          OUTLINED_FUNCTION_14_0();
        }
      }

      (*(v60 + 8))(v61, v40);
      (*(v37 + 8))(v38, v26);
      *(v73 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation) = v67 & 1;
    }

    goto LABEL_18;
  }

LABEL_13:
  sub_266E2BE40(v1, &qword_2800E82D8, &qword_266E478A8);
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v54 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v54, qword_281320F40);
  v55 = sub_266E463FC();
  v56 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v56))
  {
    v57 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v57);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v58, v59, "No POMMES context found, not expecting POMMES confirmation");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_32();
}

void sub_266E316F0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  OUTLINED_FUNCTION_12(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  v6 = (&v52 - v5);
  v7 = sub_266E45C5C();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v57 = v11;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v12);
  v58 = (&v52 - v13);
  OUTLINED_FUNCTION_41();
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  sub_266E2BDC8(v2, v6, &qword_2800E82D0, &qword_266E478A0);
  OUTLINED_FUNCTION_63(v6, 1, v7);
  if (v20)
  {
    sub_266E2BE40(v6, &qword_2800E82D0, &qword_266E478A0);
  }

  else
  {
    (*(v9 + 32))(v19, v6, v7);
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v21 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v21, qword_281320F40);
    v22 = *(v9 + 16);
    OUTLINED_FUNCTION_52();
    v22();
    OUTLINED_FUNCTION_52();
    v22();
    OUTLINED_FUNCTION_52();
    v22();
    v23 = v58;
    v55 = v19;
    OUTLINED_FUNCTION_52();
    v22();
    v54 = v6;
    v24 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    v53 = v24;
    v26 = os_log_type_enabled(v24, v25);
    v56 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 67109888;
      v28 = sub_266E45C2C() & 1;
      HIDWORD(v52) = v19;
      v30 = *(v9 + 8);
      v29 = v9 + 8;
      v30(v0, v7);
      *(v27 + 4) = v28;
      *(v27 + 8) = 1024;
      v31 = sub_266E45C3C() & 1;
      v32 = OUTLINED_FUNCTION_78();
      (v30)(v32);
      *(v27 + 10) = v31;
      *(v27 + 14) = 1024;
      v33 = sub_266E45C0C() & 1;
      v34 = OUTLINED_FUNCTION_73();
      (v30)(v34);
      *(v27 + 16) = v33;
      *(v27 + 20) = 1024;
      v35 = sub_266E45C1C() & 1;
      v36 = OUTLINED_FUNCTION_73();
      v58 = v30;
      (v30)(v36);
      *(v27 + 22) = v35;
      v37 = v53;
      _os_log_impl(&dword_266E28000, v53, BYTE4(v52), "hasStrictPrompt: %{BOOL}d hasDictationPrompt: %{BOOL}d strictPrompt: %{BOOL}d dictationPrompt: %{BOOL}d", v27, 0x1Au);
      OUTLINED_FUNCTION_14_0();
    }

    else
    {
      v38 = *(v9 + 8);
      v29 = v9 + 8;
      (v38)(v23, v7);
      v39 = OUTLINED_FUNCTION_73();
      v38(v39);
      v40 = OUTLINED_FUNCTION_78();
      v38(v40);
      v58 = v38;
      (v38)(v0, v7);
      v37 = v53;
    }

    v41 = v55;
    OUTLINED_FUNCTION_52();
    v22();
    v42 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_21();
      v54 = OUTLINED_FUNCTION_23_0();
      v59 = v54;
      *v44 = 136315138;
      sub_266E45C4C();
      v45 = MEMORY[0x26D5F4240]();
      v47 = v46;

      v48 = OUTLINED_FUNCTION_78();
      (v58)(v48);
      v49 = sub_266E2B0EC(v45, v47, &v59);

      *(v44 + 4) = v49;
      OUTLINED_FUNCTION_86(&dword_266E28000, v42, v29, "responseSemanticValues: %s", v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v50 = OUTLINED_FUNCTION_78();
      (v58)(v50);
    }

    if ((sub_266E45C2C() & 1) != 0 && (sub_266E45C0C() & 1) != 0 && (sub_266E45C3C() & 1) != 0 && (sub_266E45C1C() & 1) == 0)
    {
      v51 = sub_266E45C4C();
      sub_266E31CD8(v51);
    }

    v58(v41, v7);
  }

  OUTLINED_FUNCTION_32();
}

void OUTLINED_FUNCTION_83(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0xCu);
}

uint64_t sub_266E31CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 40;
    do
    {

      v3 |= sub_266E4671C() < 4;
      OUTLINED_FUNCTION_27();
      v5 = sub_266E4671C();

      v2 |= v5 < 6;
      if (v3)
      {
        if ((v1 == 1) | v2 & 1)
        {
          return v2 & 1;
        }

        v2 = 0;
      }

      else if (v1 == 1)
      {
        goto LABEL_9;
      }

      --v1;
      v4 += 16;
    }

    while (v1);
    __break(1u);
  }

LABEL_9:
  v2 = 0;
  return v2 & 1;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t GestureRequestProcessor.__deallocating_deinit()
{
  v0 = GestureRequestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t GestureRequestProcessor.deinit()
{
  v0 = sub_266E4633C();

  sub_266E31EC0(v0 + qword_281320FC0);
  return v0;
}

uint64_t sub_266E31EC0(uint64_t a1)
{
  v2 = type metadata accessor for EventDeduper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266E31F7C()
{
  OUTLINED_FUNCTION_31();
  v53 = sub_266E4629C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_60();
  v5 = sub_266E4624C();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  v13 = OUTLINED_FUNCTION_12(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v51 = v14;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = sub_266E45C5C();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v52 = v23 - v22;
  v24 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState);
  sub_266E2BDC8(v0 + v24, v55, &qword_2800E82B0, &unk_266E47190);
  if (!v55[3])
  {
    sub_266E2BE40(v55, &qword_2800E82B0, &unk_266E47190);
    v56 = 0u;
    v57 = 0u;
    goto LABEL_12;
  }

  v49 = v20;
  v50 = v0;
  sub_266E2BE98(v55, v54);
  sub_266E2BE40(v55, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  (*(v7 + 104))(v11, *MEMORY[0x277D5D1C8], v5);
  sub_266E4628C();
  OUTLINED_FUNCTION_53();
  sub_266E4625C();
  (*(v3 + 8))(v1, v53);
  (*(v7 + 8))(v11, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  if (!*(&v57 + 1))
  {
LABEL_12:
    sub_266E2BE40(&v56, &qword_2800E82B8, &qword_266E47890);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v18);
    goto LABEL_13;
  }

  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v17, v25 ^ 1u, 1, v18);
  OUTLINED_FUNCTION_63(v17, 1, v18);
  if (!v26)
  {
    v27 = v49;
    v28 = v52;
    (*(v49 + 32))(v52, v17, v18);
    type metadata accessor for GestureController(0);
    v29 = v51;
    (*(v27 + 16))(v51, v28, v18);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v18);
    sub_266E316F0();
    v34 = v33;
    sub_266E2BE40(v29, &qword_2800E82D0, &qword_266E478A0);
    if ((v34 & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v35 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v35, qword_281320F40);
      v36 = sub_266E463FC();
      v37 = sub_266E465BC();
      if (OUTLINED_FUNCTION_12_1(v37))
      {
        *OUTLINED_FUNCTION_26() = 0;
        OUTLINED_FUNCTION_81(&dword_266E28000, v38, v39, "Not expecting Siri Classic confirmation");
        OUTLINED_FUNCTION_14_0();
      }
    }

    (*(v27 + 8))(v28, v18);
    *(v50 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation) = v34 & 1;
    goto LABEL_18;
  }

LABEL_13:
  sub_266E2BE40(v17, &qword_2800E82D0, &qword_266E478A0);
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v43 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v43, qword_281320F40);
  v44 = sub_266E463FC();
  v45 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v45))
  {
    v46 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v46);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v47, v48, "No legacy context found, not expecting SiriClassic confirmation");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_32();
}

void sub_266E324C0(uint64_t a2@<X8>)
{
  sub_266E324F4();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_266E32524(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_0();
  sub_266E45AAC();
  OUTLINED_FUNCTION_13_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    sub_266E461CC();
    OUTLINED_FUNCTION_13_0();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v9 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
      v9 = a3[7];
    }
  }

  return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
}

uint64_t sub_266E32600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_0();
  sub_266E45AAC();
  OUTLINED_FUNCTION_13_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_266E461CC();
    OUTLINED_FUNCTION_13_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
      v11 = a4[7];
    }
  }

  return __swift_storeEnumTagSinglePayload(v5 + v11, v4, v4, v10);
}

uint64_t sub_266E326E4()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_266E461CC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_266E32724()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_266E461CC();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_266E32768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_0();
  sub_266E464AC();
  OUTLINED_FUNCTION_13_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 0x7FFFFFFF)
  {
    v8 = sub_266E4640C();
    v9 = v4 + *(a3 + 28);
    goto LABEL_8;
  }

  v10 = *(v4 + *(a3 + 24) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_266E32830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_0();
  sub_266E464AC();
  OUTLINED_FUNCTION_13_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return;
    }

    v10 = sub_266E4640C();
    v11 = v5 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_266E32900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E32930(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_266E32938(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_266E329F8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32A30()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32A70()
{
  v1 = (type metadata accessor for GestureMapping(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;
  v4 = sub_266E461CC();
  OUTLINED_FUNCTION_10();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v3 + v1[7], v4);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32B74()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32BAC()
{
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_266E32BE0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32C18()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266E32C58()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_266E32C8C()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t GestureBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  sub_266E2BE98(a3, v17);
  sub_266E2BE98(a6, v16);
  sub_266E2BE98(a3, v15);
  type metadata accessor for GestureOutputSubmitter(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = sub_266E40D10(v15, a4);
  type metadata accessor for GestureBridge(0);
  swift_allocObject();
  v13 = sub_266E32E04(a1, a2, v17, a4, a5, v16, v12, 0, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

uint64_t sub_266E32E04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, _UNKNOWN **a9)
{
  sub_266E4634C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v15 = sub_266E4640C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = v9 + qword_281320B80;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = (v9 + qword_281320F88);
  *v27 = 0;
  v27[1] = 0;
  sub_266E4629C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = (v9 + qword_281320F90);
  *v32 = 0;
  v32[1] = 0;
  v33 = v9 + qword_281320F98;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v9 + qword_281320F80) = 0;
  sub_266E2BE98(a3, v110);
  v107 = a6;
  sub_266E2BE98(a6, v109);
  v34 = qword_281320AA0;
  swift_unknownObjectRetain();
  v35 = a5;
  if (v34 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v36 = __swift_project_value_buffer(v15, qword_281320F58);
  (*(v17 + 16))(v21, v36, v15);
  v37 = sub_266E462FC();
  *(v37 + qword_281320F80) = a7;

  v39 = a8;
  if (!a8)
  {
    v40 = objc_allocWithZone(type metadata accessor for GestureController(0));
    swift_unknownObjectRetain();
    sub_266E37C94();
    a9 = &off_287872C78;
  }

  v41 = (v37 + qword_281320F90);
  v42 = *(v37 + qword_281320F90);
  *v41 = v39;
  v41[1] = a9;
  v106 = a8;

  if (*v41)
  {
    *(*v41 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_delegate + 8) = &off_287873230;
    swift_unknownObjectWeakAssign();
  }

  sub_266E45CAC();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E45D6C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E4610C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E4607C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  v43 = *(v13 + 104);
  v44 = OUTLINED_FUNCTION_2();
  v43(v44);
  sub_266E45DBC();
  type metadata accessor for GestureRequestProcessor(0);
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v45 = *(v13 + 8);
  v46 = OUTLINED_FUNCTION_4();
  v45(v46);
  v47 = OUTLINED_FUNCTION_2();
  v43(v47);
  sub_266E45F2C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v48 = OUTLINED_FUNCTION_4();
  v45(v48);
  v49 = OUTLINED_FUNCTION_2();
  v43(v49);
  sub_266E45CBC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v50 = OUTLINED_FUNCTION_4();
  v45(v50);
  v51 = OUTLINED_FUNCTION_2();
  v43(v51);
  sub_266E45D9C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v52 = OUTLINED_FUNCTION_4();
  v45(v52);
  v53 = OUTLINED_FUNCTION_2();
  v43(v53);
  sub_266E45DCC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v54 = OUTLINED_FUNCTION_4();
  v45(v54);
  v55 = OUTLINED_FUNCTION_2();
  v43(v55);
  sub_266E45E5C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v56 = OUTLINED_FUNCTION_4();
  v45(v56);
  v57 = OUTLINED_FUNCTION_2();
  v43(v57);
  sub_266E45E0C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v58 = OUTLINED_FUNCTION_4();
  v45(v58);
  v59 = OUTLINED_FUNCTION_2();
  v43(v59);
  sub_266E45FEC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v60 = OUTLINED_FUNCTION_4();
  v45(v60);
  v61 = OUTLINED_FUNCTION_2();
  v43(v61);
  sub_266E45E2C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v62 = OUTLINED_FUNCTION_4();
  v45(v62);
  v63 = OUTLINED_FUNCTION_2();
  v43(v63);
  sub_266E45F1C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v64 = OUTLINED_FUNCTION_4();
  v45(v64);
  v65 = OUTLINED_FUNCTION_2();
  v43(v65);
  sub_266E45E4C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v66 = OUTLINED_FUNCTION_4();
  v45(v66);
  v67 = OUTLINED_FUNCTION_2();
  v43(v67);
  sub_266E4600C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v68 = OUTLINED_FUNCTION_4();
  v45(v68);
  v69 = OUTLINED_FUNCTION_17();
  v43(v69);
  sub_266E45D8C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v70 = OUTLINED_FUNCTION_4();
  v45(v70);
  v71 = OUTLINED_FUNCTION_17();
  v43(v71);
  sub_266E45E1C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v72 = OUTLINED_FUNCTION_4();
  v45(v72);
  v73 = OUTLINED_FUNCTION_17();
  v43(v73);
  sub_266E45DDC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v74 = OUTLINED_FUNCTION_4();
  v45(v74);
  v75 = OUTLINED_FUNCTION_17();
  v43(v75);
  sub_266E45C9C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v76 = OUTLINED_FUNCTION_4();
  v45(v76);
  v77 = OUTLINED_FUNCTION_2();
  v43(v77);
  sub_266E45D7C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v78 = OUTLINED_FUNCTION_4();
  v45(v78);
  v79 = OUTLINED_FUNCTION_2();
  v43(v79);
  sub_266E460EC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v80 = OUTLINED_FUNCTION_4();
  v45(v80);
  v81 = OUTLINED_FUNCTION_2();
  v43(v81);
  sub_266E460FC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v82 = OUTLINED_FUNCTION_4();
  v45(v82);
  v83 = OUTLINED_FUNCTION_2();
  v43(v83);
  sub_266E45FFC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v84 = OUTLINED_FUNCTION_4();
  v45(v84);
  v85 = OUTLINED_FUNCTION_2();
  v43(v85);
  sub_266E4604C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v86 = OUTLINED_FUNCTION_4();
  v45(v86);
  v87 = OUTLINED_FUNCTION_2();
  v43(v87);
  sub_266E45F3C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v88 = OUTLINED_FUNCTION_4();
  v45(v88);
  v89 = OUTLINED_FUNCTION_2();
  v43(v89);
  sub_266E4601C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v90 = OUTLINED_FUNCTION_4();
  v45(v90);
  v91 = OUTLINED_FUNCTION_2();
  v43(v91);
  sub_266E4602C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v92 = OUTLINED_FUNCTION_4();
  v45(v92);
  v93 = OUTLINED_FUNCTION_2();
  v43(v93);
  sub_266E4605C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v94 = OUTLINED_FUNCTION_4();
  v45(v94);
  v95 = OUTLINED_FUNCTION_2();
  v43(v95);
  sub_266E45DFC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v96 = OUTLINED_FUNCTION_4();
  v45(v96);
  v97 = OUTLINED_FUNCTION_2();
  v43(v97);
  sub_266E45E6C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v98 = OUTLINED_FUNCTION_4();
  v45(v98);
  v99 = OUTLINED_FUNCTION_2();
  v43(v99);
  sub_266E45CCC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v100 = OUTLINED_FUNCTION_4();
  v45(v100);
  v101 = OUTLINED_FUNCTION_2();
  v43(v101);
  sub_266E45DAC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v102 = OUTLINED_FUNCTION_4();
  v45(v102);
  return v37;
}

void sub_266E34160()
{
  OUTLINED_FUNCTION_16();
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F58);
  v3 = v1;
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v20 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_266E4651C();
    v11 = v10;

    v12 = sub_266E2B0EC(v9, v11, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_266E28000, v4, v5, "Handling SiriDismissedMessage: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v13 = qword_281320F90;
  v14 = *(v0 + qword_281320F90);
  if (v14)
  {
    v15 = v14;
    sub_266E2C3FC(5);

    v16 = *(v0 + v13);
    if (v16)
    {
      v17 = v16;
      sub_266E2C640();

      v18 = *(v0 + v13);
      if (v18)
      {
        v19 = v18;
        sub_266E2DC3C();
      }
    }
  }
}

void sub_266E34344()
{
  OUTLINED_FUNCTION_16();
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F58);
  v3 = v1;
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v25 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_266E4651C();
    v11 = v10;

    v12 = sub_266E2B0EC(v9, v11, &v25);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_20(&dword_266E28000, v13, v14, "Handling AnnounceNotificationHandlingStateUpdatedMessage: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v15 = sub_266E4606C();
  v16 = *(v0 + qword_281320F98 + 8);
  if ((v17 & 1) == 0)
  {
    if (v15 != *(v0 + qword_281320F98))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_15:
    oslog = sub_266E463FC();
    v22 = sub_266E465CC();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266E28000, oslog, v22, "External notification request handler state did not change", v23, 2u);
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    goto LABEL_17;
  }

  if (*(v0 + qword_281320F98 + 8))
  {
    goto LABEL_15;
  }

LABEL_7:
  v18 = sub_266E4606C();
  v20 = *(v0 + qword_281320F90);
  if (!v20)
  {
    return;
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  oslog = v20;
  sub_266E3D24C(v21);
LABEL_17:
}

uint64_t sub_266E345D4()
{
  sub_266E2BE40(v0 + qword_281320B80, &qword_2800E82B0, &unk_266E47190);
  sub_266E2BE40(v0 + qword_281320FA0, &qword_2800E8080, &qword_266E479C0);

  sub_266E2BE40(v0 + qword_281320FA8, &qword_2800E8098, &qword_266E479F0);
}

uint64_t GestureBridge.deinit()
{
  v0 = sub_266E4630C();
  sub_266E2BE40(v0 + qword_281320B80, &qword_2800E82B0, &unk_266E47190);
  sub_266E2BE40(v0 + qword_281320FA0, &qword_2800E8080, &qword_266E479C0);

  sub_266E2BE40(v0 + qword_281320FA8, &qword_2800E8098, &qword_266E479F0);

  return v0;
}

uint64_t GestureBridge.__deallocating_deinit()
{
  v0 = GestureBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GestureBridge(uint64_t a1)
{
  result = qword_281320B70;
  if (!qword_281320B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E347F0()
{
  OUTLINED_FUNCTION_15();
  nullsub_1();
  *v0 = v1;
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

unint64_t sub_266E34864()
{
  result = qword_2800E8088;
  if (!qword_2800E8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8088);
  }

  return result;
}

void sub_266E348B8(uint64_t a1)
{
  sub_266E34A08(319, &qword_281320F18, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_266E34A08(319, &qword_281320EF0, MEMORY[0x277D5D298]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_266E34A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_266E34A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8108, &unk_266E472C0);
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

void sub_266E34BFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t getEnumTagSinglePayload for GestureBridgeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GestureBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266E34E2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000002ELL;
  }
}

uint64_t sub_266E34E9C(char a1)
{
  sub_266E4678C();
  MEMORY[0x26D5F4450](a1 & 1);
  return sub_266E467AC();
}

uint64_t sub_266E34EF4(uint64_t a1)
{
  v2 = *v1;
  sub_266E4678C();
  MEMORY[0x26D5F4450](v2);
  return sub_266E467AC();
}

unint64_t sub_266E34F60()
{
  result = qword_2800E81E0;
  if (!qword_2800E81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81E0);
  }

  return result;
}

void sub_266E3500C(uint64_t a1)
{
  sub_266E45AAC();
  if (v1 <= 0x3F)
  {
    sub_266E461CC();
    if (v2 <= 0x3F)
    {
      sub_266E350B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266E350B8(uint64_t a1)
{
  if (!qword_281320F00)
  {
    sub_266E4619C();
    v1 = sub_266E4668C();
    if (!v2)
    {
      atomic_store(v1, &qword_281320F00);
    }
  }
}

uint64_t sub_266E35168(uint64_t a1)
{
  result = sub_266E461CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266E351FC(uint64_t a1)
{
  result = sub_266E464AC();
  if (v2 <= 0x3F)
  {
    result = sub_266E4640C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266E35298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_266E352EC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_266E37738(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_25(v3);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x747065636361;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_24();
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = OUTLINED_FUNCTION_25(v6);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463656A6572;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_24();
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_266E37738((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x7373696D736964;
    *(v11 + 5) = 0xE700000000000000;
  }

  v12 = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  sub_266E37A58(&qword_2800E8218, &qword_2800E8210, &qword_266E47740, MEMORY[0x277D83958]);
  sub_266E464EC();

  return OUTLINED_FUNCTION_28();
}

uint64_t sub_266E354C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E354EC();
  *a1 = result;
  return result;
}

uint64_t sub_266E354F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35524(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266E3552C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E3555C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266E3556C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266E355A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266E355A0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_266E355C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266E355F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266E355F8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_266E35628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35658(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_266E356B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266E35750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_266E37A10(a4, a5, a6);
  sub_266E4657C();
  sub_266E4657C();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_266E4673C();
  }

  return v10 & 1;
}

uint64_t sub_266E35828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35298(a1);
  *a2 = result;
  return result;
}

void sub_266E35850(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    if ([v4 acceptGesture] == 2 && objc_msgSend(v4, sel_rejectGesture) == 1)
    {

      v5 = *MEMORY[0x277D5CF88];
      v6 = sub_266E461CC();
      OUTLINED_FUNCTION_10();
      oslog = *(v7 + 104);
      (oslog)(a2, v5, v6);
      OUTLINED_FUNCTION_35();
      v9 = MEMORY[0x277D5CF80];
    }

    else
    {
      if ([v4 acceptGesture] != 1 || objc_msgSend(v4, sel_rejectGesture) != 2)
      {
        if (qword_281320AA0 != -1)
        {
          OUTLINED_FUNCTION_3_0(&qword_281320AA0);
        }

        v10 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v10, qword_281320F58);
        v11 = v4;
        v12 = sub_266E463FC();
        v13 = sub_266E465CC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = OUTLINED_FUNCTION_21();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v11;
          *v15 = a1;
          v16 = v11;
          _os_log_impl(&dword_266E28000, v12, v13, "Invalid configuration: %@, using default values", v14, 0xCu);
          sub_266E2BE40(v15, &qword_2800E8278, &qword_266E478D0);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_14_0();
        }
      }

      v17 = *MEMORY[0x277D5CF80];
      v6 = sub_266E461CC();
      OUTLINED_FUNCTION_10();
      oslog = *(v18 + 104);
      (oslog)(a2, v17, v6);
      OUTLINED_FUNCTION_35();
      v9 = MEMORY[0x277D5CF88];
    }

    v19 = *v9;

    (oslog)(a2 + v8, v19, v6);
  }

  else
  {
    v20 = *MEMORY[0x277D5CF80];
    v21 = sub_266E461CC();
    OUTLINED_FUNCTION_10();
    v23 = *(v22 + 104);
    v23(a2, v20, v21);
    OUTLINED_FUNCTION_35();
    v23(a2 + v24, *MEMORY[0x277D5CF88], v21);
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_281320AA0);
    }

    v25 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v25, qword_281320F58);
    osloga = sub_266E463FC();
    v26 = sub_266E465CC();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = OUTLINED_FUNCTION_26();
      *v27 = 0;
      _os_log_impl(&dword_266E28000, osloga, v26, "Received nil gesture configuration, using default gesture mapping", v27, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }
}

void sub_266E35BE0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = sub_266E461CC();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = MEMORY[0x277D5CF88];
  v12 = MEMORY[0x277D5CF80];
  v66 = v0;
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_6_0();
    v1(v13);
    OUTLINED_FUNCTION_0_0();
    v14 = OUTLINED_FUNCTION_27();
    v20 = sub_266E35750(v14, v15, v16, v17, v18, v19);
    v21 = OUTLINED_FUNCTION_12_0();
    v22(v21);
    if (v20)
    {
      v23 = 1;
      goto LABEL_16;
    }
  }

  if (v3 & 2) != 0 && (v24 = *(type metadata accessor for GestureMapping(0) + 20), v25 = OUTLINED_FUNCTION_6_0(), v1(v25), OUTLINED_FUNCTION_0_0(), LOBYTE(v24) = sub_266E35750(v0 + v24, v10, v26, v27, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]), v28 = OUTLINED_FUNCTION_12_0(), v29(v28), (v24))
  {
    v23 = 1;
    if ((v3 & 1) == 0)
    {
      v30 = v11;
      goto LABEL_18;
    }
  }

  else
  {
    v30 = v11;
    if ((v3 & 4) != 0)
    {
      v31 = *(type metadata accessor for GestureMapping(0) + 20);
      v32 = OUTLINED_FUNCTION_6_0();
      v1(v32);
      OUTLINED_FUNCTION_0_0();
      v23 = sub_266E35750(v66 + v31, v10, v33, v34, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]);
      v35 = OUTLINED_FUNCTION_9_0();
      v12(v35);
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
          goto LABEL_37;
        }

        v23 = 0;
LABEL_18:
        v44 = *(type metadata accessor for GestureMapping(0) + 20);
        v1 = *(v6 + 104);
        (v1)(v10, *v30, v4);
        OUTLINED_FUNCTION_0_0();
        LOBYTE(v44) = sub_266E35750(v66 + v44, v10, v45, v46, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]);
        v47 = OUTLINED_FUNCTION_9_0();
        v12(v47);
        if (v44)
        {
          goto LABEL_19;
        }

LABEL_21:
        if ((v3 & 4) != 0)
        {
          v49 = *(type metadata accessor for GestureMapping(0) + 20);
          (v1)(v10, *v30, v4);
          OUTLINED_FUNCTION_0_0();
          v48 = sub_266E35750(v66 + v49, v10, v50, v51, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]);
          v52 = OUTLINED_FUNCTION_12_0();
          v12(v52);
          if ((v23 & 1) == 0)
          {
            if ((v48 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if ((v23 & 1) == 0)
          {
            goto LABEL_37;
          }

          v48 = 0;
        }

        goto LABEL_25;
      }

      v23 = 0;
      v1 = *(v6 + 104);
    }
  }

LABEL_16:
  (v1)(v10, *v11, v4);
  OUTLINED_FUNCTION_0_0();
  v36 = OUTLINED_FUNCTION_27();
  v42 = sub_266E35750(v36, v37, v38, v39, v40, v41);
  v43 = OUTLINED_FUNCTION_9_0();
  v12(v43);
  if ((v42 & 1) == 0)
  {
    v30 = v11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_19:
  if ((v23 & 1) == 0)
  {
LABEL_32:
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_281320AA0);
    }

    v61 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v61, qword_281320F58);
    v62 = sub_266E463FC();
    v63 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v63))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v64, v65, "🙂‍↔️ Accepting shakes");
      OUTLINED_FUNCTION_10_0();
    }

    goto LABEL_37;
  }

  v48 = 1;
LABEL_25:
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v53 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v53, qword_281320F58);
  v54 = sub_266E463FC();
  v55 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v55))
  {
    *OUTLINED_FUNCTION_26() = 0;
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_11_0();
  }

  if (v48)
  {
    goto LABEL_32;
  }

LABEL_37:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E36104()
{
  v1 = sub_266E461CC();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = *(v3 + 104);
  v8(v6 - v5, *MEMORY[0x277D5CF88], v1);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_28();
  v15 = sub_266E35750(v9, v10, v11, v12, v13, v14);
  v16 = *(v3 + 8);
  v16(v7, v1);
  if (v15)
  {
    v17 = *(type metadata accessor for GestureMapping(0) + 20);
    v8(v7, *MEMORY[0x277D5CF80], v1);
    OUTLINED_FUNCTION_0_0();
    v20 = sub_266E35750(v0 + v17, v7, v18, v19, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]);
    v16(v7, v1);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_266E362B4()
{
  v0 = sub_266E461CC();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_28();
  v8(v7);
  v9 = (*(v2 + 88))(v6, v0);
  if (v9 == *MEMORY[0x277D5CF80])
  {
    return 0x1000000000000011;
  }

  if (v9 == *MEMORY[0x277D5CF88])
  {
    return 0x1000000000000013;
  }

  (*(v2 + 8))(v6, v0);
  return 0x55208FB8EFBC80E2;
}

uint64_t sub_266E36418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_0();
  if (sub_266E35750(v7, v8, v9, v10, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]))
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_0_0();
    v14 = sub_266E35750(a1 + v11, a2 + v11, v12, v13, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_266E364D0()
{
  result = qword_2800E81F0;
  if (!qword_2800E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81F0);
  }

  return result;
}

unint64_t sub_266E36528()
{
  result = qword_2800E81F8;
  if (!qword_2800E81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81F8);
  }

  return result;
}

unint64_t sub_266E36580()
{
  result = qword_2800E8200;
  if (!qword_2800E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8200);
  }

  return result;
}

unint64_t sub_266E365D8()
{
  result = qword_2800E8208;
  if (!qword_2800E8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8208);
  }

  return result;
}

uint64_t sub_266E3662C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = type metadata accessor for GestureResponse(0);
  sub_266E36B64(v1 + *(v5 + 28), v4);
  v6 = sub_266E4619C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_266E2BE40(v4, &qword_2800E81E8, &unk_266E474D0);
    v7 = 0x8000000266E47CC0;
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = sub_266E4612C();
    v7 = v9;
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_266E466EC();
  MEMORY[0x26D5F4210](91, 0xE100000000000000);
  sub_266E45A6C();
  sub_266E4659C();
  MEMORY[0x26D5F4210](0xD000000000000013, 0x8000000266E47CE0);
  sub_266E461CC();
  sub_266E4670C();
  MEMORY[0x26D5F4210](540945696, 0xE400000000000000);
  v10 = sub_266E352EC(*v1);
  MEMORY[0x26D5F4210](v10);

  MEMORY[0x26D5F4210](0x20726F6620, 0xE500000000000000);
  MEMORY[0x26D5F4210](v8, v7);

  return v12[0];
}

void sub_266E3685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_266E4619C();
  OUTLINED_FUNCTION_5();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8228, &qword_266E47750);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  if (*v25 == *v23)
  {
    v40 = type metadata accessor for GestureResponse(0);
    if (sub_266E45A7C())
    {
      OUTLINED_FUNCTION_0_0();
      if (sub_266E35750(v25 + v41, v23 + v41, v42, v43, MEMORY[0x277D5CF98], MEMORY[0x277D5CFA8]))
      {
        v44 = *(v40 + 28);
        v45 = *(v36 + 48);
        sub_266E36B64(v25 + v44, v39);
        sub_266E36B64(v23 + v44, &v39[v45]);
        OUTLINED_FUNCTION_34(v39);
        if (!v46)
        {
          sub_266E36B64(v39, v35);
          OUTLINED_FUNCTION_34(&v39[v45]);
          if (!v46)
          {
            v47 = OUTLINED_FUNCTION_18_0();
            v48(v47);
            sub_266E37A10(&qword_2800E8230, MEMORY[0x277D5CE58], MEMORY[0x277D5CE60]);
            OUTLINED_FUNCTION_12_0();
            sub_266E464FC();
            v49 = *(v28 + 8);
            v49(v32, v26);
            v49(v35, v26);
            sub_266E2BE40(v39, &qword_2800E81E8, &unk_266E474D0);
            goto LABEL_13;
          }

          (*(v28 + 8))(v35, v26);
LABEL_12:
          sub_266E2BE40(v39, &qword_2800E8228, &qword_266E47750);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_34(&v39[v45]);
        if (!v46)
        {
          goto LABEL_12;
        }

        sub_266E2BE40(v39, &qword_2800E81E8, &unk_266E474D0);
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E36B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_266E36C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 headGesture];
  v4 = sub_266E461CC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D5CF90];
  if (v3 == 2)
  {
    v6 = MEMORY[0x277D5CF88];
  }

  if (v3 == 1)
  {
    v6 = MEMORY[0x277D5CF80];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_266E36CC0(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7055646F4ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E776F44646F4ELL;
      break;
    case 2:
      result = 0x66654C656B616853;
      break;
    case 3:
      result = 0x676952656B616853;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_266E36D64()
{
  OUTLINED_FUNCTION_31();
  v20 = v0;
  v1 = sub_266E45A0C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v19 = sub_266E464CC();
  v8 = sub_266E464CC();
  v9 = [objc_opt_self() sharedPreferences];
  v10 = [v9 _languageCodeWithFallback_];

  if (v10)
  {
    sub_266E4651C();

    v11 = sub_266E4653C();
    v13 = v12;
  }

  else
  {
    v11 = 28261;
    v13 = 0xE200000000000000;
  }

  sub_266E37914();
  sub_266E37968();
  v14 = sub_266E464DC();

  if (v14)
  {
    v15 = v20;
  }

  else
  {
    sub_266E379BC();
    sub_266E466AC();

    sub_266E37A10(&qword_2800E8258, MEMORY[0x277CC8848], MEMORY[0x277CC8858]);
    v16 = OUTLINED_FUNCTION_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    sub_266E37A58(&qword_2800E8268, &qword_2800E8260, &qword_266E47758, MEMORY[0x277D83970]);
    sub_266E466CC();
    v18 = sub_266E4669C();
    (*(v3 + 8))(v7, v1);

    if (v18[2])
    {
      v11 = v18[4];
      v13 = v18[5];
    }

    else
    {
      v13 = 0xE200000000000000;
      v11 = 28261;
    }

    v15 = v20;
  }

  if (v15 == 1)
  {

    sub_266E37168(v11, v13, v19);
  }

  else
  {

    if (v15 == 2)
    {
      sub_266E37168(v11, v13, v8);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E37168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266E37AA0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_266E371C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_33();
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E4650C();
    v4 = OUTLINED_FUNCTION_18_0();
    v6 = [v4 v5];

    if (v6)
    {

      return 1;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v17 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
    v18 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v19))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v20, v21, "shouldUseSystemSounds: false");
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v2 = sub_266E463FC();
    v9 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v9))
    {
      v10 = OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_23_0();
      *(v10 + 4) = OUTLINED_FUNCTION_21_0(4.8149e-34, v22, v11);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_11_0();
    }
  }

  return 0;
}

void sub_266E37378(uint64_t a1)
{
  sub_266E45AAC();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = (v4 - v3);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_266E2DFC8(0xD00000000000001CLL, 0x8000000266E47E60);
  if (v7)
  {
    v8 = v7;
    switch(a1)
    {
      case 4:
        sub_266E45A9C();
        v18 = v5;
        sub_266E45A5C();
        v21 = OUTLINED_FUNCTION_8_1();
        v22(v21);
        break;
      case 2:
        sub_266E45A9C();
        v18 = v5;
        sub_266E45A5C();
        v19 = OUTLINED_FUNCTION_8_1();
        v20(v19);
        OUTLINED_FUNCTION_29();
        break;
      case 1:
        sub_266E45A9C();
        sub_266E45A5C();
        v9 = OUTLINED_FUNCTION_8_1();
        v10(v9);
        OUTLINED_FUNCTION_29();
        v11 = sub_266E4650C();
        v12 = OUTLINED_FUNCTION_18_0();
        [v12 v13];

        return;
      default:
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v26 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v26, qword_281320F40);
        v33 = sub_266E463FC();
        v27 = sub_266E465CC();
        if (os_log_type_enabled(v33, v27))
        {
          v28 = OUTLINED_FUNCTION_21();
          v29 = OUTLINED_FUNCTION_23_0();
          v34 = v29;
          *v28 = 136315138;
          v30 = sub_266E352EC(a1);
          v32 = sub_266E2B0EC(v30, v31, &v34);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_266E28000, v33, v27, "Tried to log unhandled user intent usage date: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_14_0();

          goto LABEL_17;
        }

        goto LABEL_19;
    }

    v23 = sub_266E4650C();
    v24 = OUTLINED_FUNCTION_18_0();
    [v24 v25];

    return;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v14 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v14, qword_281320F40);
  v33 = sub_266E463FC();
  v15 = sub_266E465CC();
  if (os_log_type_enabled(v33, v15))
  {
    v16 = OUTLINED_FUNCTION_21();
    v17 = OUTLINED_FUNCTION_23_0();
    v34 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_266E2B0EC(0xD000000000000013, 0x8000000266E47D00, &v34);
    _os_log_impl(&dword_266E28000, v33, v15, "UserDefault suite: %s couldn't be opened.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_14_0();
LABEL_17:

    return;
  }

LABEL_19:
}

char *sub_266E37738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8220, &qword_266E47748);
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

uint64_t sub_266E37840(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266E45C8C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_266E45C8C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_266E37914()
{
  result = qword_2800E8240;
  if (!qword_2800E8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8240);
  }

  return result;
}

unint64_t sub_266E37968()
{
  result = qword_2800E8248;
  if (!qword_2800E8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8248);
  }

  return result;
}

unint64_t sub_266E379BC()
{
  result = qword_2800E8250;
  if (!qword_2800E8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8250);
  }

  return result;
}

uint64_t sub_266E37A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266E37A58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_266E37AA0(uint64_t a1, uint64_t a2)
{
  sub_266E4678C();
  sub_266E4654C();
  v4 = sub_266E467AC();

  return sub_266E37B18(a1, a2, v4);
}

unint64_t sub_266E37B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266E4673C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_25@<X0>(unint64_t a1@<X8>)
{

  return sub_266E37738((a1 > 1), v2, 1, v1);
}

id OUTLINED_FUNCTION_33()
{

  return sub_266E2DFC8(0xD000000000000013, v0 | 0x8000000000000000);
}

void sub_266E37C94()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v57 = v2;
  v56 = sub_266E4640C();
  OUTLINED_FUNCTION_5();
  v59 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v58 = v6 - v5;
  OUTLINED_FUNCTION_55();
  v60 = sub_266E465FC();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v53 = v11 - v10;
  OUTLINED_FUNCTION_55();
  sub_266E465DC();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v13 = sub_266E4646C();
  v14 = OUTLINED_FUNCTION_12(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v52 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue;
  sub_266E408CC(0, &qword_281320A48, 0x277D85C78);
  sub_266E4644C();
  v62 = MEMORY[0x277D84F90];
  sub_266E40994(&qword_281320A50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8328, &qword_266E478E0);
  sub_266E409D8(&unk_281320A60, &qword_2800E8328, &qword_266E478E0);
  sub_266E466CC();
  v55 = *MEMORY[0x277D85260];
  v54 = *(v8 + 104);
  v54(v53);
  *&v0[v52] = sub_266E4661C();
  v15 = &v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState] = 0;
  sub_266E35850(0, &v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping]);
  type metadata accessor for GestureMapping(0);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver] = 0;
  v20 = &v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureDeduper];
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v21 = __swift_project_value_buffer(v56, qword_281320F40);
  v22 = *(v59 + 16);
  v22(v58, v21, v56);
  sub_266E4647C();
  v23 = type metadata accessor for EventDeduper(0);
  v24 = &v20[v23[6]];
  *v24 = 1953066569;
  *(v24 + 1) = 0xE400000000000000;
  v25 = v23[7];
  if (qword_281320AA0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v56, qword_281320F58);
  v22(&v20[v25], v26, v56);
  *&v20[v23[5]] = 1000000;
  (*(v59 + 40))(&v20[v25], v58, v56);
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager] = 0;
  sub_266E4619C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation] = 0;
  v31 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserverQueue;
  sub_266E4645C();
  v62 = MEMORY[0x277D84F90];
  sub_266E466CC();
  (v54)(v53, v55, v60);
  *&v1[v31] = sub_266E4661C();
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation] = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_internalTesting] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] = v57;
  swift_unknownObjectRetain();
  v36 = sub_266E463FC();
  v37 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v37))
  {
    v38 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v38);
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v39, v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_10_0();
  }

  v61.receiver = v1;
  v61.super_class = type metadata accessor for GestureController(0);
  v45 = objc_msgSendSuper2(&v61, sel_init);
  v46 = *&v45[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserverQueue];
  objc_allocWithZone(MEMORY[0x277CEF338]);
  v47 = v45;
  v48 = v46;
  v49 = sub_266E40634(0xD000000000000023, 0x8000000266E483C0, 1, v46, v45);
  v50 = *&v47[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver];
  *&v47[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver] = v49;

  v51 = [objc_opt_self() sharedPreferences];
  LODWORD(v46) = [v51 allowHeadGestureInjection];

  if (v46)
  {
    sub_266E38474();
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32();
}

void sub_266E383F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager);
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E45BBC();

    AFIsInternalInstall();
    sub_266E45B3C();
  }
}

uint64_t sub_266E3845C(uint64_t a1)
{
  v1 = 4;
  if (a1 == 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void sub_266E38474()
{
  v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_internalTesting] = 1;
  v1 = *&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
  if (v1)
  {
    if ([*&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_])
    {
      OUTLINED_FUNCTION_54();
      v2 = swift_allocObject();
      *(v2 + 16) = v0;
      v5[4] = sub_266E4088C;
      v5[5] = v2;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 1107296256;
      v5[2] = sub_266E38578;
      v5[3] = &block_descriptor_190;
      v3 = _Block_copy(v5);
      v4 = v0;
      [v1 registerInternalGestureTestingHandler_];
      _Block_release(v3);
    }
  }
}

uint64_t sub_266E38578(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_266E408A4;
  }

  else
  {
    v8 = 0;
  }

  v6(a2, a3, v7, v8);
  sub_266E40894(v7, v8);
}

void sub_266E38638(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    a3 = sub_266E4650C();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1 & 1);
}

uint64_t sub_266E386A4(uint64_t a1, char a2, void (*a3)(void, void, void), uint64_t a4, char *a5)
{
  v10 = sub_266E4642C();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266E4646C();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *&a5[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a5;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  v17 = objc_opt_self();
  v18 = a5;
  sub_266E408BC(a3, a4);
  v35 = v18;
  sub_266E408BC(a3, a4);
  v19 = [v17 currentQueue];
  v20 = [v19 underlyingQueue];

  if (v20 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v21 = v36, v22 = sub_266E4666C(), v21, v20, (v22 & 1) != 0))
  {
    v23 = v35;
    sub_266E38AFC(a1, v35, a2 & 1, a3, a4);

    return sub_266E40894(a3, a4);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = sub_266E408AC;
    *(v25 + 24) = v16;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_203;
    v26 = _Block_copy(aBlock);

    v27 = v15;
    sub_266E4643C();
    v37 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v28 = v31;
    v30 = a3;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    v29 = v34;
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v27, v29, v26);
    _Block_release(v26);
    (*(v28 + 8))(v29, v10);
    (*(v33 + 8))(v27, v32);

    return sub_266E40894(v30, a4);
  }
}

void sub_266E38AFC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_266E45AEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_266E45AAC();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) <= 1)
  {
    v19 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing);
    v69 = a5;
    if (v19)
    {
      v64 = v19;
      v66 = v10;
      v67 = v16;
      v68 = v15;
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_266E466EC();

      v20 = "🧪 Simulating ";
LABEL_12:
      v70 = 0x1000000000000010;
      v71 = (v20 - 32) | 0x8000000000000000;
      if (a1 == 1)
      {
        v28 = 0x1000000000000011;
      }

      else
      {
        v28 = 0x1000000000000013;
      }

      if (a1 == 1)
      {
        v29 = "shake 🙂‍↔️";
      }

      else
      {
        v29 = "ble is not engaged";
      }

      MEMORY[0x26D5F4210](v28, v29 | 0x8000000000000000);

      v30 = v70;
      v31 = v71;
      v65 = v11;
      v32 = qword_281320A90;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = sub_266E4640C();
      __swift_project_value_buffer(v33, qword_281320F40);

      v34 = sub_266E463FC();
      v35 = sub_266E465BC();

      v36 = os_log_type_enabled(v34, v35);
      v63 = v30;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v62 = a2;
        v39 = a4;
        v40 = v38;
        v70 = v38;
        *v37 = 136315138;
        v41 = sub_266E2B0EC(v30, v31, &v70);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_266E28000, v34, v35, "%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v42 = v40;
        a4 = v39;
        a2 = v62;
        MEMORY[0x26D5F4920](v42, -1, -1);
        MEMORY[0x26D5F4920](v37, -1, -1);
      }

      else
      {
      }

      v43 = [objc_allocWithZone(MEMORY[0x277D0FB50]) init];
      sub_266E45A9C();
      v44 = sub_266E45A5C();
      [v43 setTimestamp_];

      v45 = 4;
      if (a1 == 2)
      {
        v45 = 2;
      }

      if (a1 == 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      [v43 setHeadGesture_];
      sub_266E408CC(0, &unk_2800E8318, 0x277CCABB0);
      v47 = sub_266E4665C();
      [v43 setAvgConfidence_];

      [v43 setHeadGesturePart_];
      sub_266E45ADC();
      v48 = sub_266E45ACC();
      (*(v65 + 8))(v13, v66);
      [v43 setUuid_];

      if (a4)
      {
        a4(1, v63, v31);
      }

      if (v64)
      {
        sub_266E3BAF8();

        (*(v67 + 8))(v18, v68);
      }

      else
      {
        (*(v67 + 8))(v18, v68);
        v49 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult);
        *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult) = v43;
      }

      return;
    }

    if (a3)
    {
      v64 = v19;
      v66 = v10;
      v67 = v16;
      v68 = v15;
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_266E466EC();

      v20 = "🧪 Scheduling ";
      goto LABEL_12;
    }

    v50 = a4;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_266E466EC();
    MEMORY[0x26D5F4210](0x1000000000000010, 0x8000000266E48270);
    if (a1 == 1)
    {
      v51 = 0x1000000000000011;
    }

    else
    {
      v51 = 0x1000000000000013;
    }

    if (a1 == 1)
    {
      v52 = "shake 🙂‍↔️";
    }

    else
    {
      v52 = "ble is not engaged";
    }

    MEMORY[0x26D5F4210](v51, v52 | 0x8000000000000000);

    MEMORY[0x26D5F4210](0xD000000000000022, 0x8000000266E48290);
    v54 = v70;
    v53 = v71;
    v55 = qword_281320A90;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = sub_266E4640C();
    __swift_project_value_buffer(v56, qword_281320F40);

    v57 = sub_266E463FC();
    v58 = sub_266E465CC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v59 = 136315138;
      v61 = sub_266E2B0EC(v54, v53, &v70);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_266E28000, v57, v58, "%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x26D5F4920](v60, -1, -1);
      MEMORY[0x26D5F4920](v59, -1, -1);

      if (!v50)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (!v50)
      {
LABEL_47:

        return;
      }
    }

    v50(0, v54, v53);
    goto LABEL_47;
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v21 = sub_266E4640C();
  __swift_project_value_buffer(v21, qword_281320F40);
  v22 = sub_266E463FC();
  v23 = sub_266E465CC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = a4;
    v26 = swift_slowAlloc();
    v70 = v26;
    *v24 = 136315138;
    *(v24 + 4) = sub_266E2B0EC(0x1000000000000014, 0x8000000266E48250, &v70);
    _os_log_impl(&dword_266E28000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v27 = v26;
    a4 = v25;
    MEMORY[0x26D5F4920](v27, -1, -1);
    MEMORY[0x26D5F4920](v24, -1, -1);
  }

  if (a4)
  {
    a4(0, 0x1000000000000014, 0x8000000266E48250);
  }
}

void sub_266E39330()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for GestureMapping(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8310, &qword_266E478D8);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  v12 = OUTLINED_FUNCTION_12(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v67 = v13;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v15);
  v70 = &v65 - v16;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v17 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
  v18 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_26();
    *v20 = 0;
    _os_log_impl(&dword_266E28000, v18, v1, "Fetching gesture mapping", v20, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  v66 = v7;

  v21 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v21 && ([*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper) respondsToSelector_] & 1) != 0)
  {
    v22 = [v21 headGestureConfiguration];
  }

  else
  {
    v22 = 0;
  }

  v23 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping;
  OUTLINED_FUNCTION_58(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping);
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v24, v25, v26, v27);
  v69 = v22;
  sub_266E35850(v22, v2);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v3);
  OUTLINED_FUNCTION_57(v0 + v23);
  OUTLINED_FUNCTION_76();
  sub_266E2B3B0(v31, v32, v33, v34);
  swift_endAccess();
  v35 = *(v68 + 48);
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v36, v37, v38, v39);
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v40, v41, v42, v43);
  OUTLINED_FUNCTION_63(v10, 1, v3);
  if (!v46)
  {
    v45 = v67;
    sub_266E2BDC8(v10, v67, &qword_2800E82F8, &qword_266E478C8);
    OUTLINED_FUNCTION_63(&v10[v35], 1, v3);
    if (!v46)
    {
      v58 = v66;
      sub_266E406F8(&v10[v35], v66);
      v59 = OUTLINED_FUNCTION_73();
      v62 = sub_266E356C0(v59, v60, v61);
      if (v62)
      {
        v64 = sub_266E356C0(v45 + *(v3 + 20), v58 + *(v3 + 20), v63);
        sub_266E4093C(v58, type metadata accessor for GestureMapping);
        sub_266E4093C(v45, type metadata accessor for GestureMapping);
        sub_266E2BE40(v10, &qword_2800E82F8, &qword_266E478C8);
        if (v64)
        {
          sub_266E2BE40(v70, &qword_2800E82F8, &qword_266E478C8);

          goto LABEL_24;
        }

        goto LABEL_19;
      }

      sub_266E4093C(v58, type metadata accessor for GestureMapping);
      sub_266E4093C(v45, type metadata accessor for GestureMapping);
      v48 = &qword_2800E82F8;
      v49 = &qword_266E478C8;
LABEL_18:
      sub_266E2BE40(v10, v48, v49);
LABEL_19:
      v50 = sub_266E463FC();
      v51 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v51))
      {
        v52 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v52);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      else
      {
      }

      v44 = v70;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_6_1();
    sub_266E4093C(v45, v47);
LABEL_17:
    v48 = &qword_2800E8310;
    v49 = &qword_266E478D8;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_63(&v10[v35], 1, v3);
  if (!v46)
  {
    goto LABEL_17;
  }

  sub_266E2BE40(v70, &qword_2800E82F8, &qword_266E478C8);

  v44 = v10;
LABEL_23:
  sub_266E2BE40(v44, &qword_2800E82F8, &qword_266E478C8);
LABEL_24:
  OUTLINED_FUNCTION_32();
}

void sub_266E397EC()
{
  if (sub_266E2FE18())
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v1 = sub_266E4640C();
    __swift_project_value_buffer(v1, qword_281320F40);
    v2 = v0;
    v3 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_61();
      *v5 = 67109120;
      v5[1] = *(&v2->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement);

      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v3 = v2;
    }

    v28 = sub_266E2FFC8(1);
    if (v28)
    {
      v29 = v28;
      sub_266E3A25C();
      sub_266E3AAD0();
      v30 = *(&v2->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
      v31 = v2;
      v44 = v29;
      sub_266E3F6B4(v30, v31, v31, v44);
      goto LABEL_16;
    }

    v45 = sub_266E463FC();
    v32 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v32, v33, v34, v35, v36, v37, v38, v39, v41, v45))
    {
      v40 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v40);
      v27 = "HGManager is nil";
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v11 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v11, qword_281320F40);
    v43 = sub_266E463FC();
    v12 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v41, v43))
    {
      v20 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v20);
      v27 = "Bobble is not available";
LABEL_15:
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v21, v22, v27, v23, v24, v25, v26, v42, v44);
      OUTLINED_FUNCTION_27_0();
    }
  }

LABEL_16:
}

void sub_266E399DC(_BYTE *a1)
{
  v2 = sub_266E4642C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266E4646C();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_266E464AC();
  isa = v47[-1].isa;
  v9 = MEMORY[0x28223BE20](v47);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v40 - v12;
  if ((sub_266E2EC5C() & 1) == 0)
  {
    if (qword_281320A90 != -1)
    {
      swift_once();
    }

    v19 = sub_266E4640C();
    __swift_project_value_buffer(v19, qword_281320F40);
    v47 = sub_266E463FC();
    v16 = sub_266E465BC();
    if (!os_log_type_enabled(v47, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Gesture recognition isn't needed anymore, cancelling start";
    goto LABEL_11;
  }

  v44 = v6;
  v14 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing;
  if (a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing])
  {
    if (qword_281320A90 != -1)
    {
      swift_once();
    }

    v15 = sub_266E4640C();
    __swift_project_value_buffer(v15, qword_281320F40);
    v47 = sub_266E463FC();
    v16 = sub_266E465BC();
    if (!os_log_type_enabled(v47, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Gesture recognition is already active";
LABEL_11:
    _os_log_impl(&dword_266E28000, v47, v16, v18, v17, 2u);
    MEMORY[0x26D5F4920](v17, -1, -1);
LABEL_12:
    v20 = v47;

    return;
  }

  v42 = v2;
  v43 = v5;
  v41 = v3;
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v21 = sub_266E4640C();
  __swift_project_value_buffer(v21, qword_281320F40);
  v22 = sub_266E463FC();
  v23 = sub_266E465BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_266E28000, v22, v23, "🫨 Starting gesture recognition", v24, 2u);
    MEMORY[0x26D5F4920](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting;
  a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 1;
  sub_266E45BDC();
  a1[v25] = 0;
  a1[v14] = 1;
  v26 = sub_266E463FC();
  v27 = sub_266E465BC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_266E28000, v26, v27, "🫨 Started gesture recognition", v28, 2u);
    MEMORY[0x26D5F4920](v28, -1, -1);
  }

  v29 = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult];
  v30 = v43;
  if (v29)
  {
    v31 = v29;
    v32 = sub_266E463FC();
    v33 = sub_266E465BC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266E28000, v32, v33, "🧪 Simulating scheduled head gesture in 1.5 seconds", v34, 2u);
      MEMORY[0x26D5F4920](v34, -1, -1);
    }

    v40[1] = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
    sub_266E4649C();
    sub_266E464BC();
    isa = *(isa + 1);
    (isa)(v11, v47);
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    *(v35 + 24) = v31;
    aBlock[4] = sub_266E40884;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_184;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = a1;
    sub_266E4643C();
    v48 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    v39 = v42;
    sub_266E466CC();
    MEMORY[0x26D5F42A0](v13, v8, v30, v36);
    _Block_release(v36);

    (*(v41 + 8))(v30, v39);
    (*(v46 + 8))(v8, v44);
    (isa)(v13, v47);
  }
}

void sub_266E3A104(uint64_t a1, uint64_t a2)
{
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v3 = sub_266E4640C();
  __swift_project_value_buffer(v3, qword_281320F40);
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_266E28000, v4, v5, "🧪 Simulating scheduled head gesture", v6, 2u);
    MEMORY[0x26D5F4920](v6, -1, -1);
  }

  sub_266E3BAF8();
  v7 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult);
  *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult) = 0;
}

uint64_t sub_266E3A218(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_266E3A25C()
{
  v1 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement;
  if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) == 1)
  {
    result = sub_266E2E584();
    if (result)
    {
      v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
      v4 = 7;
LABEL_8:
      *(v0 + v3) = v4;
      return result;
    }

    if (*(v0 + v1) == 1)
    {
      v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
      v4 = 4;
      goto LABEL_8;
    }
  }

  result = sub_266E2E584();
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
  if (result)
  {
    v4 = 3;
    goto LABEL_8;
  }

  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) = 0;
  return result;
}

uint64_t sub_266E3A2E0(char a1)
{
  v3 = v1;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v5 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v5, qword_281320F40);
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v24 = v9;
    *v8 = 136315138;
    v10 = sub_266E2CBA8(a1);
    sub_266E2B0EC(v10, v11, &v24);
    OUTLINED_FUNCTION_74();

    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_10_0();
  }

  *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent] = 0;
  sub_266E3AF84();
  sub_266E3AAD0();
  v17 = v3;
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_85();

  return sub_266E3F2C8(v18, v19, v20, v21);
}

void sub_266E3A41C(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing;
  if ((a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] & 1) != 0 || a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] == 1)
  {
    v5 = &a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement];
    if ((a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        swift_once();
      }

      v6 = sub_266E4640C();
      __swift_project_value_buffer(v6, qword_281320F40);
      v7 = sub_266E463FC();
      v8 = sub_266E465BC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v39 = v10;
        *v9 = 136315138;
        v11 = sub_266E2CBA8(a2);
        v13 = sub_266E2B0EC(v11, v12, &v39);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_266E28000, v7, v8, "🫨 Stopping gesture recognition for reason: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D5F4920](v10, -1, -1);
        MEMORY[0x26D5F4920](v9, -1, -1);
      }

      v14 = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
      if (v14)
      {
        *(swift_allocObject() + 16) = a1;
        v15 = v14;
        v16 = a1;
        sub_266E45BCC();
      }

      a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 0;
      a1[v4] = 0;
      oslog = sub_266E463FC();
      v17 = sub_266E465BC();
      if (!os_log_type_enabled(oslog, v17))
      {
        goto LABEL_23;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      v20 = sub_266E2CBA8(a2);
      v22 = sub_266E2B0EC(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_266E28000, oslog, v17, "🫨 Stopped gesture recognition for reason: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5F4920](v19, -1, -1);
      v23 = v18;
LABEL_22:
      MEMORY[0x26D5F4920](v23, -1, -1);
LABEL_23:
      v36 = oslog;
      goto LABEL_25;
    }
  }

  else
  {
    v5 = &a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement];
    if (a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] != 1)
    {
      goto LABEL_18;
    }
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v24 = sub_266E4640C();
  __swift_project_value_buffer(v24, qword_281320F40);
  v25 = sub_266E463FC();
  v26 = sub_266E465BC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    v29 = sub_266E2CBA8(a2);
    v31 = sub_266E2B0EC(v29, v30, &v39);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_266E28000, v25, v26, "🫨 Not stopping gesture recognition for reason: %s as it's still needed for early dismissal, updating states", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D5F4920](v28, -1, -1);
    MEMORY[0x26D5F4920](v27, -1, -1);
  }

  sub_266E2C708(0, 8);
LABEL_18:
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v32 = sub_266E4640C();
  __swift_project_value_buffer(v32, qword_281320F40);
  v37 = a1;
  oslog = sub_266E463FC();
  v33 = sub_266E465BC();
  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v35 = a1[v4];
    *v34 = 67109376;
    *(v34 + 4) = v35;
    *(v34 + 8) = 1024;
    *(v34 + 10) = *v5;

    _os_log_impl(&dword_266E28000, oslog, v33, "🫨 recognizing: %{BOOL}d readingAnnouncement: %{BOOL}d", v34, 0xEu);
    v23 = v34;
    goto LABEL_22;
  }

  v36 = v37;
LABEL_25:
}

void sub_266E3A90C(uint64_t a1)
{
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266E28000, v3, v4, "🫨 HGManager has fully stopped", v5, 2u);
    MEMORY[0x26D5F4920](v5, -1, -1);
  }

  if ((sub_266E3DDBC() & 1) != 0 && (sub_266E371C0() & 1) == 0)
  {
    v6 = sub_266E463FC();
    v7 = sub_266E465BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_266E28000, v6, v7, "🔊 Audio session is still active, releasing it if no other client is using it", v8, 2u);
      MEMORY[0x26D5F4920](v8, -1, -1);
    }

    v9 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
    if (v9 && ([v9 respondsToSelector_] & 1) != 0)
    {

      [v9 deactivateAudioSessionIfNoActiveAssertions];
    }
  }
}

void sub_266E3AAD0()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v8 = type metadata accessor for GestureMapping(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (v5)
  {
    sub_266E39330();
    OUTLINED_FUNCTION_68();
    if (!v31)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v13 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v13, qword_281320F40);
    v14 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_26();
      *v16 = 0;
      _os_log_impl(&dword_266E28000, v14, v2, "🔊 Updating the gesture mapping", v16, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }

  v17 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping;
  OUTLINED_FUNCTION_58(&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping]);
  sub_266E2BDC8(&v3[v17], v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_63(v1, 1, v8);
  if (!v31)
  {
    v24 = OUTLINED_FUNCTION_71();
    sub_266E406F8(v24, v25);
    v26 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
    sub_266E35BE0();
    v27 = *&v3[v26];
    v28 = sub_266E2DDE8();
    if (v28)
    {
      v29 = v27 & 3;
      v30 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady;
      v31 = v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady] == 1 && v29 == 3;
      if (v31 && (v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] & 1) == 0)
      {
        OUTLINED_FUNCTION_68();
        if (!v31)
        {
          OUTLINED_FUNCTION_1_0(&qword_281320A90);
        }

        v47 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v47, qword_281320F40);
        v38 = sub_266E463FC();
        v48 = sub_266E465BC();
        if (OUTLINED_FUNCTION_12_1(v48))
        {
          v49 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_20_1(v49);
          OUTLINED_FUNCTION_4_0();
          _os_log_impl(v50, v51, v52, v53, v54, 2u);
          OUTLINED_FUNCTION_15_1();
        }

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_68();
      if (!v31)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v32 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v32, qword_281320F40);
      v33 = v3;
      v34 = sub_266E463FC();
      v35 = sub_266E465BC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109632;
        *(v36 + 4) = v29 == 3;
        *(v36 + 8) = 1024;
        *(OUTLINED_FUNCTION_66(v36, 1024) + 16) = v3[v30];

        _os_log_impl(&dword_266E28000, v34, v35, "🔇 Not playing waiting tone, expectingConfirmation: %{BOOL}d, ttsActive: %{BOOL}d, isReady: %{BOOL}d", v36, 0x14u);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v34 = v33;
      }

      if (v29 != 3 || (*(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive) & 1) != 0 || (v3[v30] & 1) != 0 || *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) != 1)
      {
        goto LABEL_42;
      }

      v38 = sub_266E463FC();
      v46 = sub_266E465CC();
      if (!OUTLINED_FUNCTION_12_1(v46))
      {
LABEL_41:

LABEL_42:
        OUTLINED_FUNCTION_71();
        sub_266E3B148();
        OUTLINED_FUNCTION_6_1();
        sub_266E4093C(v12, v55);
        goto LABEL_43;
      }
    }

    else
    {
      OUTLINED_FUNCTION_68();
      if (!v31)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v37 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v37, qword_281320F40);
      v38 = sub_266E463FC();
      v39 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v39))
      {
        goto LABEL_41;
      }
    }

    v40 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v40);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_15_1();
    goto LABEL_41;
  }

  sub_266E2BE40(v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_68();
  if (!v31)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v18 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v18, qword_281320F40);
  v19 = sub_266E463FC();
  v20 = sub_266E465CC();
  if (OUTLINED_FUNCTION_23(v20))
  {
    v21 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v21);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v22, v23, "GestureMapping is nil");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_43:
  OUTLINED_FUNCTION_32();
}

void sub_266E3AF84()
{
  v1 = sub_266E2FFC8(0);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
    v21 = v1;
    sub_266E3EAD4(v2, v0, v21);
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v3 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
    v22 = sub_266E463FC();
    v4 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v22))
    {
      v12 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v13, v14, "HGManager is nil", v15, v16, v17, v18, v20, v21);
      OUTLINED_FUNCTION_27_0();
    }
  }
}

void sub_266E3B058()
{
  v0 = sub_266E45BBC();
  v1 = sub_266E45B2C();

  sub_266E45B6C();
  v2 = sub_266E45BBC();
  v3 = sub_266E45B2C();

  sub_266E45B6C();
  v4 = sub_266E45BBC();
  v5 = sub_266E45B2C();

  sub_266E45B6C();
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  sub_266E45B6C();
}

void sub_266E3B148()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v93 = v3;
  v5 = v4;
  v94[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for GestureMapping(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266E2FFC8(1);
  if (v10)
  {
    v11 = v10;
    v92 = v5 & 3;
    if (sub_266E371C0())
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v12 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v12, qword_281320F40);
      v13 = sub_266E463FC();
      v14 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v14))
      {
        v15 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v15);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
        OUTLINED_FUNCTION_10_0();
      }
    }

    else
    {
      v90 = v7;
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = sub_266E4640C();
      v27 = __swift_project_value_buffer(v26, qword_281320F40);
      v28 = sub_266E463FC();
      v29 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v29))
      {
        v30 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_34_0(v30);
        OUTLINED_FUNCTION_84(&dword_266E28000, v31, v32, "Configuring fallback audio session");
        OUTLINED_FUNCTION_17_1();
      }

      v33 = [objc_opt_self() sharedInstance];
      v34 = sub_266E463FC();
      v35 = sub_266E465AC();

      if (os_log_type_enabled(v34, v35))
      {
        v1 = OUTLINED_FUNCTION_23_0();
        v36 = OUTLINED_FUNCTION_87();
        v88 = v2;
        v94[0] = v36;
        *v1 = 134218498;
        *(v1 + 4) = 0;
        *(v1 + 12) = 2080;
        v37 = [v33 category];
        v89 = v11;
        v38 = v37;
        v39 = sub_266E4651C();
        v87 = v27;
        v41 = v40;

        v42 = sub_266E2B0EC(v39, v41, v94);

        *(v1 + 14) = v42;
        *(v1 + 22) = 2080;
        v43 = [v33 mode];
        v44 = sub_266E4651C();
        v46 = v45;

        v47 = sub_266E2B0EC(v44, v46, v94);
        v11 = v89;

        *(v1 + 24) = v47;
        _os_log_impl(&dword_266E28000, v34, v35, "🔊 Audio Session Fallback (%ld, %s, %s) is active and ready for playback", v1, 0x20u);
        swift_arrayDestroy();
        v2 = v88;
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_11_0();
      }

      v94[0] = 0;
      if ([v33 setPrefersNoDucking:1 error:v94])
      {
        v48 = v94[0];
      }

      else
      {
        v49 = v94[0];
        v50 = OUTLINED_FUNCTION_91();

        v1 = v50;
        swift_willThrow();
      }

      v51 = *MEMORY[0x277CB8030];
      v52 = *MEMORY[0x277CB80F0];
      v94[0] = 0;
      if ([v33 setCategory:v51 mode:v52 options:2 error:v94])
      {
        v53 = v94[0];
      }

      else
      {
        v54 = v94[0];
        v55 = OUTLINED_FUNCTION_91();

        v1 = v55;
        swift_willThrow();
      }

      v94[0] = 0;
      if ([v33 setAudioHardwareControlFlags:0 error:v94])
      {
        v56 = v94[0];
      }

      else
      {
        v57 = v94[0];
        v58 = OUTLINED_FUNCTION_91();

        v1 = v58;
        swift_willThrow();
      }

      if ([v33 isActive] && !v5)
      {
        v59 = sub_266E463FC();
        v60 = sub_266E465CC();
        if (OUTLINED_FUNCTION_20_0(v60))
        {
          v61 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v61);
          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v62, v63, v64, v65, v66, 2u);
          OUTLINED_FUNCTION_10_0();
        }

        v94[0] = 0;
        if ([v33 setActive:0 error:v94])
        {
          v67 = v94[0];
        }

        else
        {
          v68 = v94[0];
          v69 = OUTLINED_FUNCTION_91();

          swift_willThrow();
        }
      }

      v70 = sub_266E463FC();
      v71 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v71))
      {
        v72 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v72);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v73, v74, v75, v76, v77, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      v78 = sub_266E3DC0C();
      v79 = sub_266E463FC();
      v80 = sub_266E465BC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 67109376;
        *(v81 + 4) = v78;
        *(v81 + 8) = 2048;
        *(v81 + 10) = v5;
        _os_log_impl(&dword_266E28000, v79, v80, "AudioSessionID: %u, audioFeedbackCategories: %ld", v81, 0x12u);
        OUTLINED_FUNCTION_10_0();
      }

      sub_266E3EEBC(*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue), v2, v11, v78);
      v7 = v90;
      v9 = v91;
    }

    v82 = v92 != 0;
    sub_266E4075C(v93, v9);
    v83 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v11;
    sub_266E406F8(v9, v84 + v83);
    v85 = (v84 + v83 + v8);
    *v85 = v5 & 1;
    v85[1] = (v5 & 2) != 0;
    v85[2] = v82;
    v85[3] = (v5 & 4) != 0;
    v86 = v11;
    sub_266E3FE6C();

    OUTLINED_FUNCTION_32();
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v21 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v21, qword_281320F40);
    v93 = sub_266E463FC();
    v22 = sub_266E465CC();
    if (os_log_type_enabled(v93, v22))
    {
      v23 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v23);
      _os_log_impl(&dword_266E28000, v93, v22, "HGManager is nil", 0x281320000, 2u);
      OUTLINED_FUNCTION_27_0();
    }

    OUTLINED_FUNCTION_32();
  }
}

void sub_266E3B8BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_266E45BBC();
  v3 = sub_266E45B2C();

  sub_266E45B8C();
}

void sub_266E3B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  sub_266E36104();
  sub_266E45B7C();

  v8 = sub_266E45BBC();
  v9 = sub_266E45B2C();

  sub_266E45B5C();
  v10 = sub_266E45BBC();
  v11 = sub_266E45B2C();

  sub_266E45B6C();
  v12 = sub_266E45BBC();
  v13 = sub_266E45B2C();

  sub_266E45B6C();
  v14 = sub_266E45BBC();
  v15 = sub_266E45B2C();

  sub_266E45B5C();
  v16 = sub_266E45BBC();
  v17 = sub_266E45B2C();

  sub_266E45B6C();
  v18 = sub_266E45BBC();
  v19 = sub_266E45B2C();

  sub_266E45B6C();
  v20 = sub_266E45BBC();
  sub_266E45B0C();

  v21 = sub_266E45BBC();
  v22 = sub_266E45B2C();

  sub_266E45BAC();
}

void sub_266E3BAF8()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v157 = v156 - v7;
  v8 = OUTLINED_FUNCTION_55();
  v160 = type metadata accessor for GestureResponse(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v161 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_60();
  v15 = type metadata accessor for GestureMapping(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v168 = v18 - v17;
  OUTLINED_FUNCTION_55();
  sub_266E461CC();
  OUTLINED_FUNCTION_5();
  v166 = v19;
  v167 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v156[1] = v21;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v22);
  v158 = v156 - v23;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v24);
  v159 = (v156 - v25);
  OUTLINED_FUNCTION_41();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v156 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v156 - v30;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v32 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v32, qword_281320F40);
  v33 = v4;
  v165 = v0;
  v34 = sub_266E463FC();
  v35 = sub_266E465BC();

  v36 = os_log_type_enabled(v34, v35);
  v164 = v33;
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_23_0();
    v156[0] = v15;
    v38 = v37;
    v39 = OUTLINED_FUNCTION_61();
    v40 = OUTLINED_FUNCTION_87();
    v162 = v29;
    v172[0] = v40;
    *v38 = 136315650;
    sub_266E36C1C(v31);
    v41 = sub_266E461BC();
    v163 = v2;
    v43 = v42;
    (*(v167 + 8))(v31, v166);
    v44 = sub_266E2B0EC(v41, v43, v172);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2112;
    v45 = [v33 avgConfidence];
    *(v38 + 14) = v45;
    *v39 = v45;
    *(v38 + 22) = 2080;
    v46 = sub_266E36CC0([v33 headGesturePart]);
    v48 = sub_266E2B0EC(v46, v47, v172);

    *(v38 + 24) = v48;
    v2 = v163;
    _os_log_impl(&dword_266E28000, v34, v35, "HeadGesture: Type:%s, confidence: %@, partGesture: %s", v38, 0x20u);
    sub_266E2BE40(v39, &qword_2800E8278, &qword_266E478D0);
    OUTLINED_FUNCTION_14_0();
    swift_arrayDestroy();
    v29 = v162;
    OUTLINED_FUNCTION_14_0();
    v15 = v156[0];
    OUTLINED_FUNCTION_14_0();
  }

  v49 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping;
  OUTLINED_FUNCTION_58(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping);
  sub_266E2BDC8(v2 + v49, v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_63(v1, 1, v15);
  if (!v50)
  {
    sub_266E406F8(v1, v168);
    sub_266E36C1C(v29);
    v57 = v166;
    v56 = v167;
    (*(v167 + 104))(v31, *MEMORY[0x277D5CF90], v166);
    sub_266E40994(&unk_2800E8300, MEMORY[0x277D5CF98]);
    v58 = sub_266E464FC();
    v59 = *(v56 + 8);
    v59(v31, v57);
    if (v58)
    {
      v60 = sub_266E463FC();
      v61 = sub_266E465AC();
      if (OUTLINED_FUNCTION_23(v61))
      {
        v62 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v62);
        v65 = "Ignoring partial gestures";
LABEL_19:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v63, v64, v65);
        OUTLINED_FUNCTION_11_0();
      }
    }

    else
    {
      v170 = sub_266E362B4();
      v171 = v66;
      MEMORY[0x26D5F4210](0x6574636574656420, 0xE900000000000064);
      v67 = v171;
      OUTLINED_FUNCTION_57(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureDeduper);
      sub_266E2F920();
      v69 = v68;
      swift_endAccess();

      if (v69)
      {
        v70 = OUTLINED_FUNCTION_59();
        if (sub_266E3C9F8(v70, v71, v72))
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v163 = v2;
          if (Strong)
          {
            v74 = [v164 timestamp];
            OUTLINED_FUNCTION_69();

            v167 = *(v167 + 16);
            OUTLINED_FUNCTION_65();
            v75();
            v76 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
            OUTLINED_FUNCTION_58(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo);
            sub_266E2BDC8(v2 + v76, v59 + *(v67 + 28), &qword_2800E81E8, &unk_266E474D0);
            *v59 = 1;
            sub_266E40E58();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_7_0();
            v77 = v59;
            v59 = v164;
            sub_266E4093C(v77, v78);
          }

          OUTLINED_FUNCTION_65();
          v116();
          v117 = sub_266E463FC();
          sub_266E465BC();
          OUTLINED_FUNCTION_28_0();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = OUTLINED_FUNCTION_21();
            v120 = OUTLINED_FUNCTION_23_0();
            v169 = v120;
            *v119 = 136315138;
            v121 = sub_266E362B4();
            v162 = v29;
            v29 = v122;
            v123 = OUTLINED_FUNCTION_53();
            (v59)(v123);
            sub_266E2B0EC(v121, v29, &v169);
            OUTLINED_FUNCTION_70();
            *(v119 + 4) = v121;
            OUTLINED_FUNCTION_48(&dword_266E28000, v124, v125, "%s detected: marking confirmation as responded, not expecting confirmation");
            __swift_destroy_boxed_opaque_existential_1Tm(v120);
            OUTLINED_FUNCTION_17_1();
            OUTLINED_FUNCTION_11_0();
          }

          else
          {

            v126 = OUTLINED_FUNCTION_53();
            (v59)(v126);
          }

          v127 = v163;
          sub_266E2AFC0();
          *(v127 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
          v128 = OUTLINED_FUNCTION_50();
          sub_266E2C708(v128, v129);
          v130 = 1;
        }

        else
        {
          v81 = OUTLINED_FUNCTION_59();
          if (sub_266E3CA60(v81, v82))
          {
            v83 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall);
            v84 = v2;
            v85 = v167;
            if (v83 == 1)
            {
              v86 = sub_266E463FC();
              v87 = sub_266E465BC();
              if (OUTLINED_FUNCTION_23(v87))
              {
                v88 = OUTLINED_FUNCTION_26();
                OUTLINED_FUNCTION_30_0(v88);
                OUTLINED_FUNCTION_8_0(&dword_266E28000, v89, v90, "Creating a promptInfo for announced call");
                v85 = v167;
                OUTLINED_FUNCTION_14_0();
              }

              v91 = v157;
              sub_266E4615C();
              v92 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
              OUTLINED_FUNCTION_57(v84 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo);
              sub_266E2B3B0(v91, v84 + v92, &qword_2800E81E8, &unk_266E474D0);
              swift_endAccess();
            }

            v93 = swift_unknownObjectWeakLoadStrong();
            v163 = v84;
            if (v93)
            {
              v94 = [v164 timestamp];
              OUTLINED_FUNCTION_69();

              v95 = *(v85 + 16);
              OUTLINED_FUNCTION_65();
              v95();
              v96 = v95;
              v97 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
              OUTLINED_FUNCTION_58(v84 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo);
              sub_266E2BDC8(v84 + v97, v59 + *(v67 + 28), &qword_2800E81E8, &unk_266E474D0);
              *v59 = 2;
              sub_266E40E58();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_7_0();
              v98 = v59;
              v59 = v164;
              sub_266E4093C(v98, v99);
            }

            else
            {
              v96 = *(v85 + 16);
            }

            v131 = v158;
            OUTLINED_FUNCTION_65();
            v96();
            v132 = sub_266E463FC();
            sub_266E465BC();
            OUTLINED_FUNCTION_28_0();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = OUTLINED_FUNCTION_21();
              v135 = OUTLINED_FUNCTION_23_0();
              v169 = v135;
              *v134 = 136315138;
              sub_266E362B4();
              v162 = v29;
              v29 = v136;
              v59(v131, v57);
              v137 = OUTLINED_FUNCTION_67();
              sub_266E2B0EC(v137, v138, v139);
              OUTLINED_FUNCTION_70();
              *(v134 + 4) = v131;
              OUTLINED_FUNCTION_48(&dword_266E28000, v140, v141, "%s detected: marking confirmation as responded, not expecting confirmation");
              __swift_destroy_boxed_opaque_existential_1Tm(v135);
              OUTLINED_FUNCTION_14_0();
              OUTLINED_FUNCTION_11_0();
            }

            else
            {

              v59(v131, v57);
            }

            v142 = v163;
            sub_266E2AFC0();
            *(v142 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
            v143 = OUTLINED_FUNCTION_50();
            sub_266E2C708(v143, v144);
            v130 = 2;
          }

          else
          {
            v100 = OUTLINED_FUNCTION_59();
            v103 = sub_266E3C97C(v100, v101, v102);
            v104 = v167;
            if ((v103 & 1) == 0)
            {
              goto LABEL_45;
            }

            v163 = v2;
            OUTLINED_FUNCTION_65();
            v159 = v105;
            v105();
            v106 = sub_266E463FC();
            sub_266E465BC();
            OUTLINED_FUNCTION_28_0();
            v108 = os_log_type_enabled(v106, v107);
            v167 = v104 + 16;
            if (v108)
            {
              v109 = OUTLINED_FUNCTION_21();
              v110 = OUTLINED_FUNCTION_23_0();
              v170 = v110;
              *v109 = 136315138;
              v111 = sub_266E362B4();
              v162 = v29;
              v29 = v112;
              v113 = OUTLINED_FUNCTION_53();
              (v59)(v113);
              sub_266E2B0EC(v111, v29, &v170);
              OUTLINED_FUNCTION_70();
              *(v109 + 4) = v111;
              OUTLINED_FUNCTION_48(&dword_266E28000, v114, v115, "%s detected: dismissing Siri");
              __swift_destroy_boxed_opaque_existential_1Tm(v110);
              OUTLINED_FUNCTION_17_1();
              OUTLINED_FUNCTION_11_0();
            }

            else
            {

              v145 = OUTLINED_FUNCTION_53();
              (v59)(v145);
            }

            v146 = v163;
            sub_266E3AF84();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v147 = [v164 timestamp];
              v149 = v160;
              v148 = v161;
              sub_266E45A8C();

              (v159)(v148 + *(v149 + 24), v29, v166);
              sub_266E4619C();
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
              *v148 = 4;
              sub_266E40E58();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_7_0();
              sub_266E4093C(v148, v154);
            }

            *(v146 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState) = 1;
            *(v146 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
            sub_266E3A2E0(7);
            sub_266E2C640();
            v130 = 4;
            v57 = v166;
          }
        }

        sub_266E37378(v130);
        goto LABEL_45;
      }

      v60 = sub_266E463FC();
      v79 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v79))
      {
        v80 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v80);
        v65 = "Head gesture might be a duplicate, ignoring";
        goto LABEL_19;
      }
    }

LABEL_45:
    v59(v29, v57);
    OUTLINED_FUNCTION_6_1();
    sub_266E4093C(v168, v155);
    goto LABEL_46;
  }

  sub_266E2BE40(v1, &qword_2800E82F8, &qword_266E478C8);
  v51 = sub_266E463FC();
  v52 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v52))
  {
    v53 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v53);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v54, v55, "GestureMapping is nil");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_46:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E3C770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_266E45ADC();
  v6 = *MEMORY[0x277D5D2D0];
  v7 = sub_266E462AC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  sub_266E4618C();
  v8 = *MEMORY[0x277D5CE68];
  v9 = sub_266E461AC();
  (*(*(v9 - 8) + 104))(v2, v8, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  return sub_266E4616C();
}

uint64_t sub_266E3C97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) & 4) == 0 || (sub_266E356C0(a1, a2, a3))
  {
    return 0;
  }

  v7 = a2 + *(type metadata accessor for GestureMapping(0) + 20);

  return sub_266E356C0(a1, v7, v8);
}

uint64_t sub_266E3C9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent))
  {
    if (sub_266E356C0(a1, a2, a3))
    {
      return 1;
    }

    v7 = type metadata accessor for GestureMapping(0);
    sub_266E356C0(a1, a2 + *(v7 + 20), v8);
  }

  return 0;
}

uint64_t sub_266E3CA60(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) & 2) != 0)
  {
    v5 = OUTLINED_FUNCTION_64();
    if ((sub_266E356C0(v5, v6, v7) & 1) == 0)
    {
      v8 = type metadata accessor for GestureMapping(0);
      if (sub_266E356C0(a1, a2 + *(v8 + 20), v9))
      {
        return 1;
      }
    }
  }

  OUTLINED_FUNCTION_39();
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_64();
    if (sub_266E3C97C(v11, v12, v13))
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v14 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v14, qword_281320F40);
      v15 = sub_266E463FC();
      v16 = sub_266E465BC();
      if (OUTLINED_FUNCTION_23(v16))
      {
        v17 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v17);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v18, v19, "Announcing an incoming call, treating early dismissal as early decline");
        OUTLINED_FUNCTION_11_0();
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_266E3CB58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_266E40FE0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_266E3CBF8(char a1)
{
  v2 = v1;
  if ((sub_266E2EC5C() & 1) == 0)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v7 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v7, qword_281320F40);
    v5 = sub_266E463FC();
    v8 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v8))
    {
      goto LABEL_17;
    }

    v9 = OUTLINED_FUNCTION_61();
    *v9 = 67109120;
    v9[1] = a1 & 1;
    OUTLINED_FUNCTION_10_1();
    v15 = 8;
    goto LABEL_16;
  }

  if (a1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v4 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v4, qword_281320F40);
    v5 = sub_266E463FC();
    v6 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v6))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) != 1)
  {
    goto LABEL_18;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v16 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v16, qword_281320F40);
  v5 = sub_266E463FC();
  v17 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v17))
  {
LABEL_15:
    v18 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v18);
    OUTLINED_FUNCTION_10_1();
    v15 = 2;
LABEL_16:
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_10_0();
  }

LABEL_17:

LABEL_18:
  *(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) = a1 & 1;

  sub_266E3AAD0();
}

uint64_t sub_266E3CE1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_266E45AEC();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  v13 = *MEMORY[0x277D5D2C8];
  v14 = sub_266E462AC();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_266E4618C();
  v15 = *MEMORY[0x277D5CFB0];
  v16 = sub_266E4622C();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  sub_266E4617C();
  v17 = *MEMORY[0x277D5CE68];
  v18 = sub_266E461AC();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  return sub_266E4616C();
}

uint64_t sub_266E3D0AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  OUTLINED_FUNCTION_12(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  sub_266E45AEC();
  OUTLINED_FUNCTION_10();
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  v9 = *MEMORY[0x277D5D2D0];
  v10 = sub_266E462AC();
  OUTLINED_FUNCTION_10();
  (*(v11 + 104))(v0, v9, v10);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  sub_266E4618C();
  v15 = *MEMORY[0x277D5CE68];
  v16 = sub_266E461AC();
  OUTLINED_FUNCTION_10();
  (*(v17 + 104))(v4, v15, v16);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  return sub_266E4616C();
}

void sub_266E3D24C(uint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState;
  v6 = 0x281320000uLL;
  v7 = &off_266E47000;
  if (sub_266E3D6AC(*&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState], &unk_287872480) && a1 == 1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v9 = v1;
    v10 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_21();
      v53 = OUTLINED_FUNCTION_23_0();
      *v12 = 136315138;
      v13 = AFExternalNotificationRequestHandlerStateGetName();

      if (!v13)
      {
        goto LABEL_42;
      }

      sub_266E4651C();

      v14 = OUTLINED_FUNCTION_75();
      v17 = sub_266E2B0EC(v14, v15, v16);

      *(v12 + 4) = v17;
      OUTLINED_FUNCTION_86(&dword_266E28000, v10, v2, "Announcement state transitioned to idle from %s, resetting confirmation states", v53);
      v2 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_17_1();

      v7 = &off_266E47000;
      v6 = 0x281320000;
    }

    else
    {
    }

    sub_266E2C640();
    sub_266E2C3FC(7);
  }

  *&v3[v5] = a1;
  if (*(v6 + 2704) != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v18 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v18, qword_281320F40);
  v19 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_21();
    v22 = OUTLINED_FUNCTION_23_0();
    *v21 = *(v7 + 45);
    v23 = AFExternalNotificationRequestHandlerStateGetName();
    if (v23)
    {
      v24 = v23;
      sub_266E4651C();

      v25 = OUTLINED_FUNCTION_75();
      v28 = sub_266E2B0EC(v25, v26, v27);

      *(v21 + 4) = v28;
      OUTLINED_FUNCTION_86(&dword_266E28000, v19, v2, "🔔 Announcement state updated to: %s", v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_15;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_15:

  if (a1 != 3 && (a1 != 6 || v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] != 1))
  {
LABEL_32:
    v40 = 0;
    goto LABEL_34;
  }

  v29 = *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
  if (v29 && ([*&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_] & 1) != 0)
  {
    v30 = [v29 callState];
    if ((v30 & 4) != 0)
    {
      v31 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 & 1;
LABEL_24:
  v32 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall;
  v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] = v31;
  v33 = v3;
  v34 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_61();
    *v36 = 67109120;
    *(v36 + 4) = v3[v32];

    _os_log_impl(&dword_266E28000, v34, v2, "🔔 Announcing incoming call: %{BOOL}d", v36, 8u);
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    v34 = v33;
  }

  if (a1 == 6 && v3[v32] == 1)
  {
    v37 = sub_266E463FC();
    v38 = sub_266E465BC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v39);
      _os_log_impl(&dword_266E28000, v37, v38, "Not reading announcement, call is either ringing or active", v2, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    goto LABEL_32;
  }

  v40 = 1;
LABEL_34:
  v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = v40;
  if (sub_266E3D6AC(a1, &unk_287872480))
  {
    v41 = sub_266E463FC();
    v42 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v42))
    {
      v43 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v43);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_62();

    sub_266E2C708(v49, v50);
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }
}

BOOL sub_266E3D6AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_266E3D6D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v6 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v6, qword_281320F40);
  v7 = sub_266E463FC();
  v8 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v8))
  {
    v9 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v9);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation);
  v15 = OUTLINED_FUNCTION_71();
  sub_266E2BDC8(v15, v16, &qword_2800E8080, &qword_266E479C0);
  v17 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId;
  OUTLINED_FUNCTION_57(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId);
  sub_266E2B3B0(v5, v1 + v17, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v18 = OUTLINED_FUNCTION_50();
  sub_266E2C708(v18, v19);
}

void sub_266E3D834(char a1, uint64_t a2, void *a3)
{
  v5 = a1 & 1;
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  LODWORD(v6) = sub_266E45B9C() & 1;
  if (v6 == v5)
  {
    return;
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v8 = sub_266E4640C();
  __swift_project_value_buffer(v8, qword_281320F40);
  v9 = a3;
  v10 = sub_266E463FC();
  v11 = sub_266E465AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = *(&v9->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);

    *(v12 + 8) = 1024;
    *(v12 + 10) = a1 & 1;
    _os_log_impl(&dword_266E28000, v10, v11, "TTS Active: %{BOOL}d shouldPlayWaitingTone: %{BOOL}d", v12, 0xEu);
    MEMORY[0x26D5F4920](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = v9;
  v14 = sub_266E463FC();
  v15 = sub_266E465BC();
  v16 = os_log_type_enabled(v14, v15);
  if ((a1 & 1) == 0)
  {
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 67109632;
      *(v19 + 4) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);
      *(v19 + 8) = 1024;
      *(v19 + 10) = sub_266E2E584() & 1;
      *(v19 + 14) = 1024;
      *(v19 + 16) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady);

      _os_log_impl(&dword_266E28000, v14, v15, "🔇 Not playing waiting tone, ttsActive: %{BOOL}d, expectingConfirmation: %{BOOL}d, isReady: %{BOOL}d", v19, 0x14u);
      v18 = v19;
      goto LABEL_13;
    }

LABEL_14:

    v14 = v13;
    goto LABEL_15;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = swift_slowAlloc();
  *v17 = 67109120;
  *(v17 + 4) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);

  _os_log_impl(&dword_266E28000, v14, v15, "🔊 Playing waiting tone, ttsActive: %{BOOL}d", v17, 8u);
  v18 = v17;
LABEL_13:
  MEMORY[0x26D5F4920](v18, -1, -1);
LABEL_15:

  v20 = sub_266E45BBC();
  v21 = sub_266E45B2C();

  sub_266E45BAC();
}

uint64_t sub_266E3DB1C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) = result & 1;
  }

  return result;
}

void sub_266E3DB3C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_281320A90);
      }

      v2 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
      v20 = sub_266E463FC();
      v3 = sub_266E465BC();
      if (OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
      {
        v11 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_42(v11);
        OUTLINED_FUNCTION_26_0(&dword_266E28000, v12, v13, "Siri is not listening", v14, v15, v16, v17, v19, v21);
        OUTLINED_FUNCTION_27_0();
      }
    }
  }
}

id sub_266E3DC0C()
{
  OUTLINED_FUNCTION_39();
  if (v2)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v3 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
    v4 = sub_266E463FC();
    v5 = sub_266E465AC();
    if (!os_log_type_enabled(v4, v5))
    {
      v7 = 0;
      goto LABEL_17;
    }

    v6 = OUTLINED_FUNCTION_61();
    *v6 = 67109120;
    _os_log_impl(&dword_266E28000, v4, v5, "🔊 Use our own audio session: %u", v6, 8u);
    v7 = 0;
    goto LABEL_15;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v8 && ([v8 respondsToSelector_] & 1) != 0)
  {
    v7 = [v8 audioSessionID];
  }

  else
  {
    v7 = 0;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v9 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v9, qword_281320F40);
  v4 = sub_266E463FC();
  sub_266E465AC();
  OUTLINED_FUNCTION_28_0();
  if (os_log_type_enabled(v4, v10))
  {
    v11 = OUTLINED_FUNCTION_61();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_266E28000, v4, v1, "🔊 Using Siri's audio session: %u", v11, 8u);
LABEL_15:
    OUTLINED_FUNCTION_27_0();
  }

LABEL_17:

  return v7;
}

id sub_266E3DDBC()
{
  v0 = sub_266E3DC0C();
  if (v0)
  {
    v1 = [objc_opt_self() retrieveSessionWithID_];
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_281320A90);
    }

    v2 = sub_266E4640C();
    __swift_project_value_buffer(v2, qword_281320F40);
    v3 = v1;
    v4 = sub_266E463FC();
    sub_266E465AC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = v0;
      *(v6 + 8) = 1024;
      *(v6 + 10) = [v3 isActive];

      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v7, v8, v9, v10, v11, 0xEu);
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v4 = v3;
    }

    v0 = [v3 isActive];
  }

  return v0;
}

uint64_t sub_266E3DF04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession) = 0;
  if (sub_266E371C0())
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured;
  if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
  {
    return 1;
  }

  v5 = 7104878;
  v6 = sub_266E3DC0C();
  v7 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v7 && ([*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper) respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v7, sel_currentResponseMode)) != 0)
  {
    v9 = v8;
    v5 = sub_266E4651C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_281320A90);
  }

  v12 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v12, qword_281320F40);

  v13 = sub_266E463FC();
  v14 = sub_266E465BC();

  v108 = v5;
  if (os_log_type_enabled(v13, v14))
  {
    v107 = v11;
    v15 = v6;
    v16 = v5;
    v17 = OUTLINED_FUNCTION_21();
    v18 = OUTLINED_FUNCTION_23_0();
    v109 = v18;
    *v17 = 136315138;
    v19 = v16;
    v6 = v15;
    v11 = v107;
    *(v17 + 4) = sub_266E2B0EC(v19, v107, &v109);
    _os_log_impl(&dword_266E28000, v13, v14, "Response mode: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  if (!v6)
  {

LABEL_20:
    v29 = sub_266E463FC();
    v30 = sub_266E465CC();
    if (OUTLINED_FUNCTION_20_0(v30))
    {
      v31 = OUTLINED_FUNCTION_61();
      *v31 = 67109120;
      v31[1] = v6;
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v32, v33, v34, v35, v36, 8u);
      OUTLINED_FUNCTION_10_0();
    }

    return 0;
  }

  v20 = [objc_opt_self() retrieveSessionWithID_];
  if ([v20 isActive])
  {

    v21 = sub_266E463FC();
    v22 = sub_266E465AC();
    if (OUTLINED_FUNCTION_12_1(v22))
    {
      v23 = OUTLINED_FUNCTION_61();
      *v23 = 67109120;
      v23[1] = v6;
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v24, v25, v26, v27, v28, 8u);
      OUTLINED_FUNCTION_15_1();
    }

    result = 1;
    *(v1 + v3) = 1;
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) == 1)
  {

    v37 = sub_266E463FC();
    v38 = sub_266E465AC();
    if (OUTLINED_FUNCTION_23(v38))
    {
      v39 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v39);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v40, v41, "🔊 Will wait for audio session to be configured for announcement to prevent premature audio session actvation");
      OUTLINED_FUNCTION_11_0();
    }

    return 0;
  }

  v42 = [v20 mode];
  v43 = sub_266E4651C();
  v45 = v44;
  if (v43 == sub_266E4651C() && v45 == v46)
  {
  }

  else
  {
    v48 = sub_266E4673C();

    if ((v48 & 1) == 0 && ([v20 isOtherAudioPlaying] & 1) == 0)
    {

      v49 = v20;
      v50 = sub_266E463FC();
      v51 = sub_266E465AC();

      if (!os_log_type_enabled(v50, v51))
      {

        return 1;
      }

      v52 = swift_slowAlloc();
      v109 = OUTLINED_FUNCTION_87();
      *v52 = 67109634;
      *(v52 + 4) = v6;
      *(v52 + 8) = 2080;
      v53 = [v49 category];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_89();
      *(v52 + 10) = v53;
      *(v52 + 18) = 2080;
      v60 = [v49 mode];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v61, v62, v63, v64, v65, v66);
      OUTLINED_FUNCTION_89();
      *(v52 + 20) = v60;
      OUTLINED_FUNCTION_10_1();
      v72 = 28;
      goto LABEL_45;
    }
  }

  v73 = [v20 mode];
  v74 = sub_266E4651C();
  v76 = v75;
  if (v74 == sub_266E4651C() && v76 == v77)
  {
  }

  else
  {
    OUTLINED_FUNCTION_53();
    v79 = sub_266E4673C();

    if ((v79 & 1) == 0 && [v20 categoryOptions])
    {

      v49 = v20;
      v50 = sub_266E463FC();
      v80 = sub_266E465AC();
      if (!OUTLINED_FUNCTION_12_1(v80))
      {

        goto LABEL_58;
      }

      v81 = swift_slowAlloc();
      v109 = OUTLINED_FUNCTION_87();
      *v81 = 67109890;
      *(v81 + 4) = v6;
      *(v81 + 8) = 2080;
      v82 = [v49 category];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v83, v84, v85, v86, v87, v88);
      OUTLINED_FUNCTION_89();
      *(v81 + 10) = v82;
      *(v81 + 18) = 2080;
      v89 = [v49 mode];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v90, v91, v92, v93, v94, v95);
      OUTLINED_FUNCTION_89();
      *(v81 + 20) = v89;
      *(v81 + 28) = 2048;
      v96 = [v49 categoryOptions];

      *(v81 + 30) = v96;
      OUTLINED_FUNCTION_10_1();
      v72 = 38;
LABEL_45:
      _os_log_impl(v67, v68, v69, v70, v71, v72);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10_0();

LABEL_58:
      return 1;
    }
  }

  if (v108 == sub_266E4651C() && v11 == v97)
  {
  }

  else
  {
    v99 = sub_266E4673C();

    if ((v99 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  v100 = sub_266E463FC();
  v101 = sub_266E465AC();
  if (OUTLINED_FUNCTION_23(v101))
  {
    v102 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v102);
    OUTLINED_FUNCTION_23_1();
    _os_log_impl(v103, v104, v105, v106, v11, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  result = 1;
  *(v1 + v2) = 1;
  return result;
}