uint64_t sub_22327A910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081880, &qword_2232AC438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22327A9D8(void *a1)
{
  if (v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v23 = sub_2232AAAD4();
    __swift_project_value_buffer(v23, qword_28131DB88);
    v109 = sub_2232AAAC4();
    v24 = sub_2232AAD94();
    if (os_log_type_enabled(v109, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22325E000, v109, v24, "Received TRPCandidate Medoc is not enabled. Ignoring.", v25, 2u);
      MEMORY[0x223DD8AC0](v25, -1, -1);
    }

    goto LABEL_24;
  }

  v108 = v1;
  v3 = [a1 requestId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2232AAC04();
    v7 = v6;

    v9 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v8 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    if (v5 == v9 && v7 == v8)
    {
    }

    else
    {
      v11 = sub_2232AB094();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    v27 = __swift_project_value_buffer(v26, qword_28131DB88);
    v28 = a1;
    v29 = sub_2232AAAC4();
    v30 = sub_2232AAD84();
    v31 = v108;
    v105 = v9;
    v106 = v8;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v110 = v33;
      *v32 = 136315138;
      v34 = [v28 trpCandidateId];
      v35 = v28;

      if (!v34)
      {
LABEL_81:
        __break(1u);
        return;
      }

      v36 = sub_2232AAC04();
      v38 = v37;

      v39 = sub_2232603D0(v36, v38, &v110);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_22325E000, v29, v30, "Received TRPCandidatePackage with trpCandidateId: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x223DD8AC0](v33, -1, -1);
      MEMORY[0x223DD8AC0](v32, -1, -1);

      v28 = v35;
    }

    else
    {
    }

    v115 = MEMORY[0x277D84F90];
    v40 = [v28 tcuList];
    if (!v40)
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v41 = v40;
    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v42 = sub_2232AAD04();

    if (v42 >> 62)
    {
      v43 = sub_2232AAFE4();
      if (v43)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_31:
        v103 = v27;
        v104 = v28;
        if (v43 < 1)
        {
          __break(1u);
LABEL_77:
          swift_once();
LABEL_65:
          v88 = sub_2232AA8A4();
          __swift_project_value_buffer(v88, qword_28131DBA0);
          v89 = swift_allocObject();
          *(v89 + 16) = v108;
          *(v89 + 24) = v28;
          v90 = v28;
          v91 = v108;
          sub_2232AA874();

LABEL_75:

          return;
        }

        v44 = 0;
        v107 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState;
        v45 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState;
        v46 = MEMORY[0x277D84F90];
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x223DD8300](v44, v42);
          }

          else
          {
            v50 = *(v42 + 8 * v44 + 32);
          }

          v51 = v50;
          v52 = [v50 prevTCUIds];
          if (v52)
          {

            *&v110 = v51;
            sub_223260E10(&v31[v45], &v110 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_223281EF0(0, v46[2] + 1, 1, v46);
            }

            v54 = v46[2];
            v53 = v46[3];
            if (v54 >= v53 >> 1)
            {
              v46 = sub_223281EF0((v53 > 1), v54 + 1, 1, v46);
            }

            v46[2] = v54 + 1;
            v47 = &v46[6 * v54];
            v48 = v110;
            v49 = v112;
            v47[3] = v111;
            v47[4] = v49;
            v47[2] = v48;
            v115 = v46;
          }

          else
          {
            sub_223260E10(&v31[v107], v114);
            __swift_project_boxed_opaque_existential_1(v114, v114[3]);
            sub_2232AA744();
            *&v110 = v51;
            sub_2232650D4(&v113, &v110 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_223281EF0(0, v46[2] + 1, 1, v46);
            }

            v56 = v46[2];
            v55 = v46[3];
            v31 = v108;
            if (v56 >= v55 >> 1)
            {
              v46 = sub_223281EF0((v55 > 1), v56 + 1, 1, v46);
            }

            v46[2] = v56 + 1;
            v57 = &v46[6 * v56];
            v58 = v110;
            v59 = v112;
            v57[3] = v111;
            v57[4] = v59;
            v57[2] = v58;
            v115 = v46;
            __swift_destroy_boxed_opaque_existential_1Tm(v114);
          }

          ++v44;
        }

        while (v43 != v44);

        v28 = v104;
LABEL_51:
        MEMORY[0x28223BE20](v60);
        if (v61 == 1)
        {
          v62 = objc_allocWithZone(sub_2232AA114());
          v63 = sub_2232AA094();
          if (v63)
          {
            v64 = v63;
            v65 = sub_2232AAAC4();
            v66 = sub_2232AAD84();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&dword_22325E000, v65, v66, "Going to post TRPCandidateForPlannerMessage", v67, 2u);
              MEMORY[0x223DD8AC0](v67, -1, -1);
            }

            v68 = &v31[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher];
            __swift_project_boxed_opaque_existential_1(&v31[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v31[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
            v69 = sub_2232AA624();
            MEMORY[0x28223BE20](v69);
            v70 = objc_allocWithZone(sub_2232A9934());
            v71 = sub_2232A98B4();
            if (v71)
            {
              v72 = v71;
              v73 = sub_2232AAAC4();
              v74 = sub_2232AAD84();
              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                *v75 = 0;
                _os_log_impl(&dword_22325E000, v73, v74, "Going to post RootTRPCandidateMessage", v75, 2u);
                MEMORY[0x223DD8AC0](v75, -1, -1);
              }

              __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3));
              sub_2232AA624();

              v77 = v105;
              v76 = v106;
              goto LABEL_63;
            }

            v99 = v31;
            v93 = sub_2232AAAC4();
            v100 = sub_2232AAD94();

            if (os_log_type_enabled(v93, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              *&v110 = v102;
              *v101 = 136315138;
              *(v101 + 4) = sub_2232603D0(v105, v106, &v110);
              _os_log_impl(&dword_22325E000, v93, v100, "Failed to create RootTRPCandidateMessage for request: %s", v101, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v102);
              MEMORY[0x223DD8AC0](v102, -1, -1);
              MEMORY[0x223DD8AC0](v101, -1, -1);
            }

            goto LABEL_74;
          }

          v92 = v31;
          v93 = sub_2232AAAC4();
          v94 = sub_2232AAD94();

          if (!os_log_type_enabled(v93, v94))
          {
            goto LABEL_74;
          }

          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v110 = v96;
          *v95 = 136315138;
          *(v95 + 4) = sub_2232603D0(v105, v106, &v110);
          v97 = "Failed to create TRPCandidateForPlannerMessage for request: %s";
        }

        else
        {
          v78 = objc_allocWithZone(sub_2232A9E44());
          v79 = sub_2232A9DC4();
          v77 = v105;
          v76 = v106;
          if (v79)
          {
            v72 = v79;
            v80 = sub_2232AAAC4();
            v81 = sub_2232AAD84();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              *v82 = 0;
              _os_log_impl(&dword_22325E000, v80, v81, "Going to post TRPCandidateMessage", v82, 2u);
              MEMORY[0x223DD8AC0](v82, -1, -1);
            }

            __swift_project_boxed_opaque_existential_1(&v31[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v31[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
            sub_2232AA624();
LABEL_63:

            v83 = [v28 trpCandidateId];
            if (!v83)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            v84 = v83;
            v85 = sub_2232AAC04();
            v87 = v86;

            sub_22327FF24(v77, v76, v85, v87);

            if (qword_28131D340 == -1)
            {
              goto LABEL_65;
            }

            goto LABEL_77;
          }

          v98 = v31;
          v93 = sub_2232AAAC4();
          v94 = sub_2232AAD94();

          if (!os_log_type_enabled(v93, v94))
          {
LABEL_74:

            goto LABEL_75;
          }

          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v110 = v96;
          *v95 = 136315138;
          *(v95 + 4) = sub_2232603D0(v105, v106, &v110);
          v97 = "Failed to create TRPCandidateRequestMessage for request: %s";
        }

        _os_log_impl(&dword_22325E000, v93, v94, v97, v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x223DD8AC0](v96, -1, -1);
        MEMORY[0x223DD8AC0](v95, -1, -1);
        goto LABEL_74;
      }
    }

    goto LABEL_51;
  }

LABEL_8:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = a1;
  v14 = v1;
  v109 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v109, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v110 = v17;
    *v16 = 136315394;
    v18 = [v13 requestId];

    if (v18)
    {
      v19 = sub_2232AAC04();
      v21 = v20;

      v22 = sub_2232603D0(v19, v21, &v110);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2232603D0(*&v14[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v14[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v110);
      _os_log_impl(&dword_22325E000, v109, v15, "TRPCandidate requestId = %s does not match current requestId = %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD8AC0](v17, -1, -1);
      MEMORY[0x223DD8AC0](v16, -1, -1);

      return;
    }

    goto LABEL_79;
  }

LABEL_24:
}

void sub_22327B778(void *a1)
{
  v3 = sub_2232AAAB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  if (*(v1 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v22 = sub_2232AAAD4();
    __swift_project_value_buffer(v22, qword_28131DB88);
    v53 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (!os_log_type_enabled(v53, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Received ContinuityEnd when Medoc is not enabled.";
    goto LABEL_16;
  }

  v53 = v8;
  v11 = [a1 requestId];
  if (!v11)
  {
LABEL_8:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v53 = sub_2232AAAC4();
    v19 = sub_2232AADA4();
    if (!os_log_type_enabled(v53, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "ContinuityEnd requestId does not match current requestId";
LABEL_16:
    _os_log_impl(&dword_22325E000, v53, v19, v21, v20, 2u);
    MEMORY[0x223DD8AC0](v20, -1, -1);
LABEL_17:
    v23 = v53;

    return;
  }

  v12 = v11;
  v13 = sub_2232AAC04();
  v15 = v14;

  if (v13 == *(v1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) && v15 == *(v1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8))
  {
  }

  else
  {
    v17 = sub_2232AB094();

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v52 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v24 = sub_2232AAAD4();
  v25 = __swift_project_value_buffer(v24, qword_28131DB88);
  v26 = a1;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD84();
  if (os_log_type_enabled(v27, v28))
  {
    v49 = v25;
    v51 = v4;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = v30;
    *v29 = 136315138;
    v31 = [v26 lastTRPCandidateId];
    v32 = v26;
    v33 = v31;
    v50 = v32;

    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = sub_2232AAC04();
    v36 = v35;

    v37 = sub_2232603D0(v34, v36, &v54);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_22325E000, v27, v28, "Received ContinuityEnd with lastTRPCandidateId: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);

    v26 = v50;
    v4 = v51;
  }

  else
  {
  }

  v38 = sub_2232AAAC4();
  v39 = sub_2232AAD84();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22325E000, v38, v39, "Will wait on Myriad selection..", v40, 2u);
    MEMORY[0x223DD8AC0](v40, -1, -1);
  }

  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v41 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v42 = qword_28131DD38;
  sub_2232AAA74();

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v53;
  (*(v4 + 16))(v7, v10, v53);
  v45 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v46 = (v5 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v4 + 32))(v47 + v45, v7, v44);
  *(v47 + v46) = v43;
  *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v48 = v26;

  sub_22328019C(0x7065636341204352, 0xED000065636E6174, sub_22327F434, v47);

  (*(v4 + 8))(v10, v44);
}

void sub_22327BE04(char a1)
{
  v2 = v1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v8 = sub_2232AAAD4();
  __swift_project_value_buffer(v8, qword_28131DB88);
  v9 = sub_2232AAAC4();
  v10 = sub_2232AAD84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22325E000, v9, v10, "Received requestAttentionAssetDownload", v11, 2u);
    MEMORY[0x223DD8AC0](v11, -1, -1);
  }

  if (a1)
  {
    MEMORY[0x28223BE20](v12);
    *(&v31 - 2) = v2;
    v13 = objc_allocWithZone(sub_2232AA414());
    v14 = sub_2232AA244();
    if (v14)
    {
      v15 = v14;
      v16 = sub_2232AAAC4();
      v17 = sub_2232AAD84();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22325E000, v16, v17, "Going to post MagusAttentionAssetDownloadRequestedMessage", v18, 2u);
        MEMORY[0x223DD8AC0](v18, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((&v2->isa + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(&v2[3].isa + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher));
      sub_2232AA624();
    }

    else
    {
      v22 = v2;
      v23 = sub_2232AAAC4();
      v24 = sub_2232AAD94();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        (*(v5 + 16))(v7, v22 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v4);
        sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v27 = sub_2232AB064();
        v29 = v28;
        (*(v5 + 8))(v7, v4);
        v30 = sub_2232603D0(v27, v29, &v32);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_22325E000, v23, v24, "Failed to create MagusAttentionAssetDownloadRequestedMessage for session: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x223DD8AC0](v26, -1, -1);
        MEMORY[0x223DD8AC0](v25, -1, -1);
      }
    }
  }

  else
  {
    v31 = sub_2232AAAC4();
    v19 = sub_2232AAD84();
    if (os_log_type_enabled(v31, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      _os_log_impl(&dword_22325E000, v31, v19, "requestDownload = %{BOOL}d, returning.", v20, 8u);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    v21 = v31;
  }
}

void sub_22327C29C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, double a5)
{
  if (v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled])
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v6 = sub_2232AAAD4();
    __swift_project_value_buffer(v6, qword_28131DB88);
    v36 = sub_2232AAAC4();
    v7 = sub_2232AAD94();
    if (os_log_type_enabled(v36, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22325E000, v36, v7, "Received Eager RC in Medoc flow. Ignoring.", v8, 2u);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }
  }

  else
  {
    v9 = v5;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v14 = sub_2232AAAD4();
    __swift_project_value_buffer(v14, qword_28131DB88);
    v15 = sub_2232AAAC4();
    v16 = sub_2232AAD84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = a3;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a5;
      _os_log_impl(&dword_22325E000, v15, v16, "Received eager recognition candidate rcId:%lu processedDuration: %f", v17, 0x16u);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }

    v18 = *&v9[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] == a1 && *&v9[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8] == a2;
    if (v18 || (sub_2232AB094() & 1) != 0)
    {
      v37 = a3;
      v19 = sub_2232AB064();
      v21 = v20;
      MEMORY[0x28223BE20](v19);
      v22 = objc_allocWithZone(sub_2232A9B44());
      v23 = sub_2232A9AC4();
      if (v23)
      {
        v24 = v23;
        sub_22327FDD4(a1, a2, v19, v21);

        if (qword_28131D340 != -1)
        {
          swift_once();
        }

        v25 = sub_2232AA8A4();
        __swift_project_value_buffer(v25, qword_28131DBA0);
        v26 = swift_allocObject();
        v26[2] = v9;
        v26[3] = a1;
        v26[4] = a2;
        v26[5] = a3;
        v9;

        sub_2232AA874();

        sub_22328237C(v24);
      }

      else
      {

        v27 = sub_2232AAAC4();
        v28 = sub_2232AAD94();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v37 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_2232603D0(a1, a2, &v37);
          _os_log_impl(&dword_22325E000, v27, v28, "Failed to create AsrResultCandidateMessage for request: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x223DD8AC0](v30, -1, -1);
          MEMORY[0x223DD8AC0](v29, -1, -1);
        }
      }
    }

    else
    {
      v31 = sub_2232AAAC4();
      v32 = sub_2232AAD94();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22325E000, v31, v32, "Response requestId does not match current requestId", v33, 2u);
        MEMORY[0x223DD8AC0](v33, -1, -1);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v34 = sub_2232AA8A4();
      __swift_project_value_buffer(v34, qword_28131DBA0);
      v35 = swift_allocObject();
      v35[2] = a1;
      v35[3] = a2;
      v35[4] = a3;

      sub_2232AA884();
    }
  }
}

void sub_22327C874(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v58 = a4;
  v59 = a1;
  v8 = sub_2232AAAB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a3;
    _os_log_impl(&dword_22325E000, v13, v14, "Received recognition candidate accepted for rcId:%lu", v15, 0xCu);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  sub_2232AAE44();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v16 = qword_28131DD38;
  sub_2232AAAA4();
  sub_2232AAA84();

  (*(v9 + 8))(v11, v8);
  v17 = v59;
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v18 = sub_2232AA8A4();
  __swift_project_value_buffer(v18, qword_28131DBA0);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v17;
  v19[4] = a2;
  v19[5] = a3;
  v20 = v5;

  sub_2232AA874();

  if ((*&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] != v17 || *&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8] != a2) && (sub_2232AB094() & 1) == 0)
  {
    v37 = sub_2232AAAC4();
    v38 = sub_2232AAD94();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22325E000, v37, v38, "Response requestId does not match current requestId", v39, 2u);
      MEMORY[0x223DD8AC0](v39, -1, -1);
    }

    v40 = swift_allocObject();
    v40[2] = v17;
    v40[3] = a2;
    v40[4] = v20;
    v40[5] = a3;
    v41 = v20;

    goto LABEL_27;
  }

  v60 = a3;
  v21 = sub_2232AB064();
  v23 = v22;
  if (v20[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] == 1)
  {
    v24 = *&v20[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
    if (v24)
    {
      v25 = 0xD000000000000018;
      if (v20[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] == 1)
      {
        v26 = MEMORY[0x28223BE20](v21);
        *&v57[-32] = v20;
        *&v57[-24] = v26;
        *&v57[-16] = v23;
        v57[-8] = v27;
        objc_allocWithZone(sub_2232AA274());
        v28 = v24;
        v29 = sub_2232A9754();

        if (!v29)
        {
          v30 = "MUXResultSelectedMessage";
          v25 = 0xD000000000000023;
LABEL_32:

          v52 = sub_2232AAAC4();
          v53 = sub_2232AAD94();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v60 = v55;
            *v54 = 136315394;
            v56 = sub_2232603D0(v25, v30 | 0x8000000000000000, &v60);

            *(v54 + 4) = v56;
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_2232603D0(v59, a2, &v60);
            _os_log_impl(&dword_22325E000, v52, v53, "Failed to create %s for request: %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v55, -1, -1);
            MEMORY[0x223DD8AC0](v54, -1, -1);
          }

          else
          {
          }

          return;
        }
      }

      else
      {
        v48 = MEMORY[0x28223BE20](v21);
        *&v57[-48] = v20;
        *&v57[-40] = v48;
        *&v57[-32] = v23;
        v57[-24] = v49;
        *&v57[-16] = v24;
        objc_allocWithZone(sub_2232A9A34());
        v50 = v24;
        v29 = sub_2232A99B4();

        if (!v29)
        {
          v30 = "Builder8";
          goto LABEL_32;
        }
      }

LABEL_30:
      v51 = *&v20[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
      *&v20[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = v29;

      sub_223273B3C();
      return;
    }

    v42 = sub_2232AAAC4();
    v43 = sub_2232AAD94();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22325E000, v42, v43, "Voice id card is nil. This is due to malformed homemembers list", v44, 2u);
      MEMORY[0x223DD8AC0](v44, -1, -1);
    }

    v45 = swift_allocObject();
    v46 = v59;
    v45[2] = v20;
    v45[3] = v46;
    v45[4] = a2;
    v45[5] = a3;
    v47 = v20;

LABEL_27:
    sub_2232AA884();

    return;
  }

  v31 = MEMORY[0x28223BE20](v21);
  *&v57[-32] = v20;
  *&v57[-24] = v31;
  *&v57[-16] = v23;
  v57[-8] = v58 & 1;
  v32 = objc_allocWithZone(sub_2232A9764());
  v29 = sub_2232A9754();

  if (v29)
  {
    goto LABEL_30;
  }

  v33 = sub_2232AAAC4();
  v34 = sub_2232AAD94();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2232603D0(v17, a2, &v60);
    _os_log_impl(&dword_22325E000, v33, v34, "Failed to create ResultSelectedMessage for request: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DD8AC0](v36, -1, -1);
    MEMORY[0x223DD8AC0](v35, -1, -1);
  }
}

void sub_22327D100(void *a1)
{
  v2 = v1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v8 = sub_2232AAAD4();
  v9 = __swift_project_value_buffer(v8, qword_28131DB88);
  v10 = a1;
  v11 = sub_2232AAAC4();
  v12 = sub_2232AAD84();
  if (!os_log_type_enabled(v11, v12))
  {

LABEL_7:
    v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived] = 1;
    v25 = *&v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
    *&v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = v10;
    v26 = v10;

    if (v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isUOS] == 1)
    {
      v28 = sub_2232AAE04();
      sub_2232A94F4();
      sub_2232A94C4();
      (*(v5 + 8))(v7, v4);
      v29 = sub_2232AABF4();

      [v28 setAceId_];

      v30 = sub_2232AABF4();
      [v28 setRefId_];

      v31 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper];
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      aBlock[4] = sub_22327F6DC;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_216;
      v33 = _Block_copy(aBlock);
      v34 = v28;

      [v31 handleCommand:v34 completion:v33];
      _Block_release(v33);
    }

    if ((v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] & 1) != 0 || v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityBridgeInstrumentationEnabled] == 1)
    {
      MEMORY[0x28223BE20](v27);
      *&v46[-16] = v2;
      *&v46[-8] = v26;
      v35 = objc_allocWithZone(sub_2232A99A4());
      v36 = sub_2232A9944();
      if (!v36)
      {
        v37 = v2;
        v38 = sub_2232AAAC4();
        v39 = sub_2232AAD94();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_2232603D0(*&v37[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v37[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], aBlock);
          v42 = "Failed to create VoiceIdScoreCardMessage for request: %s";
LABEL_18:
          _os_log_impl(&dword_22325E000, v38, v39, v42, v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          MEMORY[0x223DD8AC0](v41, -1, -1);
          MEMORY[0x223DD8AC0](v40, -1, -1);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v27);
      *&v46[-16] = v2;
      *&v46[-8] = v26;
      v43 = objc_allocWithZone(sub_2232A9D34());
      v36 = sub_2232A9CB4();
      if (!v36)
      {
        v45 = v2;
        v38 = sub_2232AAAC4();
        v39 = sub_2232AAD94();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_2232603D0(*&v45[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v45[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], aBlock);
          v42 = "Failed to create UserIdentificationMessage for request: %s";
          goto LABEL_18;
        }

LABEL_19:

        return;
      }
    }

    v44 = v36;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
    sub_2232AA624();

    return;
  }

  v47 = v12;
  v49 = v7;
  v50 = v5;
  v51 = v4;
  v52 = v9;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  aBlock[0] = v48;
  *v13 = 136315906;
  v15 = [v10 spIdKnownUserScores];
  if (v15)
  {
    v16 = v15;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    sub_2232AAB94();

    v17 = sub_2232AABA4();
    v19 = v18;

    v20 = sub_2232603D0(v17, v19, aBlock);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2112;
    v21 = [v10 spIdUnknownUserScore];
    *(v13 + 14) = v21;
    *v14 = v21;
    *(v13 + 22) = 2048;
    v22 = [v10 userIdentityClassification];

    *(v13 + 24) = v22;
    *(v13 + 32) = 2112;
    v23 = [v10 spIdAudioProcessedDuration];
    *(v13 + 34) = v23;
    v14[1] = v23;
    _os_log_impl(&dword_22325E000, v11, v47, "Received voiceIdScoreCard.\nKnownUserScores=%s, UnknownUserScore=%@, UserClassification=%ld, Audio Duration= %@", v13, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D0, &qword_2232AC4A0);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v14, -1, -1);
    v24 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x223DD8AC0](v24, -1, -1);
    MEMORY[0x223DD8AC0](v13, -1, -1);

    v4 = v51;
    v7 = v49;
    v5 = v50;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22327D88C()
{
  v1 = v0;
  v2 = sub_2232A9504();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v100 - v7;
  sub_2232A94F4();
  v105 = sub_2232A94C4();
  v10 = v9;
  v109 = *(v3 + 8);
  v110 = v2;
  v108 = v3 + 8;
  v109(v8, v2);
  v11 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v12 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v13 = v11;
  v14 = [v12 init];
  v15 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v16 = v13;
  v17 = [v15 initWithRecognition:v16 rawRecognition:v16 audioAnalytics:v14 isFinal:0 utteranceStart:0.0];

  if (!v17)
  {

    if (qword_28131D338 != -1)
    {
LABEL_38:
      swift_once();
    }

    v34 = sub_2232AAAD4();
    __swift_project_value_buffer(v34, qword_28131DB88);
    v35 = sub_2232AAAC4();
    v36 = sub_2232AAD94();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22325E000, v35, v36, "Failed to create speechPackage", v37, 2u);
      MEMORY[0x223DD8AC0](v37, -1, -1);
    }

    goto LABEL_30;
  }

  v103 = v10;
  if (v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] != 1)
  {
    v38 = v103;
    v39 = sub_223276AB8(v105, v103, 0, 0);
    if (v39)
    {
      v101 = v17;
      v102 = v16;
      v40 = v39;
      sub_22327A9D8(v39);

      v110 = 0;
      v111 = 0;
      v41 = v105;
      goto LABEL_42;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v42 = sub_2232AAAD4();
    __swift_project_value_buffer(v42, qword_28131DB88);
    v43 = v1;
    v44 = sub_2232AAAC4();
    v45 = sub_2232AAD94();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_2232603D0(*&v43[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v43[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
      _os_log_impl(&dword_22325E000, v44, v45, "Failed to create fabricated TRPCandidate for request: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x223DD8AC0](v47, -1, -1);
      MEMORY[0x223DD8AC0](v46, -1, -1);
    }

LABEL_30:
    return;
  }

  v112 = MEMORY[0x277D84F90];
  v18 = *&v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers];
  v101 = v17;
  v102 = v16;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v107 = v1;
    if (v19)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  v19 = sub_2232AAFE4();
  v107 = v1;
  if (!v19)
  {
LABEL_40:
    v57 = swift_allocObject();
    v41 = v105;
    v38 = v103;
    v57[2] = v105;
    v57[3] = v38;
    v57[4] = &v112;
    v57[5] = v1;
    v58 = objc_allocWithZone(MEMORY[0x277D5D2E0]);
    v59 = swift_allocObject();
    *(v59 + 16) = sub_22327F354;
    *(v59 + 24) = v57;
    v117 = sub_22327F800;
    v118 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_2232787D8;
    v116 = &block_descriptor_176;
    v60 = _Block_copy(&aBlock);
    v61 = v1;
    v62 = v60;
    v63 = v61;

    v64 = [v58 initWithBuilder_];
    _Block_release(v62);
    if (!v64)
    {

      v87 = v102;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v88 = sub_2232AAAD4();
      __swift_project_value_buffer(v88, qword_28131DB88);
      v89 = v63;
      v90 = sub_2232AAAC4();
      v91 = sub_2232AAD94();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock = v93;
        *v92 = 136315138;
        *(v92 + 4) = sub_2232603D0(*&v89[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v89[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v90, v91, "Failed to create fabricated MultiUserTRPCandidate for request: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x223DD8AC0](v93, -1, -1);
        MEMORY[0x223DD8AC0](v92, -1, -1);
      }

      return;
    }

    v111 = v57;
    sub_2232795D8(v64);

    v110 = sub_22327F354;
    v1 = v107;
LABEL_42:
    v65 = swift_allocObject();
    v65[2] = v41;
    v65[3] = v38;
    v65[4] = v1;
    v66 = objc_allocWithZone(MEMORY[0x277D5D300]);
    v67 = swift_allocObject();
    *(v67 + 16) = sub_22327F324;
    *(v67 + 24) = v65;
    v117 = sub_22327F800;
    v118 = v67;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_22327F7FC;
    v116 = &block_descriptor_158;
    v68 = _Block_copy(&aBlock);
    v69 = v1;

    v70 = [v66 initWithBuilder_];
    v71 = v38;
    v72 = v70;
    _Block_release(v68);
    if (v72)
    {
      sub_22327909C(v72);
      v73 = swift_allocObject();
      v73[2] = v41;
      v73[3] = v71;
      v73[4] = v69;
      v74 = objc_allocWithZone(MEMORY[0x277D5D2D8]);
      v75 = swift_allocObject();
      *(v75 + 16) = sub_22327F7C4;
      *(v75 + 24) = v73;
      v117 = sub_22327F800;
      v118 = v75;
      aBlock = MEMORY[0x277D85DD0];
      v114 = 1107296256;
      v115 = sub_22327F7FC;
      v116 = &block_descriptor_167;
      v76 = _Block_copy(&aBlock);
      v77 = v69;

      v78 = [v74 initWithBuilder_];
      _Block_release(v76);
      if (v78)
      {
        sub_22327B778(v78);
      }

      else
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v94 = sub_2232AAAD4();
        __swift_project_value_buffer(v94, qword_28131DB88);
        v95 = v77;
        v96 = sub_2232AAAC4();
        v97 = sub_2232AAD94();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          aBlock = v99;
          *v98 = 136315138;
          *(v98 + 4) = sub_2232603D0(*&v95[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v95[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
          _os_log_impl(&dword_22325E000, v96, v97, "Failed to create fabricated ContinuityEnd for request: %s", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          MEMORY[0x223DD8AC0](v99, -1, -1);
          MEMORY[0x223DD8AC0](v98, -1, -1);
        }
      }

      sub_22327F344(v110, v111);
    }

    else
    {

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v79 = sub_2232AAAD4();
      __swift_project_value_buffer(v79, qword_28131DB88);
      v80 = v69;
      v81 = sub_2232AAAC4();
      v82 = sub_2232AAD94();

      v83 = os_log_type_enabled(v81, v82);
      v84 = v102;
      if (v83)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        aBlock = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_2232603D0(*&v80[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v80[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v81, v82, "Failed to create fabricated TRPDetected for request: %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x223DD8AC0](v86, -1, -1);
        MEMORY[0x223DD8AC0](v85, -1, -1);
      }

      sub_22327F344(v110, v111);
    }

    return;
  }

LABEL_5:
  v20 = 0;
  v106 = v18 & 0xC000000000000001;
  v104 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v106)
    {
      v21 = MEMORY[0x223DD8300](v20, v18);
    }

    else
    {
      if (v20 >= *(v104 + 16))
      {
        goto LABEL_37;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_2232A94F4();
    v24 = sub_2232A94C4();
    v26 = v25;
    v109(v6, v110);
    v111 = v22;
    v27 = [v22 sharedUserId];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2232AAC04();
      v16 = v30;
    }

    else
    {
      v29 = 0;
      v16 = 0;
    }

    v31 = v29;
    v1 = v107;
    v32 = sub_223276AB8(v24, v26, v31, v16);

    if (!v32)
    {
      break;
    }

    v33 = v32;
    MEMORY[0x223DD8070]();
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2232AAD24();
    }

    sub_2232AAD34();

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_40;
    }
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v48 = sub_2232AAAD4();
  __swift_project_value_buffer(v48, qword_28131DB88);
  v49 = v1;
  v50 = sub_2232AAAC4();
  v51 = sub_2232AAD94();

  v52 = os_log_type_enabled(v50, v51);
  v54 = v101;
  v53 = v102;
  if (v52)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_2232603D0(*&v49[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v49[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
    _os_log_impl(&dword_22325E000, v50, v51, "Failed to create fabricated UserLevel TRPCandidate for request: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x223DD8AC0](v56, -1, -1);
    MEMORY[0x223DD8AC0](v55, -1, -1);
  }
}

void sub_22327E68C(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v5 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v6 = v4;
  v7 = [v5 init];
  v8 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v9 = v6;
  v21 = [v8 initWithRecognition:v9 rawRecognition:v9 audioAnalytics:v7 isFinal:0 utteranceStart:0.0];

  if (v21)
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
      *v13 = 0;
      _os_log_impl(&dword_22325E000, v11, v12, "Calling delegate callback with fabricated SpeechPackage", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }

    sub_22327C29C(a1, a2, 0, v21, 0.0);
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22325E000, v14, v15, "Calling delegate callback with accept for fabricated SpeechPackage", v16, 2u);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    sub_22327C874(a1, a2, 0, 0);
    v17 = v9;
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v17 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22325E000, v17, v19, "Failed to create speechPackage", v20, 2u);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    v21 = v9;
  }
}

void sub_22327E990(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  v7 = v6;
  if (a3 && ((v13 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], v14 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], v13 == a2) ? (v15 = v14 == a3) : (v15 = 0), v15 || (v16 = a4, v17 = sub_2232AB094(), a4 = v16, (v17 & 1) != 0)))
  {
    v74 = a4;
    v72 = a2;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v19 = sub_2232AAAC4();
    v20 = sub_2232AAD84();
    v73 = a5;
    if (os_log_type_enabled(v19, v20))
    {
      v70 = v14;
      v21 = swift_slowAlloc();
      v68 = a6;
      v22 = swift_slowAlloc();
      v77 = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0811E8, qword_2232AC468);
      v23 = sub_2232AAEA4();
      v25 = v13;
      v26 = sub_2232603D0(v23, v24, &v77);

      *(v21 + 4) = v26;
      v13 = v25;
      _os_log_impl(&dword_22325E000, v19, v20, "Received didCompletionRecognitionWithStatistics with endpointMode: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v27 = v22;
      a6 = v68;
      MEMORY[0x223DD8AC0](v27, -1, -1);
      v28 = v21;
      v14 = v70;
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }

    v29 = v72;
    sub_22326D244(a1, 0);
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v30 = sub_2232AA8A4();
    __swift_project_value_buffer(v30, qword_28131DBA0);
    v31 = swift_allocObject();
    *(v31 + 16) = v74;
    *(v31 + 24) = v73 & 1;
    *(v31 + 32) = v7;
    *(v31 + 40) = v72;
    *(v31 + 48) = a3;
    v32 = v7;

    sub_2232AA874();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
    if (a6)
    {
      v75 = a6;
      v33 = a6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811D8, &qword_2232AC460);
      sub_2232606A4(0, &qword_28131D190, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v34 = v77;
        v35 = &off_2784D7000;
        if ([v77 code] == 1110)
        {
          v36 = swift_allocObject();
          *(v36 + 16) = v32;
          *(v36 + 24) = v72;
          *(v36 + 32) = a3;
          *(v36 + 40) = v34;
          *(v36 + 48) = v74;
          *(v36 + 56) = v73 & 1;
          v37 = v32;

          v38 = v34;
          sub_2232AA884();

          if (v37[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] == 1)
          {
            sub_22327D88C();
          }

          else
          {
            sub_22327E68C(v13, v14);
          }
        }

        else if ([v34 code] == 1101 || objc_msgSend(v34, sel_code) == 1107)
        {
          v46 = sub_2232AAAC4();
          v47 = sub_2232AAD94();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_22325E000, v46, v47, "embeddedspeech probably crashed, failing current request", v48, 2u);
            MEMORY[0x223DD8AC0](v48, -1, -1);
          }

          v49 = swift_allocObject();
          *(v49 + 16) = v32;
          *(v49 + 24) = v72;
          *(v49 + 32) = a3;
          *(v49 + 40) = v34;
          *(v49 + 48) = v74;
          *(v49 + 56) = v73 & 1;
          v32;

          v50 = v34;
          sub_2232AA884();

          sub_2232773E4(v13, v14, v50);
          v35 = &off_2784D7000;
        }

        else
        {
          v51 = v34;
          v52 = sub_2232AAAC4();
          v53 = sub_2232AAD94();
          log = v52;
          if (os_log_type_enabled(v52, v53))
          {
            v67 = v53;
            v54 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v76 = v66;
            *v54 = 134218242;
            *(v54 + 4) = [v51 code];

            *(v54 + 12) = 2080;
            v69 = v13;
            v55 = [v51 description];
            v56 = v14;
            v57 = sub_2232AAC04();
            v59 = v58;

            v60 = v57;
            v14 = v56;
            v61 = sub_2232603D0(v60, v59, &v76);
            v29 = v72;

            *(v54 + 14) = v61;
            v13 = v69;
            _os_log_impl(&dword_22325E000, log, v67, "Received ASR error %ld %s but not taking any action", v54, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            MEMORY[0x223DD8AC0](v66, -1, -1);
            MEMORY[0x223DD8AC0](v54, -1, -1);
          }

          else
          {
          }

          v62 = swift_allocObject();
          *(v62 + 16) = v51;
          *(v62 + 24) = v32;
          *(v62 + 32) = v29;
          *(v62 + 40) = a3;
          *(v62 + 48) = v74;
          *(v62 + 56) = v73 & 1;
          v63 = v32;

          v64 = v51;
          sub_2232AA884();
        }

        v65 = [v34 v35[232]];
        if (v65 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v65 <= 0x7FFFFFFF)
        {
          sub_22327FB30(v65, v13, v14);

          return;
        }

        __break(1u);
      }

      sub_2232AB084();
      __break(1u);
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v39 = sub_2232AAAD4();
    __swift_project_value_buffer(v39, qword_28131DB88);
    v40 = sub_2232AAAC4();
    v41 = sub_2232AAD94();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22325E000, v40, v41, "Response requestId does not match current requestId", v42, 2u);
      MEMORY[0x223DD8AC0](v42, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v43 = sub_2232AA8A4();
    __swift_project_value_buffer(v43, qword_28131DBA0);
    v44 = swift_allocObject();
    v44[2] = a2;
    v44[3] = a3;
    v44[4] = v7;

    v45 = v7;
    sub_2232AA884();
  }
}

uint64_t objectdestroy_145Tm()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22327F344(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_2232AAAB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22327F44C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2232AAAB4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t objectdestroy_136Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_194Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_22327F678()
{
  result = qword_28131D220;
  if (!qword_28131D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D220);
  }

  return result;
}

void sub_22327F740(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_22327F80C()
{
  type metadata accessor for ASRBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedStream];
  sub_2232AA9E4();
  swift_allocObject();
  result = sub_2232AA9D4();
  *(v0 + 24) = result;
  qword_28131DD40 = v0;
  return result;
}

void sub_22327F888(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v18 = [objc_allocWithZone(MEMORY[0x277D59580]) init];
  if (v18)
  {
    [v18 setExists_];
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v17 setEnded_];
  v6 = sub_2232AA9B4();
  if (v6)
  {
    v7 = v6;
    [v6 setAsrBridgeContext_];
    [*(v2 + 16) emitMessage_];
    v8 = sub_2232AA994();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 captureSnapshot];

      if (v10)
      {
        v11 = [objc_opt_self() context];
        if (v11)
        {
          v12 = v11;
          sub_2232A94B4();
          v13 = sub_2232A9504();
          v14 = *(v13 - 8);
          v15 = 0;
          if ((*(v14 + 48))(v5, 1, v13) != 1)
          {
            v15 = sub_2232A94D4();
            (*(v14 + 8))(v5, v13);
          }

          [v10 logWithEventContext:v12 requestIdentifier:v15];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v16 = v18;
  }

  else
  {

    v16 = v17;
  }
}

void sub_22327FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v21 = [objc_allocWithZone(MEMORY[0x277D59588]) init];
  [v21 setError_];
  v20 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v20 setFailed_];
  v9 = sub_2232AA9B4();
  if (v9)
  {
    v10 = v9;
    [v9 setAsrBridgeContext_];
    [*(v4 + 16) emitMessage_];
    v11 = sub_2232AA994();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 captureSnapshot];

      if (v13)
      {
        v14 = [objc_opt_self() context];
        if (v14)
        {
          v15 = v14;
          sub_2232A94B4();
          v16 = sub_2232A9504();
          v17 = *(v16 - 8);
          v18 = 0;
          if ((*(v17 + 48))(v8, 1, v16) != 1)
          {
            v18 = sub_2232A94D4();
            (*(v17 + 8))(v8, v16);
          }

          [v13 logWithEventContext:v15 requestIdentifier:v18];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v19 = v21;
  }

  else
  {

    v19 = v20;
  }
}

void sub_22327FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, char a6, SEL *a7)
{
  v9 = v7;
  v13 = [objc_allocWithZone(*a5) init];
  if (v13)
  {
    [v13 setExists_];
  }

  v10 = sub_2232AA9B4();
  if (v10)
  {
    v11 = v10;
    [v10 *a7];
    [*(v9 + 16) emitMessage_];

    v12 = v11;
  }

  else
  {
    v12 = v13;
  }
}

void sub_22327FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_2232AA9A4();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D59860]) init];
    v11 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = sub_2232AA9C4();
      [v9 setTrpId_];

      v8 = v11;
    }

    [v7 setTrpCandidateReceived_];
    [*(v5 + 16) emitMessage_];
  }
}

uint64_t sub_22328002C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_223280090()
{
  result = [objc_opt_self() sharedMonitor];
  qword_27D081AC0 = result;
  return result;
}

double sub_2232800CC()
{
  result = 0.0;
  xmmword_28131DCB0 = 0u;
  unk_28131DCC0 = 0u;
  return result;
}

id sub_2232800E0()
{
  result = [objc_opt_self() isSCDAFrameworkEnabled];
  byte_28131DCA8 = result;
  return result;
}

uint64_t sub_223280114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_22328019C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_28131D698 != -1)
  {
    swift_once();
  }

  if (byte_28131DCA8 == 1)
  {
    v7 = [objc_opt_self() sharedMonitor];
    if (a2)
    {
      a2 = sub_2232AABF4();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v18 = sub_22328058C;
    v19 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_223280114;
    v17 = &block_descriptor_9;
    v9 = _Block_copy(&aBlock);

    [v7 waitForMyriadDecisionForReason:a2 withCompletion:v9];
    _Block_release(v9);

    if (qword_28131D6A0 != -1)
    {
      swift_once();
    }

    v17 = sub_2232804C8();
    aBlock = v7;
    swift_beginAccess();
    v10 = v7;
    sub_223280514(&aBlock, &xmmword_28131DCB0);
    swift_endAccess();
  }

  else
  {
    if (qword_27D080F98 != -1)
    {
      swift_once();
    }

    v11 = qword_27D081AC0;
    if (a2)
    {
      a2 = sub_2232AABF4();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v18 = sub_2232804A0;
    v19 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_223280114;
    v17 = &block_descriptor_0;
    v13 = _Block_copy(&aBlock);

    [v11 waitForMyriadDecisionForReason:a2 withCompletion:v13];
    _Block_release(v13);
  }
}

unint64_t sub_2232804C8()
{
  result = qword_28131D1E8;
  if (!qword_28131D1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1E8);
  }

  return result;
}

uint64_t sub_223280514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081820, &qword_2232ACC70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223280590()
{
  result = AFIsHorseman();
  byte_28131D5D8 = result;
  return result;
}

id sub_2232805B0()
{
  result = [objc_opt_self() sharedPreferences];
  qword_28131DCA0 = result;
  return result;
}

uint64_t sub_2232805EC()
{
  v0 = sub_2232AAAF4();
  __swift_allocate_value_buffer(v0, qword_28131DC88);
  *__swift_project_value_buffer(v0, qword_28131DC88) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_22328067C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_2232822C0();
    v2 = sub_2232AAD04();
  }

  v3(v2);
}

uint64_t sub_2232806F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  result = sub_2232AAFE4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223DD8300](0, a1);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 serializedContextByKey];

  if (v13)
  {
    v14 = sub_2232AAB94();

    v15 = sub_2232AAC04();
    if (*(v14 + 16))
    {
      v17 = sub_2232A2C98(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_2232606EC(*(v14 + 56) + 32 * v17, v29);

        v20 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
        __swift_project_boxed_opaque_existential_1(v29, v29[3]);
        v21 = [v20 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v21 callState])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v29);

          v13 = 1;
        }

        else
        {
          v22 = [v21 callState];

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v13 = (v22 >> 1) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v23 = qword_28131DD38;
  sub_2232AAA84();

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
    v29[0] = v28;
    *v27 = 67109378;
    *(v27 + 4) = v13;
    *(v27 + 8) = 2080;
    *(v27 + 10) = sub_2232603D0(a3, a4, v29);
    _os_log_impl(&dword_22325E000, v25, v26, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x223DD8AC0](v28, -1, -1);
    MEMORY[0x223DD8AC0](v27, -1, -1);
  }

  return a5(v13);
}

uint64_t sub_223280AB0()
{
  v1 = *v0;
  sub_2232AB0F4();
  MEMORY[0x223DD8490](v1);
  return sub_2232AB114();
}

uint64_t sub_223280B24(uint64_t a1)
{
  v2 = *v1;
  sub_2232AB0F4();
  MEMORY[0x223DD8490](v2);
  return sub_2232AB114();
}

uint64_t sub_223280B68()
{
  if (*v0)
  {
    return 0x4879616C70736964;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_223280BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002232AD9E0 == a2 || (sub_2232AB094() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4879616C70736964 && a2 == 0xEC00000073746E69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2232AB094();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_223280CB4(uint64_t a1)
{
  v2 = sub_223280F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223280CF0(uint64_t a1)
{
  v2 = sub_223280F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JitGrammarInput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C0, &qword_2232AC5C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223280F60();

  sub_2232AB134();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
  sub_223281240(&qword_28131D218, &qword_28131DAD8, MEMORY[0x277D5CAC0], MEMORY[0x277D83948]);
  sub_2232AB044();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    sub_22328130C(&unk_28131D200, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2232AB054();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_223280F60()
{
  result = qword_28131D958;
  if (!qword_28131D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D958);
  }

  return result;
}

uint64_t JitGrammarInput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813D0, &qword_2232AC5D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223280F60();
  sub_2232AB124();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
  v13 = 0;
  sub_223281240(&qword_27D0813D8, &qword_27D0813E0, MEMORY[0x277D5CAC8], MEMORY[0x277D83978]);
  sub_2232AB024();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
  v13 = 1;
  sub_22328130C(&qword_27D0813E8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_2232AB034();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_223281240(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D081870, &qword_2232AC5C8);
    sub_2232812C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2232812C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2232A9664();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22328130C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0813C8, &qword_2232AC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2232813B0()
{
  sub_2232AB0F4();
  MEMORY[0x223DD8490](0);
  return sub_2232AB114();
}

uint64_t sub_22328141C(uint64_t a1)
{
  sub_2232AB0F4();
  MEMORY[0x223DD8490](0);
  return sub_2232AB114();
}

uint64_t sub_223281478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6D61724774696ALL && a2 == 0xEA00000000007261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2232AB094();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223281514(uint64_t a1)
{
  v2 = sub_223281724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223281550(uint64_t a1)
{
  v2 = sub_223281724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JitGrammarOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813F0, &qword_2232AC5E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223281724();

  sub_2232AB134();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
  sub_22328130C(&unk_28131D200, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2232AB054();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_223281724()
{
  result = qword_28131D928;
  if (!qword_28131D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D928);
  }

  return result;
}

uint64_t JitGrammarOutput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813F8, &qword_2232AC5E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223281724();
  sub_2232AB124();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    sub_22328130C(&qword_27D0813E8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2232AB034();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22328194C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223281994(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2232819EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223281A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JitGrammarOutput.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JitGrammarOutput.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JitGrammarInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JitGrammarInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223281CE4()
{
  result = qword_27D081400;
  if (!qword_27D081400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081400);
  }

  return result;
}

unint64_t sub_223281D3C()
{
  result = qword_27D081408;
  if (!qword_27D081408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081408);
  }

  return result;
}

unint64_t sub_223281D94()
{
  result = qword_28131D918;
  if (!qword_28131D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D918);
  }

  return result;
}

unint64_t sub_223281DEC()
{
  result = qword_28131D920;
  if (!qword_28131D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D920);
  }

  return result;
}

unint64_t sub_223281E44()
{
  result = qword_28131D948;
  if (!qword_28131D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D948);
  }

  return result;
}

unint64_t sub_223281E9C()
{
  result = qword_28131D950;
  if (!qword_28131D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D950);
  }

  return result;
}

void *sub_223281EF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081420, &qword_2232AC948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081428, &qword_2232AC950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223282038(void *a1, uint64_t a2)
{
  v4 = AFIsATV();
  if (![a1 secureOfflineOnly])
  {
    if (AFIsATV())
    {
      v5 = 6;
      goto LABEL_17;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_17;
  }

  if (v4)
  {
    v5 = 10;
LABEL_17:
    [a1 taskHint];
    return v5;
  }

  if (([a1 forceOfflineRecognition] & 1) == 0)
  {
    v5 = 4;
    goto LABEL_17;
  }

  if (![a1 forceOfflineRecognition] || !objc_msgSend(a1, sel_secureOfflineOnly) || !AFIsSearchDictationRequest())
  {
    goto LABEL_15;
  }

  v6 = sub_2232AAC04();
  if (!*(a2 + 16))
  {

    return 3;
  }

  v8 = sub_2232A2C98(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return 3;
  }

  if (*(*(a2 + 56) + v8))
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_22328215C(char a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *(v3 + 16) = a1;
  return sub_2232AAE64();
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

uint64_t sub_223282210(unint64_t a1)
{
  v3 = *(sub_2232AAAB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);

  return sub_2232806F4(a1, v1 + v4, v8, v9, v10);
}

unint64_t sub_2232822C0()
{
  result = qword_28131D198;
  if (!qword_28131D198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D198);
  }

  return result;
}

void *sub_22328230C(uint64_t a1)
{
  v2 = sub_2232AAEF4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_22328329C(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

void sub_22328237C(NSObject *a1)
{
  v2 = v1;
  if (sub_2232AA5D4() == v1[7] && v4 == v1[8])
  {
  }

  else
  {
    v6 = sub_2232AB094();

    if ((v6 & 1) == 0)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v7 = sub_2232AAAD4();
      __swift_project_value_buffer(v7, qword_28131DB88);
      a1 = sub_2232AAAC4();
      v8 = sub_2232AAD94();
      if (!os_log_type_enabled(a1, v8))
      {
        goto LABEL_51;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22325E000, a1, v8, "ResultCandidateMessage requestId does not match current requestId", v9, 2u);
      v10 = v9;
      goto LABEL_22;
    }
  }

  v11 = v1[9];
  if (v1[10] < v11)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_2232AA624())
    {
      v12 = v1[10];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        v1[10] = v14;
        return;
      }

      __break(1u);
    }

    else if (qword_28131D338 == -1)
    {
LABEL_20:
      v19 = sub_2232AAAD4();
      __swift_project_value_buffer(v19, qword_28131DB88);
      v20 = a1;
      a1 = sub_2232AAAC4();
      v21 = sub_2232AAD94();

      if (!os_log_type_enabled(a1, v21))
      {
LABEL_51:

        return;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v20;
      v24 = v20;
      _os_log_impl(&dword_22325E000, a1, v21, "Failed to post AsrResultCandidateMessage: %@", v22, 0xCu);
      sub_223283234(v23);
      MEMORY[0x223DD8AC0](v23, -1, -1);
      v10 = v22;
LABEL_22:
      MEMORY[0x223DD8AC0](v10, -1, -1);
      goto LABEL_51;
    }

    swift_once();
    goto LABEL_20;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v15 = sub_2232AAAD4();
  __swift_project_value_buffer(v15, qword_28131DB88);

  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v11;

    _os_log_impl(&dword_22325E000, v16, v17, "Number of RC's generated by ASR is greater than maximum number of RC's allowed for the request [%ld]. Caching this RC until it has been accepted", v18, 0xCu);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  else
  {
  }

  sub_2232A9F84();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = v2[12];
    if (v27 && swift_dynamicCastClass())
    {
      v28 = a1;
      v29 = v27;
      v30 = sub_2232A9EF4();
      v31 = sub_22328230C(v30);

      if (v31)
      {
        v32 = [v31 recognition];

        if (!v32)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        [v32 processedAudioDuration];
        v34 = v33;
      }

      else
      {
        v34 = 0.0;
      }

      v47 = sub_2232A9EF4();
      v48 = sub_22328230C(v47);

      if (v48)
      {
        v49 = [v48 recognition];

        if (v49)
        {
LABEL_45:
          [v49 processedAudioDuration];
          v53 = v52;

          if (v53 >= v34)
          {
            goto LABEL_46;
          }

LABEL_49:
          v27 = v2[12];
          v2[12] = v26;
LABEL_50:
          v56 = a1;

          v54 = v2[12];
          if (!v54)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

        goto LABEL_55;
      }

LABEL_48:

      if (v34 <= 0.0)
      {
LABEL_46:
        v54 = v2[12];
        if (!v54)
        {
          goto LABEL_51;
        }

LABEL_47:
        v55 = v54;
        sub_2232A9FB4();

        return;
      }

      goto LABEL_49;
    }

LABEL_36:
    v2[12] = v26;
    v41 = a1;
    goto LABEL_50;
  }

  sub_2232A98A4();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    v42 = sub_2232A9FB4();
    v44 = v43;
    swift_beginAccess();
    v45 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v2[11];
    v2[11] = 0x8000000000000000;
    sub_2232A44B8(v45, v42, v44, isUniquelyReferenced_nonNull_native);

    v2[11] = v57;
    swift_endAccess();
    sub_2232A9FB4();
    return;
  }

  v26 = v35;
  v27 = v2[12];
  if (!v27 || !swift_dynamicCastClass())
  {
    goto LABEL_36;
  }

  v36 = a1;
  v29 = v27;
  v37 = sub_2232A9824();
  v38 = sub_22328230C(v37);

  if (v38)
  {
    v39 = [v38 recognition];

    if (!v39)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    [v39 processedAudioDuration];
    v34 = v40;
  }

  else
  {
    v34 = 0.0;
  }

  v50 = sub_2232A9EF4();
  v51 = sub_22328230C(v50);

  if (!v51)
  {
    goto LABEL_48;
  }

  v49 = [v51 recognition];

  if (v49)
  {
    goto LABEL_45;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_2232829E0()
{
  v1 = v0[12];
  if (!v1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v3 = sub_2232AAAC4();
    v6 = sub_2232AAD94();
    if (os_log_type_enabled(v3, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22325E000, v3, v6, "Buffered MUX RC message does not exist", v7, 2u);
      MEMORY[0x223DD8AC0](v7, -1, -1);
    }

    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v1;
  if ((sub_2232AA624() & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v8 = sub_2232AAAD4();
    __swift_project_value_buffer(v8, qword_28131DB88);
    v9 = v2;
    v3 = sub_2232AAAC4();
    v10 = sub_2232AAD94();

    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v1;
      v9 = v9;
      _os_log_impl(&dword_22325E000, v3, v10, "Failed to post muxRcMsgBuffered: %@", v11, 0xCu);
      sub_223283234(v12);
      MEMORY[0x223DD8AC0](v12, -1, -1);
      MEMORY[0x223DD8AC0](v11, -1, -1);
    }

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v3 = v0[12];
  v0[12] = 0;
  v4 = 1;
LABEL_14:

  return v4;
}

void sub_223282C18(void *a1)
{
  v2 = v1;
  if (sub_2232AA5D4() == v1[7] && v4 == v1[8])
  {
  }

  else
  {
    v6 = sub_2232AB094();

    if ((v6 & 1) == 0)
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
        _os_log_impl(&dword_22325E000, oslog, v8, "ResultSelectedMessage requestId does not match current requestId", v9, 2u);
        MEMORY[0x223DD8AC0](v9, -1, -1);
      }

      return;
    }
  }

  v10 = sub_2232A9FB4();
  v12 = v11;
  swift_beginAccess();
  v13 = v1[11];
  if (*(v13 + 16))
  {

    v14 = sub_2232A2C98(v10, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v14);

      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_2232AA624();
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v18 = sub_2232AAAD4();
      __swift_project_value_buffer(v18, qword_28131DB88);
      v19 = v17;
      v20 = sub_2232AAAC4();
      v21 = sub_2232AAD84();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v48 = v23;
        *v22 = 136315138;
        v24 = sub_2232A9FB4();
        v26 = sub_2232603D0(v24, v25, &v48);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_22325E000, v20, v21, "Posted buffered RC with id:%s to message bus before posting ResultSelectedMessage", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223DD8AC0](v23, -1, -1);
        MEMORY[0x223DD8AC0](v22, -1, -1);
      }

      v27 = v2[12];
      if (!v27)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }
  }

  v27 = v2[12];
  if (v27)
  {
LABEL_23:
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v28 = v27;
    sub_2232AA624();
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v29 = sub_2232AAAD4();
    __swift_project_value_buffer(v29, qword_28131DB88);
    v30 = v28;
    v31 = sub_2232AAAC4();
    v32 = sub_2232AAD84();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v35 = sub_2232A9FB4();
      v37 = sub_2232603D0(v35, v36, &v48);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22325E000, v31, v32, "Posted buffered RC with id:%s to message bus before posting ResultSelectedMessage", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x223DD8AC0](v34, -1, -1);
      MEMORY[0x223DD8AC0](v33, -1, -1);
    }
  }

LABEL_28:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v38 = sub_2232AAAD4();
  __swift_project_value_buffer(v38, qword_28131DB88);
  v39 = a1;
  v40 = sub_2232AAAC4();
  v41 = sub_2232AAD84();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v42 = 136315138;
    v44 = sub_2232A9FB4();
    v46 = sub_2232603D0(v44, v45, &v48);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_22325E000, v40, v41, "Posting ResultSelectedMessage for rcId: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x223DD8AC0](v43, -1, -1);
    MEMORY[0x223DD8AC0](v42, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2232AA624();
  v2[11] = MEMORY[0x277D84F98];
}

uint64_t sub_2232831E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_223283234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D0, &qword_2232AC4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22328329C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2232832EC(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v141 = a3;
  v146 = a2;
  v147 = a1;
  v4 = sub_2232AA6B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v140 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v134 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v134 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v134 - v14;
  v16 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType;
  v17 = *MEMORY[0x277D5CF40];
  v143 = *(v5 + 104);
  v144 = v5 + 104;
  v143(v134 - v14, v17, v4);
  sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  v18 = v3;
  v145 = v16;
  sub_2232AACD4();
  sub_2232AACD4();
  if (aBlock == v153)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_2232AB094();
  }

  v142 = *(v5 + 8);
  v142(v15, v4);

  if ((v19 & 1) == 0)
  {
    v143(v13, *MEMORY[0x277D5CF20], v4);
    sub_2232AACD4();
    sub_2232AACD4();
    if (aBlock == v153)
    {
      v142(v13, v4);
    }

    else
    {
      v20 = sub_2232AB094();
      v142(v13, v4);

      if ((v20 & 1) == 0)
      {
        v47 = v146;
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v63 = sub_2232AAAD4();
        __swift_project_value_buffer(v63, qword_28131DB88);

        v64 = sub_2232AAAC4();
        v65 = sub_2232AAD94();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&aBlock = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_2232603D0(*(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId), *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8), &aBlock);
          _os_log_impl(&dword_22325E000, v64, v65, "#AsrOnServer Exiting as the requestType is unsupported. Request: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          MEMORY[0x223DD8AC0](v67, -1, -1);
          MEMORY[0x223DD8AC0](v66, -1, -1);
        }

        if (!v47)
        {
          return;
        }

LABEL_45:
        v47(0, 0);
        return;
      }
    }
  }

  v21 = [v147 refId];
  if (!v21)
  {
LABEL_24:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v43 = sub_2232AAAD4();
    __swift_project_value_buffer(v43, qword_28131DB88);
    v44 = sub_2232AAAC4();
    v45 = sub_2232AAD94();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v146;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22325E000, v44, v45, "#AsrOnServer Response requestId does not match current requestId", v48, 2u);
      MEMORY[0x223DD8AC0](v48, -1, -1);
    }

    if (!v47)
    {
      return;
    }

    goto LABEL_45;
  }

  v22 = v3;
  v23 = v21;
  v24 = sub_2232AAC04();
  v26 = v25;

  v27 = v24;
  v29 = *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v28 = *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
  if (v27 != v29 || v26 != v28)
  {
    v30 = sub_2232AB094();

    if (v30)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_13:
  v31 = [v147 processedAudioDuration];
  if (v31)
  {
    v32 = v31;
    [v31 doubleValue];

    if (*(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isMedocEnabled) == 1)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v33 = sub_2232AAAD4();
      v34 = __swift_project_value_buffer(v33, qword_28131DB88);

      v140 = v34;
      v35 = sub_2232AAAC4();
      v36 = sub_2232AAD84();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v137 = v28;
        v38 = v37;
        v39 = swift_slowAlloc();
        *&aBlock = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_2232603D0(v29, v137, &aBlock);
        _os_log_impl(&dword_22325E000, v35, v36, "#AsrOnServer Medoc enabled. Not posting AsrResultCandidateMessage for request: %s.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x223DD8AC0](v39, -1, -1);
        MEMORY[0x223DD8AC0](v38, -1, -1);
      }

      v40 = [v147 recognition];
      v41 = v40;
      if (v40)
      {
      }

      v143(v10, *MEMORY[0x277D5CF20], v4);
      sub_2232AACD4();
      sub_2232AACD4();
      if (aBlock == v153)
      {
        v142(v10, v4);

        v42 = v146;
        if (!v41)
        {
LABEL_49:
          v69 = sub_2232AAAC4();
          v70 = sub_2232AAD94();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_22325E000, v69, v70, "#AsrOnServer we are in StartUnderstandingOnServer path and received empty recognition, which shouldn't happen. Not posting ResultSelectedMessage.", v71, 2u);
            MEMORY[0x223DD8AC0](v71, -1, -1);
          }

          if (v42)
          {
            v42(0, 0);
          }

          return;
        }
      }

      else
      {
        v68 = sub_2232AB094();
        v142(v10, v4);

        v42 = v146;
        if (!v41 && (v68 & 1) != 0)
        {
          goto LABEL_49;
        }
      }

      v72 = *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
      if (([v72 respondsToSelector_] & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      swift_weakInit();
      v74 = swift_allocObject();
      v74[2] = v73;
      v74[3] = v42;
      v75 = v141;
      v74[4] = v141;
      v151 = sub_22328A434;
      v152 = v74;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v149 = sub_22328BC90;
      v150 = &block_descriptor_66;
      v76 = _Block_copy(&aBlock);

      sub_22328A370(v42, v75);

      [v72 selectResultWithResultCandidate:v147 completion:v76];
      _Block_release(v76);

LABEL_88:

      return;
    }

    v56 = [v147 recognition];
    v57 = v56;
    if (v56)
    {
    }

    v58 = v147;
    v139 = sub_2232AAE14();
    v59 = [v58 resultId];
    if (v59)
    {
      v60 = v59;
      v138 = sub_2232AAC04();
      v62 = v61;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v77 = sub_2232AAAD4();
      __swift_project_value_buffer(v77, qword_28131DB88);
      v78 = sub_2232AAAC4();
      v79 = sub_2232AAD94();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_22325E000, v78, v79, "#AsrOnServer resultCandidate does not contain resultId: using the default 0", v80, 2u);
        MEMORY[0x223DD8AC0](v80, -1, -1);
      }

      v62 = 0xE100000000000000;
      v138 = 48;
    }

    v81 = v140;
    v135 = *MEMORY[0x277D5CF20];
    (v143)(v140);
    v134[1] = sub_22328A3C0(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
    v82 = sub_2232AABE4();
    v83 = (v142)(v81, v4);
    if (v82)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v84 = sub_2232AAAD4();
      __swift_project_value_buffer(v84, qword_28131DB88);

      v85 = sub_2232AAAC4();
      v86 = sub_2232AAD84();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v136 = v57;
        v88 = v87;
        v89 = swift_slowAlloc();
        *&aBlock = v89;
        *v88 = 136315394;
        *(v88 + 4) = sub_2232603D0(v29, v28, &aBlock);
        *(v88 + 12) = 2080;
        v90 = v138;
        *(v88 + 14) = sub_2232603D0(v138, v62, &aBlock);
        _os_log_impl(&dword_22325E000, v85, v86, "#AsrOnServer Not posting AsrResultCandidateMessage as the requestType is uos. request: %s rcId: %s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v89, -1, -1);
        v91 = v88;
        v92 = v136;
        MEMORY[0x223DD8AC0](v91, -1, -1);

        v93 = v62;
        if (!v92)
        {
LABEL_65:
          v94 = v140;
          v143(v140, v135, v4);
          v95 = sub_2232AABE4();
          v142(v94, v4);
          if (v95)
          {

            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v96 = sub_2232AAAD4();
            __swift_project_value_buffer(v96, qword_28131DB88);
            v97 = sub_2232AAAC4();
            v98 = sub_2232AAD94();
            v99 = os_log_type_enabled(v97, v98);
            v100 = v146;
            if (v99)
            {
              v101 = swift_slowAlloc();
              *v101 = 0;
              _os_log_impl(&dword_22325E000, v97, v98, "#AsrOnServer we are in StartUnderstandingOnServer path. Not posting ResultSelectedMessage. We shouldn't receive empty recognition for StartUnderstaingOnServer.", v101, 2u);
              MEMORY[0x223DD8AC0](v101, -1, -1);
            }
          }

          else
          {
            v132 = swift_allocObject();
            swift_weakInit();
            v133 = swift_allocObject();
            *(v133 + 16) = v132;
            *(v133 + 24) = v90;
            *(v133 + 32) = v93;
            *(v133 + 40) = 0;

            sub_22328019C(0x7065636361204352, 0xED000065636E6174, sub_22328A424, v133);

            v100 = v146;
          }

          if (v100)
          {
            v100(0, 0);
          }

LABEL_93:

          return;
        }

LABEL_86:
        v126 = *(v22 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
        if (([v126 respondsToSelector_] & 1) == 0)
        {

          return;
        }

        v127 = swift_allocObject();
        swift_weakInit();
        v128 = swift_allocObject();
        v129 = v146;
        v128[2] = v127;
        v128[3] = v129;
        v130 = v141;
        v128[4] = v141;
        v128[5] = v90;
        v128[6] = v93;
        v151 = sub_22328A414;
        v152 = v128;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v149 = sub_22328BC90;
        v150 = &block_descriptor_55;
        v131 = _Block_copy(&aBlock);
        sub_22328A370(v129, v130);

        [v126 selectResultWithResultCandidate:v147 completion:v131];
        _Block_release(v131);

        goto LABEL_88;
      }

      v93 = v62;
    }

    else
    {
      v136 = v57;
      v137 = v28;
      MEMORY[0x28223BE20](v83);
      v103 = v138;
      v102 = v139;
      v134[-4] = v22;
      v134[-3] = v103;
      v134[-2] = v62;
      v134[-1] = v102;
      v104 = objc_allocWithZone(sub_2232A9B44());
      v105 = sub_2232A9AC4();
      if (!v105)
      {

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v119 = sub_2232AAAD4();
        __swift_project_value_buffer(v119, qword_28131DB88);

        v120 = sub_2232AAAC4();
        v121 = sub_2232AAD94();

        v122 = os_log_type_enabled(v120, v121);
        v123 = v146;
        if (v122)
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&aBlock = v125;
          *v124 = 136315138;
          *(v124 + 4) = sub_2232603D0(v29, v137, &aBlock);
          _os_log_impl(&dword_22325E000, v120, v121, "#AsrOnServer Failed to create AsrResultCandidateMessage for request: %s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v125);
          MEMORY[0x223DD8AC0](v125, -1, -1);
          MEMORY[0x223DD8AC0](v124, -1, -1);
        }

        if (v123)
        {
          v123(0, 0);
        }

        goto LABEL_93;
      }

      v106 = v105;
      sub_22328237C(v105);

      v107 = v137;
      sub_22327FDD4(v29, v137, v103, v62);
      v93 = v62;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v108 = sub_2232AAAD4();
      __swift_project_value_buffer(v108, qword_28131DB88);

      v109 = v106;
      v110 = sub_2232AAAC4();
      v111 = sub_2232AAD84();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = v109;
        v113 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        v134[0] = v93;
        v114 = aBlock;
        *v113 = 136315394;
        *(v113 + 4) = sub_2232603D0(v29, v107, &aBlock);
        *(v113 + 12) = 2080;
        v115 = sub_2232A9FB4();
        v117 = sub_2232603D0(v115, v116, &aBlock);

        *(v113 + 14) = v117;
        _os_log_impl(&dword_22325E000, v110, v111, "#AsrOnServer Invoked posting of AsrResultCandidateMessage for request: %s rcId: %s", v113, 0x16u);
        swift_arrayDestroy();
        v118 = v114;
        v93 = v134[0];
        MEMORY[0x223DD8AC0](v118, -1, -1);
        MEMORY[0x223DD8AC0](v113, -1, -1);
      }

      else
      {
      }

      v57 = v136;
    }

    v90 = v138;
    if (!v57)
    {
      goto LABEL_65;
    }

    goto LABEL_86;
  }

  v49 = v28;
  v50 = v146;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v51 = sub_2232AAAD4();
  __swift_project_value_buffer(v51, qword_28131DB88);

  v52 = sub_2232AAAC4();
  v53 = sub_2232AAD94();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&aBlock = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_2232603D0(v29, v49, &aBlock);
    _os_log_impl(&dword_22325E000, v52, v53, "#AsrOnServer Failed to parse processedAudioDuration for request: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x223DD8AC0](v55, -1, -1);
    MEMORY[0x223DD8AC0](v54, -1, -1);
  }

  if (v50)
  {
    v50(0, 0);
  }
}

void sub_223284798(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v7 + 104))(v9, *MEMORY[0x277D5CF20], v6);
    sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v49[0] == v48[1] && v49[1] == v48[2])
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v16 = sub_2232AB094();
      (*(v7 + 8))(v9, v6);

      if ((v16 & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    if (a1)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = a1;
        v20 = [v18 refId];
        if (v20)
        {
          v21 = v20;
          v22 = sub_2232AAC04();
          v24 = v23;

          if (v22 == *(v11 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v24 == *(v11 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
          {

LABEL_28:
            if (a4)
            {
              v30 = v19;
              a4(v18, 0);
            }

            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v31 = sub_2232AAAD4();
            __swift_project_value_buffer(v31, qword_28131DB88);
            v32 = sub_2232AAAC4();
            v33 = sub_2232AAD84();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 0;
              _os_log_impl(&dword_22325E000, v32, v33, "#AsrOnServer we are in StartUnderstandingOnServer path. Sent ResultSelected to the server.", v34, 2u);
              MEMORY[0x223DD8AC0](v34, -1, -1);
            }

LABEL_44:
            return;
          }

          v29 = sub_2232AB094();

          if (v29)
          {
            goto LABEL_28;
          }
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v35 = sub_2232AAAD4();
        __swift_project_value_buffer(v35, qword_28131DB88);
        v19 = v19;

        v36 = sub_2232AAAC4();
        v37 = sub_2232AAD94();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v49[0] = v39;
          *v38 = 136315394;
          v40 = [v18 refId];
          v48[0] = v19;

          if (!v40)
          {
            __break(1u);
            return;
          }

          v41 = sub_2232AAC04();
          v43 = v42;

          v44 = sub_2232603D0(v41, v43, v49);

          *(v38 + 4) = v44;
          *(v38 + 12) = 2080;
          v45 = *(v11 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
          v46 = *(v11 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

          v47 = sub_2232603D0(v45, v46, v49);

          *(v38 + 14) = v47;
          _os_log_impl(&dword_22325E000, v36, v37, "#AsrOnServer The refId of ResultSelected %s doesn't match current requestId: %s. Ignoring RC acceptance result.", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v39, -1, -1);
          MEMORY[0x223DD8AC0](v38, -1, -1);

          v19 = v48[0];
        }

        else
        {
        }

        if (a4)
        {
          a4(0, 0);
        }

        goto LABEL_44;
      }
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v25 = sub_2232AAAD4();
    __swift_project_value_buffer(v25, qword_28131DB88);
    v26 = sub_2232AAAC4();
    v27 = sub_2232AADA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v26, v27, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }

    if (!a4)
    {
LABEL_24:

      return;
    }

LABEL_23:
    a4(0, 0);
    goto LABEL_24;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD94();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22325E000, v13, v14, "#AsrOnServer self expired. Ignoring RC acceptance result.", v15, 2u);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  if (a4)
  {
    a4(0, 0);
  }
}

uint64_t sub_223284EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v27 - v14;
  v16 = *MEMORY[0x277D5CDD8];
  v17 = sub_2232AA644();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2232A9B04();

  sub_2232A9AE4();
  v19 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v20 = sub_2232A9504();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, a2 + v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_2232A9B34();

  sub_2232A9B24();

  sub_2232A9AD4();
  v22 = a5;
  sub_2232A9AF4();
  v23 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId;
  v24 = sub_2232AA794();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, a2 + v23, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  return sub_2232A9B14();
}

void sub_2232851F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_2232AA6B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1 && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
    {
      v19 = v18;
      v63[0] = a7;
      v63[1] = a5;
      v64 = a1;
      v20 = [v19 refId];
      if (!v20)
      {
        goto LABEL_10;
      }

      v21 = v20;
      v22 = sub_2232AAC04();
      v24 = v23;

      if (v22 == *(v17 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v24 == *(v17 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
      {
      }

      else
      {
        v26 = sub_2232AB094();

        if ((v26 & 1) == 0)
        {
LABEL_10:
          if (qword_28131D338 != -1)
          {
            swift_once();
          }

          v27 = sub_2232AAAD4();
          __swift_project_value_buffer(v27, qword_28131DB88);
          v28 = v64;

          v29 = sub_2232AAAC4();
          v30 = sub_2232AAD94();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v67[0] = v32;
            *v31 = 136315394;
            v33 = [v19 refId];

            if (!v33)
            {
              __break(1u);
              return;
            }

            v34 = sub_2232AAC04();
            v36 = v35;

            v37 = sub_2232603D0(v34, v36, v67);

            *(v31 + 4) = v37;
            *(v31 + 12) = 2080;
            v38 = *(v17 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
            v39 = *(v17 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

            v40 = sub_2232603D0(v38, v39, v67);

            *(v31 + 14) = v40;
            _os_log_impl(&dword_22325E000, v29, v30, "#AsrOnServer The refId of ResultSelected %s doesn't match the current requestId: %s. Ignoring RC acceptance result.", v31, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v32, -1, -1);
            MEMORY[0x223DD8AC0](v31, -1, -1);

            if (!a4)
            {
              goto LABEL_35;
            }
          }

          else
          {

            if (!a4)
            {
LABEL_35:

LABEL_44:

              return;
            }
          }

          a4(0, 0);
          goto LABEL_35;
        }
      }

      (*(v13 + 104))(v15, *MEMORY[0x277D5CF20], v12);
      sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v67[0] == v65 && v67[1] == v66)
      {
        (*(v13 + 8))(v15, v12);

LABEL_37:
        v28 = v64;
        if (a4)
        {
          v50 = v64;
          a4(v19, 0);
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v51 = sub_2232AAAD4();
        __swift_project_value_buffer(v51, qword_28131DB88);
        v52 = sub_2232AAAC4();
        v53 = sub_2232AAD84();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_22325E000, v52, v53, "#AsrOnServer we are in StartUnderstandingOnServer path. Sent ResultSelected to the server.", v54, 2u);
          MEMORY[0x223DD8AC0](v54, -1, -1);
        }

        goto LABEL_44;
      }

      v49 = sub_2232AB094();
      (*(v13 + 8))(v15, v12);

      if (v49)
      {
        goto LABEL_37;
      }

      v55 = [v19 isMitigated];
      sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
      v56 = sub_2232AAE74();
      v57 = v56;
      v58 = v64;
      if (v55)
      {
        v59 = sub_2232AAE84();

        v60 = v59 ^ 1;
      }

      else
      {

        v60 = 1;
      }

      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = a6;
      *(v62 + 32) = v63[0];
      *(v62 + 40) = v60 & 1;

      sub_22328019C(0x7065636361204352, 0xED000065636E6174, sub_22328A49C, v62);

      if (a4)
      {
        a4(0, 0);
      }
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v41 = sub_2232AAAD4();
      __swift_project_value_buffer(v41, qword_28131DB88);
      v42 = sub_2232AAAC4();
      v43 = sub_2232AADA4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22325E000, v42, v43, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v44, 2u);
        MEMORY[0x223DD8AC0](v44, -1, -1);
      }

      if (a4)
      {
        a4(0, 0);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v45 = sub_2232AAAD4();
    __swift_project_value_buffer(v45, qword_28131DB88);
    v46 = sub_2232AAAC4();
    v47 = sub_2232AAD94();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22325E000, v46, v47, "#AsrOnServer self expired. Ignoring RC acceptance result.", v48, 2u);
      MEMORY[0x223DD8AC0](v48, -1, -1);
    }

    if (a4)
    {
      a4(0, 0);
    }
  }
}

void sub_223285A6C(void *a1, unint64_t a2, NSObject *a3, void *a4)
{
  v5 = v4;
  v191 = sub_2232AA794();
  v10 = *(v191 - 8);
  v11 = MEMORY[0x28223BE20](v191);
  v187 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v164 - v13;
  if (qword_28131D338 != -1)
  {
LABEL_81:
    swift_once();
  }

  v14 = sub_2232AAAD4();
  v15 = __swift_project_value_buffer(v14, qword_28131DB88);
  v16 = a1;
  v17 = sub_2232AAAC4();
  v18 = sub_2232AAD84();

  v19 = os_log_type_enabled(v17, v18);
  v193 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v193;
    *v21 = v193;
    v22 = v193;
    _os_log_impl(&dword_22325E000, v17, v18, "#AsrOnServer Received %@", v20, 0xCu);
    sub_223283234(v21);
    MEMORY[0x223DD8AC0](v21, -1, -1);
    v23 = v20;
    v16 = v193;
    MEMORY[0x223DD8AC0](v23, -1, -1);
  }

  v24 = [v16 refId];
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v24;
  v26 = sub_2232AAC04();
  v28 = v27;

  v30 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v29 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
  if (v26 == v30 && v28 == v29)
  {

    goto LABEL_9;
  }

  v31 = sub_2232AB094();

  if ((v31 & 1) == 0)
  {
LABEL_37:
    v101 = sub_2232AAAC4();
    v102 = sub_2232AAD94();
    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_43;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "#AsrOnServer Response refId does not match current requestId";
LABEL_39:
    _os_log_impl(&dword_22325E000, v101, v102, v104, v103, 2u);
    v105 = v103;
LABEL_42:
    MEMORY[0x223DD8AC0](v105, -1, -1);
    goto LABEL_43;
  }

LABEL_9:
  v32 = v193;
  v33 = [v193 rcID];
  if (!v33)
  {
    v106 = v32;
    v101 = sub_2232AAAC4();
    v107 = sub_2232AAD94();

    if (!os_log_type_enabled(v101, v107))
    {
      goto LABEL_43;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v108 = 138412290;
    *(v108 + 4) = v106;
    *v109 = v106;
    v110 = v106;
    _os_log_impl(&dword_22325E000, v101, v107, "#AsrOnServer No rcId found in %@", v108, 0xCu);
    sub_223283234(v109);
    MEMORY[0x223DD8AC0](v109, -1, -1);
    v105 = v108;
    goto LABEL_42;
  }

  v168 = v29;
  v34 = v33;
  v181 = sub_2232AAC04();
  v36 = v35;

  v37 = [v32 resultCandidates];
  if (!v37)
  {

    v101 = sub_2232AAAC4();
    v102 = sub_2232AAD94();
    if (!os_log_type_enabled(v101, v102))
    {
LABEL_43:

      if (a3)
      {
        (a3)(0, 0);
      }

      return;
    }

    v103 = swift_slowAlloc();
    *v103 = 0;
    v104 = "#AsrOnServer No result candidates found";
    goto LABEL_39;
  }

  v38 = v37;
  v166 = v30;
  v179 = v5;
  sub_2232606A4(0, &unk_27D0814B0, 0x277D47730);
  v39 = sub_2232AAB94();

  v183 = v15;
  v40 = sub_2232AAAC4();
  v41 = sub_2232AAD84();

  v42 = os_log_type_enabled(v40, v41);
  v169 = a3;
  v182 = v36;
  v167 = a4;
  v171 = a2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    a3 = swift_slowAlloc();
    v197 = a3;
    *v43 = 136315138;

    v44 = sub_2232AABB4();
    v46 = v45;

    v47 = sub_2232603D0(v44, v46, &v197);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_22325E000, v40, v41, "#AsrOnServer muxResultCandidate received with recognitions for the following userIds: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    MEMORY[0x223DD8AC0](a3, -1, -1);
    MEMORY[0x223DD8AC0](v43, -1, -1);
  }

  v48 = v189;
  v5 = sub_22329DF40(MEMORY[0x277D84F90]);
  v198 = v5;
  v170 = sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v188 = sub_2232AAE74();
  a1 = (v39 + 64);
  v49 = 1 << *(v39 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  a2 = v50 & *(v39 + 64);
  v180 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext;
  v51 = (v49 + 63) >> 6;
  v177 = (v10 + 16);
  v176 = (v10 + 32);
  v173 = (v10 + 8);

  v52 = 0;
  *&v53 = 136315138;
  v172 = v53;
  a4 = v179;
  v175 = (v39 + 64);
  v174 = v51;
  v178 = v39;
  if (a2)
  {
    while (1)
    {
      v54 = v52;
LABEL_20:
      v55 = __clz(__rbit64(a2)) | (v54 << 6);
      v56 = *(*(v39 + 48) + 16 * v55 + 8);
      v57 = *(*(v39 + 56) + 8 * v55);

      v58 = v57;
      v59 = [v58 resultId];
      if (!v59)
      {
        break;
      }

      v60 = v59;
      v192 = sub_2232AAC04();
      v190 = v61;

      v62 = [v58 processedAudioDuration];
      if (!v62)
      {
        v62 = sub_2232AAE74();
      }

      v185 = v56;
      sub_2232AAC24();
      v63 = v62;
      sub_2232AA774();
      v64 = a4;
      v186 = *(a4 + v180);
      v65 = [v193 refId];
      if (!v65)
      {
        goto LABEL_83;
      }

      v66 = v65;
      v67 = [v63 unsignedIntValue];

      v68 = v187;
      v69 = v48;
      v70 = v191;
      (*v177)(v187, v69, v191);
      type metadata accessor for ASRMUXResultCandidateContext(0);
      v71 = swift_allocObject();
      *&v71[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_resultCandidate] = v58;
      v184 = v58;
      [v184 setRefId:v66];

      v72 = v190;
      *(v71 + 2) = v192;
      *(v71 + 3) = v72;
      v73 = v182;
      *(v71 + 4) = v181;
      *(v71 + 5) = v73;
      (*v176)(&v71[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_userId], v68, v70);
      *&v71[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_processedAudioDuration] = v67;

      v74 = sub_2232AAAC4();
      v75 = sub_2232AAD84();

      v76 = os_log_type_enabled(v74, v75);
      v188 = v63;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v196 = v78;
        *v77 = v172;

        v79 = sub_223289FBC();
        v81 = v80;

        v82 = sub_2232603D0(v79, v81, &v196);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_22325E000, v74, v75, "#AsrOnServer Caching ASRMUXResultCandidateContext: %s in the ASRBridge.", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        a4 = v179;
        MEMORY[0x223DD8AC0](v78, -1, -1);
        MEMORY[0x223DD8AC0](v77, -1, -1);
      }

      else
      {

        a4 = v64;
      }

      v10 = v185;
      v83 = v186;
      swift_beginAccess();
      v48 = v189;
      v84 = v190;
      a3 = v184;
      if (*(*(v83 + 24) + 16))
      {

        sub_2232A2C98(v192, v84);
        if (v85)
        {
          swift_retain_n();

          v86 = sub_2232AAAC4();
          v87 = sub_2232AAD94();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v196 = v165;
            *v88 = v172;

            v89 = sub_223289FBC();
            v91 = v90;

            v92 = sub_2232603D0(v89, v91, &v196);
            v84 = v190;

            *(v88 + 4) = v92;
            _os_log_impl(&dword_22325E000, v86, v87, "#AsrOnServer ASRMUXRequestContext already contains a cache entry: %s. This will be overwritten and may lead to inconsistent results.", v88, 0xCu);
            v93 = v165;
            __swift_destroy_boxed_opaque_existential_1Tm(v165);
            MEMORY[0x223DD8AC0](v93, -1, -1);
            v94 = v88;
            v10 = v185;
            MEMORY[0x223DD8AC0](v94, -1, -1);
          }

          else
          {
          }

          a4 = v179;
          v48 = v189;
          v83 = v186;
        }

        else
        {
        }
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = *(v83 + 24);
      *(v83 + 24) = 0x8000000000000000;
      sub_2232A4668(v71, v192, v84, isUniquelyReferenced_nonNull_native);

      *(v83 + 24) = v194;
      swift_endAccess();

      v96 = [a3 processedAudioDuration];
      if (!v96)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        return;
      }

      v97 = v96;
      a2 &= a2 - 1;

      sub_2232AAD54();

      v98 = sub_2232AAE14();
      v99 = v198;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v196 = v99;
      sub_2232A4950(v98, v48, v100);

      v5 = v196;
      v198 = v196;
      (*v173)(v48, v191);
      v52 = v54;
      v39 = v178;
      a1 = v175;
      v51 = v174;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    v152 = v193;
    v153 = sub_2232AAAC4();
    v154 = sub_2232AAD94();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v155 = 138412290;
      *(v155 + 4) = v152;
      *v156 = v152;
      v157 = v152;
      _os_log_impl(&dword_22325E000, v153, v154, "#AsrOnServer Malformed or missing resultId in %@", v155, 0xCu);
      sub_223283234(v156);
      MEMORY[0x223DD8AC0](v156, -1, -1);
      MEMORY[0x223DD8AC0](v155, -1, -1);
    }

    if (v169)
    {
      (v169)(0, 0);
      v158 = v188;
    }

    else
    {
      v158 = v58;
      v58 = v188;
    }
  }

  else
  {
    while (1)
    {
LABEL_17:
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v54 >= v51)
      {
        break;
      }

      a2 = *(a1 + v54);
      ++v52;
      if (a2)
      {
        goto LABEL_20;
      }
    }

    if (v171)
    {
      v112 = 0xD000000000000017;
      v113 = v169;
      if (*(a4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled))
      {
        v114 = 0x80000002232ADE00;
        MEMORY[0x28223BE20](v111);
        *(&v164 - 4) = a4;
        v115 = a4;
        v116 = v181;
        v117 = v182;
        *(&v164 - 3) = v181;
        *(&v164 - 2) = v117;
        *(&v164 - 1) = &v198;
        objc_allocWithZone(sub_2232A98A4());
        v118 = v171;
        v119 = v171;
        v120 = sub_2232A9834();
        v121 = v117;
        if (!v120)
        {
LABEL_73:

          v159 = sub_2232AAAC4();
          v160 = sub_2232AAD94();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v196 = v162;
            *v161 = 136315394;
            v163 = sub_2232603D0(v112, v114, &v196);

            *(v161 + 4) = v163;
            *(v161 + 12) = 2080;
            *(v161 + 14) = sub_2232603D0(v166, v168, &v196);
            _os_log_impl(&dword_22325E000, v159, v160, "#AsrOnServer Failed to create %s for request: %s", v161, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v162, -1, -1);
            MEMORY[0x223DD8AC0](v161, -1, -1);
          }

          else
          {
          }

LABEL_77:

          return;
        }
      }

      else
      {
        v114 = 0x80000002232ADDE0;
        MEMORY[0x28223BE20](v111);
        v115 = a4;
        v127 = v181;
        *(&v164 - 6) = a4;
        *(&v164 - 5) = v127;
        *(&v164 - 4) = v182;
        *(&v164 - 3) = &v198;
        v118 = v171;
        *(&v164 - 2) = v171;
        objc_allocWithZone(sub_2232A9F84());
        v128 = v118;
        v120 = sub_2232A9F04();
        v112 = 0xD00000000000001CLL;
        if (!v120)
        {
          goto LABEL_73;
        }

        v121 = v182;
        v116 = v181;
      }

      v193 = v112;
      v129 = v120;
      v130 = v166;
      v131 = v168;
      sub_22327FE04(v166, v168, v116, v121);
      v132 = v129;

      v133 = sub_2232AAAC4();
      v134 = sub_2232AAD84();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v196 = v136;
        *v135 = 136315650;
        v137 = sub_2232603D0(v193, v114, &v196);

        *(v135 + 4) = v137;
        *(v135 + 12) = 2080;
        *(v135 + 14) = sub_2232603D0(v130, v131, &v196);
        *(v135 + 22) = 2080;
        v138 = sub_2232A9FB4();
        v140 = sub_2232603D0(v138, v139, &v196);

        *(v135 + 24) = v140;
        _os_log_impl(&dword_22325E000, v133, v134, "#AsrOnServer Posting result candidate event %s for request: %s rcId: %s", v135, 0x20u);
        swift_arrayDestroy();
        v141 = v136;
        v113 = v169;
        MEMORY[0x223DD8AC0](v141, -1, -1);
        MEMORY[0x223DD8AC0](v135, -1, -1);
      }

      else
      {
      }

      sub_22328237C(v132);
      v144 = *(v115 + v180);
      v145 = v182;
      v146 = v171;
      if (v143)
      {
        v147 = v142;
        v148 = v143;

        *(v144 + 40) = 1;
        swift_beginAccess();
        *(v144 + 32) = MEMORY[0x277D84F98];

        v145 = v148;
      }

      else
      {
        v147 = v181;
      }

      swift_beginAccess();
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v195 = *(v144 + 32);
      *(v144 + 32) = 0x8000000000000000;
      sub_2232A47E4(0, v147, v145, v149);
      *(v144 + 32) = v195;
      swift_endAccess();

      if (v113)
      {
        (v113)(0, 0);
        v150 = v132;
        v151 = v188;
      }

      else
      {
        v150 = v188;
        v151 = v132;
      }

      goto LABEL_77;
    }

    v122 = sub_2232AAAC4();
    v123 = sub_2232AAD94();
    v124 = os_log_type_enabled(v122, v123);
    v125 = v169;
    if (v124)
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_22325E000, v122, v123, "#AsrOnServer no voiceIdScoreCard exists.  This would be caused by a missing or invalid HomeMemberInfo", v126, 2u);
      MEMORY[0x223DD8AC0](v126, -1, -1);
    }

    if (v125)
    {
      (v125)(0, 0);
    }
  }
}

uint64_t sub_223286EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x277D5CDD8];
  v13 = sub_2232AA644();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_2232A9874();

  sub_2232A9854();
  v15 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v16 = sub_2232A9504();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a2 + v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_2232A9894();

  sub_2232A9884();

  sub_2232A9864();

  return sub_2232A9844();
}

uint64_t sub_223287144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v22[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v14 = *MEMORY[0x277D5CDD8];
  v15 = sub_2232AA644();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_2232A9F54();

  sub_2232A9F24();
  v17 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v18 = sub_2232A9504();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a2 + v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_2232A9F74();

  sub_2232A9F64();

  sub_2232A9F14();

  sub_2232A9F44();
  v20 = a6;
  return sub_2232A9F34();
}

void sub_2232873BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v71 = v3;
    v16 = a2;
    v17 = v15;
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v18 = v11;
    _os_log_impl(&dword_22325E000, v12, v13, "#AsrOnServer Received %@", v14, 0xCu);
    sub_223283234(v17);
    v19 = v17;
    a2 = v16;
    v3 = v71;
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v14, -1, -1);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D5CF40], v6);
  sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_2232AACD4();
  sub_2232AACD4();
  if (aBlock == v78 && v73 == v79)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v20 = sub_2232AB094();
    (*(v7 + 8))(v9, v6);

    if ((v20 & 1) == 0)
    {

      v52 = sub_2232AAAC4();
      v53 = sub_2232AAD94();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_2232603D0(*&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId], *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v52, v53, "#AsrOnServer Exiting as the requestType is unsupported. Request: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x223DD8AC0](v55, -1, -1);
        MEMORY[0x223DD8AC0](v54, -1, -1);
      }

      return;
    }
  }

  v21 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext];
  v22 = sub_2232A9FB4();
  v24 = v23;
  swift_beginAccess();
  v25 = *(v21 + 24);
  if (*(v25 + 16) && (, v26 = sub_2232A2C98(v22, v24), v28 = v27, , (v28 & 1) != 0))
  {
    v29 = *(*(v25 + 56) + 8 * v26);

    if (a2)
    {
      v30 = v29[4];
      v31 = v29[5];
      v71 = a2;

      sub_223289CF8(v30, v31, 1, 0);

      v32 = sub_2232AAAC4();
      v33 = sub_2232AAD84();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136315394;
        v37 = v29[2];
        v36 = v29[3];

        v38 = sub_2232603D0(v37, v36, &aBlock);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = v29[4];
        v40 = v29[5];

        v41 = sub_2232603D0(v39, v40, &aBlock);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_22325E000, v32, v33, "#AsrOnServer Invoking RC acceptance for rcID: %s and asrRCId: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v35, -1, -1);
        MEMORY[0x223DD8AC0](v34, -1, -1);
      }

      v42 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper];
      if ([v42 respondsToSelector_])
      {
        v70 = *(v29 + OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_resultCandidate);
        v43 = swift_allocObject();
        swift_weakInit();
        v44 = swift_allocObject();
        v44[2] = v43;
        v44[3] = v29;
        v45 = v71;
        v44[4] = v71;
        v44[5] = v11;
        v76 = sub_22328A380;
        v77 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v73 = 1107296256;
        v74 = sub_22328BC90;
        v75 = &block_descriptor_48;
        v46 = _Block_copy(&aBlock);
        v47 = v11;

        v48 = v45;
        v49 = v70;

        [v42 selectResultWithResultCandidate:v49 completion:v46];
        _Block_release(v46);
      }

      if (v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived] == 1 && (v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech] & 1) == 0)
      {
        v50 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage];
        if (!v50)
        {
          v66 = sub_2232AAAC4();
          v67 = sub_2232AAD94();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_22325E000, v66, v67, "Cannot find cached SASSpeechServerEndpointIdentified message. Request will fail.", v68, 2u);
            MEMORY[0x223DD8AC0](v68, -1, -1);
          }

          goto LABEL_21;
        }

        v51 = v50;
        sub_2232893DC(v51, 0, 0);
      }

LABEL_21:

      return;
    }

    v57 = sub_2232AAAC4();
    v64 = sub_2232AAD94();
    if (os_log_type_enabled(v57, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22325E000, v57, v64, "#AsrOnServer no voiceIdScoreCard exists.  This could be caused by a missing or invalid HomeMemberInfo", v65, 2u);
      MEMORY[0x223DD8AC0](v65, -1, -1);
    }
  }

  else
  {

    v56 = v11;
    v57 = sub_2232AAAC4();
    v58 = sub_2232AAD94();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v59 = 136315138;
      v61 = sub_2232A9FB4();
      v63 = sub_2232603D0(v61, v62, &aBlock);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_22325E000, v57, v58, "#AsrOnServer ASRMUXResultCandidateContext not found for rcID=%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x223DD8AC0](v60, -1, -1);
      MEMORY[0x223DD8AC0](v59, -1, -1);
    }
  }
}

void sub_223287CE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
    {
      v9 = v8;
      v10 = a1;
      v11 = [v9 refId];
      if (!v11)
      {
LABEL_10:
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v19 = sub_2232AAAD4();
        __swift_project_value_buffer(v19, qword_28131DB88);
        v20 = v10;

        v21 = sub_2232AAAC4();
        v22 = sub_2232AAD94();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v75 = v24;
          *v23 = 136315394;
          v25 = [v9 refId];

          if (v25)
          {
            v26 = sub_2232AAC04();
            v28 = v27;

            v29 = sub_2232603D0(v26, v28, &v75);

            *(v23 + 4) = v29;
            *(v23 + 12) = 2080;
            v30 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
            v31 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

            v32 = sub_2232603D0(v30, v31, &v75);

            *(v23 + 14) = v32;
            _os_log_impl(&dword_22325E000, v21, v22, "#AsrOnServer The refId of ResultSelected %s doesn't match the current requestId: %s. Ignoring RC acceptance result.", v23, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v24, -1, -1);
            MEMORY[0x223DD8AC0](v23, -1, -1);
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }

        return;
      }

      v12 = v11;
      v13 = sub_2232AAC04();
      v15 = v14;

      v74 = (v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
      if (v13 == *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v15 == *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
      {
      }

      else
      {
        v17 = sub_2232AB094();

        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v73 = v10;
      v41 = 0xD000000000000018;
      if (*(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled) == 1)
      {
        v42 = 0x80000002232AD740;
        MEMORY[0x28223BE20](v18);
        v43 = objc_allocWithZone(sub_2232AA274());
        v44 = sub_2232A9754();
        v41 = 0xD000000000000023;
        if (v44)
        {
          v45 = v44;
LABEL_31:
          v47 = qword_28131D338;
          v48 = v45;
          if (v47 != -1)
          {
            swift_once();
          }

          v49 = sub_2232AAAD4();
          __swift_project_value_buffer(v49, qword_28131DB88);
          v50 = v48;

          v51 = sub_2232AAAC4();
          v52 = sub_2232AAD84();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v56 = v41;
            v57 = v55;
            v75 = v55;
            *v53 = 136315394;
            v58 = sub_2232603D0(v56, v42, &v75);

            *(v53 + 4) = v58;
            *(v53 + 12) = 2112;
            *(v53 + 14) = v50;
            *v54 = v45;
            v59 = v50;
            _os_log_impl(&dword_22325E000, v51, v52, "#AsrOnServer Posting result acceptance event %s %@.", v53, 0x16u);
            sub_223283234(v54);
            MEMORY[0x223DD8AC0](v54, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v57);
            MEMORY[0x223DD8AC0](v57, -1, -1);
            MEMORY[0x223DD8AC0](v53, -1, -1);
          }

          else
          {
          }

          sub_223282C18(v50);

          v69 = *v74;
          v70 = v74[1];
          v71 = sub_2232A9FB4();
          sub_22327FE1C(v69, v70, v71, v72);

          return;
        }
      }

      else
      {
        v42 = 0x80000002232AD720;
        MEMORY[0x28223BE20](v18);
        v46 = objc_allocWithZone(sub_2232A9A34());
        v45 = sub_2232A99B4();
        if (v45)
        {
          goto LABEL_31;
        }
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v60 = sub_2232AAAD4();
      __swift_project_value_buffer(v60, qword_28131DB88);

      v61 = sub_2232AAAC4();
      v62 = sub_2232AAD94();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v75 = v64;
        *v63 = 136315394;
        v65 = sub_2232603D0(v41, v42, &v75);

        *(v63 + 4) = v65;
        *(v63 + 12) = 2080;
        v66 = *v74;
        v67 = v74[1];

        v68 = sub_2232603D0(v66, v67, &v75);

        *(v63 + 14) = v68;
        _os_log_impl(&dword_22325E000, v61, v62, "Failed to create %s for request: %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v64, -1, -1);
        MEMORY[0x223DD8AC0](v63, -1, -1);
      }

      else
      {
      }
    }

    else
    {
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
        *v36 = 0;
        _os_log_impl(&dword_22325E000, v34, v35, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v36, 2u);
        MEMORY[0x223DD8AC0](v36, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v37 = sub_2232AAAD4();
    __swift_project_value_buffer(v37, qword_28131DB88);
    v38 = sub_2232AAAC4();
    v39 = sub_2232AAD94();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22325E000, v38, v39, "#AsrOnServer self expired. Ignoring RC acceptance result.", v40, 2u);
      MEMORY[0x223DD8AC0](v40, -1, -1);
    }
  }
}

uint64_t sub_2232885F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = *MEMORY[0x277D5CDD8];
  v13 = sub_2232AA644();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_2232A97A4();

  sub_2232A9774();
  v15 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v16 = sub_2232A9504();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a2 + v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_2232A97C4();

  sub_2232A97B4();

  sub_2232A9794();
  v18 = [a4 isMitigated];
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v19 = sub_2232AAE74();
  v20 = v19;
  if (v18)
  {
    sub_2232AAE84();
  }

  else
  {
  }

  return sub_2232A9784();
}

uint64_t sub_2232888D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = *MEMORY[0x277D5CDD8];
  v15 = sub_2232AA644();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_2232A9A04();

  sub_2232A99C4();
  v17 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v18 = sub_2232A9504();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a2 + v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_2232A9A24();

  sub_2232A9A14();

  sub_2232A99F4();
  v20 = [a4 isMitigated];
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v21 = sub_2232AAE74();
  v22 = v21;
  if (v20)
  {
    sub_2232AAE84();
  }

  else
  {
  }

  sub_2232A99D4();
  v23 = a5;
  return sub_2232A99E4();
}

void sub_223288BCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      MEMORY[0x28223BE20](Strong);
      v9 = objc_allocWithZone(sub_2232A9764());
      v10 = sub_2232A9754();
      if (v10)
      {
        v11 = v10;

        sub_223282C18(v11);

        v12 = (v8 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
        v13 = *(v8 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
        v14 = *(v8 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

        sub_22327FDEC(v13, v14, a3, a4);

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v15 = sub_2232AAAD4();
        __swift_project_value_buffer(v15, qword_28131DB88);

        v16 = v11;
        v17 = sub_2232AAAC4();
        v18 = sub_2232AAD84();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v41 = v21;
          *v19 = 136315394;
          v22 = *v12;
          v23 = v12[1];

          v24 = sub_2232603D0(v22, v23, &v41);

          *(v19 + 4) = v24;
          *(v19 + 12) = 2112;
          *(v19 + 14) = v16;
          *v20 = v11;
          v25 = v16;
          _os_log_impl(&dword_22325E000, v17, v18, "#AsrOnServer Invoked posting of ResultSelectedMessage for request: %s resultSelectedMsg: %@", v19, 0x16u);
          sub_223283234(v20);
          MEMORY[0x223DD8AC0](v20, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
          MEMORY[0x223DD8AC0](v21, -1, -1);
          MEMORY[0x223DD8AC0](v19, -1, -1);

LABEL_26:
          return;
        }
      }

      else
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v33 = sub_2232AAAD4();
        __swift_project_value_buffer(v33, qword_28131DB88);

        v17 = sub_2232AAAC4();
        v34 = sub_2232AAD94();

        if (os_log_type_enabled(v17, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41 = v36;
          *v35 = 136315138;
          v37 = *(v8 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
          v38 = *(v8 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

          v39 = sub_2232603D0(v37, v38, &v41);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_22325E000, v17, v34, "#AsrOnServer Failed to create ResultSelectedMessage for request: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x223DD8AC0](v36, -1, -1);
          MEMORY[0x223DD8AC0](v35, -1, -1);
        }
      }

      goto LABEL_26;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v29 = sub_2232AAAD4();
    __swift_project_value_buffer(v29, qword_28131DB88);
    v30 = sub_2232AAAC4();
    v31 = sub_2232AAD84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22325E000, v30, v31, "#AsrOnServer Not posting ResultSelectedMessage because self is out of scope after waiting for Myriad decision", v32, 2u);
      MEMORY[0x223DD8AC0](v32, -1, -1);
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    __swift_project_value_buffer(v26, qword_28131DB88);
    v40 = sub_2232AAAC4();
    v27 = sub_2232AAD84();
    if (os_log_type_enabled(v40, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v40, v27, "#AsrOnServer Not posting ResultSelectedMessage due to Myriad loss", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }
  }
}

uint64_t sub_223289180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x277D5CDD8];
  v13 = sub_2232AA644();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_2232A97A4();

  sub_2232A9774();
  v15 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v16 = sub_2232A9504();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a2 + v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_2232A97C4();

  sub_2232A97B4();

  sub_2232A9794();
  return sub_2232A9784();
}

void sub_2232893DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived) = 1;
  if (sub_223289E2C() && (v8 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech, (*(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech) & 1) == 0))
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v14 = sub_2232AAAD4();
    __swift_project_value_buffer(v14, qword_28131DB88);

    v15 = sub_2232AAAC4();
    v16 = sub_2232AAD84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2232603D0(*(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId), *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8), aBlock);
      _os_log_impl(&dword_22325E000, v15, v16, "#AsrOnServer Posting SASSpeechServerEndpointIdentified for requestId: %s)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DD8AC0](v18, -1, -1);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }

    v19 = *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
    if ([v19 respondsToSelector_])
    {
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a2;
      v21[4] = a3;
      v21[5] = a1;
      aBlock[4] = sub_22328A348;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_2;
      v22 = _Block_copy(aBlock);

      sub_22328A370(a2, a3);
      v23 = a1;

      [v19 handleSpeechServerEndpointIdentified:v23 completion:v22];
      _Block_release(v22);
    }

    *(v4 + v8) = 1;
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v9 = sub_2232AAAD4();
    __swift_project_value_buffer(v9, qword_28131DB88);
    v10 = sub_2232AAAC4();
    v11 = sub_2232AAD84();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22325E000, v10, v11, "Pre NL user selection has not run for all RCs. Caching SASSpeechServerEndpointIdentified.", v12, 2u);
      MEMORY[0x223DD8AC0](v12, -1, -1);
    }

    v24 = *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage);
    *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage) = a1;
    v13 = a1;
  }
}

void sub_2232897BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6, const char *a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (!a4)
    {
      return;
    }

    v12 = a1;
    v13 = a2;
    goto LABEL_12;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = a6;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD94();
  if (!os_log_type_enabled(v16, v17))
  {

    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v25 = v19;
  *v18 = 136315138;
  v20 = [v15 refId];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = sub_2232AAC04();
  v23 = v22;

  v24 = sub_2232603D0(v21, v23, &v25);

  *(v18 + 4) = v24;
  _os_log_impl(&dword_22325E000, v16, v17, a7, v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  MEMORY[0x223DD8AC0](v19, -1, -1);
  MEMORY[0x223DD8AC0](v18, -1, -1);

  if (a4)
  {
LABEL_11:
    v12 = 0;
    v13 = 0;
LABEL_12:
    a4(v12, v13);
  }
}

uint64_t sub_2232899C4()
{
  v1 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType;
  v2 = sub_2232AA6B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v4 = sub_2232A9504();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId;
  v6 = sub_2232AA794();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_myriadMonitor));

  return v0;
}

uint64_t sub_223289B2C()
{
  sub_2232899C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_223289BAC(uint64_t a1)
{
  result = sub_2232AA6B4();
  if (v2 <= 0x3F)
  {
    result = sub_2232A9504();
    if (v3 <= 0x3F)
    {
      result = sub_2232AA794();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_223289CF8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    *(v5 + 40) = 1;
    swift_beginAccess();
    *(v5 + 32) = MEMORY[0x277D84F98];
  }

  if (a3)
  {
    swift_beginAccess();
    v9 = sub_2232A2C98(a1, a2);
    if (v10)
    {
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v5 + 32);
      *(v5 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2232A52A8();
      }

      sub_2232A3FD8(v11, v13);
      *(v5 + 32) = v13;
    }
  }

  else
  {
    swift_beginAccess();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 32);
    *(v5 + 32) = 0x8000000000000000;
    sub_2232A47E4(0, a1, a2, v14);
    *(v5 + 32) = v16;
  }

  return swift_endAccess();
}

BOOL sub_223289E2C()
{
  if (*(v0 + 40) == 1)
  {

    v1 = sub_2232829E0();

    if (v1)
    {
      result = 0;
      *(v0 + 40) = 0;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v3 = sub_2232AAAD4();
      __swift_project_value_buffer(v3, qword_28131DB88);
      v4 = sub_2232AAAC4();
      v5 = sub_2232AAD94();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22325E000, v4, v5, "Could not post buffer RC message. The request will timeout", v6, 2u);
        MEMORY[0x223DD8AC0](v6, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    return *(*(v0 + 32) + 16) == 0;
  }

  return result;
}

uint64_t sub_223289F74()
{

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_223289FBC()
{
  v1 = v0;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000012, 0x80000002232ADD80);
  MEMORY[0x223DD7FE0](v1[2], v1[3]);
  MEMORY[0x223DD7FE0](0xD000000000000017, 0x80000002232ADDA0);
  MEMORY[0x223DD7FE0](v1[4], v1[5]);
  MEMORY[0x223DD7FE0](0x644972657375202CLL, 0xE90000000000003ALL);
  sub_2232AA794();
  sub_22328A3C0(&qword_28131DAA0, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
  v2 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v2);

  MEMORY[0x223DD7FE0](0xD000000000000019, 0x80000002232ADDC0);
  v5 = *(v0 + OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_processedAudioDuration);
  v3 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v3);

  return HIDWORD(v5);
}

uint64_t sub_22328A150()
{

  v1 = OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_userId;
  v2 = sub_2232AA794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22328A234(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22328A26C(uint64_t a1)
{
  result = sub_2232AA794();
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

uint64_t sub_22328A370(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22328A3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

void sub_22328A4AC(int a1)
{
  v3 = sub_2232A9504();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_28131D900);
  v8 = sub_2232AA904();
  v10 = v9;
  v88 = v1;
  sub_2232AA954();
  v93 = v6;
  v94 = v8;
  v95 = v10;
  v96 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081710, "(6");
  sub_2232AADD4();

  v11 = aBlock;
  LOBYTE(v8) = BYTE8(aBlock);
  v12 = *(v4 + 8);
  v12(v6, v3);
  if (v8)
  {
    if (qword_28131D338 != -1)
    {
LABEL_49:
      swift_once();
    }

    v13 = sub_2232AAAD4();
    __swift_project_value_buffer(v13, qword_28131DB88);
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD94();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_6;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "nil hostTime from AsrCandidateRequestCache";
    goto LABEL_5;
  }

  v92 = v12;
  v91 = v3;
  v86 = a1;
  v85 = v11;
  if (a1)
  {
    v84 = sub_2232AAC04();
    v87 = v18;
    v80 = 0;
    v81 = 0;
    v83 = 5;
  }

  else
  {
    v84 = sub_2232AAC04();
    v87 = v19;
    sub_2232AA904();
    v20 = sub_2232AA954();
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081718, "(6");
    sub_2232AADD4();

    v21 = aBlock;
    v22 = BYTE8(aBlock);
    v23 = v91;
    v92(v6, v91);
    if (v22)
    {

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v24 = sub_2232AAAD4();
      __swift_project_value_buffer(v24, qword_28131DB88);
      v14 = sub_2232AAAC4();
      v15 = sub_2232AAD94();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_6;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "nil audioRecordType from AsrCandidateRequestCache";
LABEL_5:
      _os_log_impl(&dword_22325E000, v14, v15, v17, v16, 2u);
      MEMORY[0x223DD8AC0](v16, -1, -1);
LABEL_6:

      return;
    }

    v83 = v21;
    sub_2232AA904();
    v25 = sub_2232AA954();
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
    sub_2232AADD4();

    v26 = aBlock;
    v92(v6, v23);
    v80 = v26;
    if (*(&v26 + 1))
    {
      v81 = *(&v26 + 1);
    }

    else
    {
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
        *v30 = 0;
        _os_log_impl(&dword_22325E000, v28, v29, "nil audioRecordDeviceId from the AsrCandidateRequestCache", v30, 2u);
        MEMORY[0x223DD8AC0](v30, -1, -1);
      }

      v81 = 0;
    }
  }

  v31 = v88;
  v32 = sub_2232AA904();
  v33 = sub_2232AA954();
  MEMORY[0x28223BE20](v33);
  v78 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081728, " 6");
  sub_2232AADD4();

  v34 = aBlock;
  v92(v6, v91);
  v82 = v34;
  if (v34)
  {
    goto LABEL_26;
  }

  if (qword_28131D338 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v35 = sub_2232AAAD4();
    __swift_project_value_buffer(v35, qword_28131DB88);
    v36 = sub_2232AAAC4();
    v37 = sub_2232AAD94();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22325E000, v36, v37, "nil location from the AsrCandidateRequestCache", v38, 2u);
      MEMORY[0x223DD8AC0](v38, -1, -1);
    }

    v31 = v88;
LABEL_26:
    sub_2232632C4(&v99);
    v39 = *(v31 + qword_28131D8F0);
    if (v39 >> 62)
    {
      v72 = *(v31 + qword_28131D8F0);
      v73 = sub_2232AAFE4();
      v39 = v72;
      v40 = v73;
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v40)
    {
LABEL_39:
      sub_2232AA944();
      v54 = sub_2232AA924();
      v55 = sub_2232AA944();
      v57 = sub_22326A9D4(v54, v55, v56);
      swift_unknownObjectRelease();

      v58 = v99;
      v59 = v101;
      LODWORD(v91) = sub_22326B608(v99);
      v60 = sub_2232AABF4();

      v61 = sub_2232AABF4();

      v92 = v59;
      v62 = sub_2232AACF4();
      sub_22328B204();
      v63 = sub_2232AACF4();

      if (v81)
      {
        v64 = sub_2232AABF4();
      }

      else
      {
        v64 = 0;
      }

      v65 = v86 ^ 1;
      v66 = *MEMORY[0x277D24258];
      v67 = (v57 != 2) ^ v57;
      aBlock = v102;
      if (*(&v102 + 1))
      {
        v68 = sub_2232AABF4();
      }

      else
      {
        v68 = 0;
      }

      v69 = v100;
      v70 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v78) = 0;
      LOBYTE(v77) = v65 & 1;
      LOBYTE(v76) = 0;
      BYTE3(v75) = v69;
      BYTE2(v75) = 1;
      BYTE1(v75) = v91 & 1;
      LOBYTE(v75) = v67 & 1;
      LODWORD(v74) = 0;
      v71 = v82;
      [v70 initWithRequestId:v60 inputOrigin:v61 speechRecognitionTaskName:v58 speechRecognitionMode:0 location:v82 jitGrammar:v62 overrideModelPath:v66 applicationName:0 detectUtterances:0 continuousListening:v74 shouldHandleCapitalization:0 secureOfflineOnly:v75 maximumRecognitionDuration:0 recognitionOverrides:v76 shouldStoreAudioOnDevice:0 deliverEagerPackage:v63 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v77 sharedUserInfos:v85 prefixText:v83 postfixText:v64 selectedText:v78 powerContext:v68 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_22328B250(&aBlock);
      return;
    }

    v41 = v39;
    v98[4] = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  v91 = objc_opt_self();
  v42 = 0;
  v43 = v41;
  v92 = (v41 & 0xC000000000000001);
  v89 = v41 & 0xFFFFFFFFFFFFFF8;
  v90 = v98;
  v44 = v41;
  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v92)
    {
      v46 = MEMORY[0x223DD8300](v42, v43);
    }

    else
    {
      if (v42 >= *(v89 + 16))
      {
        goto LABEL_48;
      }

      v46 = *(v43 + 8 * v42 + 32);
    }

    v47 = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_22328B1F4;
    *(v49 + 24) = v48;
    v98[2] = sub_22328B1FC;
    v98[3] = v49;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v98[0] = sub_223278834;
    v98[1] = &block_descriptor_3;
    v50 = _Block_copy(&aBlock);
    v51 = v47;

    v52 = [v91 newWithBuilder_];
    _Block_release(v50);
    if (!v52)
    {
      break;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_47;
    }

    sub_2232AAF94();
    sub_2232AAFC4();
    sub_2232AAFD4();
    sub_2232AAFA4();
    ++v42;
    v43 = v44;
    if (v45 == v40)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
}

void sub_22328B08C(void *a1, id a2)
{
  if (a1)
  {
    v4 = [a2 sharedUserId];
    [a1 setSharedUserId_];

    v5 = [a2 loggableSharedUserId];
    [a1 setLoggableSharedUserId_];

    v6 = [a2 personaIdentifier];
    [a1 setPersonaId_];
  }
}

unint64_t sub_22328B204()
{
  result = qword_28131D1A0;
  if (!qword_28131D1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1A0);
  }

  return result;
}

uint64_t sub_22328B250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_22328B894(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2232AAE24();
  v8 = (*(a6 + 8))(a5, a6);
  sub_2232AAA84();
}

uint64_t static SignpostLogger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2232AAAB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232AAE44();
  v11 = (*(a5 + 8))(a4, a5);
  sub_2232AAAA4();
  sub_2232AAA84();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22328B510()
{
  v0 = sub_2232AAAD4();
  __swift_allocate_value_buffer(v0, qword_28131DB88);
  __swift_project_value_buffer(v0, qword_28131DB88);
  sub_22328BA58();
  sub_2232AAE94();
  return sub_2232AAAE4();
}

uint64_t sub_22328B5A0()
{
  v0 = sub_2232AA8A4();
  __swift_allocate_value_buffer(v0, qword_28131DBA0);
  __swift_project_value_buffer(v0, qword_28131DBA0);
  return sub_2232AA894();
}

uint64_t sub_22328B5EC()
{
  sub_22328BA58();
  result = sub_2232AAE94();
  qword_28131DD38 = result;
  return result;
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a10, uint64_t a11)
{
  v13 = *(a11 + 8);
  v13(a10, a11);
  sub_2232AAA94();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_2232AAE34();
    v17 = (v13)(a10, a11);
    sub_2232AAA84();
  }

  else
  {

    sub_2232AAE34();
    v14 = (v13)(a10, a11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081790, qword_2232ACB58);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2232AC370;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_22328B990();
    *(v15 + 32) = a7;
    *(v15 + 40) = a8;
    sub_2232AAA74();
  }
}

void sub_22328B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v8(a4, a5);
  sub_2232AAA94();
  sub_2232AAE34();
  v9 = (v8)(a4, a5);
  sub_2232AAA74();
}

unint64_t sub_22328B990()
{
  result = qword_27D081980;
  if (!qword_27D081980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081980);
  }

  return result;
}

unint64_t sub_22328BA58()
{
  result = qword_28131D168;
  if (!qword_28131D168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D168);
  }

  return result;
}

uint64_t type metadata accessor for AsrRequestProcessor(uint64_t a1)
{
  result = qword_28131D818;
  if (!qword_28131D818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22328BAF0(uint64_t a1)
{
  sub_2232AA6E4();
  if (v1 <= 0x3F)
  {
    sub_2232926C4(319);
    if (v2 <= 0x3F)
    {
      sub_2232AA794();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_22328BC90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22328BD44()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D8C0));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D848));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D858));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D8A0));

  v1 = qword_28131DD08;
  v2 = sub_2232AA6E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_223260EDC(v0 + qword_28131DD10, &unk_27D081810, &unk_2232ACC60);
  v3 = qword_28131DCE0;
  v4 = sub_2232AA794();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

uint64_t sub_22328BEF0()
{
  [*(v0 + qword_28131D8B0) invalidate];
  v1 = sub_2232AA964();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D8C0));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D848));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D858));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D8A0));

  v2 = qword_28131DD08;
  v3 = sub_2232AA6E4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_223260EDC(v1 + qword_28131DD10, &unk_27D081810, &unk_2232ACC60);
  v4 = qword_28131DCE0;
  v5 = sub_2232AA794();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return v1;
}

uint64_t sub_22328C0B8()
{
  v0 = sub_22328BEF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_22328C10C(void *a1)
{
  v2 = v1;
  v4 = sub_2232AA694();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v59 - v9;
  if (sub_2232AA064())
  {
    v11 = *MEMORY[0x277D5CF40];
    v12 = sub_2232AA6B4();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v10, v11, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    v14 = qword_28131DD10;
    swift_beginAccess();
    sub_223293C54(v10, v2 + v14);
    swift_endAccess();
    sub_223268998(0);
    v15 = sub_2232AA044();
    v62 = v2;
    if (v15)
    {

      v61 = 2;
    }

    else
    {
      v61 = 0;
    }

    v23 = sub_2232AA5D4();
    v25 = v24;
    sub_2232A9714();
    v59[1] = sub_2232AA684();
    (*(v5 + 8))(v7, v4);
    if (sub_2232A9C94())
    {
      v60 = sub_2232AA7A4();
    }

    else
    {
      v60 = 0;
    }

    sub_2232AA044();
    sub_2232AA054();
    v27 = v26;
    v28 = *MEMORY[0x277D24258];
    v29 = sub_2232AA924();
    v30 = sub_22326A9D4(v29, v23, v25);
    swift_unknownObjectRelease();
    v31 = (v30 != 2) ^ v30;
    v32 = sub_2232AABF4();

    v33 = sub_2232AABF4();

    v34 = sub_2232AACF4();

    if (v27)
    {
      v35 = sub_2232AABF4();
    }

    else
    {
      v35 = 0;
    }

    v36 = objc_allocWithZone(MEMORY[0x277D24248]);
    LOBYTE(v58) = 0;
    LOBYTE(v57) = 0;
    BYTE3(v56) = 0;
    BYTE2(v56) = 0;
    LOWORD(v56) = v31 & 1;
    LODWORD(v55) = 0;
    v37 = v60;
    v38 = [v36 initWithRequestId:v32 inputOrigin:v33 speechRecognitionTaskName:v61 speechRecognitionMode:0 location:v60 jitGrammar:v34 overrideModelPath:v28 applicationName:v35 detectUtterances:0 continuousListening:v55 shouldHandleCapitalization:0 secureOfflineOnly:v56 maximumRecognitionDuration:0 recognitionOverrides:v57 shouldStoreAudioOnDevice:0 deliverEagerPackage:0 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v58 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v39 = sub_2232AAAD4();
    __swift_project_value_buffer(v39, qword_28131DB88);
    v40 = a1;
    v41 = v38;
    v42 = sub_2232AAAC4();
    v43 = sub_2232AAD84();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v63[0] = v46;
      *v44 = 138412546;
      *(v44 + 4) = v41;
      *v45 = v41;
      *(v44 + 12) = 2080;
      v47 = v41;
      v48 = sub_2232AA5D4();
      v50 = sub_2232603D0(v48, v49, v63);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_22325E000, v42, v43, "RequestSettings: %@ for requestId: %s", v44, 0x16u);
      sub_223260EDC(v45, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x223DD8AC0](v46, -1, -1);
      MEMORY[0x223DD8AC0](v44, -1, -1);
    }

    v51 = v62;
    [*(&v62->isa + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v52 = sub_2232AA8A4();
    __swift_project_value_buffer(v52, qword_28131DBA0);
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = v40;
    v54 = v40;

    sub_2232AA874();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v16 = sub_2232AAAD4();
    __swift_project_value_buffer(v16, qword_28131DB88);
    v17 = a1;
    v62 = sub_2232AAAC4();
    v18 = sub_2232AAD84();

    if (os_log_type_enabled(v62, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_22325E000, v62, v18, "AsrRequestProcessor received message: %@ ignoring it...", v19, 0xCu);
      sub_223260EDC(v20, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v20, -1, -1);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }

    v22 = v62;
  }
}

uint64_t sub_22328C860(void *a1)
{
  v2 = v1;
  v4 = sub_2232AA694();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
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
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_22325E000, v15, v16, "AsrRequestProcessor received message: %@", v17, 0xCu);
    sub_223260EDC(v18, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v18, -1, -1);
    MEMORY[0x223DD8AC0](v17, -1, -1);
  }

  v20 = *MEMORY[0x277D5CF20];
  v21 = *(v7 + 104);
  v21(v12, v20, v6);
  (*(v7 + 56))(v12, 0, 1, v6);
  v22 = qword_28131DD10;
  swift_beginAccess();
  sub_223293C54(v12, v2 + v22);
  swift_endAccess();
  sub_223268998(0);
  v21(v9, v20, v6);
  v23 = sub_223291AA4(v9);
  (*(v7 + 8))(v9, v6);
  *(v2 + qword_28131DD20) = v23;

  v47 = *(v2 + qword_28131D8B0);
  v24 = v47;
  sub_2232AA5D4();
  v25 = sub_2232AABF4();

  [v24 disableLocalSpeechRecognitionForRequestId_];

  v26 = sub_2232AA5D4();
  v28 = v27;
  v29 = v48;
  sub_2232A9714();
  sub_2232AA684();
  (*(v49 + 8))(v29, v50);
  v30 = *MEMORY[0x277D24258];
  v31 = sub_2232AA924();
  LOBYTE(v29) = sub_22326A9D4(v31, v26, v28);
  swift_unknownObjectRelease();
  v32 = (v29 != 2) ^ v29;
  v33 = objc_allocWithZone(MEMORY[0x277D24248]);
  v34 = sub_2232AABF4();

  v35 = sub_2232AABF4();

  v36 = sub_2232AACF4();
  LOBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  BYTE3(v43) = 0;
  BYTE2(v43) = 0;
  LOWORD(v43) = v32 & 1;
  LODWORD(v42) = 0;
  v37 = [v33 initWithRequestId:v34 inputOrigin:v35 speechRecognitionTaskName:0 speechRecognitionMode:1 location:0 jitGrammar:v36 overrideModelPath:v30 applicationName:0 detectUtterances:0 continuousListening:v42 shouldHandleCapitalization:0 secureOfflineOnly:v43 maximumRecognitionDuration:0 recognitionOverrides:v44 shouldStoreAudioOnDevice:0 deliverEagerPackage:0 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v45 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

  [v47 startSpeechRecognitionResultsWithSettings_];
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v38 = sub_2232AA8A4();
  __swift_project_value_buffer(v38, qword_28131DBA0);
  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v14;
  v40 = v14;

  sub_2232AA874();
}

uint64_t sub_22328CE2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-1] - v5;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v7 = sub_2232AAAD4();
  __swift_project_value_buffer(v7, qword_28131DB88);
  v8 = a1;
  v9 = sub_2232AAAC4();
  v10 = sub_2232AAD84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_22325E000, v9, v10, "AsrRequestProcessor received message: %@", v11, 0xCu);
    sub_223260EDC(v12, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v12, -1, -1);
    MEMORY[0x223DD8AC0](v11, -1, -1);
  }

  sub_2232AA3F4();
  v14 = swift_dynamicCastClass();
  v15 = MEMORY[0x277D5CF50];
  if (v14)
  {
    v15 = MEMORY[0x277D5CF18];
  }

  v16 = *v15;
  v17 = sub_2232AA6B4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  sub_2232AA6B4();
  (*(v18 + 56))(v6, 0, 1, v17);
  v19 = qword_28131DD10;
  swift_beginAccess();
  sub_223293C54(v6, v2 + v19);
  swift_endAccess();
  v20 = sub_2232AA1F4();
  sub_223268998(v20);

  v21 = AFIsATV();
  v22 = sub_22328FF3C(v8, v21);

  v23 = sub_2232AAAC4();
  v24 = sub_2232AAD84();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 2080;
    v28 = v22;
    v29 = sub_2232AA944();
    v31 = sub_2232603D0(v29, v30, v40);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_22325E000, v23, v24, "RequestSettings: %@ for requestId: %s", v25, 0x16u);
    sub_223260EDC(v26, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x223DD8AC0](v27, -1, -1);
    MEMORY[0x223DD8AC0](v25, -1, -1);
  }

  v32 = [v22 speechRecognitionTask];
  v33 = sub_2232AA5D4();
  sub_22326BC40(v32, v33, v34);

  [*(v2 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v35 = sub_2232AA8A4();
  __swift_project_value_buffer(v35, qword_28131DBA0);
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  *(v36 + 24) = v8;
  v37 = v8;

  sub_2232AA874();
}

void sub_22328D30C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v3 = sub_2232AAAD4();
  __swift_project_value_buffer(v3, qword_28131DB88);
  v4 = a1;
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_22325E000, v5, v6, "AsrRequestProcessor received message: %@", v7, 0xCu);
    sub_223260EDC(v8, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v8, -1, -1);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  v10 = *(v1 + qword_28131D888);
  if (v10)
  {
    v11 = v10;
    sub_2232AA5D4();
    oslog = sub_2232AABF4();

    [v11 siriPromptWillStartWithRootRequestId_];
  }

  else
  {
    oslog = sub_2232AAAC4();
    v12 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, oslog, v12, "AttendingClient not set while receiving SiriWillPromptMessage, dropping", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }
  }
}

void sub_22328D528(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v14 = __swift_project_value_buffer(v13, qword_28131DB88);
  v15 = a1;
  v39 = v14;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_22325E000, v16, v17, "AsrRequestProcessor received message: %@", v18, 0xCu);
    sub_223260EDC(v19, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  v21 = qword_28131DD10;
  v22 = v40;
  swift_beginAccess();
  (*(v3 + 104))(v12, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v12, 0, 1, v2);
  v23 = *(v5 + 48);
  sub_223293AB8(v22 + v21, v7);
  sub_223293AB8(v12, &v7[v23]);
  v24 = *(v3 + 48);
  if (v24(v7, 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    if (v24(&v7[v23], 1, v2) == 1)
    {
      sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v35 = *(v40 + qword_28131D8B0);
      sub_2232AA5D4();
      v27 = sub_2232AABF4();

      [v35 pauseLocalSpeechRecognitionForRequestId_];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v25 = v38;
  sub_223293AB8(v7, v38);
  if (v24(&v7[v23], 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v25, v2);
LABEL_10:
    sub_223260EDC(v7, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v32 = v37;
  (*(v3 + 32))(v37, &v7[v23], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v33 = sub_2232AABE4();
  v34 = *(v3 + 8);
  v34(v32, v2);
  sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
  v34(v25, v2);
  sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v26 = v15;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD94();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_22325E000, v27, v28, "Received unexpected %@ message. Current request is not dictation", v29, 0xCu);
    sub_223260EDC(v30, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);
  }

LABEL_15:
}

void sub_22328DB28(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v14 = __swift_project_value_buffer(v13, qword_28131DB88);
  v15 = a1;
  v42 = v14;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_22325E000, v16, v17, "AsrRequestProcessor received message: %@", v18, 0xCu);
    sub_223260EDC(v19, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  v21 = qword_28131DD10;
  v22 = v43;
  swift_beginAccess();
  (*(v3 + 104))(v12, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v12, 0, 1, v2);
  v23 = *(v5 + 48);
  sub_223293AB8(v22 + v21, v7);
  sub_223293AB8(v12, &v7[v23]);
  v24 = *(v3 + 48);
  if (v24(v7, 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    if (v24(&v7[v23], 1, v2) == 1)
    {
      sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v35 = *(v43 + qword_28131D8B0);
      sub_2232AA5D4();
      v36 = sub_2232AABF4();

      sub_2232A9FC4();
      v37 = sub_2232AABF4();

      sub_2232A9FD4();
      v38 = sub_2232AABF4();

      sub_2232A9FE4();
      v27 = sub_2232AABF4();

      [v35 resumeLocalRecognitionWithRequestId:v36 prefixText:v37 postfixText:v38 selectedText:v27];

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v25 = v41;
  sub_223293AB8(v7, v41);
  if (v24(&v7[v23], 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v25, v2);
LABEL_10:
    sub_223260EDC(v7, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v32 = v40;
  (*(v3 + 32))(v40, &v7[v23], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v33 = sub_2232AABE4();
  v34 = *(v3 + 8);
  v34(v32, v2);
  sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
  v34(v25, v2);
  sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v26 = v15;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD94();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_22325E000, v27, v28, "Received unexpected %@ message. Current request is not dictation", v29, 0xCu);
    sub_223260EDC(v30, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);
  }

LABEL_15:
}

void sub_22328E188(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v14 = __swift_project_value_buffer(v13, qword_28131DB88);
  v15 = a1;
  v49 = v14;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_22325E000, v16, v17, "AsrRequestProcessor received message: %@", v18, 0xCu);
    sub_223260EDC(v19, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  v21 = qword_28131DD10;
  v22 = v50;
  swift_beginAccess();
  (*(v3 + 104))(v12, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v12, 0, 1, v2);
  v23 = *(v5 + 48);
  sub_223293AB8(&v22[v21], v7);
  sub_223293AB8(v12, &v7[v23]);
  v24 = *(v3 + 48);
  if (v24(v7, 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    if (v24(&v7[v23], 1, v2) == 1)
    {
      sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v50 = *&v50[qword_28131D8B0];
      sub_2232AA5D4();
      v35 = sub_2232AABF4();

      sub_2232A9E74();
      if (v36)
      {
        v37 = sub_2232AABF4();
      }

      else
      {
        v37 = 0;
      }

      sub_2232A9E84();
      if (v38)
      {
        v39 = sub_2232AABF4();
      }

      else
      {
        v39 = 0;
      }

      sub_2232A9E94();
      if (v40)
      {
        v41 = sub_2232AABF4();
      }

      else
      {
        v41 = 0;
      }

      if (sub_2232A9EB4() == 2)
      {
        v42 = 0;
      }

      else
      {
        v42 = sub_2232AAD44();
      }

      if (sub_2232A9EA4() == 2)
      {
        v43 = 0;
      }

      else
      {
        v43 = sub_2232AAD44();
      }

      if (sub_2232A9E64() == 2)
      {
        v44 = 0;
      }

      else
      {
        v44 = sub_2232AAD44();
      }

      if (sub_2232A9E54() == 2)
      {
        v45 = 0;
      }

      else
      {
        v45 = sub_2232AAD44();
      }

      if (sub_2232A9EC4() == 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_2232AAD44();
      }

      [v50 updateVoiceCommandContextWithRequestId:v35 prefixText:v37 postfixText:v39 selectedText:v41 disambiguationActive:v42 cursorInVisibleText:v43 favorCommandSuppression:v44 abortCommandSuppression:v45 undoEvent:v27];

      goto LABEL_39;
    }

    goto LABEL_10;
  }

  v25 = v48;
  sub_223293AB8(v7, v48);
  if (v24(&v7[v23], 1, v2) == 1)
  {
    sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v25, v2);
LABEL_10:
    sub_223260EDC(v7, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v32 = v47;
  (*(v3 + 32))(v47, &v7[v23], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v33 = sub_2232AABE4();
  v34 = *(v3 + 8);
  v34(v32, v2);
  sub_223260EDC(v12, &unk_27D081810, &unk_2232ACC60);
  v34(v25, v2);
  sub_223260EDC(v7, &unk_27D081810, &unk_2232ACC60);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v26 = v15;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD94();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_22325E000, v27, v28, "Received unexpected %@ message. Current request is not dictation", v29, 0xCu);
    sub_223260EDC(v30, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);
  }

LABEL_39:
}

void sub_22328E90C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
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

    v9 = sub_2232A96E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081890, &unk_2232ACCB0);
    v10 = sub_2232AAFF4();
    a1 = v10;
    v11 = 0;
    v32 = v9;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v9 + 64;
    v15 = v13 & *(v9 + 64);
    v16 = (v12 + 63) >> 6;
    v31 = v10 + 8;
    if (!v15)
    {
      break;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      v21 = (v32[6] + 16 * v20);
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_2232AAD74();
      *(v31 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (a1[6] + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      *(a1[7] + 8 * v20) = v24;
      v26 = a1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      a1[2] = v28;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v11 >= v16)
    {
      break;
    }

    v19 = *(v14 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_13;
    }
  }

  v29 = *(v30 + qword_28131D8B0);
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v33 = sub_2232AAB84();

  [v29 updateTCUState_];
}

void sub_22328EC20(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  v11 = sub_2232A9724();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0810F0, &qword_2232AC430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    *(inited + 32) = v13;
    *(inited + 40) = v14;
    *(inited + 48) = sub_2232AAD74();
    sub_22329DF2C(inited);
    swift_setDeallocating();
    sub_223260EDC(inited + 32, &unk_27D081880, &qword_2232AC438);
    v16 = *(v2 + qword_28131D8B0);
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v17 = sub_2232AAB84();

    [v16 updateTCUState_];
  }

  else
  {
    oslog = sub_2232AAAC4();
    v18 = sub_2232AAD84();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22325E000, oslog, v18, "TRPFinalizedMessage does not have a finalTCUId, skipping calling updateTCUState.", v19, 2u);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }
  }
}

void sub_22328EEF8(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  sub_2232AA5D4();
  sub_2232AA3A4();
  v11 = *(v2 + qword_28131D8B0);
  v12 = sub_2232AABF4();

  v13 = sub_2232AABF4();

  [v11 trpCandidateReadyForExecutionForRequestId:v12 withTrpId:v13];
}

void sub_22328F0CC(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  if ((sub_2232AA1B4() & 1) == 0)
  {
    v11 = *(v2 + qword_28131DD00);
    if (v11)
    {
      v12 = *((*MEMORY[0x277D85000] & *v11) + 0xC8);
      oslog = v11;
      v12();
    }

    else
    {
      oslog = sub_2232AAAC4();
      v13 = sub_2232AAD94();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22325E000, oslog, v13, "SpeechRecognizerResponseHandler is nil, unable to submit cached partials", v14, 2u);
        MEMORY[0x223DD8AC0](v14, -1, -1);
      }
    }
  }
}

void sub_22328F31C(void *a1)
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

void sub_22328F48C(uint64_t a1)
{
  v69 = a1;
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v70 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v72 = &v62[-v9];
  MEMORY[0x28223BE20](v8);
  v11 = &v62[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v66 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v62[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v67 = &v62[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v62[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v62[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v62[-v24];
  v26 = qword_28131DD10;
  swift_beginAccess();
  v27 = *MEMORY[0x277D5CF40];
  v75 = v3[13];
  v75(v25, v27, v2);
  v28 = v3[7];
  v76 = v3 + 7;
  v74 = v28;
  v28(v25, 0, 1, v2);
  v29 = *(v5 + 48);
  v77 = v26;
  v78 = v1;
  v30 = v1 + v26;
  v31 = v3;
  sub_223293AB8(v30, v11);
  sub_223293AB8(v25, &v11[v29]);
  v32 = v3[6];
  if (v32(v11, 1, v2) != 1)
  {
    sub_223293AB8(v11, v23);
    v65 = v32;
    if (v32(&v11[v29], 1, v2) != 1)
    {
      v49 = v3[4];
      v64 = v5;
      v50 = v70;
      v49(v70, &v11[v29], v2);
      sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
      v63 = sub_2232AABE4();
      v51 = v3[1];
      v52 = v50;
      v5 = v64;
      v51(v52, v2);
      sub_223260EDC(v25, &unk_27D081810, &unk_2232ACC60);
      v51(v23, v2);
      sub_223260EDC(v11, &unk_27D081810, &unk_2232ACC60);
      v33 = v78;
      v32 = v65;
      if (v63)
      {
        goto LABEL_16;
      }

LABEL_7:
      v34 = v73;
      v75(v73, *MEMORY[0x277D5CF50], v2);
      v74(v34, 0, 1, v2);
      v35 = *(v5 + 48);
      v11 = v72;
      sub_223293AB8(v33 + v77, v72);
      sub_223293AB8(v34, &v11[v35]);
      if (v32(v11, 1, v2) == 1)
      {
        sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
        if (v32(&v11[v35], 1, v2) == 1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v36 = v67;
        sub_223293AB8(v11, v67);
        if (v32(&v11[v35], 1, v2) != 1)
        {
          v54 = v3[4];
          v64 = v5;
          v55 = v70;
          v54(v70, &v11[v35], v2);
          sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
          LODWORD(v65) = sub_2232AABE4();
          v56 = v32;
          v57 = v3[1];
          v58 = v55;
          v5 = v64;
          v57(v58, v2);
          sub_223260EDC(v73, &unk_27D081810, &unk_2232ACC60);
          v57(v36, v2);
          v32 = v56;
          v33 = v78;
          sub_223260EDC(v11, &unk_27D081810, &unk_2232ACC60);
          if (v65)
          {
            goto LABEL_16;
          }

LABEL_13:
          v37 = v71;
          v75(v71, *MEMORY[0x277D5CF18], v2);
          v74(v37, 0, 1, v2);
          v38 = *(v5 + 48);
          v11 = v68;
          sub_223293AB8(v33 + v77, v68);
          sub_223293AB8(v37, &v11[v38]);
          if (v32(v11, 1, v2) == 1)
          {
            sub_223260EDC(v37, &unk_27D081810, &unk_2232ACC60);
            if (v32(&v11[v38], 1, v2) == 1)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v53 = v66;
            sub_223293AB8(v11, v66);
            if (v32(&v11[v38], 1, v2) != 1)
            {
              v59 = v70;
              (v31[4])(v70, &v11[v38], v2);
              sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
              v60 = sub_2232AABE4();
              v61 = v31[1];
              v61(v59, v2);
              sub_223260EDC(v71, &unk_27D081810, &unk_2232ACC60);
              v61(v53, v2);
              sub_223260EDC(v11, &unk_27D081810, &unk_2232ACC60);
              if ((v60 & 1) == 0)
              {
                return;
              }

              goto LABEL_16;
            }

            sub_223260EDC(v71, &unk_27D081810, &unk_2232ACC60);
            (v3[1])(v53, v2);
          }

          sub_223260EDC(v11, &qword_27D081808, "H6");
          return;
        }

        sub_223260EDC(v73, &unk_27D081810, &unk_2232ACC60);
        (v3[1])(v36, v2);
      }

      sub_223260EDC(v11, &qword_27D081808, "H6");
      goto LABEL_13;
    }

    sub_223260EDC(v25, &unk_27D081810, &unk_2232ACC60);
    (v3[1])(v23, v2);
    v32 = v65;
LABEL_6:
    sub_223260EDC(v11, &qword_27D081808, "H6");
    v33 = v78;
    goto LABEL_7;
  }

  sub_223260EDC(v25, &unk_27D081810, &unk_2232ACC60);
  if (v32(&v11[v29], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  v33 = v78;
LABEL_15:
  sub_223260EDC(v11, &unk_27D081810, &unk_2232ACC60);
LABEL_16:
  if ((*(v33 + qword_28131DD18) & 1) == 0)
  {
    v39 = sub_2232AA944();
    sub_22327F888(v39, v40);
  }

  v41 = *(v33 + qword_28131DD00);
  if (v41)
  {
    v42 = *(v33 + qword_28131D8B0);
    v43 = *((*MEMORY[0x277D85000] & *v41) + 0xB8);
    v44 = v41;
    v43(v42, v69);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v45 = sub_2232AAAD4();
    __swift_project_value_buffer(v45, qword_28131DB88);
    v46 = sub_2232AAAC4();
    v47 = sub_2232AAD94();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22325E000, v46, v47, "SpeechRecognizerResponseHandler is nil, will not be able to stop ASR.", v48, 2u);
      MEMORY[0x223DD8AC0](v48, -1, -1);
    }
  }
}

void *sub_22328FF3C(uint64_t a1, char a2)
{
  v3 = v2;
  v203 = sub_2232A94A4();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v7 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081828, &unk_2232ACC78);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v206 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v201 = &v194 - v11;
  v217 = sub_2232AA6E4();
  *(&v212 + 1) = *(v217 - 1);
  MEMORY[0x28223BE20](v217);
  v216 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = a1;
  v13 = sub_2232AA1F4();
  v14 = [objc_opt_self() sharedPreferences];
  v15 = [v14 offlineDictationStatus];

  v16 = sub_2232AAB94();
  v17 = &unk_28131D000;
  v210 = v13;
  v218 = v3;
  if (a2)
  {
    v18 = &v3[qword_28131D878];
    v19 = *&v3[qword_28131D878 + 8];
    if (v19)
    {
      v20 = *v18;

      v21 = sub_2232AABF4();
      v22 = MEMORY[0x223DD8560]();

      if (v22)
      {
        v215 = sub_2232AAC04();
        v24 = v23;

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v25 = sub_2232AAAD4();
        __swift_project_value_buffer(v25, qword_28131DB88);

        v26 = sub_2232AAAC4();
        v27 = sub_2232AAD84();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock[0] = v29;
          *v28 = 136315394;
          v30 = sub_2232603D0(v20, v19, aBlock);

          *(v28 + 4) = v30;
          *(v28 + 12) = 2080;
          v31 = v215;
          *(v28 + 14) = sub_2232603D0(v215, v24, aBlock);
          _os_log_impl(&dword_22325E000, v26, v27, "Mapped %s to %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v29, -1, -1);
          MEMORY[0x223DD8AC0](v28, -1, -1);

          v13 = v210;
          v3 = v218;
        }

        else
        {

          v13 = v210;
          v3 = v218;
          v31 = v215;
        }

        *v18 = v31;
        v18[1] = v24;

        v17 = &unk_28131D000;
      }

      else
      {

        v13 = v210;
        v3 = v218;
      }
    }
  }

  v32 = [v13 offlineLanguage];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2232AAC04();
    v36 = v35;
  }

  else
  {
    v34 = *&v3[qword_28131D878];
    v36 = *&v3[qword_28131D878 + 8];
  }

  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v36)
  {
    v38 = v36;
  }

  v223 = v37;
  v224 = v38;

  sub_2232AAF34();
  if (*(v16 + 16) && (v39 = sub_2232A2DE4(aBlock), (v40 & 1) != 0))
  {
    sub_2232606EC(*(v16 + 56) + 32 * v39, v225);
    sub_223293B28(aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081840, &qword_2232ACC88);
    if (swift_dynamicCast())
    {
      v41 = v223;
      goto LABEL_25;
    }
  }

  else
  {

    sub_223293B28(aBlock);
  }

  v41 = sub_223268790(MEMORY[0x277D84F90]);
LABEL_25:
  v209 = sub_223282038(v13, v41);

  if (v3[qword_28131D8D0] == 1)
  {
    if (v17[103] != -1)
    {
      swift_once();
    }

    v42 = sub_2232AAAD4();
    __swift_project_value_buffer(v42, qword_28131DB88);
    v43 = sub_2232AAAC4();
    v44 = sub_2232AAD84();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v36;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22325E000, v43, v44, "Sending empty JITLME for MUX enabled device for improving ASR performance.", v46, 2u);
      v47 = v46;
      v36 = v45;
      MEMORY[0x223DD8AC0](v47, -1, -1);
    }

    v204 = MEMORY[0x277D84F90];
  }

  else
  {
    v48 = [v13 inlineItemList];
    if (!v48)
    {
      v204 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }

    v43 = v48;
    v204 = sub_2232AAD04();
  }

LABEL_34:
  if (v17[103] != -1)
  {
LABEL_136:
    swift_once();
  }

  v49 = sub_2232AAAD4();
  v50 = __swift_project_value_buffer(v49, qword_28131DB88);

  v208 = v50;
  v51 = sub_2232AAAC4();
  v52 = sub_2232AAD84();

  v53 = os_log_type_enabled(v51, v52);
  v207 = v36;
  v200 = v34;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = *&v3[qword_28131D8F0];
    v57 = sub_2232606A4(0, &qword_27D081838, 0x277D47390);
    v58 = MEMORY[0x223DD80A0](v56, v57);
    v36 = v59;
    v60 = sub_2232603D0(v58, v59, aBlock);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_22325E000, v51, v52, "activeUserInfo will look for matching home member from %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x223DD8AC0](v55, -1, -1);
    MEMORY[0x223DD8AC0](v54, -1, -1);
  }

  v223 = 0;
  v224 = 0;
  v221 = 0;
  v222 = 0;
  v61 = *&v3[qword_28131D8F0];
  v198 = v7;
  if (v61 >> 62)
  {
    v179 = v61;
    v180 = sub_2232AAFE4();
    v61 = v179;
    v62 = v180;
    if (!v180)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
      goto LABEL_69;
    }
  }

  v215 = v61 & 0xC000000000000001;
  v214 = qword_28131DD08;
  v63 = v61;
  swift_beginAccess();
  v64 = v63;
  v65 = 0;
  v211 = v63 & 0xFFFFFFFFFFFFFF8;
  v213 = (*(&v212 + 1) + 16);
  v34 = (*(&v212 + 1) + 8);
  *(&v212 + 1) = v63;
  *&v212 = v62;
  while (1)
  {
    if (v215)
    {
      v66 = MEMORY[0x223DD8300](v65, v64);
    }

    else
    {
      if (v65 >= *(v211 + 16))
      {
        goto LABEL_135;
      }

      v66 = *(v64 + 8 * v65 + 32);
    }

    v7 = v66;
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v68 = [v66 personaIdentifier];
    if (v68)
    {
      v69 = v68;
      v70 = sub_2232AAC04();
      v3 = v71;
    }

    else
    {
      v70 = 0;
      v3 = 0;
    }

    v72 = v217;
    v73 = v216;
    (*v213)(v216, &v218[v214], v217);
    v36 = sub_2232AA6D4();
    v75 = v74;
    (*v34)(v73, v72);
    if (!v3)
    {
      if (!v75)
      {
        goto LABEL_60;
      }

LABEL_40:

      goto LABEL_41;
    }

    if (!v75)
    {
      goto LABEL_40;
    }

    if (v70 == v36 && v3 == v75)
    {
      break;
    }

    v36 = sub_2232AB094();

    if (v36)
    {
      goto LABEL_60;
    }

LABEL_41:
    ++v65;
    v64 = *(&v212 + 1);
    if (v67 == v212)
    {
      goto LABEL_69;
    }
  }

LABEL_60:
  v76 = [v7 loggableSharedUserId];
  if (v76)
  {
    v77 = v76;
    v78 = sub_2232AAC04();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  v223 = v78;
  v224 = v80;

  v81 = [v7 sharedUserId];
  if (v81)
  {
    v82 = v81;
    v83 = sub_2232AAC04();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v221 = v83;
  v222 = v85;

  v86 = sub_2232AAAC4();
  v87 = sub_2232AAD84();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_22325E000, v86, v87, "activeUserInfo found matching home member", v88, 2u);
    MEMORY[0x223DD8AC0](v88, -1, -1);
  }

LABEL_69:
  v89 = objc_opt_self();
  v90 = swift_allocObject();
  *(v90 + 2) = &v221;
  *(v90 + 3) = &v223;
  *(v90 + 4) = v218;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_223293B7C;
  *(v91 + 24) = v90;
  aBlock[4] = sub_22327A988;
  aBlock[5] = v91;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223278834;
  aBlock[3] = &block_descriptor_19;
  v92 = _Block_copy(aBlock);

  v93 = [v89 newWithBuilder_];
  _Block_release(v92);
  v94 = v93;
  v95 = sub_2232AAAC4();
  v96 = sub_2232AAD84();

  v97 = os_log_type_enabled(v95, v96);
  v216 = v90;
  v218 = v94;
  if (v97)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v219 = v99;
    *v98 = 136315650;
    v100 = v210;
    if (v94 && (v101 = [v94 sharedUserId]) != 0)
    {
      v102 = v101;
      v103 = sub_2232AAC04();
      v105 = v104;

      v106 = v103;
    }

    else
    {
      v105 = 0x80000002232AE110;
      v106 = 0xD000000000000010;
    }

    v107 = sub_2232603D0(v106, v105, &v219);

    *(v98 + 4) = v107;
    *(v98 + 12) = 2080;
    swift_beginAccess();
    if (v224)
    {
      v108 = v223;
    }

    else
    {
      v108 = 0xD000000000000019;
    }

    if (v224)
    {
      v109 = v224;
    }

    else
    {
      v109 = 0x80000002232AE130;
    }

    v110 = sub_2232603D0(v108, v109, &v219);

    *(v98 + 14) = v110;
    *(v98 + 22) = 2080;
    if (v94 && (v111 = [v94 personaId]) != 0)
    {
      v112 = v111;
      v113 = sub_2232AAC04();
      v115 = v114;

      v116 = v113;
    }

    else
    {
      v115 = 0x80000002232AE150;
      v116 = 0xD000000000000013;
    }

    v117 = sub_2232603D0(v116, v115, &v219);

    *(v98 + 24) = v117;
    _os_log_impl(&dword_22325E000, v95, v96, "activeUserInfo sharedUserId: %s with loggableSharedUserId:  %s and persona ID: %s", v98, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v99, -1, -1);
    MEMORY[0x223DD8AC0](v98, -1, -1);
  }

  else
  {

    v100 = v210;
  }

  v118 = v203;
  v119 = v202;
  v120 = v201;
  v205 = sub_2232AA5D4();
  v121 = [v100 modelOverrideURL];
  if (v121)
  {
    v122 = v206;
    v123 = v121;
    sub_2232A9494();

    v124 = 0;
  }

  else
  {
    v124 = 1;
    v122 = v206;
  }

  (*(v119 + 56))(v122, v124, 1, v118);
  sub_223293B88(v122, v120);
  if ((*(v119 + 48))(v120, 1, v118))
  {
    sub_223260EDC(v120, &qword_27D081828, &unk_2232ACC78);
    v199 = 0;
    v125 = 0;
  }

  else
  {
    v126 = v198;
    (*(v119 + 16))(v198, v120, v118);
    sub_223260EDC(v120, &qword_27D081828, &unk_2232ACC78);
    v199 = sub_2232A9484();
    v125 = v127;
    (*(v119 + 8))(v126, v118);
  }

  v128 = [v100 applicationName];
  if (v128)
  {
    v129 = v128;
    v198 = sub_2232AAC04();
    v131 = v130;
  }

  else
  {
    v198 = 0;
    v131 = 0;
  }

  LODWORD(v217) = [v100 detectUtterances];
  LODWORD(v215) = [v100 continuousListening];
  LODWORD(v214) = [v100 shouldHandleCapitalization];
  LODWORD(v213) = [v100 secureOfflineOnly];
  [v100 maximumRecognitionDuration];
  v133 = v132;
  v134 = [v100 recognitionOverrides];
  if (v134)
  {
    v135 = v134;
    v136 = sub_2232AAB94();

    sub_2232917C4(v136);
    v206 = v137;
  }

  else
  {
    v206 = 0;
  }

  DWORD2(v212) = sub_22326B608(v209);
  LODWORD(v212) = [v100 emojiRecognition];
  LODWORD(v211) = [v100 autoPunctuation];
  LODWORD(v208) = [v100 shouldRecognizeCommands];
  v138 = [v100 interactionIdentifier];
  if (v138)
  {
    v139 = v138;
    v197 = sub_2232AAC04();
    v141 = v140;
  }

  else
  {
    v197 = 0;
    v141 = 0;
  }

  v142 = [v100 prefixText];
  if (v142)
  {
    v143 = v142;
    v196 = sub_2232AAC04();
    v145 = v144;
  }

  else
  {
    v196 = 0;
    v145 = 0;
  }

  v146 = [v100 postfixText];
  if (v146)
  {
    v147 = v146;
    v195 = sub_2232AAC04();
    v149 = v148;
  }

  else
  {
    v195 = 0;
    v149 = 0;
  }

  v150 = [v100 selectedText];
  if (v150)
  {
    v151 = v150;
    v194 = sub_2232AAC04();
    v153 = v152;
  }

  else
  {
    v194 = 0;
    v153 = 0;
  }

  LODWORD(v203) = [v100 shouldGenerateVoiceCommandCandidates];
  v154 = [v100 messagesContext];
  if (v154)
  {
    v155 = v154;
    sub_2232606A4(0, &qword_27D081830, 0x277CEF468);
    v156 = sub_2232AAD04();
  }

  else
  {
    v156 = 0;
  }

  v157 = v207;
  v205 = sub_2232AABF4();

  v202 = sub_2232AABF4();
  v201 = sub_2232AACF4();

  if (v125)
  {
    v158 = sub_2232AABF4();
  }

  else
  {
    v158 = 0;
  }

  v159 = v206;
  if (v131)
  {
    v160 = sub_2232AABF4();

    if (v159)
    {
      goto LABEL_118;
    }

LABEL_126:
    v206 = 0;
    if (!v157)
    {
      goto LABEL_127;
    }

LABEL_119:
    v161 = sub_2232AABF4();

    if (v141)
    {
      goto LABEL_120;
    }

LABEL_128:
    v162 = 0;
    if (!v145)
    {
      goto LABEL_129;
    }

LABEL_121:
    v163 = sub_2232AABF4();

    if (v149)
    {
      goto LABEL_122;
    }

LABEL_130:
    v164 = 0;
    if (!v153)
    {
      goto LABEL_131;
    }

LABEL_123:
    v165 = sub_2232AABF4();

    if (v156)
    {
      goto LABEL_124;
    }

LABEL_132:
    v166 = 0;
  }

  else
  {
    v160 = 0;
    if (!v206)
    {
      goto LABEL_126;
    }

LABEL_118:
    v206 = sub_2232AAB84();

    if (v157)
    {
      goto LABEL_119;
    }

LABEL_127:
    v161 = 0;
    if (!v141)
    {
      goto LABEL_128;
    }

LABEL_120:
    v162 = sub_2232AABF4();

    if (v145)
    {
      goto LABEL_121;
    }

LABEL_129:
    v163 = 0;
    if (!v149)
    {
      goto LABEL_130;
    }

LABEL_122:
    v164 = sub_2232AABF4();

    if (v153)
    {
      goto LABEL_123;
    }

LABEL_131:
    v165 = 0;
    if (!v156)
    {
      goto LABEL_132;
    }

LABEL_124:
    sub_2232606A4(0, &qword_27D081830, 0x277CEF468);
    v166 = sub_2232AACF4();
  }

  v207 = v166;
  v167 = objc_allocWithZone(MEMORY[0x277D24248]);
  v193 = v166;
  LOBYTE(v192) = v203;
  LOBYTE(v191) = 0;
  v190 = v165;
  v188 = v163;
  v189 = v164;
  v187 = v162;
  LOBYTE(v186) = v208;
  v185 = v161;
  BYTE3(v184) = v211;
  BYTE2(v184) = v212;
  LOWORD(v184) = *(&v212 + 7) & 0x100;
  *(&v212 + 1) = v164;
  v168 = v206;
  BYTE3(v183) = v213;
  BYTE2(v183) = v214;
  BYTE1(v183) = v215;
  LOBYTE(v183) = v217;
  v181 = v158;
  v182 = v160;
  v169 = v162;
  v170 = v158;
  v171 = v205;
  v172 = v163;
  v173 = v160;
  v174 = v202;
  v175 = v165;
  v176 = v161;
  v177 = v201;
  v217 = [v167 initWithRequestId:v205 inputOrigin:v202 speechRecognitionTaskName:v209 speechRecognitionMode:0 location:0 jitGrammar:v201 overrideModelPath:v133 applicationName:v181 detectUtterances:v182 continuousListening:v183 shouldHandleCapitalization:v206 secureOfflineOnly:v184 maximumRecognitionDuration:v185 recognitionOverrides:v186 shouldStoreAudioOnDevice:v187 deliverEagerPackage:0 enableEmojiRecognition:v188 enableAutoPunctuation:v189 UILanguage:v190 enableVoiceCommands:0 dictationUIInteractionId:v191 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v192 powerContext:0 shouldStartAudioCapture:v218 audioCaptureStartHostTime:v193 audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];

  return v217;
}

void sub_2232915C4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_2232AA6E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2[1])
    {

      v12 = sub_2232AABF4();
    }

    else
    {
      v12 = 0;
    }

    [a1 setSharedUserId_];

    if (a3[1])
    {

      v13 = sub_2232AABF4();
    }

    else
    {
      v13 = 0;
    }

    [a1 setLoggableSharedUserId_];

    v14 = qword_28131DD08;
    swift_beginAccess();
    (*(v9 + 16))(v11, a4 + v14, v8);
    sub_2232AA6D4();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    if (v16)
    {
      v17 = sub_2232AABF4();
    }

    else
    {
      v17 = 0;
    }

    [a1 setPersonaId_];
  }
}

void sub_2232917C4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081848, &qword_2232ACC90);
    v2 = sub_2232AB014();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_223293BF8(*(v1 + 48) + 40 * v14, v28);
    sub_2232606EC(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_223293BF8(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_223260EDC(v25, &unk_27D081850, &qword_2232ACC98);

LABEL_22:

      return;
    }

    sub_2232606EC(v26 + 8, v24);
    sub_223260EDC(v25, &unk_27D081850, &qword_2232ACC98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_2232A2C98(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_223291AA4(uint64_t a1)
{
  v3 = sub_2232AA6B4();
  v42 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v6;
  v7 = sub_2232AA794();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2232A9504();
  v57 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2232AA904();
  v45 = v13;
  sub_2232AA954();
  v49 = sub_2232AA944();
  v48 = v14;
  v55 = v8;
  v47 = *(v8 + 16);
  v47(v10, v1 + qword_28131DCE0, v7);
  v56 = v4;
  v46 = *(v4 + 16);
  v46(v6, a1, v3);
  sub_2232AA934();
  v44 = sub_2232AA924();
  sub_223260E10(v1 + qword_28131D8A0, v60);
  v15 = *(v1 + qword_28131D838);
  v16 = *(v1 + qword_28131DD28);
  v52 = *(v1 + qword_28131DCF0);

  v53 = v16;

  v51 = AFDeviceSupportsMedoc();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v60, v60[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = type metadata accessor for MyriadDecisionMonitor();
  v59[3] = v22;
  v59[4] = &off_28368D388;
  v59[0] = v21;
  type metadata accessor for ServerAsrProcessor(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v59, v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v29 = v10;
  v30 = v43;
  v58[4] = &off_28368D388;
  v31 = v42;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived) = 0;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech) = 0;
  v58[3] = v22;
  v58[0] = v28;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage) = 0;
  v32 = (v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v33 = v45;
  *v32 = v54;
  v32[1] = v33;
  v34 = *(v57 + 16);
  v54 = v12;
  v35 = v12;
  v36 = v50;
  v34(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId, v35);
  v37 = (v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v38 = v48;
  *v37 = v49;
  v37[1] = v38;
  v47((v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId), v29, v7);
  v46((v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType), v30, v31);
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper) = v44;
  sub_223260E10(v58, v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_myriadMonitor);
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler) = v15;
  v39 = qword_28131DA80;

  swift_unknownObjectRetain();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_28131DD40;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  (*(v56 + 8))(v30, v31);
  (*(v55 + 8))(v29, v7);
  (*(v57 + 8))(v54, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil) = v40;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext) = v53;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled) = v52;
  *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isMedocEnabled) = v51;
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  return v23;
}