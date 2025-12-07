void sub_223292164(void *a1)
{
  if (*(v1 + qword_28131D8D0) == 1 && *(v1 + qword_28131DD18) == 1)
  {
    if (*(v1 + qword_28131DD20))
    {
      v2 = *(v1 + qword_28131DD00);
      if (v2 && (type metadata accessor for AssistantSpeechRecognizerResponseHandler(0), (v4 = swift_dynamicCastClass()) != 0))
      {
        v5 = *(v4 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard);
        oslog = v5;

        v6 = v2;
        sub_2232873BC(a1, v5);
      }

      else
      {
        v11 = qword_28131D338;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = sub_2232AAAD4();
        __swift_project_value_buffer(v12, qword_28131DB88);
        oslog = sub_2232AAAC4();
        v13 = sub_2232AAD94();
        if (os_log_type_enabled(oslog, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_22325E000, oslog, v13, "#AsrOnServer Current speechResponseHandler is not for Assistant request", v14, 2u);
          MEMORY[0x223DD8AC0](v14, -1, -1);
        }
      }

      goto LABEL_12;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    oslog = sub_2232AAAC4();
    v8 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process AsrResultCandidateMessage";
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    oslog = sub_2232AAAC4();
    v8 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "#AsrOnServer ASRBridge should not be handling AsrResultCandidateMessage messages unless both MUX is enabled and the request is being handled as asrOnServer";
LABEL_11:
      _os_log_impl(&dword_22325E000, oslog, v8, v10, v9, 2u);
      MEMORY[0x223DD8AC0](v9, -1, -1);
    }
  }

LABEL_12:
}

void sub_223292454()
{
  v1 = v0;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = sub_2232AAAC4();
  v4 = sub_2232AAD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22325E000, v3, v4, "AsrCandidateRequestProcessor transitioning to being the active request processor", v5, 2u);
    MEMORY[0x223DD8AC0](v5, -1, -1);
  }

  v6 = *(v0 + qword_28131DD00);
  if (v6)
  {
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0xC0);
    v8 = v6;
    v7();

    *(v1 + qword_28131DCF8) = 1;
  }

  else
  {
    oslog = sub_2232AAAC4();
    v9 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22325E000, oslog, v9, "SpeechRecognizerResponseHandler is nil, will not be able to submit any cached partials", v10, 2u);
      MEMORY[0x223DD8AC0](v10, -1, -1);
    }
  }
}

void sub_2232926C4(uint64_t a1)
{
  if (!qword_28131DAC0)
  {
    sub_2232AA6B4();
    v1 = sub_2232AAEB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28131DAC0);
    }
  }
}

void sub_223292724()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22325E000, oslog, v1, "ASRBridge no-op for StartChildSpeechRequestMessage", v2, 2u);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329280C(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v52 = a3;
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  if (*(v3 + qword_28131DD18))
  {
LABEL_2:
    if (*(v3 + qword_28131DD20))
    {

      sub_2232832EC(a1, a2, v52);

      return;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v23 = sub_2232AAAD4();
    __swift_project_value_buffer(v23, qword_28131DB88);
    v24 = a1;
    v25 = sub_2232AAAC4();
    v26 = sub_2232AAD94();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a2;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      *v28 = 136315138;
      v30 = [v24 resultId];
      if (v30)
      {
        v31 = v30;
        v32 = sub_2232AAC04();
        v34 = v33;
      }

      else
      {
        v32 = 7104878;
        v34 = 0xE300000000000000;
      }

      v48 = sub_2232603D0(v32, v34, &v53);

      *(v28 + 4) = v48;
      _os_log_impl(&dword_22325E000, v25, v26, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the RC. rcId: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DD8AC0](v29, -1, -1);
      MEMORY[0x223DD8AC0](v28, -1, -1);

      a2 = v27;
      if (!v27)
      {
        return;
      }

LABEL_21:
      a2(0, 0);
      return;
    }

LABEL_20:

    if (!a2)
    {
      return;
    }

    goto LABEL_21;
  }

  v50 = a1;
  v51 = a2;
  v19 = qword_28131DD10;
  swift_beginAccess();
  (*(v7 + 104))(v18, *MEMORY[0x277D5CF20], v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v20 = *(v10 + 48);
  sub_223293AB8(v3 + v19, v12);
  sub_223293AB8(v18, &v12[v20]);
  v21 = *(v7 + 48);
  if (v21(v12, 1, v6) == 1)
  {
    sub_223260EDC(v18, &unk_27D081810, &unk_2232ACC60);
    v22 = v21(&v12[v20], 1, v6);
    a1 = v50;
    if (v22 == 1)
    {
      sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
      a2 = v51;
      goto LABEL_2;
    }

    goto LABEL_14;
  }

  sub_223293AB8(v12, v16);
  if (v21(&v12[v20], 1, v6) == 1)
  {
    sub_223260EDC(v18, &unk_27D081810, &unk_2232ACC60);
    (*(v7 + 8))(v16, v6);
    a1 = v50;
LABEL_14:
    sub_223260EDC(v12, &qword_27D081808, "H6");
    a2 = v51;
    goto LABEL_15;
  }

  (*(v7 + 32))(v9, &v12[v20], v6);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v45 = sub_2232AABE4();
  v46 = *(v7 + 8);
  v46(v9, v6);
  sub_223260EDC(v18, &unk_27D081810, &unk_2232ACC60);
  v46(v16, v6);
  sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
  a1 = v50;
  a2 = v51;
  if (v45)
  {
    goto LABEL_2;
  }

LABEL_15:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v35 = sub_2232AAAD4();
  __swift_project_value_buffer(v35, qword_28131DB88);
  v36 = a1;
  v25 = sub_2232AAAC4();
  v37 = sub_2232AAD94();

  if (!os_log_type_enabled(v25, v37))
  {
    goto LABEL_20;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v53 = v39;
  *v38 = 136315138;
  v40 = [v36 resultId];
  if (v40)
  {
    v41 = v40;
    v42 = sub_2232AAC04();
    v44 = v43;
  }

  else
  {
    v42 = 7104878;
    v44 = 0xE300000000000000;
  }

  v47 = sub_2232603D0(v42, v44, &v53);

  *(v38 + 4) = v47;
  _os_log_impl(&dword_22325E000, v25, v37, "#AsrOnServer Unsupported path for handling server RC. Either asrOnServer must be true or requestType must be uos. rcId: %s", v38, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  MEMORY[0x223DD8AC0](v39, -1, -1);
  MEMORY[0x223DD8AC0](v38, -1, -1);

  a2 = v51;
  if (v51)
  {
    goto LABEL_21;
  }
}

void sub_223292F24(void *a1, NSObject *a2, void *a3)
{
  if (*(v3 + qword_28131D8D0) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    v12 = a1;
    v13 = sub_2232AAAC4();
    v14 = sub_2232AAD94();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_42;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_22325E000, v13, v14, "#AsrOnServer MUXResultCandidate received when MUX is disabled.  %@", v15, 0xCu);
    sub_223260EDC(v16, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v16, -1, -1);
    v18 = v15;
    goto LABEL_41;
  }

  if (*(v3 + qword_28131DD18) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v19 = sub_2232AAAD4();
    __swift_project_value_buffer(v19, qword_28131DB88);
    v20 = a1;
    v13 = sub_2232AAAC4();
    v21 = sub_2232AAD94();

    if (!os_log_type_enabled(v13, v21))
    {
      goto LABEL_42;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v24 = [v20 rcID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2232AAC04();
      v28 = v27;
    }

    else
    {
      v26 = 7104878;
      v28 = 0xE300000000000000;
    }

    v40 = sub_2232603D0(v26, v28, &v51);

    *(v22 + 4) = v40;
    v41 = "#AsrOnServer Unsupported path for handling server RC. rcId: %s";
    goto LABEL_40;
  }

  if (*(v3 + qword_28131DD20))
  {
    v7 = *(v3 + qword_28131DD00);
    if (v7 && (type metadata accessor for AssistantSpeechRecognizerResponseHandler(0), (v8 = swift_dynamicCastClass()) != 0))
    {
      v9 = v8;
      if (*(v8 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived))
      {

        v10 = v7;
      }

      else
      {
        v42 = qword_28131D338;

        v43 = v7;
        if (v42 != -1)
        {
          swift_once();
        }

        v44 = sub_2232AAAD4();
        __swift_project_value_buffer(v44, qword_28131DB88);
        v45 = sub_2232AAAC4();
        v46 = sub_2232AAD94();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_22325E000, v45, v46, "First Voice Id Score card has not arrived yet. The unknown user shall be used for this result candidate.", v47, 2u);
          MEMORY[0x223DD8AC0](v47, -1, -1);
        }
      }

      v48 = *(v9 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard);
      oslog = v48;
      sub_223285A6C(a1, v48, a2, a3);
    }

    else
    {
      v29 = qword_28131D338;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_2232AAAD4();
      __swift_project_value_buffer(v30, qword_28131DB88);
      oslog = sub_2232AAAC4();
      v31 = sub_2232AAD94();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22325E000, oslog, v31, "#AsrOnServer Current speechResponseHandler is not for Assistant request", v32, 2u);
        MEMORY[0x223DD8AC0](v32, -1, -1);
      }
    }

    return;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v33 = sub_2232AAAD4();
  __swift_project_value_buffer(v33, qword_28131DB88);
  v34 = a1;
  v13 = sub_2232AAAC4();
  v21 = sub_2232AAD94();

  if (os_log_type_enabled(v13, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v35 = [v34 rcID];
    if (v35)
    {
      v36 = v35;
      v37 = sub_2232AAC04();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
    }

    v49 = sub_2232603D0(v37, v39, &v51);

    *(v22 + 4) = v49;
    v41 = "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the RC. rcId: %s";
LABEL_40:
    _os_log_impl(&dword_22325E000, v13, v21, v41, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223DD8AC0](v23, -1, -1);
    v18 = v22;
LABEL_41:
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

LABEL_42:

  if (a2)
  {
    (a2)(0, 0);
  }
}

void sub_223293574(void *a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_28131DD20))
  {

    sub_2232893DC(a1, a2, a3);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    v8 = a1;
    v9 = sub_2232AAAC4();
    v10 = sub_2232AAD94();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [v8 refId];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2232AAC04();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_2232603D0(v15, v17, &v19);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_22325E000, v9, v10, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the SASSpeechServerEndpointIdentified. refId: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223DD8AC0](v12, -1, -1);
      MEMORY[0x223DD8AC0](v11, -1, -1);
    }

    if (a2)
    {
      a2(0, 0);
    }
  }
}

void sub_223293790(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = *(v3 + qword_28131DD20);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
    if ([v8 respondsToSelector_])
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a2;
      v10[4] = a3;
      v10[5] = a1;
      v25[4] = sub_223293AAC;
      v25[5] = v10;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 1107296256;
      v25[2] = sub_22328BC90;
      v25[3] = &block_descriptor_4;
      v11 = _Block_copy(v25);

      swift_unknownObjectRetain();

      sub_22328A370(a2, a3);
      v12 = a1;

      [v8 handleSpeechRecognized:v12 completion:v11];
      _Block_release(v11);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v13 = sub_2232AAAD4();
    __swift_project_value_buffer(v13, qword_28131DB88);
    v14 = a1;
    v15 = sub_2232AAAC4();
    v16 = sub_2232AAD94();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      v19 = [v14 refId];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2232AAC04();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v24 = sub_2232603D0(v21, v23, v25);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_22325E000, v15, v16, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the SASSpeechRecognized. refId: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DD8AC0](v18, -1, -1);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }

    if (a2)
    {
      a2(0, 0);
    }
  }
}

uint64_t sub_223293AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223293B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081828, &unk_2232ACC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223293C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223293F54(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v10 = sub_2232AAC04();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = a1;
  sub_223296A30(v10, v12, v14, a6);
}

uint64_t sub_223294164(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, unsigned int *a7, uint64_t a8)
{
  v8 = a8;
  v14 = sub_2232AAC04();
  v16 = v15;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a1;
  sub_223296C60(v14, v16, v18, v19, a7, v8);
}

void sub_223294228(void *a1, uint64_t a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = v2;
  v7 = sub_2232AAAC4();
  v8 = sub_2232AAD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2232603D0(*&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v12);
    _os_log_impl(&dword_22325E000, v7, v8, "Going to stop ASR for requestId = %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DD8AC0](v10, -1, -1);
    MEMORY[0x223DD8AC0](v9, -1, -1);
  }

  v11 = sub_2232AABF4();
  [a1 stopSpeechRecognitionTaskWithReason:a2 requestId:v11];
}

uint64_t sub_2232943C4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x277D5CDD8];
  v10 = sub_2232AA644();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2232AA5A4();

  sub_2232AA594();
  v12 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v13 = sub_2232A9504();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a2 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_2232AA5C4();

  return sub_2232AA5B4();
}

void sub_2232946E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v111 = a5;
  v98 = a7;
  v104 = a4;
  v105 = a3;
  v106 = a2;
  v113 = a1;
  v8 = sub_2232AA724();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v94 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v93 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v93 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v93 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v93 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v102 = &v93 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v93 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v93 - v32;
  v34 = [objc_allocWithZone(MEMORY[0x277CEF278]) init];
  if (a6)
  {
    v35 = [a6 commandGrammarParsePackage];
    if (v35)
    {
      v36 = v35;
      [v34 setCommandGrammarParsePackage_];
    }
  }

  v37 = *(v9 + 104);
  v103 = *MEMORY[0x277D5D218];
  v107 = v37;
  v108 = v9 + 104;
  (v37)(v33);
  sub_223295FEC();
  sub_2232AACD4();
  sub_2232AACD4();
  if (v116 == v114 && v117 == v115)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_2232AB094();
  }

  v109 = *(v9 + 8);
  v110 = v9 + 8;
  v109(v33, v8);

  if (v38)
  {
    MEMORY[0x28223BE20](v39);
    v41 = v105;
    v40 = v106;
    *(&v93 - 6) = v112;
    *(&v93 - 5) = v40;
    v42 = v104;
    *(&v93 - 4) = v41;
    *(&v93 - 3) = v42;
    *(&v93 - 2) = v111;
    *(&v93 - 1) = v34;
    v43 = v34;
    objc_allocWithZone(sub_2232A9C04());
  }

  else
  {
    v107(v31, *MEMORY[0x277D5D208], v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v116 == v114 && v117 == v115)
    {
      v109(v31, v8);

      v43 = v34;
    }

    else
    {
      v45 = sub_2232AB094();
      v109(v31, v8);

      v43 = v34;
      if ((v45 & 1) == 0)
      {
        v107(v28, *MEMORY[0x277D5D210], v8);
        sub_2232AACD4();
        sub_2232AACD4();
        v41 = v105;
        if (v116 == v114 && v117 == v115)
        {
          v109(v28, v8);

          v40 = v106;
        }

        else
        {
          v66 = sub_2232AB094();
          v109(v28, v8);

          v40 = v106;
          if ((v66 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        MEMORY[0x28223BE20](v59);
        v67 = v111;
        *(&v93 - 6) = v112;
        *(&v93 - 5) = v40;
        *(&v93 - 4) = v41;
        *(&v93 - 3) = v67;
        *(&v93 - 2) = v34;
        objc_allocWithZone(sub_2232A9C04());
        goto LABEL_15;
      }
    }

    MEMORY[0x28223BE20](v44);
    v46 = v111;
    v41 = v105;
    v40 = v106;
    *(&v93 - 6) = v112;
    *(&v93 - 5) = v40;
    *(&v93 - 4) = v41;
    *(&v93 - 3) = v46;
    *(&v93 - 2) = v43;
    objc_allocWithZone(sub_2232A9C04());
  }

LABEL_15:
  v47 = sub_2232A9B74();
  if (!v47)
  {
LABEL_46:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v68 = sub_2232AAAD4();
    __swift_project_value_buffer(v68, qword_28131DB88);

    v69 = sub_2232AAAC4();
    v70 = sub_2232AAD94();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v116 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_2232603D0(v40, v41, &v116);
      _os_log_impl(&dword_22325E000, v69, v70, "Failed to create DictationAsrResultMessage for requestId: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x223DD8AC0](v72, -1, -1);
      MEMORY[0x223DD8AC0](v71, -1, -1);
    }

    goto LABEL_92;
  }

  v48 = v43;
  v49 = v112;
  v50 = v47;
  __swift_project_boxed_opaque_existential_1((v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24));
  v105 = v50;
  sub_2232AA624();
  v51 = *(v49 + OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions);
  if ([v51 shouldRecognizeCommands])
  {
    v52 = v102;
    v107(v102, v103, v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v116 == v114 && v117 == v115)
    {
      v109(v52, v8);

      v43 = v48;
      goto LABEL_23;
    }

    v53 = sub_2232AB094();
    v109(v52, v8);

    v43 = v48;
    if (v53)
    {
LABEL_23:
      v54 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if (v111)
      {
        if ([*(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper) respondsToSelector_])
        {
          v55 = v111;
          v56 = v43;
          v57 = sub_2232AABF4();
          [v54 didRecognizePartialPackage:v55 nluResult:v56 sessionUUID:v57];
LABEL_26:

          return;
        }

        goto LABEL_91;
      }

      if ([*(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper) respondsToSelector_])
      {
        if (v104)
        {
          sub_223296050();
          v60 = v43;
          v61 = sub_2232AACF4();
        }

        else
        {
          v82 = v43;
          v61 = 0;
        }

        v65 = sub_2232AABF4();
        [v54 didRecognizeTokens:v61 nluResult:v43 sessionUUID:v65];

LABEL_66:
        goto LABEL_67;
      }

      goto LABEL_91;
    }

    v62 = v100;
    v107(v100, *MEMORY[0x277D5D208], v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v116 == v114 && v117 == v115)
    {
      v109(v62, v8);

      goto LABEL_52;
    }

    v73 = sub_2232AB094();
    v109(v62, v8);

    if (v73)
    {
LABEL_52:
      v74 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v74 respondsToSelector_])
      {
        v61 = v48;
        v65 = sub_2232AABF4();
        [v74 didRecognizePackage:v111 nluResult:v61 sessionUUID:v65];

LABEL_67:
        return;
      }

      goto LABEL_91;
    }

    v76 = *MEMORY[0x277D5D210];
    v77 = v97;
    v107(v97, v76, v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v116 == v114 && v117 == v115)
    {
      v109(v77, v8);

      v78 = v98;
      if (v98)
      {
        goto LABEL_79;
      }

LABEL_70:
      v84 = v96;
      v107(v96, v76, v8);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v116 != v114 || v117 != v115)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v83 = sub_2232AB094();
    v109(v77, v8);

    v78 = v98;
    if ((v83 & 1) == 0 || (v98 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_79:
    if (v111)
    {
      v88 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v88 respondsToSelector_])
      {
        v55 = v111;
        v56 = v43;
        v57 = sub_2232AABF4();
        [v88 didRecognizeVoiceCommandCandidatePackage:v55 nluResult:v56 sessionUUID:v57];
        goto LABEL_26;
      }
    }

    goto LABEL_91;
  }

  if ([v51 shouldClassifyIntent])
  {

    return;
  }

  v58 = v101;
  v107(v101, v103, v8);
  sub_2232AACD4();
  sub_2232AACD4();
  v43 = v48;
  if (v116 == v114 && v117 == v115)
  {
    v109(v58, v8);
  }

  else
  {
    v63 = sub_2232AB094();
    v109(v58, v8);

    if ((v63 & 1) == 0)
    {
      v75 = v99;
      v107(v99, *MEMORY[0x277D5D208], v8);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v116 == v114 && v117 == v115)
      {
        v109(v75, v8);
      }

      else
      {
        v79 = sub_2232AB094();
        v109(v75, v8);

        if ((v79 & 1) == 0)
        {
          v85 = *MEMORY[0x277D5D210];
          v86 = v95;
          v107(v95, v85, v8);
          sub_2232AACD4();
          sub_2232AACD4();
          if (v116 == v114 && v117 == v115)
          {
            v109(v86, v8);

            v78 = v98;
            if (v98)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v87 = sub_2232AB094();
            v109(v86, v8);

            v78 = v98;
            if (v87 & 1) != 0 && (v98)
            {
              goto LABEL_79;
            }
          }

          v84 = v94;
          v107(v94, v85, v8);
          sub_2232AACD4();
          sub_2232AACD4();
          if (v116 != v114 || v117 != v115)
          {
LABEL_85:
            v89 = sub_2232AB094();
            v109(v84, v8);

            if ((v89 & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

LABEL_84:
          v109(v84, v8);

LABEL_86:
          if ((v78 & 1) == 0)
          {
            if (v111)
            {
              v90 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
              if ([v90 respondsToSelector_])
              {
                v91 = v111;
                v92 = sub_2232AABF4();
                [v90 didRecognizeFinalResultCandidatePackage:v91 sessionUUID:v92];

                return;
              }
            }

            goto LABEL_91;
          }

LABEL_87:

          return;
        }
      }

      v80 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v80 respondsToSelector_])
      {
        v81 = sub_2232AABF4();
        [v80 didRecognizePackage:v111 sessionUUID:v81];

        return;
      }

      goto LABEL_91;
    }
  }

  v64 = *(v112 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
  if ([v64 respondsToSelector_])
  {
    v61 = v104;
    if (v104)
    {
      sub_223296050();
      v61 = sub_2232AACF4();
    }

    v65 = sub_2232AABF4();
    [v64 didRecognizeTokens:v61 sessionUUID:v65];

    goto LABEL_66;
  }

LABEL_91:

LABEL_92:
}

uint64_t sub_22329588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v30 = a6;
  v31 = a7;
  v29[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0818B0, "(6");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v17 = *MEMORY[0x277D5CDD8];
  v18 = sub_2232AA644();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_2232A9BD4();

  sub_2232A9BA4();
  v20 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v21 = sub_2232A9504();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, a2 + v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  sub_2232A9BF4();

  sub_2232A9BE4();
  v23 = *MEMORY[0x277D5D218];
  v24 = sub_2232AA724();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v10, v23, v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  sub_2232A9B94();

  sub_2232A9BB4();
  v26 = v30;
  sub_2232A9BC4();
  v27 = v31;
  return sub_2232A9B84();
}

uint64_t sub_223295BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unsigned int *a7)
{
  v31 = a7;
  v32 = a6;
  v30[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0818B0, "(6");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v30 - v16;
  v18 = *MEMORY[0x277D5CDD8];
  v19 = sub_2232AA644();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_2232A9BD4();

  sub_2232A9BA4();
  v21 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v22 = sub_2232A9504();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v14, a2 + v21, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  sub_2232A9BF4();

  sub_2232A9BE4();
  v24 = *v31;
  v25 = sub_2232AA724();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v11, v24, v25);
  (*(v26 + 56))(v11, 0, 1, v25);
  sub_2232A9B94();
  v27 = a5;
  sub_2232A9BC4();
  v28 = v32;
  return sub_2232A9B84();
}

id sub_223295F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictationSpeechRecognizerResponseHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DictationSpeechRecognizerResponseHandler(uint64_t a1)
{
  result = qword_27D081898;
  if (!qword_27D081898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223295FEC()
{
  result = qword_27D0818A8;
  if (!qword_27D0818A8)
  {
    sub_2232AA724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818A8);
  }

  return result;
}

unint64_t sub_223296050()
{
  result = qword_28131D1E0;
  if (!qword_28131D1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1E0);
  }

  return result;
}

void sub_2232960E0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2232AA724();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  v28 = __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v9;
    v16 = v8;
    v17 = a1;
    v18 = a2;
    v19 = v4;
    v20 = a3;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22325E000, v13, v14, "Received partial result tokens for dictation request", v21, 2u);
    v22 = v21;
    a3 = v20;
    v4 = v19;
    a2 = v18;
    a1 = v17;
    v8 = v16;
    v9 = v15;
    MEMORY[0x223DD8AC0](v22, -1, -1);
  }

  v23 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v23 || (sub_2232AB094() & 1) != 0)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D5D218], v8);
    sub_2232946E8(v11, a1, a2, a3, 0, 0, 0);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v28 = sub_2232AAAC4();
    v24 = sub_2232AAD94();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22325E000, v28, v24, "Response requestId does not match current requestId", v25, 2u);
      MEMORY[0x223DD8AC0](v25, -1, -1);
    }

    v26 = v28;
  }
}

void sub_2232963CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_2232AA724();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v34 = __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = v11;
    v18 = v10;
    v19 = a2;
    v20 = a3;
    v21 = v5;
    v22 = a4;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22325E000, v14, v15, "Received partial result package for dictation request", v23, 2u);
    v24 = v23;
    a4 = v22;
    v5 = v21;
    a3 = v20;
    a2 = v19;
    v10 = v18;
    v11 = v17;
    a1 = v16;
    MEMORY[0x223DD8AC0](v24, -1, -1);
  }

  v25 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v25 || (sub_2232AB094() & 1) != 0)
  {
    v26 = v35;
    (*(v11 + 104))(v35, *MEMORY[0x277D5D218], v10);
    v27 = [a3 recognition];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 oneBestTokenList];

      if (v29)
      {
        sub_223296050();
        v30 = sub_2232AAD04();
      }

      else
      {
        v30 = 0;
      }

      sub_2232946E8(v26, a1, a2, v30, a3, a4, 0);

      (*(v11 + 8))(v26, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v35 = sub_2232AAAC4();
    v31 = sub_2232AAD94();
    if (os_log_type_enabled(v35, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22325E000, v35, v31, "Response requestId does not match current requestId", v32, 2u);
      MEMORY[0x223DD8AC0](v32, -1, -1);
    }

    v33 = v35;
  }
}

void sub_22329673C(NSObject *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_2232AA724();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v29 = __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v10;
    v17 = v9;
    v18 = a2;
    v19 = a3;
    v20 = v5;
    v21 = a4;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22325E000, v14, v15, "Received partial result for dictation request with metadata", v22, 2u);
    v23 = v22;
    a4 = v21;
    v5 = v20;
    a3 = v19;
    a2 = v18;
    v9 = v17;
    v10 = v16;
    MEMORY[0x223DD8AC0](v23, -1, -1);
  }

  v24 = v30;
  v25 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == v30 && *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v25 || (sub_2232AB094() & 1) != 0)
  {
    (*(v10 + 104))(v12, *MEMORY[0x277D5D218], v9);
    sub_2232946E8(v12, v24, a2, a3, 0, a4, 0);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v30 = sub_2232AAAC4();
    v26 = sub_2232AAD94();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22325E000, v30, v26, "Response requestId does not match current requestId", v27, 2u);
      MEMORY[0x223DD8AC0](v27, -1, -1);
    }

    v28 = v30;
  }
}

void sub_223296A30(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  v9 = sub_2232AA724();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v13 || (sub_2232AB094() & 1) != 0)
  {
    (*(v10 + 104))(v12, *a4, v9);
    sub_2232946E8(v12, a1, a2, 0, a3, 0, 0);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v14 = sub_2232AAAD4();
    __swift_project_value_buffer(v14, qword_28131DB88);
    v19 = sub_2232AAAC4();
    v15 = sub_2232AAD94();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22325E000, v19, v15, "Response requestId does not match current requestId", v16, 2u);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    v17 = v19;
  }
}

void sub_223296C60(uint64_t a1, void *a2, void *a3, void *a4, unsigned int *a5, char a6)
{
  v13 = sub_2232AA724();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v6 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v17 || (sub_2232AB094() & 1) != 0)
  {
    (*(v14 + 104))(v16, *a5, v13);
    sub_2232946E8(v16, a1, a2, 0, a3, a4, a6 & 1);
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v23 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22325E000, v23, v19, "Response requestId does not match current requestId", v20, 2u);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    v21 = v23;
  }
}

void sub_223296EA4(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a3 && ((v5 = v4, v7 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId), v8 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8), v7 == a2) ? (v9 = v8 == a3) : (v9 = 0), v9 || (v10 = a4, v11 = sub_2232AB094(), a4 = v10, (v11 & 1) != 0)))
  {
    v33 = a1;
    if (qword_28131D338 != -1)
    {
      v32 = a4;
      swift_once();
      a4 = v32;
    }

    v35 = a4;
    v12 = sub_2232AAAD4();
    __swift_project_value_buffer(v12, qword_28131DB88);
    v13 = sub_2232AAAC4();
    v14 = sub_2232AAD84();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22325E000, v13, v14, "Completed local dictation recognition", v15, 2u);
      MEMORY[0x223DD8AC0](v15, -1, -1);
    }

    MEMORY[0x28223BE20](v16);
    v17 = objc_allocWithZone(sub_2232A9D54());
    v18 = sub_2232A9D44();
    if (!v18)
    {
      v28 = sub_2232AAAC4();
      v29 = sub_2232AAD94();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22325E000, v28, v29, "Could not create EndDictationRequestMessage msg", v30, 2u);
        MEMORY[0x223DD8AC0](v30, -1, -1);
      }

LABEL_33:

      return;
    }

    v19 = v18;
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24));
    sub_2232AA624();
    if (!v35)
    {
LABEL_16:
      v22 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if (([v22 respondsToSelector_] & 1) == 0)
      {

        return;
      }

      v23 = [*(v5 + OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions) secureOfflineOnly];
      if (v35)
      {
        v24 = sub_2232A9474();
      }

      else
      {
        v24 = 0;
      }

      v28 = v34;
      v31 = sub_2232AABF4();
      if (v34)
      {
        v28 = sub_2232AAB84();
      }

      [v22 didCompleteRecognitionWithError:v24 secureOfflineOnlyRecognition:v23 sessionUUID:v31 statistics:v28];

      goto LABEL_33;
    }

    v20 = sub_2232A9474();
    v21 = [v20 code];
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      sub_22327FB30(v21, v7, v8);

      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v25 = sub_2232AAAD4();
    __swift_project_value_buffer(v25, qword_28131DB88);
    v36 = sub_2232AAAC4();
    v26 = sub_2232AAD94();
    if (os_log_type_enabled(v36, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22325E000, v36, v26, "Response requestId does not match current requestId", v27, 2u);
      MEMORY[0x223DD8AC0](v27, -1, -1);
    }
  }
}

uint64_t AsrBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v47 = a6;
  v48 = a3;
  v40 = a5;
  v49 = a4;
  v43 = a1;
  v44 = a2;
  v42 = sub_2232AAAD4();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2232AAAB4();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v12 = qword_28131DB58;
  v13 = sub_2232A9504();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = qword_28131DB38;
  *(v11 + qword_28131DB38) = 0;
  *(v11 + qword_28131DB80) = MEMORY[0x277D84F90];
  v15 = v11 + qword_28131DB68;
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  v16 = qword_28131DB20;
  v17 = sub_2232AA794();
  (*(*(v17 - 8) + 56))(v11 + v16, 1, 1, v17);
  *(v11 + qword_28131DB70) = 0;
  v18 = (v11 + qword_28131DB48);
  *v18 = 0;
  v18[1] = 0;
  *(v11 + qword_28131DB60) = 0;
  *(v11 + qword_28131DB30) = 0;
  v19 = qword_28131DB78;
  *(v11 + qword_28131DB78) = 0;
  *(v11 + qword_28131DB28) = 2;
  v20 = qword_28131DB50;
  v21 = *MEMORY[0x277D5D0D0];
  v22 = sub_2232AA6E4();
  (*(*(v22 - 8) + 104))(v11 + v20, v21, v22);
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v23 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v24 = qword_28131DD38;
  sub_2232AAA74();

  v25 = type metadata accessor for MyriadDecisionMonitor();
  inited = swift_initStaticObject();
  v27 = (v11 + qword_28131D290);
  v27[3] = v25;
  v27[4] = &off_28368D388;
  *v27 = inited;
  if (qword_28131DA80 != -1)
  {
    swift_once();
  }

  *(v11 + qword_28131D278) = qword_28131DD40;

  _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
  *(v11 + qword_28131DB40) = v28;
  *(v11 + v19) = AFDeviceSupportsSiriMUX();
  type metadata accessor for AsrCandidateRequestCacheManager();
  swift_allocObject();
  *(v11 + qword_28131D270) = sub_2232A2A34();
  *(v11 + qword_28131D288) = AFDeviceSupportsMedoc();
  *(v11 + v14) = AFDeviceSupportsPatientSiri();
  v29 = v48;
  sub_223260E10(v48, v51);
  v30 = v47;
  sub_223260E10(v47, v50);
  v31 = qword_28131D338;
  swift_unknownObjectRetain();
  v32 = v40;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = v42;
  v34 = __swift_project_value_buffer(v42, qword_28131DB88);
  (*(v6 + 16))(v41, v34, v33);
  v35 = sub_2232AA8E4();

  v36 = AFDeviceSupportsHybridUOD();
  sub_223297920(v36);
  sub_2232AAE24();
  v37 = qword_28131DD38;
  sub_2232AAA84();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  (*(v45 + 8))(v10, v46);
  swift_unknownObjectRelease();

  return v35;
}

uint64_t AsrBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v7 = sub_22329E324(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_223297920(int a1)
{
  v14 = a1;
  v2 = sub_2232AA984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232A97F4();
  sub_2232AA9F4();
  sub_2232A9704();
  sub_2232AA9F4();
  sub_2232AA234();
  sub_2232AA9F4();
  sub_2232AA184();
  sub_2232AA9F4();
  sub_2232AA144();
  sub_2232AA9F4();
  sub_2232AA084();
  sub_2232AA9F4();
  sub_2232AA674();
  sub_2232AA9F4();
  sub_2232A96D4();
  sub_2232AA9F4();
  sub_2232AA664();
  sub_2232AA9F4();
  sub_2232AA174();
  sub_2232AA9F4();
  v6 = *MEMORY[0x277D60070];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_2232A9CA4();
  type metadata accessor for AsrRequestProcessor(0);
  sub_2232AA8D4();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v7(v5, v6, v2);
  sub_2232AA034();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v6, v2);
  sub_2232AA074();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v6, v2);
  sub_2232AA3E4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v6, v2);
  sub_2232AA204();
  sub_2232AA8D4();
  v8(v5, v2);
  v9 = *MEMORY[0x277D60098];
  v7(v5, v9, v2);
  sub_2232AA654();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232AA1C4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232A9F94();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232A9FF4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232A9ED4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232A96F4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232A9734();
  sub_2232AA8D4();
  v8(v5, v2);
  v10 = *MEMORY[0x277D60090];
  v7(v5, v10, v2);
  sub_2232A9694();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v10, v2);
  sub_2232A9EE4();
  sub_2232AA8D4();
  v8(v5, v2);
  v11 = *MEMORY[0x277D60080];
  v7(v5, v11, v2);
  sub_2232A9FA4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v11, v2);
  sub_2232AA194();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232AA1A4();
  sub_2232AA8D4();
  v8(v5, v2);
  v7(v5, v9, v2);
  sub_2232AA154();
  sub_2232AA8D4();
  result = (v8)(v5, v2);
  if (*(v1 + qword_28131DB38) == 1)
  {
    v7(v5, v9, v2);
    sub_2232AA3B4();
    sub_2232AA8D4();
    result = (v8)(v5, v2);
  }

  if (v14)
  {
    sub_2232606A4(0, &unk_27D0814B0, 0x277D47730);
    sub_2232AAA24();
    sub_2232606A4(0, &qword_27D081908, 0x277D47748);
    sub_2232AAA24();
    sub_2232606A4(0, &qword_27D081900, 0x277D47740);
    result = sub_2232AAA24();
    if (*(v1 + qword_28131DB78) == 1)
    {
      sub_2232606A4(0, &unk_27D081910, 0x277D47718);
      sub_2232AAA24();
      v7(v5, v9, v2);
      sub_2232A9B44();
      sub_2232AA8D4();
      return (v8)(v5, v2);
    }
  }

  return result;
}

void sub_22329887C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = a1;
  v4 = sub_2232AAAC4();
  v5 = sub_2232AAD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22325E000, v4, v5, "AsrRequestProcessor received message: %@", v6, 0xCu);
    sub_223260EDC(v7, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v7, -1, -1);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }

  sub_2232A9744();
  v9 = swift_dynamicCastClass() != 0;
  sub_22328F48C(v9);
}

void sub_223298A24(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = a1;
  v4 = sub_2232AAAC4();
  v5 = sub_2232AAD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22325E000, v4, v5, "AsrRequestProcessor received message: %@", v6, 0xCu);
    sub_223260EDC(v7, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v7, -1, -1);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }

  sub_22328F48C(0);
}

void sub_223298BF4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v6 = sub_2232AAAD4();
  __swift_project_value_buffer(v6, qword_28131DB88);
  v7 = a1;
  v8 = sub_2232AAAC4();
  v9 = sub_2232AAD84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_22325E000, v8, v9, "AsrCandidateRequestProcessor received message: %@", v10, 0xCu);
    sub_223260EDC(v11, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v11, -1, -1);
    MEMORY[0x223DD8AC0](v10, -1, -1);
  }

  sub_22329D0C4(v7, a2, a3);
}

void sub_223298D94(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = a1;
  oslog = sub_2232AAAC4();
  v4 = sub_2232AAD84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_22325E000, oslog, v4, "AsrCandidateRequestProcessor received message: %@. Ignoring..", v5, 0xCu);
    sub_223260EDC(v6, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v6, -1, -1);
    MEMORY[0x223DD8AC0](v5, -1, -1);
  }
}

uint64_t sub_2232990E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v36 - v8;
  v9 = sub_2232A9504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = a1;
  v15 = sub_2232AAAC4();
  v16 = sub_2232AAD84();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v6;
    v18 = v17;
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v18 = 136315138;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_2232AB064();
    v20 = v10;
    v21 = v9;
    v23 = v22;
    (*(v20 + 8))(v12, v21);
    v24 = sub_2232603D0(v19, v23, v40);
    v9 = v21;
    v10 = v20;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_22325E000, v15, v16, "Handling StartSpeechDictationSession for sessionId: %s", v18, 0xCu);
    v25 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DD8AC0](v25, -1, -1);
    v26 = v18;
    v6 = v37;
    MEMORY[0x223DD8AC0](v26, -1, -1);
  }

  v27 = v38;
  sub_2232AA614();
  (*(v10 + 56))(v27, 0, 1, v9);
  v28 = qword_28131DB58;
  swift_beginAccess();
  sub_223260794(v27, v2 + v28, &unk_27D0812C0, &qword_2232AD0C0);
  swift_endAccess();
  sub_2232AAA34();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_2232AA614();
  sub_2232AA764();
  (*(v10 + 8))(v12, v9);
  v29 = qword_28131DB68;
  swift_beginAccess();
  sub_223260794(v39, v2 + v29, &unk_27D0818D8, ",6");
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  v30 = sub_2232AA214();
  v31 = (v2 + qword_28131DB48);
  *v31 = v30;
  v31[1] = v32;

  sub_2232AA224();
  v33 = sub_2232AA794();
  (*(*(v33 - 8) + 56))(v6, 0, 1, v33);
  v34 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v6, v2 + v34, &unk_27D0814C0, &unk_2232AC480);
  result = swift_endAccess();
  *(v2 + qword_28131DB28) = 0;
  return result;
}

void sub_2232995C0(void *a1)
{
  v69 = a1;
  v2 = sub_2232AA6E4();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v57[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v57[-v19];
  v21 = qword_28131DB58;
  swift_beginAccess();
  v65 = v1;
  v60 = v21;
  sub_223260E74(v1 + v21, v20, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  v22 = *(v5 + 56);
  v22(v18, 0, 1, v4);
  v23 = *(v8 + 56);
  sub_223260E74(v20, v10, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v18, &v10[v23], &unk_27D0812C0, &qword_2232AD0C0);
  v67 = v5;
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    v59 = v22;
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    v25 = v24(&v10[v23], 1, v4);
    v26 = v4;
    if (v25 == 1)
    {
      sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v42 = sub_2232AAAD4();
      __swift_project_value_buffer(v42, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v44 = sub_2232AAD84();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22325E000, v43, v44, "Setting sessionId to nil", v45, 2u);
        MEMORY[0x223DD8AC0](v45, -1, -1);
      }

      v46 = v61;
      v59(v61, 1, 1, v26);
      v47 = v65;
      v48 = v60;
      swift_beginAccess();
      sub_223260794(v46, v47 + v48, &unk_27D0812C0, &qword_2232AD0C0);
      swift_endAccess();
      v49 = (v47 + qword_28131DB48);
      *v49 = 0;
      v49[1] = 0;

      v50 = sub_2232AAAC4();
      v51 = sub_2232AAD84();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_22325E000, v50, v51, "Setting userSessionState to ambient", v52, 2u);
        MEMORY[0x223DD8AC0](v52, -1, -1);
      }

      v54 = v62;
      v53 = v63;
      v55 = v64;
      (*(v63 + 104))(v62, *MEMORY[0x277D5D0D0], v64);
      v56 = qword_28131DB50;
      swift_beginAccess();
      (*(v53 + 40))(v47 + v56, v54, v55);
      swift_endAccess();
      *(v47 + qword_28131DB28) = 2;
      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v10, v68, &unk_27D0812C0, &qword_2232AD0C0);
  if (v24(&v10[v23], 1, v4) == 1)
  {
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v67 + 8))(v68, v4);
    v26 = v4;
LABEL_6:
    sub_223260EDC(v10, &unk_27D0818B8, "(6");
    goto LABEL_7;
  }

  v59 = v22;
  v39 = v66;
  v38 = v67;
  (*(v67 + 32))(v66, &v10[v23], v4);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v40 = v68;
  v58 = sub_2232AABE4();
  v41 = *(v38 + 8);
  v41(v39, v4);
  sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
  v41(v40, v4);
  sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
  v26 = v4;
  if (v58)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v27 = sub_2232AAAD4();
  __swift_project_value_buffer(v27, qword_28131DB88);
  v28 = v69;
  v29 = sub_2232AAAC4();
  v30 = sub_2232AAD94();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v70[0] = v32;
    *v31 = 136315138;
    v33 = v66;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_2232AB064();
    v36 = v35;
    (*(v67 + 8))(v33, v26);
    v37 = sub_2232603D0(v34, v36, v70);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_22325E000, v29, v30, "SessionId: %s is not the current session, ignoring", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x223DD8AC0](v32, -1, -1);
    MEMORY[0x223DD8AC0](v31, -1, -1);
  }
}

void sub_223299E7C(void *a1)
{
  v96 = a1;
  v2 = sub_2232AA704();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v87 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v86 = &v84[-v5];
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v92 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v84[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v84[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v84[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v84[-v21];
  v23 = qword_28131DB58;
  swift_beginAccess();
  v95 = v1;
  v90 = v23;
  sub_223260E74(v1 + v23, v22, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v7 + 56))(v20, 0, 1, v6);
  v24 = *(v10 + 56);
  sub_223260E74(v22, v12, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v20, &v12[v24], &unk_27D0812C0, &qword_2232AD0C0);
  v94 = v7;
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) != 1)
  {
    v27 = v93;
    sub_223260E74(v12, v93, &unk_27D0812C0, &qword_2232AD0C0);
    if (v25(&v12[v24], 1, v6) != 1)
    {
      v36 = v94;
      v37 = &v12[v24];
      v38 = v92;
      (*(v94 + 32))(v92, v37, v6);
      sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v85 = sub_2232AABE4();
      v39 = *(v36 + 8);
      v39(v38, v6);
      sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
      sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
      v39(v27, v6);
      sub_223260EDC(v12, &unk_27D0812C0, &qword_2232AD0C0);
      v26 = v95;
      if (v85)
      {
        goto LABEL_13;
      }

LABEL_7:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v28 = sub_2232AAAD4();
      __swift_project_value_buffer(v28, qword_28131DB88);

      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD84();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v97 = v32;
        *v31 = 136315138;
        v33 = v91;
        sub_223260E74(v26 + v90, v91, &unk_27D0812C0, &qword_2232AD0C0);
        if (v25(v33, 1, v6))
        {
          sub_223260EDC(v33, &unk_27D0812C0, &qword_2232AD0C0);
          v34 = 0xE300000000000000;
          v35 = 7104878;
        }

        else
        {
          v73 = v94;
          v74 = v92;
          (*(v94 + 16))(v92, v33, v6);
          sub_223260EDC(v33, &unk_27D0812C0, &qword_2232AD0C0);
          v75 = sub_2232A94C4();
          v34 = v76;
          (*(v73 + 8))(v74, v6);
          v35 = v75;
        }

        v77 = sub_2232603D0(v35, v34, &v97);

        *(v31 + 4) = v77;
        _os_log_impl(&dword_22325E000, v29, v30, "StartAttendingRequestedMessage does not belong to current session id: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x223DD8AC0](v32, -1, -1);
        MEMORY[0x223DD8AC0](v31, -1, -1);
      }

      return;
    }

    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v94 + 8))(v27, v6);
LABEL_6:
    sub_223260EDC(v12, &unk_27D0818B8, "(6");
    v26 = v95;
    goto LABEL_7;
  }

  sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
  if (v25(&v12[v24], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_223260EDC(v12, &unk_27D0812C0, &qword_2232AD0C0);
  v26 = v95;
LABEL_13:
  v40 = *(v26 + qword_28131DB60);
  if (v40)
  {
    v41 = v40;
    v42 = v96;
    v43 = sub_2232AA134();
    if (v44)
    {
      v45 = v43;
      v46 = v44;
      v95 = v6;
      v47 = v86;
      sub_2232AA124();
      v49 = v87;
      v48 = v88;
      v50 = v89;
      (*(v88 + 104))(v87, *MEMORY[0x277D5D158], v89);
      v51 = sub_2232AA6F4();
      v52 = *(v48 + 8);
      v52(v49, v50);
      v52(v47, v50);
      if (v51)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v53 = sub_2232AAAD4();
        __swift_project_value_buffer(v53, qword_28131DB88);
        v54 = v42;

        v55 = sub_2232AAAC4();
        v56 = sub_2232AAD84();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v97 = v58;
          *v57 = 136315394;
          v59 = v45;
          v60 = v41;
          v61 = v92;
          sub_2232AA614();
          v62 = sub_2232A94C4();
          v64 = v63;
          v65 = v61;
          v41 = v60;
          v66 = v59;
          (*(v94 + 8))(v65, v95);
          v67 = sub_2232603D0(v62, v64, &v97);

          *(v57 + 4) = v67;
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_2232603D0(v66, v46, &v97);
          _os_log_impl(&dword_22325E000, v55, v56, "StartAttendingRequestedMessage received for sessionId: %s, calling directActionJarvisAnnounceMessageTrigger(withDeviceId:%s) on the AttendingClient", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v58, -1, -1);
          MEMORY[0x223DD8AC0](v57, -1, -1);
        }

        v68 = sub_2232AABF4();

        [v41 directActionJarvisAnnounceMessageTriggerWithDeviceId_];

        return;
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v83 = sub_2232AAAD4();
      __swift_project_value_buffer(v83, qword_28131DB88);
      v79 = sub_2232AAAC4();
      v80 = sub_2232AAD94();
      if (!os_log_type_enabled(v79, v80))
      {
LABEL_38:

        return;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = "Received StartAttendingRequestedMessage with reason != .directActionCarPlay, dropping";
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v78 = sub_2232AAAD4();
      __swift_project_value_buffer(v78, qword_28131DB88);
      v79 = sub_2232AAAC4();
      v80 = sub_2232AAD94();
      if (!os_log_type_enabled(v79, v80))
      {
        goto LABEL_38;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = "Received StartAttendingRequestedMessage missing deviceId, dropping";
    }

    _os_log_impl(&dword_22325E000, v79, v80, v82, v81, 2u);
    MEMORY[0x223DD8AC0](v81, -1, -1);
    goto LABEL_38;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v69 = sub_2232AAAD4();
  __swift_project_value_buffer(v69, qword_28131DB88);
  v70 = sub_2232AAAC4();
  v71 = sub_2232AAD94();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_22325E000, v70, v71, "Received StartAttendingRequestedMessage outside the scope of a session, dropping", v72, 2u);
    MEMORY[0x223DD8AC0](v72, -1, -1);
  }
}

uint64_t sub_22329AA48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v10 = sub_2232AAAD4();
  __swift_project_value_buffer(v10, qword_28131DB88);
  v11 = a1;
  v12 = sub_2232AAAC4();
  v13 = sub_2232AAD84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315650;
    v16 = sub_2232AA634();
    v18 = sub_2232603D0(v16, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v19 = *(sub_2232A96C4() + 16);

    *(v14 + 14) = v19;

    *(v14 + 22) = 1024;
    v20 = sub_2232A96B4();

    *(v14 + 24) = v20 & 1;
    _os_log_impl(&dword_22325E000, v12, v13, "MUXContextMessage received for assistantId: %s with %ld home members and RMVEnabled=%{BOOL}d", v14, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x223DD8AC0](v15, -1, -1);
    MEMORY[0x223DD8AC0](v14, -1, -1);
  }

  else
  {
  }

  v21 = sub_2232A96C4();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = sub_22329C63C(*(v21 + 16), 0);
    v25 = sub_22329D944(&v33, v24 + 4, v23, v22);
    sub_22329ED3C(v33);
    if (v25 == v23)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v24 = MEMORY[0x277D84F90];
LABEL_10:
  *(v2 + qword_28131DB80) = v24;

  *(v2 + qword_28131DB70) = sub_2232A96B4() & 1;
  *(v2 + qword_28131DB78) = 1;
  sub_2232A96A4();
  v26 = sub_2232AA794();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v7, 1, v26) == 1)
  {
    v29 = qword_28131DB20;
    swift_beginAccess();
    sub_223260E74(v2 + v29, v9, &unk_27D0814C0, &unk_2232AC480);
    if (v28(v7, 1, v26) != 1)
    {
      sub_223260EDC(v7, &unk_27D0814C0, &unk_2232AC480);
    }
  }

  else
  {
    (*(v27 + 32))(v9, v7, v26);
    (*(v27 + 56))(v9, 0, 1, v26);
  }

  v30 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v9, v2 + v30, &unk_27D0814C0, &unk_2232AC480);
  return swift_endAccess();
}

void sub_22329AE88(void *a1)
{
  v62 = a1;
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v54[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v54[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v54[-v17];
  v19 = qword_28131DB58;
  swift_beginAccess();
  v61 = v1;
  v56 = v19;
  sub_223260E74(v1 + v19, v18, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v3 + 56))(v16, 0, 1, v2);
  v20 = *(v6 + 56);
  sub_223260E74(v18, v8, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v16, &v8[v20], &unk_27D0812C0, &qword_2232AD0C0);
  v60 = v3;
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_223260EDC(v16, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    if (v21(&v8[v20], 1, v2) == 1)
    {
      sub_223260EDC(v8, &unk_27D0812C0, &qword_2232AD0C0);
      v22 = v61;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v36 = sub_2232AAAD4();
      __swift_project_value_buffer(v36, qword_28131DB88);
      v37 = v62;
      v38 = sub_2232AAAC4();
      v39 = sub_2232AAD84();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_22325E000, v38, v39, "AsrBridge received message: %@", v40, 0xCu);
        sub_223260EDC(v41, &qword_27D0812D0, &qword_2232AC4A0);
        MEMORY[0x223DD8AC0](v41, -1, -1);
        MEMORY[0x223DD8AC0](v40, -1, -1);
      }

      v43 = *(v22 + qword_28131DB60);
      if (v43)
      {
        v44 = v43;
        sub_2232AA5D4();
        v45 = sub_2232AABF4();

        [v44 siriDidPromptWithRootRequestId_];
      }

      else
      {
        v46 = sub_2232AAAC4();
        v47 = sub_2232AAD94();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_22325E000, v46, v47, "AttendingClient not set while receiving SiriPromptedMessage, dropping", v48, 2u);
          MEMORY[0x223DD8AC0](v48, -1, -1);
        }
      }

      return;
    }

    goto LABEL_6;
  }

  v23 = v59;
  sub_223260E74(v8, v59, &unk_27D0812C0, &qword_2232AD0C0);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_223260EDC(v16, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v60 + 8))(v23, v2);
LABEL_6:
    sub_223260EDC(v8, &unk_27D0818B8, "(6");
    v22 = v61;
    goto LABEL_7;
  }

  v32 = v60;
  v33 = &v8[v20];
  v34 = v58;
  (*(v60 + 32))(v58, v33, v2);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v55 = sub_2232AABE4();
  v35 = *(v32 + 8);
  v35(v34, v2);
  sub_223260EDC(v16, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
  v35(v23, v2);
  sub_223260EDC(v8, &unk_27D0812C0, &qword_2232AD0C0);
  v22 = v61;
  if (v55)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v24 = sub_2232AAAD4();
  __swift_project_value_buffer(v24, qword_28131DB88);

  v25 = sub_2232AAAC4();
  v26 = sub_2232AAD84();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v63 = v28;
    *v27 = 136315138;
    v29 = v57;
    sub_223260E74(v22 + v56, v57, &unk_27D0812C0, &qword_2232AD0C0);
    if (v21(v29, 1, v2))
    {
      sub_223260EDC(v29, &unk_27D0812C0, &qword_2232AD0C0);
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v49 = v60;
      v50 = v58;
      (*(v60 + 16))(v58, v29, v2);
      sub_223260EDC(v29, &unk_27D0812C0, &qword_2232AD0C0);
      v51 = sub_2232A94C4();
      v30 = v52;
      (*(v49 + 8))(v50, v2);
      v31 = v51;
    }

    v53 = sub_2232603D0(v31, v30, &v63);

    *(v27 + 4) = v53;
    _os_log_impl(&dword_22325E000, v25, v26, "SiriPromptedMessage does not belong to current session id: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x223DD8AC0](v28, -1, -1);
    MEMORY[0x223DD8AC0](v27, -1, -1);
  }
}

void sub_22329B6E0(void *a1)
{
  v69 = a1;
  v2 = sub_2232AA6E4();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v62 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v57[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v57[-v19];
  v21 = qword_28131DB58;
  swift_beginAccess();
  v68 = v1;
  v60 = v21;
  sub_223260E74(v1 + v21, v20, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v5 + 56))(v18, 0, 1, v4);
  v22 = *(v8 + 56);
  sub_223260E74(v20, v10, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v18, &v10[v22], &unk_27D0812C0, &qword_2232AD0C0);
  v66 = v5;
  v23 = v5;
  v24 = v4;
  v25 = *(v23 + 48);
  if (v25(v10, 1, v4) == 1)
  {
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    if (v25(&v10[v22], 1, v4) == 1)
    {
      sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
      v26 = v68;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v42 = sub_2232AAAD4();
      __swift_project_value_buffer(v42, qword_28131DB88);
      v43 = v69;
      v44 = sub_2232AAAC4();
      v45 = sub_2232AAD84();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v43;
        v48 = v43;
        _os_log_impl(&dword_22325E000, v44, v45, "#user-session: received message: %@", v46, 0xCu);
        sub_223260EDC(v47, &qword_27D0812D0, &qword_2232AC4A0);
        MEMORY[0x223DD8AC0](v47, -1, -1);
        MEMORY[0x223DD8AC0](v46, -1, -1);
      }

      v49 = v63;
      sub_2232AA164();
      v50 = qword_28131DB50;
      swift_beginAccess();
      (*(v64 + 40))(v26 + v50, v49, v65);
      swift_endAccess();
      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v10, v67, &unk_27D0812C0, &qword_2232AD0C0);
  if (v25(&v10[v22], 1, v4) == 1)
  {
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v66 + 8))(v67, v4);
LABEL_6:
    sub_223260EDC(v10, &unk_27D0818B8, "(6");
    v26 = v68;
    goto LABEL_7;
  }

  v35 = v4;
  v36 = v66;
  v37 = v62;
  (*(v66 + 32))(v62, &v10[v22], v35);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v59 = v25;
  v38 = v67;
  v58 = sub_2232AABE4();
  v39 = v36;
  v24 = v35;
  v40 = *(v39 + 8);
  v40(v37, v35);
  sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
  v41 = v38;
  v25 = v59;
  v40(v41, v35);
  sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
  v26 = v68;
  if (v58)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v27 = sub_2232AAAD4();
  __swift_project_value_buffer(v27, qword_28131DB88);

  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v70[0] = v31;
    *v30 = 136315138;
    v32 = v61;
    sub_223260E74(v26 + v60, v61, &unk_27D0812C0, &qword_2232AD0C0);
    if (v25(v32, 1, v24))
    {
      sub_223260EDC(v32, &unk_27D0812C0, &qword_2232AD0C0);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v51 = v24;
      v52 = v66;
      v53 = v62;
      (*(v66 + 16))(v62, v32, v51);
      sub_223260EDC(v32, &unk_27D0812C0, &qword_2232AD0C0);
      v54 = sub_2232A94C4();
      v33 = v55;
      (*(v52 + 8))(v53, v51);
      v34 = v54;
    }

    v56 = sub_2232603D0(v34, v33, v70);

    *(v30 + 4) = v56;
    _os_log_impl(&dword_22325E000, v28, v29, "ActiveUserSessionDetectedMessage does not belong to current session id: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DD8AC0](v31, -1, -1);
    MEMORY[0x223DD8AC0](v30, -1, -1);
  }
}

uint64_t sub_22329BFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, unint64_t *a6, void *a7, uint64_t a8, ...)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = a1;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v30 = a2;
    v31 = a4;
    v18 = a3;
    v32 = a8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = [v15 refId];
    if (v21)
    {
      v22 = v21;
      v23 = sub_2232AAC04();
      v25 = v24;
    }

    else
    {
      v25 = 0xE900000000000064;
      v23 = 0x49666572206C696ELL;
    }

    a3 = v18;
    v26 = sub_2232603D0(v23, v25, &v35);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_22325E000, v16, v17, a5, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DD8AC0](v20, -1, -1);
    MEMORY[0x223DD8AC0](v19, -1, -1);

    a8 = v32;
    a2 = v30;
    a4 = v31;
  }

  else
  {
  }

  v27 = sub_2232606A4(0, a6, a7);
  v28 = type metadata accessor for AsrRequestProcessor(0);

  return MEMORY[0x2821C53B0](v15, a2, a3, a4, a8, 0, v27, v28);
}

uint64_t sub_22329C370()
{

  sub_223260EDC(v0 + qword_28131DB58, &unk_27D0812C0, &qword_2232AD0C0);

  sub_223260EDC(v0 + qword_28131DB68, &unk_27D0818D8, ",6");
  sub_223260EDC(v0 + qword_28131DB20, &unk_27D0814C0, &unk_2232AC480);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D290));

  v1 = qword_28131DB50;
  v2 = sub_2232AA6E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t AsrBridge.deinit()
{
  v0 = sub_2232AA8F4();

  sub_223260EDC(v0 + qword_28131DB58, &unk_27D0812C0, &qword_2232AD0C0);

  sub_223260EDC(v0 + qword_28131DB68, &unk_27D0818D8, ",6");
  sub_223260EDC(v0 + qword_28131DB20, &unk_27D0814C0, &unk_2232AC480);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D290));

  v1 = qword_28131DB50;
  v2 = sub_2232AA6E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AsrBridge.__deallocating_deinit()
{
  v0 = AsrBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_22329C63C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811C8, &qword_2232AC458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unsigned __int8 *sub_22329C6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2232AACB4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22329CC50(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2232AAF84();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22329CC50(uint64_t a1, unint64_t a2)
{
  v2 = sub_2232AACC4();
  v6 = sub_22329CCD0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22329CCD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2232AAEC4();
    if (!v9 || (v10 = v9, v11 = sub_2232644DC(v9, 0), v12 = sub_22329CE28(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2232AAC34();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2232AAC34();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2232AAF84();
LABEL_4:

  return sub_2232AAC34();
}

unint64_t sub_22329CE28(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22329D048(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2232AAC94();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2232AAF84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22329D048(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2232AAC74();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_22329D048(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2232AACA4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DD8010](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_22329D0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = *MEMORY[0x277D5CF40];
  v9 = sub_2232AA6B4();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = qword_28131DD10;
  swift_beginAccess();
  sub_223260794(v7, a2 + v11, &unk_27D081810, &unk_2232ACC60);
  swift_endAccess();
  sub_223268998(0);
  v12 = a3();
  sub_22328A4AC(v12 & 1);
  if (v13)
  {
    v14 = v13;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    v16 = v14;
    v17 = sub_2232AAAC4();
    v18 = sub_2232AAD84();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v14;
      v21 = v16;
      _os_log_impl(&dword_22325E000, v17, v18, "Going to call startASR from AsrCandidateRequestProcessor with settings = %@", v19, 0xCu);
      sub_223260EDC(v20, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v20, -1, -1);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }

    [*(a2 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
  }
}

void sub_22329D380(void *a1, uint64_t a2)
{
  v4 = sub_2232AA694();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232632C4(&v56);
  v8 = *(a2 + qword_28131D8F0);
  if (v8 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v38)
  {
    v49 = v7;
    if (!i)
    {
LABEL_15:
      LODWORD(v53) = sub_2232A9C84();
      v51 = sub_2232AA5D4();
      v20 = v49;
      sub_2232A9714();
      sub_2232AA684();
      (*(v5 + 8))(v20, v4);
      if (sub_2232A9C94())
      {
        v50 = sub_2232AA7A4();
      }

      else
      {
        v50 = 0;
      }

      v21 = *MEMORY[0x277D24258];
      v22 = sub_2232AA924();
      v23 = sub_2232AA944();
      v25 = sub_22326A9D4(v22, v23, v24);
      swift_unknownObjectRelease();

      v26 = v56;
      LODWORD(v52) = sub_22326B608(v56);
      aBlock = v58;
      v27 = sub_2232AABF4();

      v28 = sub_2232AABF4();

      v29 = sub_2232AACF4();
      sub_2232606A4(0, &qword_28131D1A0, 0x277CEF130);
      v30 = sub_2232AACF4();

      if (*(&aBlock + 1))
      {
        v31 = sub_2232AABF4();
      }

      else
      {
        v31 = 0;
      }

      v32 = (v25 != 2) ^ v25;
      if (v53)
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      v34 = v57;
      v35 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v43) = 0;
      LOBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      BYTE3(v40) = v34;
      BYTE2(v40) = 1;
      BYTE1(v40) = v52 & 1;
      LOBYTE(v40) = v32 & 1;
      LODWORD(v39) = 0;
      v36 = v50;
      [v35 initWithRequestId:v27 inputOrigin:v28 speechRecognitionTaskName:v26 speechRecognitionMode:v33 location:v50 jitGrammar:v29 overrideModelPath:v21 applicationName:0 detectUtterances:0 continuousListening:v39 shouldHandleCapitalization:0 secureOfflineOnly:v40 maximumRecognitionDuration:0 recognitionOverrides:v41 shouldStoreAudioOnDevice:0 deliverEagerPackage:v30 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v42 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v43 powerContext:v31 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_223260EDC(&aBlock, &qword_27D081720, &qword_2232AC498);
      return;
    }

    v10 = v8;
    v55[5] = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if (i < 0)
    {
      break;
    }

    v45 = v5;
    v46 = v4;
    v47 = a1;
    v48 = a2;
    v11 = objc_opt_self();
    v5 = 0;
    v12 = v10;
    v52 = v11;
    v53 = v10 & 0xC000000000000001;
    v8 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = v10 & 0xFFFFFFFFFFFFFF8;
    v51 = v55;
    v7 = v10;
    v13 = i;
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v53)
      {
        v15 = MEMORY[0x223DD8300](v5, v12);
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_27;
        }

        v15 = *&v12[8 * v5 + 32];
      }

      v16 = v15;
      a2 = swift_allocObject();
      *(a2 + 16) = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_22329EF74;
      *(v17 + 24) = a2;
      v55[2] = sub_22329EF70;
      v55[3] = v17;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v55[0] = sub_223278834;
      v55[1] = &block_descriptor_25;
      a1 = _Block_copy(&aBlock);
      v18 = v16;

      v4 = [v52 newWithBuilder_];
      _Block_release(a1);
      if (!v4)
      {
        goto LABEL_30;
      }

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_26;
      }

      sub_2232AAF94();
      sub_2232AAFC4();
      sub_2232AAFD4();
      sub_2232AAFA4();
      ++v5;
      v12 = v7;
      if (v14 == v13)
      {
        v4 = v46;
        v5 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v37 = v8;
    v38 = sub_2232AAFE4();
    v8 = v37;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void *sub_22329D944(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2232AABF4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2232AABF4();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_2232AAC04();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      v9 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v10 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {

        v32 = 5;
        goto LABEL_67;
      }

      if ((v7 & 0x1000000000000000) != 0)
      {
        v39 = 0;
        v13 = sub_22329C6C4(v5, v7, 10);
        v31 = v37;
LABEL_65:

        if ((v31 & 1) == 0)
        {
          if (v13 >= 0)
          {
            v32 = v13;
          }

          else
          {
            v32 = 5;
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v38[0] = v5;
        v38[1] = v7 & 0xFFFFFFFFFFFFFFLL;
        if (v5 == 43)
        {
          if (v8)
          {
            if (--v8)
            {
              v13 = 0;
              v23 = v38 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  break;
                }

                v25 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  break;
                }

                ++v23;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_81:
          __break(1u);
          return;
        }

        if (v5 != 45)
        {
          if (v8)
          {
            v13 = 0;
            v28 = v38;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v17 = v38 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = sub_2232AAF84();
        }

        v12 = *v11;
        if (v12 == 43)
        {
          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                v20 = v11 + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    goto LABEL_63;
                  }

                  v22 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    goto LABEL_63;
                  }

                  ++v20;
                  if (!--v8)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_80;
        }

        if (v12 != 45)
        {
          if (v9)
          {
            v13 = 0;
            if (v11)
            {
              while (1)
              {
                v26 = *v11 - 48;
                if (v26 > 9)
                {
                  goto LABEL_63;
                }

                v27 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_63;
                }

                ++v11;
                if (!--v9)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v13 = 0;
          LOBYTE(v8) = 1;
          goto LABEL_64;
        }

        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v14 = v11 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_63;
                }

                v16 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  goto LABEL_63;
                }

                ++v14;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v8) = 0;
LABEL_64:
            v39 = v8;
            v31 = v8;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

LABEL_66:
  v32 = 5;
LABEL_67:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v33 = sub_2232AAAD4();
  __swift_project_value_buffer(v33, qword_28131DB88);
  v34 = sub_2232AAAC4();
  v35 = sub_2232AAD84();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v32;
    _os_log_impl(&dword_22325E000, v34, v35, "maxEagerRcAllowed: %ld", v36, 0xCu);
    MEMORY[0x223DD8AC0](v36, -1, -1);
  }
}

unint64_t sub_22329DF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081930, &qword_2232ACE78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
    v7 = sub_2232AB014();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_223260E74(v9, v5, &qword_27D081930, &qword_2232ACE78);
      result = sub_2232A2D10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2232AA794();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22329E128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081968, &qword_2232ACEA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
    v7 = sub_2232AB014();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_223260E74(v9, v5, &qword_27D081968, &qword_2232ACEA0);
      result = sub_2232626FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CacheKey(0);
      result = sub_22329EEF4(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7] + 56 * v13;
      v17 = v8[16];
      v18 = *(v8 + 3);
      v19 = v8[32];
      v20 = *(v8 + 40);
      *v16 = *v8;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      *(v16 + 32) = v19;
      *(v16 + 40) = v20;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_22329E324(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v48 = a6;
  v49 = a3;
  v41 = a5;
  v44 = a2;
  v45 = a4;
  v43 = a1;
  v42 = sub_2232AAAD4();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2232AAAB4();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_28131DB58;
  v15 = sub_2232A9504();
  (*(*(v15 - 8) + 56))(v6 + v14, 1, 1, v15);
  v16 = qword_28131DB38;
  *(v6 + qword_28131DB38) = 0;
  *(v6 + qword_28131DB80) = MEMORY[0x277D84F90];
  v17 = v6 + qword_28131DB68;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = qword_28131DB20;
  v19 = sub_2232AA794();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + qword_28131DB70) = 0;
  v20 = (v7 + qword_28131DB48);
  *v20 = 0;
  v20[1] = 0;
  *(v7 + qword_28131DB60) = 0;
  *(v7 + qword_28131DB30) = 0;
  v21 = qword_28131DB78;
  *(v7 + qword_28131DB78) = 0;
  *(v7 + qword_28131DB28) = 2;
  v22 = qword_28131DB50;
  v23 = *MEMORY[0x277D5D0D0];
  v24 = sub_2232AA6E4();
  (*(*(v24 - 8) + 104))(v7 + v22, v23, v24);
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v25 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v26 = qword_28131DD38;
  sub_2232AAA74();

  v27 = type metadata accessor for MyriadDecisionMonitor();
  inited = swift_initStaticObject();
  v29 = (v7 + qword_28131D290);
  v29[3] = v27;
  v29[4] = &off_28368D388;
  *v29 = inited;
  if (qword_28131DA80 != -1)
  {
    swift_once();
  }

  *(v7 + qword_28131D278) = qword_28131DD40;

  _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
  *(v7 + qword_28131DB40) = v30;
  *(v7 + v21) = AFDeviceSupportsSiriMUX();
  type metadata accessor for AsrCandidateRequestCacheManager();
  swift_allocObject();
  *(v7 + qword_28131D270) = sub_2232A2A34();
  *(v7 + qword_28131D288) = AFDeviceSupportsMedoc();
  *(v7 + v16) = AFDeviceSupportsPatientSiri();
  v31 = v49;
  sub_223260E10(v49, v51);
  v32 = v48;
  sub_223260E10(v48, v50);
  v33 = qword_28131D338;
  swift_unknownObjectRetain();
  v34 = v41;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = v42;
  v36 = __swift_project_value_buffer(v42, qword_28131DB88);
  (*(v8 + 16))(v10, v36, v35);
  v37 = sub_2232AA8E4();

  v38 = AFDeviceSupportsHybridUOD();
  sub_223297920(v38);
  sub_2232AAE24();
  v39 = qword_28131DD38;
  sub_2232AAA84();

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  (*(v46 + 8))(v13, v47);
  return v37;
}

unint64_t sub_22329E88C()
{
  result = qword_27D0818C8;
  if (!qword_27D0818C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818C8);
  }

  return result;
}

uint64_t type metadata accessor for AsrBridge(uint64_t a1)
{
  result = qword_28131D258;
  if (!qword_28131D258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22329E92C(uint64_t a1)
{
  sub_22329EB00(319, &unk_28131DAE0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_22329EB00(319, &qword_28131DA98, MEMORY[0x277D5D298]);
    if (v2 <= 0x3F)
    {
      sub_2232AA6E4();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_22329EB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232AAEB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AsrBridge.AsrBridgeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsrBridge.AsrBridgeError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22329ECB8()
{
  result = qword_27D0818E8;
  if (!qword_27D0818E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818E8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22329EEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22329EF7C()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000001CLL, 0x80000002232AE950, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329F104()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000016, 0x80000002232AE930, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329F290()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000032, 0x80000002232AE410, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

id sub_22329F480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechRecognizerResponseHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechRecognizerResponseHandler(uint64_t a1)
{
  result = qword_28131D360;
  if (!qword_28131D360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22329F5D0(uint64_t a1)
{
  result = sub_2232A9504();
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

uint64_t sub_2232A0C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2232A44CC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D081940, &qword_2232ACE88);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2232A2C98(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2232A4FDC(&qword_27D081940, &qword_2232ACE88);
        v14 = v16;
      }

      result = sub_2232A3E28(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2232A0D18(uint64_t a1)
{
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2232AABD4();
  sub_2232AAC44();
  return sub_2232AB114();
}

uint64_t sub_2232A0DC0(uint64_t a1, uint64_t a2)
{
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2232AABD4();

  return sub_2232AAC44();
}

uint64_t sub_2232A0E5C(uint64_t a1, uint64_t a2)
{
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2232AABD4();
  sub_2232AAC44();
  return sub_2232AB114();
}

uint64_t sub_2232A0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2232A94E4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2232AB094();
}

uint64_t sub_2232A0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for CacheKey(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232A9504();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(v11 + 28)];
  *v15 = a2;
  *(v15 + 1) = a3;
  swift_beginAccess();
  v16 = *(a4 + 24);
  v17 = *(v16 + 16);

  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_2232626FC(v13);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    v36 = a5;
    v37 = 0;
    v38 = 1;
    v39 = 0;
    v40 = 1;
    v41 = 0;
    v42 = 0;
    swift_beginAccess();
    v30 = a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v36, v13, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v35;
    swift_endAccess();
    return sub_223262940(v13);
  }

  v20 = *(v16 + 56) + 56 * v18;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 24);
  v25 = *(v20 + 32);
  v26 = *(v20 + 48);
  v34 = *(v20 + 40);
  swift_bridgeObjectRetain_n();
  v27 = v21;

  v36 = a5;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v34;
  v42 = v26;
  swift_beginAccess();
  v28 = a5;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v36, v13, v29);
  *(a4 + 24) = v35;
  swift_endAccess();

  return sub_223262940(v13);
}

uint64_t sub_2232A11E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CacheKey(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232A9504();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(v11 + 28)];
  *v15 = a2;
  *(v15 + 1) = a3;
  swift_beginAccess();
  v16 = *(a4 + 24);
  v17 = *(v16 + 16);

  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_2232626FC(v13);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v13);
    v21 = 0;
    goto LABEL_6;
  }

  v20 = *(v16 + 56) + 56 * v18;
  v21 = *v20;
  v31 = *(v20 + 8);
  v30 = *(v20 + 16);
  v29 = *(v20 + 24);
  v22 = *(v20 + 32);
  v23 = *(v20 + 40);
  v24 = *(v20 + 48);

  v25 = v21;
  sub_223262940(v13);

  v26 = v25;
  result = sub_2232A5C14(v21, v31, v30, v29, v22, v23, v24);
LABEL_6:
  *a5 = v21;
  return result;
}

uint64_t sub_2232A13C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CacheKey(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2232A9504();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(v13 + 28)];
  *v17 = a2;
  *(v17 + 1) = a3;
  swift_beginAccess();
  v18 = *(a4 + 24);
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_2232626FC(v15);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v35 = 0;
    v36 = a5;
    v37 = a6 & 1;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    v41 = 0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v35, v15, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v34;
    swift_endAccess();
    return sub_223262940(v15);
  }

  v22 = *(v18 + 56) + 56 * v20;
  v23 = *v22;
  v24 = *(v22 + 24);
  v25 = *(v22 + 32);
  v27 = *(v22 + 40);
  v26 = *(v22 + 48);

  v33 = v23;

  v35 = v23;
  v36 = a5;
  v37 = a6 & 1;
  v38 = v24;
  v39 = v25;
  v40 = v27;
  v41 = v26;
  swift_beginAccess();
  v28 = v33;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v35, v15, v29);
  *(a4 + 24) = v34;
  swift_endAccess();

  return sub_223262940(v15);
}

uint64_t sub_2232A1624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for CacheKey(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2232A9504();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(v13 + 28)];
  *v17 = a2;
  *(v17 + 1) = a3;
  swift_beginAccess();
  v18 = *(a4 + 24);
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_2232626FC(v15);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v15);
    v23 = 0;
    LOBYTE(v25) = 1;
    goto LABEL_6;
  }

  v22 = *(v18 + 56) + 56 * v20;
  v24 = *v22;
  v23 = *(v22 + 8);
  v25 = *(v22 + 16);
  v31[0] = *(v22 + 24);
  v26 = *(v22 + 32);
  v31[5] = v6;
  v27 = *(v22 + 40);
  v28 = *(v22 + 48);

  v29 = v24;
  sub_223262940(v15);

  result = sub_2232A5C14(v24, v23, v25, v31[0], v26, v27, v28);
LABEL_6:
  *a5 = v23;
  *(a5 + 8) = v25;
  return result;
}

uint64_t sub_2232A1804(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v34 = a7;
  v28[1] = a6;
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v38 = sub_2232AAB14();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v33 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2232AAB44();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2232A9504();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v8 + 16);
  (*(v14 + 16))(v16, a5, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v17, v16, v13);
  v21 = (v20 + v18);
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  *(v20 + v19) = v8;
  v23 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v31;
  *(v23 + 8) = v32 & 1;
  aBlock[4] = v34;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = v36;
  v24 = _Block_copy(aBlock);

  sub_2232AAB24();
  v41 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v25 = v33;
  v26 = v38;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v12, v25, v24);
  _Block_release(v24);
  (*(v40 + 8))(v25, v26);
  (*(v37 + 8))(v12, v39);
}

uint64_t sub_2232A1BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CacheKey(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2232A9504();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(v13 + 28)];
  *v17 = a2;
  *(v17 + 1) = a3;
  swift_beginAccess();
  v18 = *(a4 + 24);
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_2232626FC(v15);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v38 = a5;
    v39 = a6 & 1;
    v40 = 0;
    v41 = 0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v35, v15, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v34;
    swift_endAccess();
    return sub_223262940(v15);
  }

  v22 = *(v18 + 56) + 56 * v20;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v27 = *(v22 + 40);
  v26 = *(v22 + 48);

  v33 = v23;

  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = a5;
  v39 = a6 & 1;
  v40 = v27;
  v41 = v26;
  swift_beginAccess();
  v28 = v33;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v35, v15, v29);
  *(a4 + 24) = v34;
  swift_endAccess();

  return sub_223262940(v15);
}

uint64_t sub_2232A1E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CacheKey(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232A9504();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(v11 + 28)];
  *v15 = a2;
  *(v15 + 1) = a3;
  swift_beginAccess();
  v16 = *(a4 + 24);
  v17 = *(v16 + 16);

  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_2232626FC(v13);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v13);
    v22 = 0;
    LOBYTE(v23) = 1;
    goto LABEL_6;
  }

  v20 = *(v16 + 56) + 56 * v18;
  v21 = *v20;
  v29 = *(v20 + 8);
  v28 = *(v20 + 16);
  v22 = *(v20 + 24);
  v23 = *(v20 + 32);
  v24 = *(v20 + 40);
  v25 = *(v20 + 48);

  v26 = v21;
  sub_223262940(v13);

  result = sub_2232A5C14(v21, v29, v28, v22, v23, v24, v25);
LABEL_6:
  *a5 = v22;
  *(a5 + 8) = v23;
  return result;
}

uint64_t sub_2232A1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v30 = a2;
  v34 = sub_2232AAB14();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2232AAB44();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2232A9504();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 16);
  (*(v11 + 16))(v13, a5, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v14, v13, v10);
  v18 = (v17 + v15);
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  *(v17 + v16) = v5;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  aBlock[4] = sub_2232A590C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);

  sub_2232AAB24();
  v37 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v23 = v31;
  v24 = v34;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v9, v23, v22);
  _Block_release(v22);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v9, v35);
}

uint64_t sub_2232A23DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for CacheKey(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2232A9504();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(v13 + 28)];
  *v17 = a2;
  *(v17 + 1) = a3;
  swift_beginAccess();
  v18 = *(a4 + 24);
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_2232626FC(v15);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = 0;
    v38 = 1;
    v39 = a5;
    v40 = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v34, v15, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v33;
    swift_endAccess();
    return sub_223262940(v15);
  }

  v22 = *(v18 + 56) + 56 * v20;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v32 = *(v22 + 24);
  HIDWORD(v31) = *(v22 + 32);

  v26 = v23;

  v27 = v26;

  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v32;
  v38 = BYTE4(v31);
  v39 = a5;
  v40 = a6;
  swift_beginAccess();

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v34, v15, v28);
  *(a4 + 24) = v33;
  swift_endAccess();

  return sub_223262940(v15);
}

uint64_t sub_2232A2650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for CacheKey(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232A9504();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(v11 + 28)];
  *v15 = a2;
  *(v15 + 1) = a3;
  swift_beginAccess();
  v16 = *(a4 + 24);
  v17 = *(v16 + 16);

  if (v17)
  {

    v18 = sub_2232626FC(v13);
    if (v19)
    {
      v20 = *(v16 + 56) + 56 * v18;
      v21 = *v20;
      v29 = *(v20 + 8);
      v28 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *(v20 + 32);
      v24 = *(v20 + 40);
      v25 = *(v20 + 48);

      v26 = v21;
      sub_223262940(v13);

      result = sub_2232A5C14(v21, v29, v28, v22, v23, v24, v25);
      *a5 = v24;
      a5[1] = v25;
      return result;
    }
  }

  result = sub_223262940(v13);
  *a5 = 0;
  a5[1] = 0;
  return result;
}

uint64_t sub_2232A2804()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2232A2884(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2232A28E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2232A2978(uint64_t a1)
{
  result = sub_2232A9504();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2232A2A34()
{
  v9 = sub_2232AADC4();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2232AADB4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2232AAB44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2232A5C58();
  v8[0] = "queue";
  v8[1] = v6;
  sub_2232AAB34();
  v10 = MEMORY[0x277D84F90];
  sub_223262204(&unk_28131D1B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818F0, &qword_2232AD040);
  sub_22326224C(&qword_28131D1F8, &unk_27D0818F0, &qword_2232AD040);
  sub_2232AAEE4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 16) = sub_2232AADF4();
  *(v0 + 24) = sub_22329E128(MEMORY[0x277D84F90]);
  return v0;
}

unint64_t sub_2232A2C98(uint64_t a1, uint64_t a2)
{
  sub_2232AB0F4();
  sub_2232AAC44();
  v4 = sub_2232AB114();

  return sub_2232A4E48(a1, a2, v4);
}

unint64_t sub_2232A2D10(uint64_t a1)
{
  sub_2232AA794();
  v2 = MEMORY[0x277D5D298];
  sub_223262204(&qword_27D081A20, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
  v3 = sub_2232AABC4();
  return sub_223264550(a1, v3, MEMORY[0x277D5D298], &qword_27D081A28, v2, MEMORY[0x277D5D2B0]);
}

unint64_t sub_2232A2DE4(uint64_t a1)
{
  v2 = sub_2232AAF14();

  return sub_2232A4F00(a1, v2);
}

uint64_t sub_2232A2E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_2232AB004();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2232A30D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081950, &unk_2232AD030);
  v34 = v4;
  result = sub_2232AB004();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2232A3380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
  v34 = v4;
  result = sub_2232AB004();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2232A3620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2232AA794();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
  v39 = v4;
  result = sub_2232AB004();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_223262204(&qword_27D081A20, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
      result = sub_2232AABC4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2232A39FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CacheKey(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
  v48 = v4;
  result = sub_2232AB004();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v44 = v3;
    v45 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v46 + 72);
      v28 = *(v10 + 48) + v27 * v26;
      if (v48)
      {
        sub_22329EEF4(v28, v7);
        v29 = *(v10 + 56) + 56 * v26;
        v30 = *v29;
        v54 = *(v29 + 8);
        v55 = v30;
        v53 = *(v29 + 16);
        v52 = *(v29 + 24);
        v51 = *(v29 + 32);
        v31 = *(v29 + 40);
        v49 = *(v29 + 48);
        v50 = v31;
      }

      else
      {
        sub_223262524(v28, v7);
        v32 = *(v10 + 56) + 56 * v26;
        v33 = *v32;
        v54 = *(v32 + 8);
        v53 = *(v32 + 16);
        v52 = *(v32 + 24);
        v51 = *(v32 + 32);
        v34 = *(v32 + 40);
        v49 = *(v32 + 48);
        v50 = v34;

        v55 = v33;
        v35 = v33;
      }

      sub_2232AB0F4();
      sub_2232A9504();
      sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2232AABD4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v36 = -1 << *(v11 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v18 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v10 = v45;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v18 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v18 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v10 = v45;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22329EEF4(v7, *(v11 + 48) + v27 * v19);
      v20 = *(v11 + 56) + 56 * v19;
      v21 = v54;
      *v20 = v55;
      *(v20 + 8) = v21;
      *(v20 + 16) = v53;
      *(v20 + 24) = v52;
      *(v20 + 32) = v51;
      v22 = v49;
      *(v20 + 40) = v50;
      *(v20 + 48) = v22;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2232A3E28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2232AAF04() + 1) & ~v5;
    do
    {
      sub_2232AB0F4();

      sub_2232AAC44();
      v9 = sub_2232AB114();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2232A3FD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2232AAF04() + 1) & ~v5;
    do
    {
      sub_2232AB0F4();

      sub_2232AAC44();
      v9 = sub_2232AB114();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2232A4188(unint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for CacheKey(0);
  v4 = *(v35 - 8);
  result = MEMORY[0x28223BE20](v35);
  v6 = a1;
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = v6;
    v14 = sub_2232AAF04();
    v6 = v13;
    v15 = (v14 + 1) & v12;
    v16 = *(v4 + 72);
    v34 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v11;
      v19 = v6;
      sub_223262524(*(a2 + 48) + v16 * v11, v8);
      sub_2232AB0F4();
      sub_2232A9504();
      sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2232AABD4();
      sub_2232AAC44();
      v20 = sub_2232AB114();
      result = sub_223262940(v8);
      v6 = v19;
      v21 = v20 & v12;
      if (v19 >= v15)
      {
        if (v21 < v15)
        {
          v9 = v34;
          v16 = v17;
          goto LABEL_4;
        }

        v16 = v17;
        if (v19 >= v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = v17;
        if (v21 >= v15 || v19 >= v21)
        {
LABEL_11:
          v22 = *(a2 + 48);
          result = v22 + v16 * v19;
          if (v16 * v19 < v18 || result >= v22 + v18 + v16)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v19;
            v9 = v34;
          }

          else
          {
            v23 = v16 * v19 == v18;
            v9 = v34;
            if (!v23)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v19;
            }
          }

          v24 = *(a2 + 56);
          v25 = v24 + 56 * v6;
          v26 = (v24 + 56 * v11);
          if (v6 != v11 || v25 >= v26 + 56)
          {
            v27 = *v26;
            v28 = v26[1];
            v29 = v26[2];
            *(v25 + 48) = *(v26 + 6);
            *(v25 + 16) = v28;
            *(v25 + 32) = v29;
            *v25 = v27;
            v6 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v34;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v6) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2232A44CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2232A2C98(a2, a3);
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
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_2232A2E3C(v20, a4 & 1, a5, a6);
      v15 = sub_2232A2C98(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2232AB0A4();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_2232A4FDC(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_2232A4668(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2232A2C98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2232A30D8(v16, a4 & 1);
      v11 = sub_2232A2C98(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2232AB0A4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2232A5138();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_2232A47E4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2232A2C98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2232A3380(v16, a4 & 1);
      v11 = sub_2232A2C98(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_2232AB0A4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2232A52A8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_2232A4950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2232AA794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2232A2D10(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2232A5410();
      goto LABEL_7;
    }

    sub_2232A3620(v17, a3 & 1);
    v23 = sub_2232A2D10(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_2232A4CD4(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2232AB0A4();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_2232A4B1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CacheKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2232626FC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_2232A5684();
      goto LABEL_7;
    }

    sub_2232A39FC(v16, a3 & 1);
    v24 = sub_2232626FC(a2);
    if ((v17 & 1) == (v25 & 1))
    {
      v13 = v24;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_223262524(a2, v10);
      return sub_2232A4D8C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_2232AB0A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 56 * v13;
  v21 = *v20;
  v22 = *(a1 + 32);
  *(v20 + 16) = *(a1 + 16);
  *(v20 + 32) = v22;
  *v20 = *a1;
  *(v20 + 48) = *(a1 + 48);
}

uint64_t sub_2232A4CD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2232AA794();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2232A4D8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CacheKey(0);
  result = sub_22329EEF4(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2232A4E48(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2232AB094())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2232A4F00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_223293BF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DD82B0](v9, a1);
      sub_223293B28(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2232A4FDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2232AAFF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2232A5138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081950, &unk_2232AD030);
  v2 = *v0;
  v3 = sub_2232AAFF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_2232A52A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
  v2 = *v0;
  v3 = sub_2232AAFF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

char *sub_2232A5410()
{
  v1 = v0;
  v31 = sub_2232AA794();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
  v3 = *v0;
  v4 = sub_2232AAFF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2232A5684()
{
  v1 = v0;
  v2 = type metadata accessor for CacheKey(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
  v4 = *v0;
  v5 = sub_2232AAFF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v36 + 72) * v19;
        sub_223262524(*(v4 + 48) + v21, v35);
        v22 = *(v4 + 56);
        v23 = 56 * v19;
        v24 = v22 + 56 * v19;
        v25 = *v24;
        v40 = *(v24 + 8);
        v39 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *(v24 + 48);
        v38 = *(v24 + 40);
        v29 = v37;
        sub_22329EEF4(v20, *(v37 + 48) + v21);
        v30 = *(v29 + 56) + v23;
        v4 = v34;
        v31 = v40;
        *v30 = v25;
        *(v30 + 8) = v31;
        *(v30 + 16) = v39;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v38;
        *(v30 + 48) = v28;

        result = v25;
        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v32;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2232A590C()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_2232A23DC(v0 + v2, v6, v7, v8, v10, v11);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_2232A5AA8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_2232A9504() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);
  v10 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return a1(v1 + v3, v7, v8, v9, v11, v12);
}

uint64_t sub_2232A5B6C()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  return sub_2232A0F88(v0 + v2, v8, v9, v6, v7);
}

void *sub_2232A5C14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_2232A5C58()
{
  result = qword_28131D1B0;
  if (!qword_28131D1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1B0);
  }

  return result;
}

void sub_2232A5CE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(sub_2232A9814());
  v5 = sub_2232A9804();
  if (v5)
  {
    v6 = v5;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    v8 = sub_2232AAAC4();
    v9 = sub_2232AAD84();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22325E000, v8, v9, "Going to post AttendingStartedMessage", v10, 2u);
      MEMORY[0x223DD8AC0](v10, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AA8A4();
    __swift_project_value_buffer(v11, qword_28131DBA0);
    *(swift_allocObject() + 16) = a1;
    v12 = a1;
    sub_2232AA874();

    __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v12[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v13 = sub_2232AAAD4();
    __swift_project_value_buffer(v13, qword_28131DB88);
    v14 = a1;
    v15 = sub_2232AAAC4();
    v16 = sub_2232AAD94();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_2232AB064();
      v21 = sub_2232603D0(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22325E000, v15, v16, "Failed to create AttendingStartedMessage for session: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DD8AC0](v18, -1, -1);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }
  }
}

uint64_t sub_2232A6044(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000020;
  v8[1] = 0x80000002232AE9E0;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

uint64_t sub_2232A6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = sub_2232AAB14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2232AAB44();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);

  v18 = v5;
  sub_2232AAB24();
  v22 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_2232A6504(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(sub_2232A9B64());
  v5 = sub_2232A9B54();
  if (v5)
  {
    v6 = v5;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    v8 = sub_2232AAAC4();
    v9 = sub_2232AAD84();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22325E000, v8, v9, "Going to post AttendingWillStartMessage", v10, 2u);
      MEMORY[0x223DD8AC0](v10, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&a1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    v12 = a1;
    v13 = sub_2232AAAC4();
    v14 = sub_2232AAD94();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_2232AB064();
      v19 = sub_2232603D0(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_22325E000, v13, v14, "Failed to create AttendingWillStartMessage for session: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x223DD8AC0](v16, -1, -1);
      MEMORY[0x223DD8AC0](v15, -1, -1);
    }
  }
}

uint64_t sub_2232A67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), void (*a6)(uint64_t, uint64_t), void (*a7)(char *), uint64_t (*a8)(uint64_t, uint64_t, __n128))
{
  v29 = a3;
  v30 = a8;
  v28 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = *MEMORY[0x277D5CDD8];
  v19 = sub_2232AA644();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  a5(v17);
  v21 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);

  a6(v21, v22);
  v23 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v24 = sub_2232A9504();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14, a2 + v23, v24);
  (*(v25 + 56))(v14, 0, 1, v24);
  v28(v14);

  return (v30)(v29, a4);
}

uint64_t sub_2232A6A38(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_2232AAC04();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2232A6AB4(void *a1)
{
  v3 = sub_2232AAB14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232AAB44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2232A9078;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_22;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;
  sub_2232AAB24();
  v16[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_2232A6D60(void *a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    if (a1)
    {
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 4) = v11;
    *v9 = v12;
    _os_log_impl(&dword_22325E000, v6, v7, "Received AttendingStoppedUnexpectedly with error = %@", v8, 0xCu);
    sub_223283234(v9);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v13);
  v14 = objc_allocWithZone(sub_2232AA254());
  v15 = sub_2232AA244();
  if (v15)
  {
    v16 = v15;
    v17 = sub_2232AAAC4();
    v18 = sub_2232AAD84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22325E000, v17, v18, "Going to post AttendingStoppedUnexpectedlyMessage", v19, 2u);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v20 = sub_2232AA8A4();
    __swift_project_value_buffer(v20, qword_28131DBA0);
    *(swift_allocObject() + 16) = a2;
    v21 = a2;
    sub_2232AA874();

    __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v21[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v22 = a2;
    v23 = sub_2232AAAC4();
    v24 = sub_2232AAD94();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_2232AB064();
      v29 = sub_2232603D0(v27, v28, &v30);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22325E000, v23, v24, "Failed to create AttendingStoppedUnexpectedlyMessage for session: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DD8AC0](v26, -1, -1);
      MEMORY[0x223DD8AC0](v25, -1, -1);
    }
  }
}

uint64_t sub_2232A7184(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x277D5CDD8];
  v10 = sub_2232AA644();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2232AA5F4();

  sub_2232AA5E4();
  v12 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v13 = sub_2232A9504();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a2 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  return sub_2232AA604();
}

uint64_t sub_2232A738C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD00000000000002CLL;
  v8[1] = 0x80000002232AE9B0;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

void sub_2232A75B8()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22325E000, oslog, v1, "Received SpeechStartDetected in deprecated path, dropping.", v2, 2u);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

uint64_t sub_2232A76FC(char a1)
{
  v3 = sub_2232AAB14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232AAB44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2232A9058;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  sub_2232AAB24();
  v15[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_2232A79A4(char a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_22325E000, v5, v6, "Received SpeechStartDetected with shouldDuckTTS:%{BOOL}d", v7, 8u);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v9 = objc_allocWithZone(sub_2232A9DB4());
  v10 = sub_2232A9D64();
  if (v10)
  {
    v11 = v10;
    v12 = sub_2232AAAC4();
    v13 = sub_2232AAD84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22325E000, v12, v13, "Going to post SpeechStartDetectedMessage", v14, 2u);
      MEMORY[0x223DD8AC0](v14, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AA8A4();
    __swift_project_value_buffer(v15, qword_28131DBA0);
    *(swift_allocObject() + 16) = a2;
    v16 = a2;
    sub_2232AA874();

    __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v16[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v17 = a2;
    v18 = sub_2232AAAC4();
    v19 = sub_2232AAD94();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_2232AB064();
      v24 = sub_2232603D0(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_22325E000, v18, v19, "Failed to create SpeechStartDetectedMessage for session: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DD8AC0](v21, -1, -1);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }
  }
}

uint64_t sub_2232A7D74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *MEMORY[0x277D5CDD8];
  v11 = sub_2232AA644();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_2232A9D94();

  sub_2232A9D74();
  v13 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v14 = sub_2232A9504();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, a2 + v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  sub_2232A9DA4();
  return sub_2232A9D84();
}

uint64_t sub_2232A7F88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000016;
  v8[1] = 0x80000002232AE970;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

uint64_t sub_2232A81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2232AAB14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2232AAB44();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v4;
  aBlock[4] = sub_2232A9030;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);

  v18 = v4;
  sub_2232AAB24();
  v22 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_2232A8474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v10 = sub_2232AAAD4();
  __swift_project_value_buffer(v10, qword_28131DB88);

  v11 = sub_2232AAAC4();
  v12 = sub_2232AAD84();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v43 = a2;
    v14 = a3;
    v15 = swift_slowAlloc();
    v44 = v15;
    *v13 = 134218498;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v43;
    *(v13 + 22) = 2080;
    if (a4)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = a5;
    v18 = a1;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_2232603D0(v16, v19, &v44);
    a1 = v18;
    a5 = v17;

    *(v13 + 24) = v20;
    _os_log_impl(&dword_22325E000, v11, v12, "Received SpeechRecognizerReadyForNewTurn with hostTime:%llu, audioRecordType: %lld, deviceId: %s", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v21 = v15;
    a3 = v14;
    a2 = v43;
    MEMORY[0x223DD8AC0](v21, -1, -1);
    MEMORY[0x223DD8AC0](v13, -1, -1);
  }

  MEMORY[0x28223BE20](v22);
  v23 = objc_allocWithZone(sub_2232A9AB4());
  v24 = sub_2232A9A44();
  if (v24)
  {
    v25 = v24;
    v26 = a1;
    v27 = *&a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId];
    v28 = *&a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8];
    v29 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
    sub_2232A1398(v26, 0, v27, v28, &a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId]);
    sub_2232A17DC(a2, 0, v27, v28, &a5[v29]);
    sub_2232A1FF8(a3, a4, v27, v28, &a5[v29]);
    v30 = sub_2232AAAC4();
    v31 = sub_2232AAD84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22325E000, v30, v31, "Going to post ASRReadyForNewTurnMessage", v32, 2u);
      MEMORY[0x223DD8AC0](v32, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AA8A4();
    __swift_project_value_buffer(v33, qword_28131DBA0);
    *(swift_allocObject() + 16) = a5;
    v34 = a5;
    sub_2232AA874();

    __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v34[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v35 = a5;
    v36 = sub_2232AAAC4();
    v37 = sub_2232AAD94();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_2232AB064();
      v42 = sub_2232603D0(v40, v41, &v44);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_22325E000, v36, v37, "Failed to create ASRReadyForNewTurnMessage for session: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DD8AC0](v39, -1, -1);
      MEMORY[0x223DD8AC0](v38, -1, -1);
    }
  }
}

uint64_t sub_2232A896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a4;
  v26[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB8, &qword_2232AD0B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - v14;
  v16 = *MEMORY[0x277D5CDD8];
  v17 = sub_2232AA644();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2232A9A84();

  sub_2232A9A54();
  v19 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v20 = sub_2232A9504();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, a2 + v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_2232A9AA4();
  sub_2232A9A94();
  v22 = sub_2232AA6C4();
  v23 = *(v22 - 8);
  if ((v26[0] - 22) > 5)
  {
    v24 = MEMORY[0x277D5D0A0];
  }

  else
  {
    v24 = qword_2784D7510[v26[0] - 22];
  }

  (*(*(v22 - 8) + 104))(v9, *v24, v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  sub_2232A9A64();

  return sub_2232A9A74();
}

uint64_t sub_2232A8C9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000015;
  v8[1] = 0x80000002232AE990;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

id sub_2232A8F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttendingStatesServiceHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2232A8F70(uint64_t a1)
{
  result = sub_2232A9504();
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

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232A91D0()
{
  v0 = sub_2232AAB14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2232AAB44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_2232A75B8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_43;
  v8 = _Block_copy(aBlock);
  sub_2232AAB24();
  v10[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v7, v3, v8);
  _Block_release(v8);
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}