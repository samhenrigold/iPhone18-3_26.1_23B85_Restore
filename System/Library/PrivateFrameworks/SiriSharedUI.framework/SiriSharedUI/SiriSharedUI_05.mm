void sub_21E496D18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268, &unk_21E4E6560);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v98 - v2;
  v4 = sub_21E4DB978();
  v104 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v105 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v98 - v7;
  v8 = (*(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider) + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback);
  swift_beginAccess();
  v9 = *v8;
  if (!*v8 || (v10 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback)) == 0)
  {
    v0 = 0x800000021E4F0250;
    if (qword_280C14550 == -1)
    {
LABEL_20:
      v23 = sub_21E4DBCC8();
      __swift_project_value_buffer(v23, qword_280C14558);
      v24 = sub_21E4DD1F8();
      v115 = 0xD00000000000002DLL;
      v116 = v0;
      v25 = sub_21E45C20C(0);
      if (v26)
      {
        v113 = 32;
        v114 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v25);

        MEMORY[0x223D5ACB0](v113, v114);
      }

      if (("estionsWereShownForCallback()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v113 = 32;
        v114 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD00000000000005ALL, 0x800000021E4F0280);
        MEMORY[0x223D5ACB0](v113, v114);
      }

      v28 = v115;
      v27 = v116;
      v29 = sub_21E4DBCB8();
      if (os_log_type_enabled(v29, v24))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v113 = v31;
        *v30 = 136315138;
        v32 = sub_21E426648(v28, v27, &v113);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_21E3EB000, v29, v24, "%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x223D5BF10](v31, -1, -1);
        MEMORY[0x223D5BF10](v30, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_64:
    swift_once();
    goto LABEL_20;
  }

  v99 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback;
  v11 = v8[1];
  v115 = MEMORY[0x277D84F90];
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v51 = v9;
    v52 = v11;
    v53 = sub_21E4DD488();
    v11 = v52;
    v13 = v53;
    v9 = v51;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v0;
  v101 = v11;
  v112 = v4;
  v102 = v9;
  sub_21E3F1E78(v9, v11);

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v110 = v13;
    v111 = (v10 & 0xC000000000000001);
    v107 = v3;
    v109 = v10;
    while (1)
    {
      if (v111)
      {
        v17 = MEMORY[0x223D5B080](v15, v10);
      }

      else
      {
        if (v15 >= *(v12 + 16))
        {
          goto LABEL_59;
        }

        v17 = *(v10 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
      v21 = *&v17[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
      swift_getKeyPath();
      v113 = v21;
      sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel, &unk_21E4E5200);

      sub_21E4DB718();

      v0 = *(v21 + 57);

      if (v0 == 1)
      {
        v22 = *&v18[v20];
        swift_getKeyPath();
        v113 = v22;

        sub_21E4DB718();

        v0 = *(v22 + 58);

        if (v0)
        {
        }

        else
        {
          v0 = &v115;
          sub_21E4DD408();
          sub_21E4DD438();
          sub_21E4DD448();
          sub_21E4DD418();
        }

        v10 = v109;
        v16 = v110;
      }

      else
      {

        v10 = v109;
        v16 = v110;
      }

      ++v15;
      v3 = v107;
      if (v19 == v16)
      {
        v14 = v115;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_29:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    v33 = sub_21E4DD488();
    if (v33)
    {
LABEL_32:
      v0 = 0;
      v111 = (v14 & 0xC000000000000001);
      v34 = (v104 + 48);
      v106 = (v104 + 32);
      v109 = v33;
      v110 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v111)
        {
          v35 = MEMORY[0x223D5B080](v0, v14);
        }

        else
        {
          if (v0 >= *(v14 + 16))
          {
            goto LABEL_61;
          }

          v35 = *(v14 + 8 * v0 + 32);
        }

        v36 = v35;
        v37 = (v0 + 1);
        if (__OFADD__(v0, 1))
        {
          break;
        }

        v38 = *&v35[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion];

        sub_21E424848(v38 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData, v3, &qword_27CEC5268, &unk_21E4E6560);

        v39 = v112;
        if ((*v34)(v3, 1, v112) == 1)
        {
          sub_21E424BC0(v3, &qword_27CEC5268, &unk_21E4E6560);
        }

        else
        {
          v40 = *v106;
          (*v106)(v108, v3, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_21E443B24(0, v110[2] + 1, 1, v110);
          }

          v42 = v110[2];
          v41 = v110[3];
          if (v42 >= v41 >> 1)
          {
            v110 = sub_21E443B24((v41 > 1), v42 + 1, 1, v110);
          }

          v43 = v110;
          v110[2] = v42 + 1;
          v40(&v43[((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v42], v108, v112);
          v33 = v109;
        }

        ++v0;
        if (v37 == v33)
        {
          if (!v110[2])
          {
            goto LABEL_88;
          }

          v102();
          v44 = 0;
          v0 = &OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
          v103 = v14;
          while (1)
          {
            if (v111)
            {
              v46 = MEMORY[0x223D5B080](v44, v14);
            }

            else
            {
              if (v44 >= *(v14 + 16))
              {
                goto LABEL_63;
              }

              v46 = *(v14 + 8 * v44 + 32);
            }

            v47 = v46;
            v48 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_62;
            }

            v49 = *&v46[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel];
            if (*(v49 + 58) == 1)
            {

              *(v49 + 58) = 1;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              v108 = &v98;
              MEMORY[0x28223BE20](KeyPath);
              *(&v98 - 2) = v49;
              *(&v98 - 8) = 1;
              v115 = v49;
              sub_21E49AC78(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel, &unk_21E4E5200);

              sub_21E4DB708();
              v14 = v103;
            }

            ++v44;
            if (v48 == v109)
            {
              v50 = v110;
              goto LABEL_69;
            }
          }
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    v33 = *(v14 + 16);
    if (v33)
    {
      goto LABEL_32;
    }
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v50 = MEMORY[0x277D84F90];
    (v102)(MEMORY[0x277D84F90]);
LABEL_69:

    *(v100 + v99) = 0;

    v115 = 0;
    v116 = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000051, 0x800000021E4F02E0);
    v54 = v50[2];
    if (v54)
    {
      v113 = MEMORY[0x277D84F90];
      sub_21E455A48(0, v54, 0);
      v55 = v50;
      v56 = v113;
      v57 = *(v104 + 16);
      v110 = v55;
      v111 = v57;
      v58 = v55 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
      v109 = *(v104 + 72);
      v59 = (v104 + 8);
      do
      {
        v60 = v105;
        v61 = v112;
        v111(v105, v58, v112);
        v62 = sub_21E4DB918();
        v64 = v63;
        (*v59)(v60, v61);
        v113 = v56;
        v66 = *(v56 + 16);
        v65 = *(v56 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21E455A48((v65 > 1), v66 + 1, 1);
          v56 = v113;
        }

        *(v56 + 16) = v66 + 1;
        v67 = v56 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v64;
        v58 += v109;
        --v54;
      }

      while (v54);
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    v68 = MEMORY[0x223D5AD60](v56, MEMORY[0x277D837D0]);
    v70 = v69;

    MEMORY[0x223D5ACB0](v68, v70);

    v72 = v115;
    v71 = v116;
    v74 = v101;
    v73 = v102;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v75 = sub_21E4DBCC8();
    __swift_project_value_buffer(v75, qword_280C14558);
    v76 = sub_21E4DD1F8();
    v115 = 0xD00000000000002DLL;
    v116 = 0x800000021E4F0250;
    v77 = sub_21E45C20C(0);
    if (v78)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v77);

      MEMORY[0x223D5ACB0](v113, v114);
    }

    v79 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v79 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v79)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v72, v71);
      MEMORY[0x223D5ACB0](v113, v114);
    }

    v81 = v115;
    v80 = v116;
    v82 = sub_21E4DBCB8();
    if (os_log_type_enabled(v82, v76))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v113 = v84;
      *v83 = 136315138;
      v85 = sub_21E426648(v81, v80, &v113);

      *(v83 + 4) = v85;
      _os_log_impl(&dword_21E3EB000, v82, v76, "%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x223D5BF10](v84, -1, -1);
      MEMORY[0x223D5BF10](v83, -1, -1);
    }

    else
    {
    }

    sub_21E3F1EB0(v73, v74);
  }

  else
  {
LABEL_88:

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v86 = sub_21E4DBCC8();
    __swift_project_value_buffer(v86, qword_280C14558);
    v87 = sub_21E4DD1F8();
    v115 = 0xD00000000000002DLL;
    v116 = 0x800000021E4F0250;
    v88 = sub_21E45C20C(0);
    v90 = v101;
    v89 = v102;
    if (v91)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v88);

      MEMORY[0x223D5ACB0](v113, v114);
    }

    if (("ete suggestions: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4F0340);
      MEMORY[0x223D5ACB0](v113, v114);
    }

    v93 = v115;
    v92 = v116;
    v94 = sub_21E4DBCB8();
    if (os_log_type_enabled(v94, v87))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v113 = v96;
      *v95 = 136315138;
      v97 = sub_21E426648(v93, v92, &v113);

      *(v95 + 4) = v97;
      _os_log_impl(&dword_21E3EB000, v94, v87, "%s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      MEMORY[0x223D5BF10](v96, -1, -1);
      MEMORY[0x223D5BF10](v95, -1, -1);
    }

    else
    {
    }

    sub_21E3F1EB0(v89, v90);
  }
}

void sub_21E497BF4(void *a1)
{
  if ([a1 isSummaryDialogPhase] & 1) != 0 || objc_msgSend(a1, sel_isCompletionDialogPhase) || (objc_msgSend(a1, sel_isConfirmedDialogPhase) & 1) != 0 || (objc_msgSend(a1, sel_isCancelledDialogPhase))
  {
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions) = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions) = 1;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000037, 0x800000021E4F03B0);
    v3 = [a1 description];
    v4 = sub_21E4DCF78();
    v6 = v5;

    MEMORY[0x223D5ACB0](v4, v6);

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v7 = sub_21E4DBCC8();
    __swift_project_value_buffer(v7, qword_280C14558);
    v8 = sub_21E4DD1F8();
    v18 = 0xD000000000000012;
    v19 = 0x800000021E4F0390;
    v9 = sub_21E45C20C(0);
    if (v10)
    {
      v17[0] = 32;
      v17[1] = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v9);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v12 = v18;
    v11 = v19;
    v13 = sub_21E4DBCB8();
    if (os_log_type_enabled(v13, v8))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136315138;
      v16 = sub_21E426648(v12, v11, v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_21E3EB000, v13, v8, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223D5BF10](v15, -1, -1);
      MEMORY[0x223D5BF10](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21E497F58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_21E3F1E78(a1, a2);
  return sub_21E3F1EB0(v6, v7);
}

uint64_t sub_21E498094()
{
  v1 = sub_21E4DB698();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = MEMORY[0x277D84F90];

  v6 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  *(v0 + v6) = v5;

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews) = v5;

  *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList) = v5;

  v7 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider);
  sub_21E4DB688();
  v8 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  swift_beginAccess();
  (*(v2 + 40))(v7 + v8, v4, v1);
  result = swift_endAccess();
  *(v7 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink) = 0;
  return result;
}

id SiriSharedUIAssistantSuggestionsViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUIAssistantSuggestionsViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_s12SiriSharedUI0aB34UIAssistantSuggestionsViewProviderC10tapHandlerACySo8NSStringC_SitXE_tcfc_0()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_requestId;
  v2 = sub_21E4DB698();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = 0;
  v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions] = 0;
  v3 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown;
  type metadata accessor for CountdownTimer();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  *&v0[v3] = v4;
  v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_speechTwoShotPromptDetected] = 0;
  v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_dismissSuggestionsRendering] = 0;
  v4[5] = 0x4000000000000000;
  v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_isVoiceTriggerActivation] = 0;
  v5 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler];
  *v13 = 0;
  v13[1] = 0;
  v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdownCompleted] = 0;
  v14 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList] = v14;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = v14;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v14;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider] = [objc_allocWithZone(type metadata accessor for SiriSharedUISuggestionsProvider(0)) init];
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[4] = 0;
  swift_unknownObjectWeakInit();
  v15[5] = 0x4000000000000000;
  *&v0[v3] = v15;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  *(*&v16[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown] + 32) = &off_282F82BD0;
  swift_unknownObjectWeakAssign();
  return v16;
}

char *sub_21E498710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_requestId;
  v9 = sub_21E4DB698();
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = 0;
  v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions] = 0;
  v10 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown;
  type metadata accessor for CountdownTimer();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[4] = 0;
  swift_unknownObjectWeakInit();
  *&v4[v10] = v11;
  v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_speechTwoShotPromptDetected] = 0;
  v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_dismissSuggestionsRendering] = 0;
  v11[5] = 0x4000000000000000;
  v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_isVoiceTriggerActivation] = 0;
  v12 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler];
  *v20 = 0;
  v20[1] = 0;
  v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdownCompleted] = 0;
  v21 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList] = v21;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = v21;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v21;
  *&v4[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider] = [objc_allocWithZone(type metadata accessor for SiriSharedUISuggestionsProvider(0)) init];
  swift_beginAccess();
  v22 = *v12;
  v23 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  sub_21E3F1E78(a1, a2);
  sub_21E3F1EB0(v22, v23);
  swift_beginAccess();
  v24 = *v13;
  v25 = v13[1];
  *v13 = a3;
  v13[1] = a4;
  sub_21E3F1E78(a3, a4);
  sub_21E3F1EB0(v24, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[4] = 0;
  swift_unknownObjectWeakInit();
  v26[5] = 0x4000000000000000;
  *&v4[v10] = v26;

  v30.receiver = v4;
  v30.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(0);
  v27 = objc_msgSendSuper2(&v30, sel_init);
  *(*&v27[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown] + 32) = &off_282F82BD0;
  swift_unknownObjectWeakAssign();
  return v27;
}

char *sub_21E498A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_requestId;
  v12 = sub_21E4DB698();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions] = 0;
  v13 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown;
  type metadata accessor for CountdownTimer();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[4] = 0;
  swift_unknownObjectWeakInit();
  *&v8[v13] = v14;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_speechTwoShotPromptDetected] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_dismissSuggestionsRendering] = 0;
  v14[5] = 0x4000000000000000;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_isVoiceTriggerActivation] = 0;
  v15 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler];
  *v23 = 0;
  v23[1] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdownCompleted] = 0;
  v24 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider] = [objc_allocWithZone(type metadata accessor for SiriSharedUISuggestionsProvider(0)) init];
  swift_beginAccess();
  v25 = *v15;
  v26 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  sub_21E3F1E78(a1, a2);
  sub_21E3F1EB0(v25, v26);
  swift_beginAccess();
  v27 = *v16;
  v28 = v16[1];
  *v16 = a3;
  v16[1] = a4;
  sub_21E3F1E78(a3, a4);
  sub_21E3F1EB0(v27, v28);
  swift_beginAccess();
  v29 = *v17;
  v30 = v17[1];
  *v17 = a5;
  v17[1] = a6;
  sub_21E3F1E78(a5, a6);
  sub_21E3F1EB0(v29, v30);
  swift_beginAccess();
  v31 = *v18;
  v32 = v18[1];
  *v18 = a7;
  v18[1] = a8;
  sub_21E3F1E78(a7, a8);
  sub_21E3F1EB0(v31, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[4] = 0;
  swift_unknownObjectWeakInit();
  v33[5] = 0x4000000000000000;
  *&v8[v13] = v33;

  v42.receiver = v8;
  v42.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(0);
  v34 = objc_msgSendSuper2(&v42, sel_init);
  *(*&v34[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown] + 32) = &off_282F82BD0;
  swift_unknownObjectWeakAssign();
  return v34;
}

char *sub_21E498D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_requestId;
  v12 = sub_21E4DB698();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsDataForExposureCallback] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions] = 0;
  v13 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown;
  type metadata accessor for CountdownTimer();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[4] = 0;
  swift_unknownObjectWeakInit();
  *&v8[v13] = v14;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_speechTwoShotPromptDetected] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_dismissSuggestionsRendering] = 0;
  v14[5] = 0x4000000000000000;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_isVoiceTriggerActivation] = 0;
  v15 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressDownHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingSuggestionsPressUpHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressDownHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsPressUpHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressDownHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_starterAndTypingPressUpHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressDownHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerPressUpHandler];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler];
  *v23 = 0;
  v23[1] = 0;
  v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdownCompleted] = 0;
  v24 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v24;
  *&v8[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsProvider] = [objc_allocWithZone(type metadata accessor for SiriSharedUISuggestionsProvider(0)) init];
  swift_beginAccess();
  v25 = *v19;
  v26 = v19[1];
  *v19 = a1;
  v19[1] = a2;
  sub_21E3F1E78(a1, a2);
  sub_21E3F1EB0(v25, v26);
  swift_beginAccess();
  v27 = *v20;
  v28 = v20[1];
  *v20 = a3;
  v20[1] = a4;
  sub_21E3F1E78(a3, a4);
  sub_21E3F1EB0(v27, v28);
  swift_beginAccess();
  v29 = *v21;
  v30 = v21[1];
  *v21 = a5;
  v21[1] = a6;
  sub_21E3F1E78(a5, a6);
  sub_21E3F1EB0(v29, v30);
  swift_beginAccess();
  v31 = *v22;
  v32 = v22[1];
  *v22 = a7;
  v22[1] = a8;
  sub_21E3F1E78(a7, a8);
  sub_21E3F1EB0(v31, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[4] = 0;
  swift_unknownObjectWeakInit();
  v33[5] = 0x4000000000000000;
  *&v8[v13] = v33;

  v42.receiver = v8;
  v42.super_class = type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(0);
  v34 = objc_msgSendSuper2(&v42, sel_init);
  *(*&v34[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_conversationStarterHesitationCountdown] + 32) = &off_282F82BD0;
  swift_unknownObjectWeakAssign();
  return v34;
}

double sub_21E4990D0(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a6;
  v35 = a4;
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278, &unk_21E4E6570);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968, &qword_21E4E5240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v15 = sub_21E4DBCC8();
  __swift_project_value_buffer(v15, qword_280C14558);
  v16 = sub_21E4DD1F8();
  v41 = 0xD00000000000007FLL;
  v42 = 0x800000021E4F0860;
  v17 = sub_21E45C20C(0);
  if (v18)
  {
    v43 = 32;
    v44 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v17);

    MEMORY[0x223D5ACB0](v43, v44);
  }

  if (("TB,N,VshouldShow" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v43 = 32;
    v44 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002BLL, 0x800000021E4ED580);
    MEMORY[0x223D5ACB0](v43, v44);
  }

  v19 = v41;
  v20 = v42;
  v21 = sub_21E4DBCB8();
  if (os_log_type_enabled(v21, v16))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136315138;
    v24 = sub_21E426648(v19, v20, &v43);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_21E3EB000, v21, v16, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223D5BF10](v23, -1, -1);
    MEMORY[0x223D5BF10](v22, -1, -1);
  }

  else
  {
  }

  v25 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews] = MEMORY[0x277D84F90];

  v26 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  *&v7[v26] = v25;

  v27 = sub_21E4DD158();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_21E424848(v35, v11, &qword_27CEC5278, &unk_21E4E6570);
  v28 = (*(v34 + 80) + 57) & ~*(v34 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v7;
  *(v29 + 40) = v36 & 1;
  *(v29 + 48) = v37;
  *(v29 + 56) = v38 & 1;
  sub_21E49970C(v11, v29 + v28);
  v30 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  v32 = v7;

  sub_21E46011C(0, 0, v14, &unk_21E4E8DD8, v29);

  return result;
}

uint64_t sub_21E499518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21E424FF4;

  return sub_21E48F740(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E49960C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21E424FF4;

  return sub_21E4918F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E49970C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278, &unk_21E4E6570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E49977C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278, &unk_21E4E6570) - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v12 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21E424FF4;

  return sub_21E492CA0(a1, v12, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t type metadata accessor for SiriSharedUIAssistantSuggestionsViewProvider(uint64_t a1)
{
  result = qword_280C15270;
  if (!qword_280C15270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E499934(uint64_t a1)
{
  sub_21E49A3B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E49A3B0(uint64_t a1)
{
  if (!qword_280C15B30)
  {
    sub_21E4DB698();
    v1 = sub_21E4DD318();
    if (!v2)
    {
      atomic_store(v1, &qword_280C15B30);
    }
  }
}

double sub_21E49A434(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, unsigned __int8 *a6, void (**a7)(void, void))
{
  LODWORD(v49) = a4;
  v48 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968, &qword_21E4E5240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  v16 = a6[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_shouldSuppressSuggestions];
  _Block_copy(a7);
  if (v16 == 1)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v17 = sub_21E4DBCC8();
    __swift_project_value_buffer(v17, qword_280C14558);
    v18 = sub_21E4DD1F8();
    v52 = 0xD000000000000054;
    v53 = 0x800000021E4EFE70;
    v19 = sub_21E45C20C(0);
    if (v20)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v19);

      MEMORY[0x223D5ACB0](v50, v51);
    }

    if (("on continuer suggestions" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000051, 0x800000021E4EFF10);
      MEMORY[0x223D5ACB0](v50, v51);
    }

    v22 = v52;
    v21 = v53;
    v23 = sub_21E4DBCB8();
    if (os_log_type_enabled(v23, v18))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315138;
      v26 = sub_21E426648(v22, v21, &v50);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_21E3EB000, v23, v18, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223D5BF10](v25, -1, -1);
      MEMORY[0x223D5BF10](v24, -1, -1);
    }

    else
    {
    }

    sub_21E43F008(0, &qword_280C14100, off_278353770);
    v49 = sub_21E4DD078();
    a7[2](a7, v49);

    v37 = v49;
  }

  else
  {
    v46 = a5;
    v47 = a3;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v27 = sub_21E4DBCC8();
    __swift_project_value_buffer(v27, qword_280C14558);
    v28 = sub_21E4DD1F8();
    v52 = 0xD000000000000054;
    v53 = 0x800000021E4EFE70;
    v29 = sub_21E45C20C(0);
    if (v30)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v29);

      MEMORY[0x223D5ACB0](v50, v51);
    }

    if (("nSource:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000038, 0x800000021E4EFED0);
      MEMORY[0x223D5ACB0](v50, v51);
    }

    v32 = v52;
    v31 = v53;
    v33 = sub_21E4DBCB8();
    if (os_log_type_enabled(v33, v28))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315138;
      v36 = sub_21E426648(v32, v31, &v50);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_21E3EB000, v33, v28, "%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223D5BF10](v35, -1, -1);
      MEMORY[0x223D5BF10](v34, -1, -1);
    }

    else
    {
    }

    v39 = v47;
    v40 = MEMORY[0x277D84F90];
    *&a6[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews] = MEMORY[0x277D84F90];

    *&a6[OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList] = v40;

    v41 = sub_21E4DD158();
    (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v43 = v48;
    *(v42 + 32) = a6;
    *(v42 + 40) = v43;
    *(v42 + 48) = a2;
    *(v42 + 56) = v39;
    *(v42 + 64) = v49 & 1;
    *(v42 + 72) = v46;
    *(v42 + 80) = sub_21E49AECC;
    *(v42 + 88) = v15;
    v44 = a6;

    v45 = v39;

    sub_21E46011C(0, 0, v14, &unk_21E4E8D28, v42);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21E49AB88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_21E49ABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_21E49AC78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E49ACD8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278, &unk_21E4E6570) - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v12 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21E4240F0;

  return sub_21E48E360(a1, v12, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t objectdestroy_238Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

SiriSharedUIEnhancedMaterialUtilities __swiftcall SiriSharedUIEnhancedMaterialUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SiriSharedUIEnhancedMaterialUtilities()
{
  result = qword_27CEC6310;
  if (!qword_27CEC6310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC6310);
  }

  return result;
}

id AssistantHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21E49B450(a1);
  (*(*(*(v2 + class metadata base offset for AssistantHostingController) - 8) + 8))(a1);
  return v5;
}

id sub_21E49B05C()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_21E49B090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AssistantHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController + 8), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    [v6 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

void sub_21E49B148(void *a1)
{
  v4 = a1;
  sub_21E49B090(v4, v1, v2, v3);
}

id AssistantHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_21E49B450(a1);
  (*(*(*(v3 + class metadata base offset for AssistantHostingController) - 8) + 8))(a1);
  return v4;
}

id sub_21E49B234(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AssistantHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id AssistantHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AssistantHostingController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for AssistantHostingController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_21E49B450(uint64_t a1)
{
  v2 = sub_21E4DC518();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v9 - v4, a1);
  v6 = sub_21E4DC2C8();
  result = [v6 view];
  if (result)
  {
    v8 = result;
    [result setBackgroundColor_];

    sub_21E4DC508();
    sub_21E4DC2A8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E49B6CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_21E49B714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E49B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44[1] = a1;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v44 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6368, &qword_21E4E9088);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v59 = v44 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6530, &qword_21E4E9228);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = v44 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6360, &qword_21E4E9080);
  MEMORY[0x28223BE20](v47);
  v46 = v44 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6358, &qword_21E4E9078);
  MEMORY[0x28223BE20](v45);
  v53 = v44 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6350, &qword_21E4E9070);
  MEMORY[0x28223BE20](v51);
  v50 = v44 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6348, &qword_21E4E9068);
  countAndFlagsBits = MEMORY[0x28223BE20](v48);
  v57 = v44 - v13;
  v14 = *(v2 + 24);
  if (v14)
  {
    v15 = SFCardSection.copyableText()();
    countAndFlagsBits = v15.value._countAndFlagsBits;
    if (v15.value._object)
    {
    }
  }

  MEMORY[0x28223BE20](countAndFlagsBits);
  v44[-2] = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6378, &qword_21E4E9098);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6380, &qword_21E4E90A0);
  v18 = sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
  v60 = v16;
  v61 = MEMORY[0x277D837D0];
  v62 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21E4DC708();
  if (v14 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    SFCardSection.punchoutCommandUrl()(v6);
    v20 = sub_21E4DB588();
    (*(*(v20 - 8) + 48))(v6, 1, v20);
  }

  else
  {
    v21 = sub_21E4DB588();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  v22 = sub_21E424BC0(v6, &qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v22);
  v44[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6370, &qword_21E4E9090);
  v60 = v16;
  v61 = v17;
  v62 = v18;
  v63 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_21E4DB588();
  v25 = v55;
  v60 = v55;
  v61 = v24;
  v62 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v49;
  v27 = v59;
  sub_21E4DC708();
  (*(v52 + 8))(v27, v25);
  sub_21E44C8E4(v3, &v60);
  v28 = swift_allocObject();
  sub_21E4A38BC(&v60, v28 + 16);
  v29 = v46;
  (*(v54 + 32))(v46, v26, v56);
  v30 = (v29 + *(v47 + 36));
  *v30 = sub_21E4A3E24;
  v30[1] = v28;
  v31 = v53;
  sub_21E42D214(v29, v53, &qword_27CEC6360, &qword_21E4E9080);
  v32 = (v31 + *(v45 + 36));
  *v32 = sub_21E49C388;
  v32[1] = 0;
  sub_21E44C8E4(v3, &v60);
  v33 = swift_allocObject();
  sub_21E4A38BC(&v60, v33 + 16);
  v34 = v31;
  v35 = v50;
  sub_21E42D214(v34, v50, &qword_27CEC6358, &qword_21E4E9078);
  v36 = (v35 + *(v51 + 36));
  *v36 = sub_21E4A3E2C;
  v36[1] = v33;
  v37 = v57;
  sub_21E42D214(v35, v57, &qword_27CEC6350, &qword_21E4E9070);
  v38 = (v37 + *(v48 + 36));
  *v38 = sub_21E49C8EC;
  v38[1] = 0;
  sub_21E44C8E4(v3, &v60);
  v39 = swift_allocObject();
  sub_21E4A38BC(&v60, v39 + 16);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6328, &qword_21E4E9048);
  v41 = v58;
  v42 = (v58 + *(v40 + 36));
  sub_21E4DBF68();
  sub_21E4DD138();
  *v42 = &unk_21E4E9238;
  v42[1] = v39;
  return sub_21E42D214(v37, v41, &qword_27CEC6348, &qword_21E4E9068);
}

double sub_21E49BFE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    SFCardSection.copyableText()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6378, &qword_21E4E9098);
  sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
  sub_21E4DC6C8();

  return result;
}

uint64_t sub_21E49C0B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  if (*(a2 + 24) && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    SFCardSection.punchoutCommandUrl()(v5);
  }

  else
  {
    v6 = sub_21E4DB588();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6368, &qword_21E4E9088);
  sub_21E4DB588();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6378, &qword_21E4E9098);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6380, &qword_21E4E90A0);
  v9 = sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
  v12 = v7;
  v13 = MEMORY[0x277D837D0];
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21E4DC6C8();
  return sub_21E424BC0(v5, &qword_27CEC6700, &qword_21E4E90E0);
}

uint64_t sub_21E49C2D4(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0, &qword_21E4E6DE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_21E4E57E0;
    *(v2 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6528, &unk_21E4E9218);
  return sub_21E4DCA18();
}

void sub_21E49C3B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 >> 60 == 15)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v5 = sub_21E4DBCC8();
    __swift_project_value_buffer(v5, qword_280C14558);
    v6 = sub_21E4DD1F8();
    v7 = sub_21E45C20C(0);
    if (v8)
    {
      v29 = 32;
      v30 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v7);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("d to retrieve the image. " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v29 = 32;
      v30 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000002ALL, 0x800000021E4F0AE0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v9 = sub_21E4DBCB8();
    if (os_log_type_enabled(v9, v6))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      v12 = sub_21E426648(0xD000000000000015, 0x800000021E4F0A90, &v29);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_21E3EB000, v9, v6, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223D5BF10](v11, -1, -1);
      MEMORY[0x223D5BF10](v10, -1, -1);
    }

    else
    {
    }

LABEL_28:
    v27 = a2[5];
    v28 = a2[6];
    v29 = v3;
    v30 = v4;
    sub_21E4A3F68(v3, v4);
    sub_21E4A3F68(v27, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6408, &qword_21E4E9130);
    sub_21E4DCA18();
    sub_21E4A3920(v27, v28);

    return;
  }

  sub_21E4248CC(v3, v4);
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000034, 0x800000021E4F0B10);
  v13 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_20;
    }

    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(v4);
LABEL_20:
    v29 = v14;
    v18 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v18);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v19 = sub_21E4DBCC8();
    __swift_project_value_buffer(v19, qword_280C14558);
    v20 = sub_21E4DD1F8();
    v21 = sub_21E45C20C(0);
    if (v22)
    {
      v29 = 32;
      v30 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v21);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v23 = sub_21E4DBCB8();
    if (os_log_type_enabled(v23, v20))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      v26 = sub_21E426648(0xD000000000000015, 0x800000021E4F0A90, &v29);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_21E3EB000, v23, v20, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223D5BF10](v25, -1, -1);
      MEMORY[0x223D5BF10](v24, -1, -1);
    }

    else
    {
    }

    sub_21E4A3920(v3, v4);
    goto LABEL_28;
  }

  LODWORD(v14) = HIDWORD(v3) - v3;
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v14 = v14;
    goto LABEL_20;
  }

  __break(1u);
}

double sub_21E49C8EC(uint64_t *a1)
{
  sub_21E4A3920(*a1, a1[1]);
  result = 0.0;
  *a1 = xmmword_21E4E6AE0;
  return result;
}

uint64_t sub_21E49C924(uint64_t a1)
{
  v1[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  v1[12] = swift_task_alloc();
  v2 = sub_21E4DB588();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_21E4DD128();
  v1[16] = sub_21E4DD118();
  v4 = sub_21E4DD0F8();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x2822009F8](sub_21E49CA50, v4, v3);
}

uint64_t sub_21E49CA50()
{
  if (!*(v0[11] + 24))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];

    (*(v5 + 56))(v6, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  SFCardSection.imageUrl()(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

LABEL_5:
    sub_21E424BC0(v0[12], &qword_27CEC6700, &qword_21E4E90E0);

    v7 = v0[1];

    return v7();
  }

  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v0[19] = [objc_opt_self() sharedSession];
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_21E49CC10;
  v10 = v0[15];

  return MEMORY[0x28211ED00](v10, 0);
}

uint64_t sub_21E49CC10(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 168) = v3;

  if (v3)
  {
    v9 = v8[17];
    v10 = v8[18];
    v11 = sub_21E49CE64;
  }

  else
  {
    v12 = v8[19];

    v8[22] = a2;
    v8[23] = a1;
    v9 = v8[17];
    v10 = v8[18];
    v11 = sub_21E49CD54;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21E49CD54()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v6[13];
  v8 = v6[14];
  v9 = v6[15];
  v0[5] = v7;
  v0[6] = v8;
  v0[7] = v9;
  v0[8] = v1;
  v0[9] = v2;
  sub_21E4A3F68(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6408, &qword_21E4E9130);
  sub_21E4DCA18();
  sub_21E4A3920(v0[5], v0[6]);

  (*(v5 + 8))(v3, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E49CE64()
{
  v18 = v0;
  v1 = v0[19];

  sub_21E4DD3A8();

  v16 = 0xD000000000000029;
  v17 = 0x800000021E4F0AB0;
  swift_getErrorValue();
  v2 = sub_21E4DD558();
  MEMORY[0x223D5ACB0](v2);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD218();
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = (0x800000021E4F0AB0 >> 56) & 0xF;
  if ((0x800000021E4F0AB0 & 0x2000000000000000) == 0)
  {
    v7 = 41;
  }

  if (v7)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000029, 0x800000021E4F0AB0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = sub_21E4DBCB8();
  v9 = os_log_type_enabled(v8, v4);
  v10 = v0[21];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(0xD000000000000015, 0x800000021E4F0A90, &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v8, v4, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[14] + 8))(v0[15], v0[13]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_21E49D15C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6318, &qword_21E4E9038);
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = &v39 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6320, &qword_21E4E9040);
  MEMORY[0x28223BE20](v49);
  v51 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6328, &qword_21E4E9048);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6330, &qword_21E4E9050);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v39 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6338, &qword_21E4E9058);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v39 - v13;
  v14 = *(v2 + 32);
  v15 = sub_21E49B7A0(a1, v10);
  if (v14 == 1)
  {
    sub_21E44C8E4(v2, &v54);
    v16 = swift_allocObject();
    sub_21E4A38BC(&v54, v16 + 16);
    v17 = sub_21E4A3268();
    v18 = v8;
    v43 = v8;
    v19 = v17;
    v44 = v17;
    sub_21E4DC728();

    v20 = sub_21E424BC0(v10, &qword_27CEC6328, &qword_21E4E9048);
    v42 = &v39;
    v21 = MEMORY[0x28223BE20](v20);
    v41 = &v39 - 4;
    MEMORY[0x28223BE20](v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6340, &qword_21E4E9060);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63A8, &qword_21E4E90C8);
    v54 = v18;
    v55 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_21E42D5A8(&unk_280C14268, &qword_27CEC6340, &qword_21E4E9060, MEMORY[0x277CE1198]);
    v38 = sub_21E4A3748();
    v24 = v45;
    v25 = v48;
    v26 = v23;
    sub_21E4DC788();
    (*(v46 + 8))(v12, v25);
    v27 = v47;
    v28 = v50;
    (*(v47 + 16))(v51, v24, v50);
    swift_storeEnumTagMultiPayload();
    v54 = v25;
    v55 = v22;
    v56 = v26;
    v57 = OpaqueTypeConformance2;
    v58 = v37;
    v59 = v38;
    swift_getOpaqueTypeConformance2();
    v54 = v43;
    v55 = v22;
    v56 = v44;
    v57 = v37;
    swift_getOpaqueTypeConformance2();
    sub_21E4DC398();
    return (*(v27 + 8))(v24, v28);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6340, &qword_21E4E9060);
    v31 = sub_21E4A3268();
    v32 = sub_21E42D5A8(&unk_280C14268, &qword_27CEC6340, &qword_21E4E9060, MEMORY[0x277CE1198]);
    sub_21E4DC798();
    sub_21E424BC0(v10, &qword_27CEC6328, &qword_21E4E9048);
    v33 = v53;
    (*(v4 + 16))(v51, v6, v53);
    swift_storeEnumTagMultiPayload();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC63A8, &qword_21E4E90C8);
    v54 = v8;
    v55 = v31;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_21E4A3748();
    v54 = v48;
    v55 = v30;
    v56 = v34;
    v57 = v35;
    v58 = v32;
    v59 = v36;
    swift_getOpaqueTypeConformance2();
    v54 = v8;
    v55 = v30;
    v56 = v31;
    v57 = v32;
    swift_getOpaqueTypeConformance2();
    sub_21E4DC398();
    return (*(v4 + 8))(v6, v33);
  }
}

void *sub_21E49D944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a2;
  v31 = a3;
  v4 = type metadata accessor for SiriSharedUIWebView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63B0, &qword_21E4E90D0);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63B8, &qword_21E4E90D8);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_21E4DB588();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    SFCardSection.punchoutCommandUrl()(v17);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v21, v17, v18);
      (*(v19 + 16))(v6, v21, v18);
      sub_21E4DCB08();
      sub_21E4DC048();
      sub_21E4A3C88(v6, v9, type metadata accessor for SiriSharedUIWebView);
      v22 = &v9[*(v30 + 36)];
      v23 = v37;
      *(v22 + 4) = v36;
      *(v22 + 5) = v23;
      *(v22 + 6) = v38;
      v24 = v33;
      *v22 = v32;
      *(v22 + 1) = v24;
      v25 = v35;
      *(v22 + 2) = v34;
      *(v22 + 3) = v25;
      sub_21E42D214(v9, v11, &qword_27CEC63B0, &qword_21E4E90D0);
      sub_21E424848(v11, v14, &qword_27CEC63B0, &qword_21E4E90D0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6378, &qword_21E4E9098);
      sub_21E4A3800();
      sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
      sub_21E4DC398();
      sub_21E424BC0(v11, &qword_27CEC63B0, &qword_21E4E90D0);
      return (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_21E424BC0(v17, &qword_27CEC6700, &qword_21E4E90E0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6378, &qword_21E4E9098);
  (*(*(v27 - 8) + 16))(v14, v29, v27);
  swift_storeEnumTagMultiPayload();
  sub_21E4A3800();
  sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
  return sub_21E4DC398();
}

uint64_t sub_21E49DE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21E4DC278();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63C0, &qword_21E4E90E8);
  return sub_21E49DEBC(a1, a2 + *(v4 + 44));
}

uint64_t sub_21E49DEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63C8, &qword_21E4E90F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v54 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63D0, &qword_21E4E90F8);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = (&v54 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63D8, &qword_21E4E9100);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v54 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63E0, &qword_21E4E9108);
  MEMORY[0x28223BE20](v58);
  v15 = &v54 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63E8, &qword_21E4E9110);
  MEMORY[0x28223BE20](v55);
  v57 = &v54 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63F0, &qword_21E4E9118);
  MEMORY[0x28223BE20](v56);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = sub_21E4DB588();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC63F8, &qword_21E4E9120);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v60 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v67 = &v54 - v32;
  if (!*(a1 + 24))
  {
    v36 = *(v26 + 56);
    v36(v24, 1, 1, v25);
    sub_21E424BC0(v24, &qword_27CEC6700, &qword_21E4E90E0);
    v36(v22, 1, 1, v25);
    goto LABEL_8;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    (*(v26 + 56))(v24, 1, 1, v25);
LABEL_7:
    sub_21E424BC0(v24, &qword_27CEC6700, &qword_21E4E90E0);
    SFCardSection.imageUrl()(v22);
    if ((*(v26 + 48))(v22, 1, v25) != 1)
    {
      sub_21E424BC0(v22, &qword_27CEC6700, &qword_21E4E90E0);
      *v15 = sub_21E4DC278();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6418, &qword_21E4E9140);
      sub_21E4A0384(a1, &v15[*(v38 + 44)]);
      sub_21E424848(v15, v57, &qword_27CEC63E0, &qword_21E4E9108);
      swift_storeEnumTagMultiPayload();
      v39 = MEMORY[0x277CE1198];
      sub_21E42D5A8(&qword_27CEC6420, &qword_27CEC63F0, &qword_21E4E9118, MEMORY[0x277CE1198]);
      sub_21E42D5A8(&qword_27CEC6428, &qword_27CEC63E0, &qword_21E4E9108, v39);
      v35 = v67;
      sub_21E4DC398();
      sub_21E424BC0(v15, &qword_27CEC63E0, &qword_21E4E9108);
      goto LABEL_10;
    }

LABEL_8:
    sub_21E424BC0(v22, &qword_27CEC6700, &qword_21E4E90E0);
    v37 = 1;
    v35 = v67;
    goto LABEL_11;
  }

  SFCardSection.punchoutCommandUrl()(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_7;
  }

  (*(v26 + 32))(v28, v24, v25);
  *v18 = sub_21E4DC278();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6430, &qword_21E4E9148);
  sub_21E49F4DC(v28, &v18[*(v33 + 44)]);
  sub_21E424848(v18, v57, &qword_27CEC63F0, &qword_21E4E9118);
  swift_storeEnumTagMultiPayload();
  v34 = MEMORY[0x277CE1198];
  sub_21E42D5A8(&qword_27CEC6420, &qword_27CEC63F0, &qword_21E4E9118, MEMORY[0x277CE1198]);
  sub_21E42D5A8(&qword_27CEC6428, &qword_27CEC63E0, &qword_21E4E9108, v34);
  v35 = v67;
  sub_21E4DC398();
  sub_21E424BC0(v18, &qword_27CEC63F0, &qword_21E4E9118);
  (*(v26 + 8))(v28, v25);
LABEL_10:
  v37 = 0;
LABEL_11:
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6400, &qword_21E4E9128);
  (*(*(v40 - 8) + 56))(v35, v37, 1, v40);
  v41 = *(a1 + 120);
  v70 = *(a1 + 104);
  v71 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6408, &qword_21E4E9130);
  sub_21E4DCA08();
  if (v69 >> 60 == 15)
  {
    v42 = v59;
    sub_21E49E89C(v59);
    v43 = v42;
    v44 = v63;
    sub_21E42D214(v43, v63, &qword_27CEC63D0, &qword_21E4E90F8);
    v45 = 0;
  }

  else
  {
    sub_21E4A3920(v68, v69);
    v45 = 1;
    v44 = v63;
  }

  (*(v61 + 56))(v44, v45, 1, v62);
  sub_21E49EC38(v7);
  v46 = v60;
  sub_21E424848(v35, v60, &qword_27CEC63F8, &qword_21E4E9120);
  v47 = v64;
  sub_21E424848(v44, v64, &qword_27CEC63D8, &qword_21E4E9100);
  v48 = v66;
  sub_21E424848(v7, v66, &qword_27CEC63C8, &qword_21E4E90F0);
  v49 = v44;
  v50 = v7;
  v51 = v65;
  sub_21E424848(v46, v65, &qword_27CEC63F8, &qword_21E4E9120);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6410, &qword_21E4E9138);
  sub_21E424848(v47, v51 + *(v52 + 48), &qword_27CEC63D8, &qword_21E4E9100);
  sub_21E424848(v48, v51 + *(v52 + 64), &qword_27CEC63C8, &qword_21E4E90F0);
  sub_21E424BC0(v50, &qword_27CEC63C8, &qword_21E4E90F0);
  sub_21E424BC0(v49, &qword_27CEC63D8, &qword_21E4E9100);
  sub_21E424BC0(v67, &qword_27CEC63F8, &qword_21E4E9120);
  sub_21E424BC0(v48, &qword_27CEC63C8, &qword_21E4E90F0);
  sub_21E424BC0(v47, &qword_27CEC63D8, &qword_21E4E9100);
  return sub_21E424BC0(v46, &qword_27CEC63F8, &qword_21E4E9120);
}

void *sub_21E49E89C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6520, &qword_21E4E9210);
  MEMORY[0x28223BE20](v20[0]);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E30, &qword_21E4E9150);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = *(v1 + 72);
  v21[0] = *(v1 + 64);
  v21[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6528, &unk_21E4E9218);
  result = sub_21E4DCA08();
  v11 = v22;
  v12 = MEMORY[0x277D84F90];
  v21[0] = MEMORY[0x277D84F90];
  v13 = *(v22 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      v15 = v14 + 1;

      result = sub_21E4764F0(v16);
      v14 = v15;
      if (v13 == v15)
      {
        v12 = v21[0];
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v17 = *(v12 + 16);

    if (v17)
    {
      sub_21E44C8E4(v2, v21);
      v18 = swift_allocObject();
      v19 = sub_21E4A38BC(v21, v18 + 16);
      MEMORY[0x28223BE20](v19);
      v20[-2] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
      sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
      sub_21E4DCA48();
      (*(v6 + 16))(v4, v8, v5);
      swift_storeEnumTagMultiPayload();
      sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
      sub_21E4DC398();
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
      return sub_21E4DC398();
    }
  }

  return result;
}

uint64_t sub_21E49EC38@<X0>(void *a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64C0, &qword_21E4E91D0);
  MEMORY[0x28223BE20](v2);
  v4 = v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64C8, &qword_21E4E91D8);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64D0, &qword_21E4E91E0);
  MEMORY[0x28223BE20](v38);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E30, &qword_21E4E9150);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64D8, &qword_21E4E91E8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v32 - v16;
  v18 = *(v1 + 24);
  v39 = v15;
  if (v18)
  {
    v34 = v9;
    v36 = v17;
    v37 = v5;
    v35 = v18;
    sub_21E4A17B4(v35);
    v20 = v19;
    v21 = [objc_opt_self() saeAvailable];
    if ((v21 & 1) != 0 || *(v20 + 16) <= 1uLL)
    {
      sub_21E44C8E4(v1, v41);
      v26 = swift_allocObject();
      v27 = sub_21E4A38BC(v41, v26 + 16);
      v33 = v10;
      *(v26 + 144) = v20;
      MEMORY[0x28223BE20](v27);
      v32[-2] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
      sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
      sub_21E4DCA48();
      v28 = v33;
      (*(v11 + 16))(v34, v13, v33);
      swift_storeEnumTagMultiPayload();
      sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
      sub_21E42D5A8(&qword_280C142F8, &qword_27CEC64C8, &qword_21E4E91D8, MEMORY[0x277CDE5B0]);
      v25 = v36;
      sub_21E4DC398();
      (*(v11 + 8))(v13, v28);
    }

    else
    {
      v32[1] = v32;
      v22 = MEMORY[0x28223BE20](v21);
      v32[-2] = v20;
      v32[-1] = v1;
      MEMORY[0x28223BE20](v22);
      v32[-2] = v1;
      v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64E0, &qword_21E4E91F0);
      sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
      sub_21E4A3B24();
      sub_21E4DC628();

      v23 = v33;
      v24 = v37;
      (*(v33 + 16))(v34, v7, v37);
      swift_storeEnumTagMultiPayload();
      sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
      sub_21E42D5A8(&qword_280C142F8, &qword_27CEC64C8, &qword_21E4E91D8, MEMORY[0x277CDE5B0]);
      v25 = v36;
      sub_21E4DC398();
      (*(v23 + 8))(v7, v24);
    }

    sub_21E424848(v25, v4, &qword_27CEC64D8, &qword_21E4E91E8);
    swift_storeEnumTagMultiPayload();
    sub_21E4A3A10();
    sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
    sub_21E4DC398();

    return sub_21E424BC0(v25, &qword_27CEC64D8, &qword_21E4E91E8);
  }

  else
  {
    sub_21E44C8E4(v1, v41);
    v30 = swift_allocObject();
    v31 = sub_21E4A38BC(v41, v30 + 16);
    v38 = v32;
    MEMORY[0x28223BE20](v31);
    v32[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
    sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
    sub_21E4DCA48();
    (*(v11 + 16))(v4, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_21E4A3A10();
    sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
    sub_21E4DC398();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_21E49F4DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E30, &qword_21E4E9150);
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6438, &qword_21E4E9158);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v72 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6440, &qword_21E4E9160);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v57 - v11;
  v12 = sub_21E4DB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = v14;
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6448, &qword_21E4E9168);
  v62 = *(v71 - 8);
  v16 = MEMORY[0x28223BE20](v71);
  v70 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v58 = v13;
  v20 = *(v13 + 16);
  v20(v15, a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6450, &qword_21E4E9170);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6458, &qword_21E4E9178);
  v22 = sub_21E4DC3D8();
  v23 = sub_21E42D5A8(&qword_27CEC6460, &qword_27CEC6458, &qword_21E4E9178, MEMORY[0x277CDEFF0]);
  v24 = sub_21E4A3BDC(&qword_27CEC6468, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  v74 = v21;
  v75 = v22;
  v25 = v68;
  v76 = v23;
  v77 = v24;
  v26 = 1;
  swift_getOpaqueTypeConformance2();
  v69 = v19;
  v27 = v20;
  sub_21E4DC618();
  v28 = v60;
  v20(v15, v60, v12);
  v29 = v28;
  sub_21E4DCB98();
  v30 = objc_opt_self();
  v31 = sub_21E4DB548();
  LODWORD(v28) = [v30 supportsURL_];

  v32 = v61;
  if (v28)
  {
    v33 = [v30 defaultReadingList];
    if (v33)
    {
      v34 = v33;
      v27(v15, v29, v12);
      v35 = v58;
      v36 = (*(v58 + 80) + 24) & ~*(v58 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      (*(v35 + 32))(v37 + v36, v15, v12);
      v38 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
      sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
      v39 = v59;
      sub_21E4DCA48();

      (*(v32 + 32))(v25, v39, v67);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  (*(v32 + 56))(v25, v26, 1, v67);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v70;
  v41(v70, v69, v71);
  v44 = v63;
  v43 = v64;
  v45 = *(v64 + 16);
  v46 = v25;
  v47 = v65;
  v45(v63, v73, v65);
  sub_21E424848(v46, v72, &qword_27CEC6438, &qword_21E4E9158);
  v48 = v66;
  v49 = v42;
  v50 = v71;
  v41(v66, v49, v71);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6470, &unk_21E4E9180);
  v45(&v48[*(v51 + 48)], v44, v47);
  v52 = &v48[*(v51 + 64)];
  v53 = v72;
  sub_21E424848(v72, v52, &qword_27CEC6438, &qword_21E4E9158);
  sub_21E424BC0(v68, &qword_27CEC6438, &qword_21E4E9158);
  v54 = *(v43 + 8);
  v54(v73, v47);
  v55 = *(v40 + 8);
  v55(v69, v50);
  sub_21E424BC0(v53, &qword_27CEC6438, &qword_21E4E9158);
  v54(v44, v47);
  return (v55)(v70, v50);
}

uint64_t sub_21E49FC94()
{
  v0 = sub_21E4DC3D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6458, &qword_21E4E9178);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  if (qword_27CEC4728 != -1)
  {
    swift_once();
  }

  v9[0] = qword_27CEC8890;
  v9[1] = *algn_27CEC8898;
  sub_21E42C090();

  sub_21E4DC9E8();
  sub_21E4DC3C8();
  sub_21E42D5A8(&qword_27CEC6460, &qword_27CEC6458, &qword_21E4E9178, MEMORY[0x277CDEFF0]);
  sub_21E4A3BDC(&qword_27CEC6468, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  sub_21E4DC758();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_21E49FF14(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = sub_21E4DB548();
  v21 = 0;
  LODWORD(a1) = [a1 addReadingListItemWithURL:v2 title:0 previewText:0 error:&v21];

  v3 = v21;
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v21;
    v6 = sub_21E4DB4E8();

    swift_willThrow();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_21E4DD3A8();

    v21 = 0xD000000000000026;
    v22 = 0x800000021E4F0980;
    swift_getErrorValue();
    v7 = sub_21E4DD558();
    MEMORY[0x223D5ACB0](v7);

    v9 = v21;
    v8 = v22;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v10 = sub_21E4DBCC8();
    __swift_project_value_buffer(v10, qword_280C14558);
    v11 = sub_21E4DD218();
    v21 = 0xD000000000000013;
    v22 = 0x800000021E4F0960;
    v12 = sub_21E45C20C(0);
    if (v13)
    {
      v23 = 32;
      v24 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v12);

      MEMORY[0x223D5ACB0](v23, v24);
    }

    v14 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v14 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v23 = 32;
      v24 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v9, v8);
      MEMORY[0x223D5ACB0](v23, v24);
    }

    v16 = v21;
    v15 = v22;
    v17 = sub_21E4DBCB8();
    if (os_log_type_enabled(v17, v11))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = sub_21E426648(v16, v15, &v23);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_21E3EB000, v17, v11, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x223D5BF10](v19, -1, -1);
      MEMORY[0x223D5BF10](v18, -1, -1);
    }

    else
    {
    }
  }
}

double sub_21E4A027C@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CEC4730 != -1)
  {
    swift_once();
  }

  sub_21E42C090();

  v2 = sub_21E4DC688();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_21E4DC978();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_21E42C0E4(v2, v4, v6);

  sub_21E42C0F4(v2, v4, v6);

  return result;
}

uint64_t sub_21E4A0384@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6478, &qword_21E4E9190);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v90 = v84 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E30, &qword_21E4E9150);
  v88 = *(v89 - 8);
  v4 = MEMORY[0x28223BE20](v89);
  v87 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v86 = v84 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v85 = v84 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6480, &qword_21E4E9198);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v100 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6488, &qword_21E4E91A0);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6490, &qword_21E4E91A8);
  v95 = *(v17 - 8);
  v96 = v17;
  MEMORY[0x28223BE20](v17);
  v91 = v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6498, &qword_21E4E91B0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v98 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6448, &qword_21E4E9168);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v84 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v84 - v29;
  v31 = sub_21E4DB588();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64A0, &qword_21E4E91B8);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v97 = v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v104 = v84 - v41;
  v94 = a1;
  if (a1[3])
  {
    SFCardSection.punchoutCommandUrl()(v30);
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      (*(v32 + 32))(v37, v30, v31);
      (*(v32 + 16))(v35, v37, v31);
      v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6450, &qword_21E4E9170);
      v84[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6458, &qword_21E4E9178);
      v42 = v23;
      v43 = sub_21E4DC3D8();
      v44 = sub_21E42D5A8(&qword_27CEC6460, &qword_27CEC6458, &qword_21E4E9178, MEMORY[0x277CDEFF0]);
      v45 = sub_21E4A3BDC(&qword_27CEC6468, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
      v105 = v84[0];
      v106 = v43;
      v23 = v42;
      v107 = v44;
      v108 = v45;
      swift_getOpaqueTypeConformance2();
      sub_21E4DC618();
      (*(v32 + 8))(v37, v31);
      (*(v25 + 32))(v104, v27, v24);
      v46 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    (*(v32 + 56))(v30, 1, 1, v31);
  }

  sub_21E424BC0(v30, &qword_27CEC6700, &qword_21E4E90E0);
  v46 = 1;
LABEL_6:
  v47 = 1;
  (*(v25 + 56))(v104, v46, 1, v24);
  v49 = v94[13];
  v48 = v94[14];
  v50 = v94[15];
  v105 = v49;
  v106 = v48;
  v107 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6408, &qword_21E4E9130);
  sub_21E4DCA08();
  v52 = sub_21E4DC968();
  if (v52)
  {
    v109 = v52;
    v110 = v52;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_21E4A39B4();
    sub_21E42C090();
    swift_retain_n();
    v94 = v51;
    sub_21E4DBED8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6458, &qword_21E4E9178);
    sub_21E42D5A8(&qword_27CEC6460, &qword_27CEC6458, &qword_21E4E9178, MEMORY[0x277CDEFF0]);
    v53 = v91;
    sub_21E4DCB88();

    v55 = v95;
    v54 = v96;
    (v95[4])(v23, v53, v96);
    v47 = 0;
  }

  else
  {
    v55 = v95;
    v54 = v96;
  }

  v56 = 1;
  (v55)[7](v23, v47, 1, v54);
  v105 = v49;
  v106 = v48;
  v107 = v50;
  sub_21E4DCA08();
  v57 = v111;
  v58 = v103;
  if (v111 >> 60 != 15)
  {
    v59 = v110;
    v60 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_21E4248CC(v59, v57);
    v61 = sub_21E4DB5A8();
    v62 = [v60 initWithData_];

    sub_21E4A3920(v59, v57);
    if (v62)
    {
      *(swift_allocObject() + 16) = v62;
      v63 = v62;
      v96 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50, &qword_21E4E59E8);
      sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50, &qword_21E4E59E8, MEMORY[0x277CE1138]);
      v64 = v93;
      sub_21E4DCA48();
      *(swift_allocObject() + 16) = v63;
      v95 = v63;
      v65 = v85;
      sub_21E4DCA48();
      v66 = v88;
      v67 = *(v88 + 16);
      v68 = v86;
      v69 = v89;
      v67(v86, v64, v89);
      v70 = v87;
      v67(v87, v65, v69);
      v71 = v90;
      v67(v90, v68, v69);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64B0, &qword_21E4E91C8);
      v67(&v71[*(v72 + 48)], v70, v69);

      sub_21E4A3920(v59, v57);
      v73 = *(v66 + 8);
      v73(v65, v69);
      v73(v93, v69);
      v73(v70, v69);
      v74 = v69;
      v58 = v103;
      v73(v68, v74);
      v75 = v71;
      v23 = v96;
      sub_21E42D214(v75, v58, &qword_27CEC6478, &qword_21E4E9190);
      v56 = 0;
    }

    else
    {
      sub_21E4A3920(v59, v57);
      v56 = 1;
    }
  }

  (*(v99 + 56))(v58, v56, 1, v101);
  v76 = v104;
  v77 = v97;
  sub_21E424848(v104, v97, &qword_27CEC64A0, &qword_21E4E91B8);
  v78 = v98;
  sub_21E424848(v23, v98, &qword_27CEC6498, &qword_21E4E91B0);
  v79 = v100;
  sub_21E424848(v58, v100, &qword_27CEC6480, &qword_21E4E9198);
  v80 = v23;
  v81 = v102;
  sub_21E424848(v77, v102, &qword_27CEC64A0, &qword_21E4E91B8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64A8, &qword_21E4E91C0);
  sub_21E424848(v78, v81 + *(v82 + 48), &qword_27CEC6498, &qword_21E4E91B0);
  sub_21E424848(v79, v81 + *(v82 + 64), &qword_27CEC6480, &qword_21E4E9198);
  sub_21E424BC0(v58, &qword_27CEC6480, &qword_21E4E9198);
  sub_21E424BC0(v80, &qword_27CEC6498, &qword_21E4E91B0);
  sub_21E424BC0(v76, &qword_27CEC64A0, &qword_21E4E91B8);
  sub_21E424BC0(v79, &qword_27CEC6480, &qword_21E4E9198);
  sub_21E424BC0(v78, &qword_27CEC6498, &qword_21E4E91B0);
  return sub_21E424BC0(v77, &qword_27CEC64A0, &qword_21E4E91B8);
}

uint64_t sub_21E4A1168()
{
  v0 = sub_21E4DC3D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6458, &qword_21E4E9178);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  if (qword_27CEC4720 != -1)
  {
    swift_once();
  }

  v9[0] = qword_27CEC8880;
  v9[1] = *algn_27CEC8888;
  sub_21E42C090();

  sub_21E4DC9E8();
  sub_21E4DC3C8();
  sub_21E42D5A8(&qword_27CEC6460, &qword_27CEC6458, &qword_21E4E9178, MEMORY[0x277CDEFF0]);
  sub_21E4A3BDC(&qword_27CEC6468, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  sub_21E4DC758();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E4A13E0()
{
  if (qword_27CEC4728 != -1)
  {
    swift_once();
  }

  sub_21E42C090();

  return sub_21E4DC9E8();
}

void sub_21E4A1490(uint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  [v2 setImage_];
}

double sub_21E4A1518@<D0>(uint64_t a1@<X8>)
{
  if (qword_280C14638 != -1)
  {
    swift_once();
  }

  sub_21E42C090();

  v2 = sub_21E4DC688();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_21E4DC978();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_21E42C0E4(v2, v4, v6);

  sub_21E42C0F4(v2, v4, v6);

  return result;
}

__n128 sub_21E4A1638@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E4DC218();
  a1(&v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

double sub_21E4A16AC@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CEC4738 != -1)
  {
    swift_once();
  }

  sub_21E42C090();

  v2 = sub_21E4DC688();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_21E4DC978();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_21E42C0E4(v2, v4, v6);

  sub_21E42C0F4(v2, v4, v6);

  return result;
}

void sub_21E4A17B4(void *a1)
{
  v2 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v34 = a1;
  v9 = [a1 userReportRequest];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 userReportOptions];

    if (v11)
    {
      sub_21E4A3DB8();
      v12 = sub_21E4DD088();

      if (v12 >> 62)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = sub_21E4DD488();
  if (!v13)
  {
LABEL_5:

    return;
  }

LABEL_8:
  if (v13 >= 1)
  {
    v14 = 0;
    v36 = v12 & 0xC000000000000001;
    v15 = MEMORY[0x277D84F90];
    v31 = v12;
    do
    {
      if (v36)
      {
        v16 = MEMORY[0x223D5B080](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_21E4DCF78();
        v22 = v21;

        LOBYTE(v19) = [objc_opt_self() saeAvailable] ^ 1;
        v23 = *(*(v35 + 8) + 80);
        v24 = v23;
        sub_21E4DB688();
        v25 = v32;
        v26 = &v8[v32[5]];
        *v26 = v20;
        v26[1] = v22;
        v8[v25[6]] = v19;
        *&v8[v25[7]] = v17;
        v27 = v34;
        *&v8[v25[8]] = v34;
        *&v8[v25[9]] = v23;
        sub_21E4A3C24(v8, v6);
        v28 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_21E443B4C(0, v15[2] + 1, 1, v15);
        }

        v30 = v15[2];
        v29 = v15[3];
        if (v30 >= v29 >> 1)
        {
          v15 = sub_21E443B4C((v29 > 1), v30 + 1, 1, v15);
        }

        sub_21E4A3D5C(v8);
        v15[2] = v30 + 1;
        sub_21E4A3C88(v6, v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, type metadata accessor for SmartDialogReportConcernMenu.ButtonData);
        v12 = v31;
      }

      else
      {
      }

      ++v14;
    }

    while (v13 != v14);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_21E4A1AFC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6518, &qword_21E4E9208);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v8 = *(v7 - 8);
  v9 = v8;
  if (v6)
  {
    sub_21E4A3C24(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);
    (*(v9 + 56))(v5, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v5, 1, 1, v7);
  }

  sub_21E4A1C24(v5);
  return sub_21E424BC0(v5, &qword_27CEC6518, &qword_21E4E9208);
}

void sub_21E4A1C24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6518, &qword_21E4E9208);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v99 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v98 = &v94 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v94 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v94 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v94 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  v101 = a1;
  sub_21E424848(a1, &v94 - v18, &qword_27CEC6518, &qword_21E4E9208);
  v20 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v21 = (*(v20 - 1) + 48);
  v100 = *v21;
  if (v100(v19, 1, v20) != 1)
  {
    v22 = v19[v20[6]];
    sub_21E4A3D5C(v19);
    if (v22 != 1)
    {
      goto LABEL_6;
    }

    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    sub_21E4DD3A8();

    *&v102 = 0xD000000000000015;
    *(&v102 + 1) = 0x800000021E4F0A50;
    sub_21E424848(v101, v17, &qword_27CEC6518, &qword_21E4E9208);
    if (v100(v17, 1, v20) == 1)
    {
      sub_21E424BC0(v17, &qword_27CEC6518, &qword_21E4E9208);
    }

    else
    {
      v46 = *&v17[v20[8]];
      v47 = v46;
      sub_21E4A3D5C(v17);
      if (v46)
      {
        v48 = [v47 resultIdentifier];

        if (v48)
        {
          v49 = sub_21E4DCF78();
          v51 = v50;

          v52 = v49;
          goto LABEL_29;
        }
      }
    }

    v52 = 0;
    v51 = 0xE000000000000000;
LABEL_29:
    MEMORY[0x223D5ACB0](v52, v51);

    v54 = *(&v102 + 1);
    v53 = v102;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v55 = sub_21E4DBCC8();
    v56 = __swift_project_value_buffer(v55, qword_280C14558);
    v97 = sub_21E4DD1F8();
    *&v102 = 0xD000000000000017;
    *(&v102 + 1) = 0x800000021E4F09F0;
    v57 = sub_21E45C20C(0);
    if (v58)
    {
      v104 = 32;
      v105 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v57);

      MEMORY[0x223D5ACB0](v104, v105);
    }

    v59 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v59 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      v104 = 32;
      v105 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v53, v54);
      MEMORY[0x223D5ACB0](v104, v105);
    }

    v95 = 0x800000021E4F09F0;
    v60 = v102;
    v61 = sub_21E4DBCB8();
    v62 = v97;
    v63 = os_log_type_enabled(v61, v97);
    v96 = v56;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v94 = v21;
      v66 = v11;
      v67 = v62;
      v68 = v65;
      v104 = v65;
      *v64 = 136315138;
      v69 = sub_21E426648(v60, *(&v60 + 1), &v104);

      *(v64 + 4) = v69;
      v70 = v67;
      v11 = v66;
      _os_log_impl(&dword_21E3EB000, v61, v70, "%s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x223D5BF10](v68, -1, -1);
      MEMORY[0x223D5BF10](v64, -1, -1);
    }

    else
    {
    }

    v71 = v101;
    v72 = [objc_allocWithZone(MEMORY[0x277D4C5D0]) init];
    sub_21E424848(v71, v14, &qword_27CEC6518, &qword_21E4E9208);
    v73 = v100;
    if (v100(v14, 1, v20) == 1)
    {
      sub_21E424BC0(v14, &qword_27CEC6518, &qword_21E4E9208);
    }

    else
    {
      v74 = *&v14[v20[8]];
      v75 = v74;
      sub_21E4A3D5C(v14);
      if (v74)
      {
        v76 = [v75 resultIdentifier];

        if (v76)
        {
LABEL_45:
          [v72 setIdentifier_];

          sub_21E424848(v71, v11, &qword_27CEC6518, &qword_21E4E9208);
          if (v73(v11, 1, v20) == 1)
          {
            sub_21E424BC0(v11, &qword_27CEC6518, &qword_21E4E9208);
          }

          else
          {
            v77 = *&v11[v20[9]];
            v78 = v77;
            sub_21E4A3D5C(v11);
            if (v77)
            {
              v79 = [v78 fbr];

              if (v79)
              {
                goto LABEL_50;
              }
            }
          }

          v79 = 0;
LABEL_50:
          [v72 setFbr_];

          v80 = v98;
          sub_21E424848(v71, v98, &qword_27CEC6518, &qword_21E4E9208);
          if (v73(v80, 1, v20) == 1)
          {
            sub_21E424BC0(v80, &qword_27CEC6518, &qword_21E4E9208);
            v81 = 0;
          }

          else
          {
            v81 = *(v80 + v20[7]);
            sub_21E4A3D5C(v80);
          }

          v82 = v99;
          sub_21E424848(v71, v99, &qword_27CEC6518, &qword_21E4E9208);
          if (v73(v82, 1, v20) == 1)
          {
            sub_21E424BC0(v82, &qword_27CEC6518, &qword_21E4E9208);
            v83 = 0;
          }

          else
          {
            v83 = *(v82 + v20[8]);
            sub_21E4A3D5C(v82);
          }

          v84 = objc_allocWithZone(MEMORY[0x277D4C6D8]);
          v85 = v72;
          v86 = [v84 initWithSelection:v81 result:v85 cardSection:v83];

          if (v86)
          {
            SFFeedbackNotify();
          }

          else
          {
            v87 = sub_21E4DD1F8();
            *&v102 = 0xD000000000000017;
            *(&v102 + 1) = v95;
            v88 = sub_21E45C20C(0);
            if (v89)
            {
              v104 = 32;
              v105 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v88);

              MEMORY[0x223D5ACB0](v104, v105);
            }

            if (("Report a concern for " & 0x2F00000000000000) != 0x2000000000000000)
            {
              v104 = 32;
              v105 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](0xD00000000000001FLL, 0x800000021E4F0A70);
              MEMORY[0x223D5ACB0](v104, v105);
            }

            v90 = v102;
            v86 = sub_21E4DBCB8();
            if (!os_log_type_enabled(v86, v87))
            {

              goto LABEL_65;
            }

            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v104 = v92;
            *v91 = 136315138;
            v93 = sub_21E426648(v90, *(&v90 + 1), &v104);

            *(v91 + 4) = v93;
            _os_log_impl(&dword_21E3EB000, v86, v87, "%s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v92);
            MEMORY[0x223D5BF10](v92, -1, -1);
            MEMORY[0x223D5BF10](v91, -1, -1);
          }

LABEL_65:
          return;
        }
      }
    }

    v76 = 0;
    goto LABEL_45;
  }

  sub_21E424BC0(v19, &qword_27CEC6518, &qword_21E4E9208);
LABEL_6:
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v23 = sub_21E4DBCC8();
  __swift_project_value_buffer(v23, qword_280C14558);
  v24 = sub_21E4DD1F8();
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = 0x800000021E4F09F0;
  v25 = sub_21E45C20C(0);
  if (v26)
  {
    v104 = 32;
    v105 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v25);

    MEMORY[0x223D5ACB0](v104, v105);
  }

  v104 = 32;
  v105 = 0xE100000000000000;
  MEMORY[0x223D5ACB0](0x432074726F706552, 0xEE006E7265636E6FLL);
  MEMORY[0x223D5ACB0](v104, v105);

  v27 = v102;
  v28 = sub_21E4DBCB8();
  if (os_log_type_enabled(v28, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v104 = v30;
    *v29 = 136315138;
    v31 = sub_21E426648(v27, *(&v27 + 1), &v104);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_21E3EB000, v28, v24, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x223D5BF10](v30, -1, -1);
    MEMORY[0x223D5BF10](v29, -1, -1);
  }

  else
  {
  }

  v32 = [objc_allocWithZone(SiriSharedUIAdditionalDomainFeedback) init];
  v33 = *(v2 + 56);
  v102 = *(v2 + 40);
  v103 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6408, &qword_21E4E9130);
  sub_21E4DCA08();
  v34 = v105;
  if (v105 >> 60 != 15)
  {
    v35 = v104;
    v36 = sub_21E4DB5A8();
    [v32 setVisualIntelligenceCameraFeedImageData_];

    v37 = sub_21E4DD1F8();
    *&v102 = 0xD000000000000017;
    *(&v102 + 1) = 0x800000021E4F09F0;
    v38 = sub_21E45C20C(0);
    if (v39)
    {
      v104 = 32;
      v105 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v38);

      MEMORY[0x223D5ACB0](v104, v105);
    }

    if (("reportFeedback(button:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v104 = 32;
      v105 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000032, 0x800000021E4F0A10);
      MEMORY[0x223D5ACB0](v104, v105);
    }

    v40 = v102;
    v41 = sub_21E4DBCB8();
    if (os_log_type_enabled(v41, v37))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v104 = v43;
      *v42 = 136315138;
      v44 = sub_21E426648(v40, *(&v40 + 1), &v104);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_21E3EB000, v41, v37, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x223D5BF10](v43, -1, -1);
      MEMORY[0x223D5BF10](v42, -1, -1);
    }

    else
    {
    }

    sub_21E4A3920(v35, v34);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong userDidReportConcernForCardSection:*(v2 + 24) additionalDomainProvidedFeedback:v32];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21E4A2948(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_21E44C8E4(a2, v4);
  v2 = swift_allocObject();
  sub_21E4A38BC(v4, v2 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6500, &qword_21E4E9200);
  sub_21E4DB698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC64F8, &qword_21E4E91F8);
  sub_21E42D5A8(&qword_27CEC6508, &qword_27CEC6500, &qword_21E4E9200, MEMORY[0x277D83980]);
  sub_21E42D5A8(&qword_27CEC64F0, &qword_27CEC64F8, &qword_21E4E91F8, MEMORY[0x277CDF028]);
  sub_21E4A3BDC(&qword_27CEC6510, type metadata accessor for SmartDialogReportConcernMenu.ButtonData, &unk_21E4E8414);
  return sub_21E4DCAA8();
}

uint64_t sub_21E4A2AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21E44C8E4(a2, v12);
  sub_21E4A3C24(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 144) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21E4A38BC(v12, v8 + 16);
  sub_21E4A3C88(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for SmartDialogReportConcernMenu.ButtonData);
  v11 = a1;
  return sub_21E4DCA48();
}

uint64_t sub_21E4A2C4C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6518, &qword_21E4E9208);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_21E4A3C24(a2, &v8 - v4);
  v6 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_21E4A1C24(v5);
  return sub_21E424BC0(v5, &qword_27CEC6518, &qword_21E4E9208);
}

uint64_t sub_21E4A2D3C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  sub_21E42C090();

  result = sub_21E4DC688();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

__n128 sub_21E4A2DBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E4DC218();
  sub_21E4A2F08(a1, &v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_21E4A2E30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6518, &qword_21E4E9208);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_21E4A1C24(v2);
  return sub_21E424BC0(v2, &qword_27CEC6518, &qword_21E4E9208);
}

double sub_21E4A2F08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 && (v4 = [v3 userReportRequest]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_affordanceText), v5, v6))
  {
    sub_21E4DCF78();
  }

  else
  {
    if (qword_280C14630 != -1)
    {
      swift_once();
    }
  }

  sub_21E42C090();
  v7 = sub_21E4DC688();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_21E4DC978();
  *a2 = v7;
  *(a2 + 8) = v9;
  v11 &= 1u;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  sub_21E42C0E4(v7, v9, v11);

  sub_21E42C0F4(v7, v9, v11);

  return result;
}

double sub_21E4A3068(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6528, &unk_21E4E9218);
  sub_21E4DCA08();
  sub_21E4DCD38();

  return result;
}

__n128 sub_21E4A30C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E4DC218();
  sub_21E4A313C(a1, &v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

double sub_21E4A313C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 24) || !SFCardSection.copyableTitle()().value._object)
  {
    if (qword_280C14638 != -1)
    {
      swift_once();
    }
  }

  sub_21E42C090();
  v3 = sub_21E4DC688();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_21E4DC978();
  *a2 = v3;
  *(a2 + 8) = v5;
  v7 &= 1u;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  sub_21E42C0E4(v3, v5, v7);

  sub_21E42C0F4(v3, v5, v7);

  return result;
}

unint64_t sub_21E4A3268()
{
  result = qword_280C143E8;
  if (!qword_280C143E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6328, &qword_21E4E9048);
    sub_21E4A3324();
    sub_21E4A3BDC(&qword_280C144E0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143E8);
  }

  return result;
}

unint64_t sub_21E4A3324()
{
  result = qword_280C143F0;
  if (!qword_280C143F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6348, &qword_21E4E9068);
    sub_21E4A33DC();
    sub_21E42D5A8(&qword_280C14338, &qword_27CEC63A0, &qword_21E4E90C0, MEMORY[0x277CE0830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143F0);
  }

  return result;
}

unint64_t sub_21E4A33DC()
{
  result = qword_280C143F8;
  if (!qword_280C143F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6350, &qword_21E4E9070);
    sub_21E4A3494();
    sub_21E42D5A8(&qword_280C14348, &qword_27CEC6398, &qword_21E4E90B8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143F8);
  }

  return result;
}

unint64_t sub_21E4A3494()
{
  result = qword_280C14410;
  if (!qword_280C14410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6358, &qword_21E4E9078);
    sub_21E4A354C();
    sub_21E42D5A8(&qword_280C14340, &qword_27CEC6390, &qword_21E4E90B0, MEMORY[0x277CE0830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14410);
  }

  return result;
}

unint64_t sub_21E4A354C()
{
  result = qword_280C14470;
  if (!qword_280C14470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6360, &qword_21E4E9080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6368, &qword_21E4E9088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6370, &qword_21E4E9090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6378, &qword_21E4E9098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6380, &qword_21E4E90A0);
    sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21E4DB588();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21E42D5A8(&qword_280C14350, &qword_27CEC6388, &qword_21E4E90A8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14470);
  }

  return result;
}

unint64_t sub_21E4A3748()
{
  result = qword_280C143D0;
  if (!qword_280C143D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC63A8, &qword_21E4E90C8);
    sub_21E4A3800();
    sub_21E42D5A8(&qword_280C14358, &qword_27CEC6378, &qword_21E4E9098, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143D0);
  }

  return result;
}

unint64_t sub_21E4A3800()
{
  result = qword_280C144C0;
  if (!qword_280C144C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC63B0, &qword_21E4E90D0);
    sub_21E4A3BDC(&qword_280C15268, type metadata accessor for SiriSharedUIWebView, &unk_21E4E6A84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C144C0);
  }

  return result;
}

uint64_t sub_21E4A3920(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21E424920(result, a2);
  }

  return result;
}

void sub_21E4A3934()
{
  sub_21E4DB588();
  v1 = *(v0 + 16);

  sub_21E49FF14(v1);
}

unint64_t sub_21E4A39B4()
{
  result = qword_27CEC64B8;
  if (!qword_27CEC64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC64B8);
  }

  return result;
}

unint64_t sub_21E4A3A10()
{
  result = qword_280C14388;
  if (!qword_280C14388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC64D8, &qword_21E4E91E8);
    sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30, &qword_21E4E9150, MEMORY[0x277CDF028]);
    sub_21E42D5A8(&qword_280C142F8, &qword_27CEC64C8, &qword_21E4E91D8, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14388);
  }

  return result;
}

unint64_t sub_21E4A3B24()
{
  result = qword_27CEC64E8;
  if (!qword_27CEC64E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC64E0, &qword_21E4E91F0);
    sub_21E42D5A8(&qword_27CEC64F0, &qword_27CEC64F8, &qword_21E4E91F8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC64E8);
  }

  return result;
}

uint64_t sub_21E4A3BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E4A3C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E4A3C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E4A3CF0()
{
  v1 = *(type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 144) & ~*(v1 + 80));

  return sub_21E4A2C4C(v0 + 16, v2);
}

uint64_t sub_21E4A3D5C(uint64_t a1)
{
  v2 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E4A3DB8()
{
  result = qword_280C141C8;
  if (!qword_280C141C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C141C8);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  MEMORY[0x223D5BFD0](v0 + 32);

  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 56), v1);
  }

  v2 = *(v0 + 128);
  if (v2 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 120), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21E4A3ED4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21E4240F0;

  return sub_21E49C924(v0 + 16);
}

uint64_t sub_21E4A3F68(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21E4248CC(result, a2);
  }

  return result;
}

unint64_t sub_21E4A3F7C()
{
  result = qword_280C14390;
  if (!qword_280C14390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6538, &qword_21E4E9248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6330, &qword_21E4E9050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6340, &qword_21E4E9060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC63A8, &qword_21E4E90C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC6328, &qword_21E4E9048);
    sub_21E4A3268();
    swift_getOpaqueTypeConformance2();
    sub_21E42D5A8(&unk_280C14268, &qword_27CEC6340, &qword_21E4E9060, MEMORY[0x277CE1198]);
    sub_21E4A3748();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14390);
  }

  return result;
}

double sub_21E4A4148(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_21E4A4214(void *a1)
{
  v2 = v1;
  v71 = sub_21E4DB588();
  v69 = *(v71 - 1);
  v4 = MEMORY[0x28223BE20](v71);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v66 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  v12 = sub_21E4DB698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_isLoadingCard;
    if ((v2[OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_isLoadingCard] & 1) == 0)
    {
      v25 = v16;
      v71 = a1;
      v26 = [v25 card];
      if (v26)
      {
        v27 = v26;
        v70 = v26;
        if ((sub_21E4A66E8(v27) & 1) == 0)
        {
          v29 = *&v2[OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard];
          *&v2[OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard] = v27;

          v2[v17] = 1;
          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v31 = swift_allocObject();
          v32 = v70;
          *(v31 + 16) = v30;
          *(v31 + 24) = v32;
          aBlock[4] = sub_21E4A6EE0;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21E4A4F94;
          aBlock[3] = &block_descriptor_25;
          v33 = _Block_copy(aBlock);
          v34 = v70;

          [v34 loadCardSectionsWithCompletionHandler_];
          _Block_release(v33);

          return;
        }

        v28 = v70;
      }

      else
      {
        v28 = v71;
      }

      goto LABEL_26;
    }
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v70 = v13;
  v68 = a1;
  v20 = [v19 punchout];
  if (!v20)
  {
LABEL_25:
    v28 = v68;
LABEL_26:

    return;
  }

  v21 = v20;
  v22 = [v20 bundleIdentifier];
  if (!v22)
  {
LABEL_16:
    v36 = [v21 urls];
    if (v36)
    {
      v37 = v36;
      v38 = sub_21E4DD088();

      v39 = *(v38 + 16);
      if (v39)
      {
        v67 = v21;
        v40 = v69 + 16;
        v41 = *(v69 + 16);
        v42 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v69 = v38;
        v70 = v2;
        v43 = v38 + v42;
        v44 = *(v40 + 56);
        v45 = (v40 - 8);
        v46 = v71;
        v41(v6, v43, v71);
        while (1)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v48 = Strong;
            v49 = sub_21E4DB548();
            [v48 siriViewControllerShouldOpenUrl_];
            swift_unknownObjectRelease();

            v46 = v71;
          }

          (*v45)(v6, v46);
          v43 += v44;
          if (!--v39)
          {
            break;
          }

          v41(v6, v43, v46);
        }
      }

      else
      {
      }

      return;
    }

    goto LABEL_25;
  }

  v23 = v22;
  if (sub_21E4DCF78() == 0xD000000000000013 && 0x800000021E4F0C00 == v24)
  {

    goto LABEL_16;
  }

  v35 = sub_21E4DD518();

  if (v35)
  {

    goto LABEL_16;
  }

  v50 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  (*(v70 + 1))(v15, v12);
  v51 = sub_21E4DCF68();
  v52 = v50;

  [v50 setAceId_];

  [v50 setAppAvailableInStorefront_];
  [v50 setBundleId_];

  v53 = [v21 urls];
  if (v53)
  {
    v54 = v53;
    v55 = sub_21E4DD088();

    if (v55)
    {
      if (*(v55 + 16))
      {
        v56 = v21;
        v57 = v69;
        v58 = v71;
        (*(v69 + 16))(v9, v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v71);

        (*(v57 + 32))(v11, v9, v58);
        v59 = sub_21E4DB548();
        [v52 setPunchOutUri_];

        (*(v57 + 8))(v11, v58);
        v21 = v56;
      }

      else
      {
      }
    }
  }

  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60)
  {
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_21E4E57E0;
    *(v62 + 56) = sub_21E43F008(0, &unk_27CEC6650, 0x277D479F0);
    *(v62 + 32) = v52;
    v63 = v21;
    v64 = v52;
    v65 = sub_21E4DD078();

    [v61 siriSnippetViewControllerPerformAceCommands_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_21E4A49C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21E4DCBF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E4DCC18();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E4DB698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = v5;
    if (a1)
    {
      sub_21E43F008(0, &qword_280C141A0, 0x277D4C238);
      v18 = sub_21E4DD078();
    }

    else
    {
      v18 = 0;
    }

    [a3 setCardSections_];

    v19 = [objc_allocWithZone(MEMORY[0x277D47200]) init];
    v20 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
    v35 = v20;
    v36 = v6;
    if (v20 && (v21 = [v20 data]) != 0)
    {
      v22 = v21;
      v23 = sub_21E4DB5B8();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = sub_21E4DB5A8();
    sub_21E424920(v23, v25);
    [v19 setCardData_];

    v27 = v19;
    sub_21E4DB688();
    sub_21E4DB648();
    (*(v13 + 8))(v15, v12);
    v28 = sub_21E4DCF68();

    [v27 setAceId_];

    sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
    v29 = sub_21E4DD278();
    v30 = swift_allocObject();
    *(v30 + 16) = v17;
    *(v30 + 24) = v27;
    aBlock[4] = sub_21E4A6EE8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E46C644;
    aBlock[3] = &block_descriptor_31;
    v31 = _Block_copy(aBlock);
    v32 = v27;
    v33 = v17;

    sub_21E4DCC08();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21E4A7BB0(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
    sub_21E42E3E8();
    v34 = v37;
    sub_21E4DD358();
    MEMORY[0x223D5AF30](0, v11, v8, v31);
    _Block_release(v31);

    (*(v36 + 8))(v8, v34);
    return (*(v38 + 8))(v11, v39);
  }

  return result;
}

void *sub_21E4A4EB0(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21E4E57E0;
    *(v6 + 56) = sub_21E43F008(0, &unk_27CEC6670, 0x277D47200);
    *(v6 + 32) = a2;
    v7 = a2;
    v8 = sub_21E4DD078();

    [v5 siriSnippetViewControllerShouldPushSirilandSnippets_];

    result = swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_isLoadingCard) = 0;
  return result;
}

double sub_21E4A4F94(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_21E43F008(0, &qword_280C141A0, 0x277D4C238);
    v2 = sub_21E4DD088();
  }

  v3(v2);

  return result;
}

void sub_21E4A5084(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E4DB698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D47B50]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = sub_21E4DCF68();

  [v6 setAceId_];

  v9 = sub_21E4DB5A8();
  [v6 setModelData_];

  v10 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  v7(v5, v2);
  v11 = sub_21E4DCF68();

  [v10 setAceId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21E4E6AF0;
  *(v12 + 32) = v6;
  sub_21E43F008(0, &unk_280C14060, 0x277D47140);
  v13 = v6;
  v14 = sub_21E4DD078();

  [v10 setViews_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21E4E57E0;
    *(v17 + 56) = sub_21E43F008(0, &qword_280C141B8, 0x277D479E8);
    *(v17 + 32) = v10;
    v18 = v10;
    v19 = sub_21E4DD078();

    [v16 siriSnippetViewControllerPerformAceCommands_];

    swift_unknownObjectRelease();
  }
}

void sub_21E4A53C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E4DB698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D47470]) init];
  v7 = sub_21E4DB5A8();
  [v6 setData_];

  v8 = [objc_allocWithZone(MEMORY[0x277D47940]) &selRef_setEnabled_];
  sub_21E4DB688();
  sub_21E4DB648();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_21E4DCF68();

  [v8 setAceId_];

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
  v11 = swift_allocObject();
  v54 = xmmword_21E4E6AF0;
  *(v11 + 16) = xmmword_21E4E6AF0;
  *(v11 + 32) = v6;
  v51 = v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6640, &qword_21E4E9298);
  v12 = sub_21E4DD078();

  [v8 setClientBoundCommands_];

  v13 = [objc_allocWithZone(MEMORY[0x277D476E8]) &selRef_setEnabled_];
  sub_21E4DB688();
  sub_21E4DB648();
  v49 = v2;
  v9(v5, v2);
  v48 = v9;
  v14 = sub_21E4DCF68();

  [v13 setAceId_];

  v15 = v13;
  v16 = [v8 aceId];
  [v15 setRefId_];

  v17 = [objc_allocWithZone(MEMORY[0x277D476F0]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  v9(v5, v2);
  v18 = sub_21E4DCF68();

  [v17 setAceId_];

  v19 = v8;
  v20 = [v19 refId];
  [v17 setRefId_];

  [v17 setCode_];
  v21 = swift_allocObject();
  *(v21 + 16) = v54;
  *(v21 + 32) = v15;
  v50 = v15;
  v22 = sub_21E4DD078();

  [v17 setCommands_];

  v23 = [objc_allocWithZone(MEMORY[0x277D47208]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  v25 = v48;
  v24 = v49;
  v48(v5, v49);
  v26 = sub_21E4DCF68();

  [v23 setAceId_];

  v27 = v23;
  v28 = [v19 aceId];
  [v27 setRefId_];

  v29 = [objc_allocWithZone(MEMORY[0x277D476F0]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  v25(v5, v24);
  v30 = sub_21E4DCF68();

  [v29 setAceId_];

  v31 = [v19 refId];
  [v29 setRefId_];

  [v29 setCode_];
  v32 = swift_allocObject();
  *(v32 + 16) = v54;
  *(v32 + 32) = v27;
  v33 = v27;
  v34 = sub_21E4DD078();

  [v17 setCommands_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21E4E7410;
  *(v35 + 32) = v17;
  *(v35 + 40) = v29;
  sub_21E43F008(0, &qword_27CEC6648, 0x277D476F0);
  v36 = v51;
  v37 = v17;
  v38 = v29;
  v39 = sub_21E4DD078();

  [v36 setCallbacks_];

  v40 = v36;
  v41 = [v19 aceId];

  [v40 setRefId_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_21E4E57E0;
    *(v44 + 56) = swift_getObjectType();
    *(v44 + 32) = v19;
    v45 = v19;
    v46 = sub_21E4DD078();

    [v43 siriSnippetViewControllerPerformAceCommands_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21E4A5B70(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E4DB698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D47B50]) init];
  sub_21E4DB688();
  sub_21E4DB648();
  (*(v3 + 8))(v5, v2);
  v7 = sub_21E4DCF68();

  [v6 setAceId_];

  v8 = sub_21E4DB5A8();
  [v6 setModelData_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21E4E57E0;
    *(v11 + 56) = sub_21E43F008(0, &unk_27CEC6630, 0x277D47B50);
    *(v11 + 32) = v6;
    v12 = v6;
    v13 = sub_21E4DD078();

    [v10 siriSnippetViewControllerShouldPushSirilandSnippets_];

    swift_unknownObjectRelease();
  }
}

void sub_21E4A5DA8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_21E4DB5B8();
  v9 = v8;

  a4(v7, v9);
  sub_21E424920(v7, v9);
}

void sub_21E4A5E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D47AF0]) init];
  v4 = sub_21E4DCF68();
  [v11 setBundleName_];

  v5 = sub_21E4DB5A8();
  [v11 setModelData_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21E4E57E0;
    *(v8 + 56) = sub_21E43F008(0, &qword_27CEC6628, 0x277D47AF0);
    *(v8 + 32) = v11;
    v9 = v11;
    v10 = sub_21E4DD078();

    [v7 siriSnippetViewControllerShouldPushSirilandSnippets_];

    swift_unknownObjectRelease();
  }
}

void *sub_21E4A6074(double a1, double a2)
{
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000011, 0x800000021E4F0BE0);
  v15 = *&a1;
  v16 = a2;
  type metadata accessor for CGSize(0);
  sub_21E4DD458();
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v17 = 0xD00000000000001ALL;
  v18 = 0x800000021E4F0BC0;
  v6 = sub_21E45C20C(0x2000000);
  if (v7)
  {
    v15 = 32;
    v16 = -1.7573882e159;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v17;
  v8 = v18;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v15);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result siriViewControllerHeightDidChange];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21E4A63F4(char a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong siriViewControllerSetStatusViewHidden_];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21E4A653C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_21E4A4148;
      v7[3] = &block_descriptor_12;
      v6 = _Block_copy(v7);

      [v5 siriViewControllerRequestDeviceUnlockWithCompletion_];
      _Block_release(v6);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21E4A66E8(void *a1)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = sub_21E4DB588();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard);
  if (!v20)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_7:
    v25 = v13;
    goto LABEL_16;
  }

  v38 = v17;
  v21 = [v20 urlValue];
  if (v21)
  {
    v22 = v21;
    sub_21E4DB568();

    v23 = *(v15 + 56);
    v23(v11, 0, 1, v14);
  }

  else
  {
    v23 = *(v15 + 56);
    v23(v11, 1, 1, v14);
  }

  sub_21E47AEC4(v11, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  v37 = v8;
  v26 = *(v15 + 32);
  v26(v19, v13, v14);
  if (v39)
  {
    v27 = v26;
    v28 = [v39 urlValue];
    if (v28)
    {
      v29 = v28;
      sub_21E4DB568();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v23(v5, v30, 1, v14);
    v31 = v37;
    sub_21E47AEC4(v5, v37);
    if (v24(v31, 1, v14) != 1)
    {
      v34 = v38;
      v27(v38, v31, v14);
      v32 = sub_21E4DB558();
      v35 = *(v15 + 8);
      v35(v34, v14);
      v35(v19, v14);
      return v32 & 1;
    }

    (*(v15 + 8))(v19, v14);
  }

  else
  {
    (*(v15 + 8))(v19, v14);
    v31 = v37;
    v23(v37, 1, 1, v14);
  }

  v25 = v31;
LABEL_16:
  sub_21E424BC0(v25, &qword_27CEC6700, &qword_21E4E90E0);
  v32 = 0;
  return v32 & 1;
}

id sub_21E4A6E14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriSharedUISmartDialogInteractionManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_21E4A6EF0(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21E4E57E0;
    *(v5 + 56) = swift_getObjectType();
    *(v5 + 32) = a1;
    v6 = a1;
    v7 = sub_21E4DD078();

    [v4 siriSnippetViewControllerPerformAceCommands_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21E4A6FD0(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278, &unk_21E4E6570);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v101 - v4;
  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v107 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v110 = &v101 - v10;
  MEMORY[0x28223BE20](v9);
  v112 = &v101 - v11;
  v12 = 0x800000021E4F0C40;
  v115 = 0;
  v116 = 0xE000000000000000;
  sub_21E4DD3A8();

  v115 = 0xD000000000000022;
  v116 = 0x800000021E4F0C70;
  v13 = a1;
  v14 = [v13 description];
  v15 = sub_21E4DCF78();
  v17 = v16;
  v111 = v13;

  MEMORY[0x223D5ACB0](v15, v17);

  v18 = v115;
  v19 = v116;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v20 = sub_21E4DBCC8();
  v21 = __swift_project_value_buffer(v20, qword_280C14558);
  v22 = sub_21E4DD1F8();
  v115 = 0xD000000000000024;
  v116 = 0x800000021E4F0C40;
  v23 = sub_21E45C20C(0x2000000);
  if (v24)
  {
    v113 = 32;
    v114 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v23);

    MEMORY[0x223D5ACB0](v113, v114);
  }

  v25 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v25 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v113 = 32;
    v114 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v18, v19);
    MEMORY[0x223D5ACB0](v113, v114);
  }

  v26 = v115;
  v27 = v116;
  v28 = sub_21E4DBCB8();
  if (os_log_type_enabled(v28, v22))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v106 = 0x800000021E4F0C40;
    v31 = v21;
    v32 = v5;
    v33 = v6;
    v34 = v30;
    v113 = v30;
    *v29 = 136315138;
    v35 = sub_21E426648(v26, v27, &v113);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_21E3EB000, v28, v22, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v36 = v34;
    v6 = v33;
    v5 = v32;
    v21 = v31;
    v12 = v106;
    MEMORY[0x223D5BF10](v36, -1, -1);
    MEMORY[0x223D5BF10](v29, -1, -1);
  }

  else
  {
  }

  objc_opt_self();
  v37 = v111;
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v111 = v37;
    v41 = [v40 sharedInstance];
    if (v41 && (v42 = v41, v43 = [v41 isSiriDetached], v42, (v43 & 1) != 0))
    {
      v44 = v111;
    }

    else
    {
      v106 = v21;
      v105 = objc_opt_self();
      v45 = [v105 sharedManager];
      v46 = [v45 currentInstrumentationTurnContext];

      v47 = [v46 turnIdentifier];
      sub_21E4DB678();

      v48 = objc_allocWithZone(MEMORY[0x277CEF168]);
      v49 = sub_21E4DB658();
      v50 = [v48 initWithTurnIdentifier_];

      if ([v39 requiresNewTurn])
      {
        v104 = v39;
        v51 = objc_opt_self();
        v52 = sub_21E4DB658();
        v53 = [v51 newTurnBasedContextWithPreviousTurnID_];

        v115 = 0;
        v116 = 0xE000000000000000;
        sub_21E4DD3A8();

        v115 = 0xD00000000000001ALL;
        v116 = 0x800000021E4F0CF0;
        v102 = v53;
        v54 = [v53 turnIdentifier];
        v55 = v110;
        sub_21E4DB678();

        sub_21E4A7BB0(&qword_27CEC6680, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v56 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v56);

        v57 = v50;
        v58 = v12;
        v59 = *(v6 + 8);
        v59(v55, v5);
        MEMORY[0x223D5ACB0](0x646C4F203E2D3C20, 0xEE00206E72755420);
        v103 = v57;
        v60 = [v57 turnIdentifier];
        sub_21E4DB678();

        v61 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v61);

        v59(v55, v5);
        v62 = v115;
        v63 = v116;
        v64 = sub_21E4DD1F8();
        v115 = 0xD000000000000024;
        v116 = v58;
        v65 = sub_21E45C20C(0x2000000);
        if (v66)
        {
          v113 = 32;
          v114 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v65);

          MEMORY[0x223D5ACB0](v113, v114);
        }

        v67 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v67 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v67)
        {
          v113 = 32;
          v114 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v62, v63);
          MEMORY[0x223D5ACB0](v113, v114);
        }

        v68 = v115;
        v69 = v116;
        v70 = sub_21E4DBCB8();
        v71 = os_log_type_enabled(v70, v64);
        v72 = v103;
        v39 = v104;
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v106 = v5;
          v75 = v6;
          v76 = v74;
          v113 = v74;
          *v73 = 136315138;
          v77 = sub_21E426648(v68, v69, &v113);

          *(v73 + 4) = v77;
          _os_log_impl(&dword_21E3EB000, v70, v64, "%s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          v78 = v76;
          v6 = v75;
          v5 = v106;
          MEMORY[0x223D5BF10](v78, -1, -1);
          MEMORY[0x223D5BF10](v73, -1, -1);
        }

        else
        {
        }

        v88 = &selRef_shouldSuppress;
        v50 = v102;
        v89 = [v105 sharedManager];
        [v89 storeCurrentInstrumentationTurnContext_];
      }

      else
      {
        v88 = &selRef_shouldSuppress;
      }

      v90 = v109;
      sub_21E45BA04(v108, v109);
      if ((*(v6 + 48))(v90, 1, v5) == 1)
      {
        sub_21E424BC0(v90, &qword_27CEC5278, &unk_21E4E6570);
        v91 = [v50 v88[89]];
        v92 = v110;
        sub_21E4DB678();

        v93 = sub_21E4DB658();
        v94 = *(v6 + 8);
        v94(v92, v5);
        [v39 emitWithTurnIdentifier_];

        v94(v112, v5);
      }

      else
      {
        v95 = v107;
        (*(v6 + 32))(v107, v90, v5);
        v96 = [v50 v88[89]];
        v97 = v110;
        sub_21E4DB678();

        v98 = sub_21E4DB658();
        v99 = *(v6 + 8);
        v99(v97, v5);
        v100 = sub_21E4DB658();
        [v39 emitWithTurnIdentifier:v98 aceViewId:v100];

        v99(v95, v5);
        v99(v112, v5);
      }
    }
  }

  else
  {
    v79 = sub_21E4DD1F8();
    v115 = 0xD000000000000024;
    v116 = v12;
    v80 = sub_21E45C20C(0x2000000);
    if (v81)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v80);

      MEMORY[0x223D5ACB0](v113, v114);
    }

    if (("trumentationEvent " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v113 = 32;
      v114 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000045, 0x800000021E4F0CA0);
      MEMORY[0x223D5ACB0](v113, v114);
    }

    v83 = v115;
    v82 = v116;
    v84 = sub_21E4DBCB8();
    if (os_log_type_enabled(v84, v79))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v113 = v86;
      *v85 = 136315138;
      v87 = sub_21E426648(v83, v82, &v113);

      *(v85 + 4) = v87;
      _os_log_impl(&dword_21E3EB000, v84, v79, "%s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x223D5BF10](v86, -1, -1);
      MEMORY[0x223D5BF10](v85, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21E4A7BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E4A7C50(CGRect *a1, CGRect *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *))
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v9 = *(a3 + 20);

    return a5(a1 + v9, a2 + v9);
  }

  return result;
}

uint64_t sub_21E4A7CDC()
{
  type metadata accessor for SiriSharedUIViewFrameSnapshotManager(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC66A0, &unk_21E4E9408);
  result = sub_21E4DCFA8();
  qword_280C15438 = result;
  unk_280C15440 = v1;
  return result;
}

uint64_t sub_21E4A7D30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate;
  swift_beginAccess();
  sub_21E4AB394(v1 + v9, v8);
  swift_beginAccess();
  sub_21E4AB534(a1, v1 + v9);
  swift_endAccess();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_21E4DD3A8();

  if (qword_280C15430 != -1)
  {
    swift_once();
  }

  v29 = qword_280C15438;
  v30 = unk_280C15440;

  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  MEMORY[0x223D5ACB0](0xD000000000000012, 0x800000021E4F0DA0);
  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  v27 = 52;
  v10 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v10);

  MEMORY[0x223D5ACB0](0xD000000000000021, 0x800000021E4F0EB0);
  sub_21E4AB394(v8, v6);
  v11 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v11);

  MEMORY[0x223D5ACB0](544175136, 0xE400000000000000);
  sub_21E4AB394(v1 + v9, v6);
  v12 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v12);

  v14 = v29;
  v13 = v30;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v15 = sub_21E4DBCC8();
  __swift_project_value_buffer(v15, qword_280C14558);
  v16 = sub_21E4DD208();
  v29 = 0xD000000000000012;
  v30 = 0x800000021E4F0DA0;
  v17 = sub_21E45C20C(0);
  if (v18)
  {
    v27 = 32;
    v28 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v17);

    MEMORY[0x223D5ACB0](v27, v28);
  }

  v19 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v27 = 32;
    v28 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v14, v13);
    MEMORY[0x223D5ACB0](v27, v28);
  }

  v21 = v29;
  v20 = v30;
  v22 = sub_21E4DBCB8();
  if (os_log_type_enabled(v22, v16))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    v25 = sub_21E426648(v21, v20, &v27);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_21E3EB000, v22, v16, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223D5BF10](v24, -1, -1);
    MEMORY[0x223D5BF10](v23, -1, -1);
  }

  else
  {
  }

  sub_21E4AB404(a1);
  return sub_21E4AB404(v8);
}

uint64_t sub_21E4A8158(__int128 *a1)
{
  v167 = type metadata accessor for FrameSnapshot(0);
  MEMORY[0x28223BE20](v167);
  v168 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v174 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v176 = &v164 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v169 = &v164 - v10;
  MEMORY[0x28223BE20](v9);
  v173 = &v164 - v11;
  v12 = type metadata accessor for FrameUpdate(0);
  v183 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v175 = (&v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v172 = (&v164 - v16);
  MEMORY[0x28223BE20](v15);
  v170 = (&v164 - v17);
  v18 = sub_21E4DB628();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v165 = &v164 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v164 - v24;
  sub_21E4DB618();
  *&v188 = 0;
  *(&v188 + 1) = 0xE000000000000000;
  sub_21E4DD3A8();
  if (qword_280C15430 != -1)
  {
    swift_once();
  }

  v180 = v12;
  v181 = v1;
  v27 = qword_280C15438;
  v26 = unk_280C15440;

  v177 = v27;
  v186 = v27;
  v187 = v26;
  v178 = v26;
  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  MEMORY[0x223D5ACB0](0xD000000000000014, 0x800000021E4F0DD0);
  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  *&v188 = 67;
  v28 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v28);

  MEMORY[0x223D5ACB0](0xD000000000000019, 0x800000021E4F0DF0);
  v29 = a1[1];
  v188 = *a1;
  v189 = v29;
  v190 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6698, &qword_21E4E9400);
  v30 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v30);

  MEMORY[0x223D5ACB0](0x656D697420746120, 0xE900000000000020);
  v31 = sub_21E4AB33C();
  v182 = v25;
  v171 = v31;
  v32 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v32);

  v33 = v186;
  v34 = v187;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v35 = sub_21E4DBCC8();
  v184 = __swift_project_value_buffer(v35, qword_280C14558);
  v36 = sub_21E4DD208();
  *&v188 = 0xD000000000000014;
  *(&v188 + 1) = 0x800000021E4F0DD0;
  v37 = sub_21E45C20C(0);
  if (v38)
  {
    v186 = 32;
    v187 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v37);

    MEMORY[0x223D5ACB0](v186, v187);
  }

  v179 = 0x800000021E4F0DD0;
  v39 = v18;
  v40 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v40 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v186 = 32;
    v187 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v33, v34);
    MEMORY[0x223D5ACB0](v186, v187);
  }

  v41 = v188;
  v42 = sub_21E4DBCB8();
  if (os_log_type_enabled(v42, v36))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v186 = v44;
    *v43 = 136315138;
    v45 = sub_21E426648(v41, *(&v41 + 1), &v186);

    *(v43 + 4) = v45;
    _os_log_impl(&dword_21E3EB000, v42, v36, "%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x223D5BF10](v44, -1, -1);
    MEMORY[0x223D5BF10](v43, -1, -1);
  }

  else
  {
  }

  v46 = v39;
  v47 = v181;
  v48 = v180;
  v49 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate;
  v50 = v182;
  v51 = (v183 + 48);
  v52 = v19;
  if ((a1[2] & 1) == 0)
  {
    v55 = *a1;
    v54 = *(a1 + 1);
    v57 = *(a1 + 2);
    v56 = *(a1 + 3);
    swift_beginAccess();
    v58 = v173;
    sub_21E4AB394(v47 + v49, v173);
    v59 = *v51;
    if ((*v51)(v58, 1, v48) == 1)
    {
      sub_21E4AB404(v58);
    }

    else
    {
      v83 = v58;
      v84 = v170;
      sub_21E4AB46C(v83, v170, type metadata accessor for FrameUpdate);
      v193.origin.x = v55;
      v193.origin.y = v54;
      v193.size.width = v57;
      v193.size.height = v56;
      if (CGRectEqualToRect(v193, *v84))
      {
        *&v188 = 0;
        *(&v188 + 1) = 0xE000000000000000;
        sub_21E4DD3A8();
        v185 = v188;
        MEMORY[0x223D5ACB0](v177, v178);
        MEMORY[0x223D5ACB0](58, 0xE100000000000000);
        v85 = v179;
        MEMORY[0x223D5ACB0](0xD000000000000014, v179);
        MEMORY[0x223D5ACB0](58, 0xE100000000000000);
        *&v188 = 89;
        v86 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v86);

        MEMORY[0x223D5ACB0](0x20656D61724620, 0xE700000000000000);
        *&v188 = v55;
        *(&v188 + 1) = v54;
        *&v189 = v57;
        *(&v189 + 1) = v56;
        type metadata accessor for CGRect(0);
        sub_21E4DD458();
        MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4F0E90);
        v87 = *(&v185 + 1);
        v88 = v185;
        v89 = sub_21E4DD208();
        *&v188 = 0xD000000000000014;
        *(&v188 + 1) = v85;
        v90 = sub_21E45C20C(0);
        if (v91)
        {
          *&v185 = 32;
          *(&v185 + 1) = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v90);

          MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
        }

        v92 = HIBYTE(v87) & 0xF;
        if ((v87 & 0x2000000000000000) == 0)
        {
          v92 = v88 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
          *&v185 = 32;
          *(&v185 + 1) = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v88, v87);
          MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
        }

        v93 = v188;
        v94 = sub_21E4DBCB8();
        if (os_log_type_enabled(v94, v89))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v185 = v96;
          *v95 = 136315138;
          v97 = sub_21E426648(v93, *(&v93 + 1), &v185);

          *(v95 + 4) = v97;
          _os_log_impl(&dword_21E3EB000, v94, v89, "%s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          v98 = v96;
          v50 = v182;
          MEMORY[0x223D5BF10](v98, -1, -1);
          MEMORY[0x223D5BF10](v95, -1, -1);
        }

        else
        {
        }

        v161 = &v191;
LABEL_76:
        v162 = *(v161 - 32);
LABEL_79:
        sub_21E4AB4D4(v162, type metadata accessor for FrameUpdate);
        return (*(v52 + 8))(v50, v46);
      }

      sub_21E4AB4D4(v84, type metadata accessor for FrameUpdate);
    }

    v114 = v169;
    sub_21E4AB394(v47 + v49, v169);
    if (v59(v114, 1, v48) == 1)
    {
      sub_21E4AB404(v114);
      v115 = *(v19 + 16);
    }

    else
    {
      v116 = v172;
      sub_21E4AB46C(v114, v172, type metadata accessor for FrameUpdate);
      v117 = *(v48 + 20);
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_21E4DD3A8();
      v185 = v188;
      MEMORY[0x223D5ACB0](v177, v178);
      MEMORY[0x223D5ACB0](58, 0xE100000000000000);
      v118 = v179;
      MEMORY[0x223D5ACB0](0xD000000000000014, v179);
      MEMORY[0x223D5ACB0](58, 0xE100000000000000);
      *&v188 = 97;
      v119 = sub_21E4DD4E8();
      MEMORY[0x223D5ACB0](v119);

      MEMORY[0x223D5ACB0](0xD00000000000001BLL, 0x800000021E4F0E10);
      v120 = *v116;
      v121 = v116[1];
      v122 = v116[2];
      v123 = v116[3];
      *&v188 = *v116;
      *(&v188 + 1) = v121;
      *&v189 = v122;
      *(&v189 + 1) = v123;
      type metadata accessor for CGRect(0);
      sub_21E4DD458();
      MEMORY[0x223D5ACB0](0xD000000000000011, 0x800000021E4F0E30);
      v175 = v117;
      v124 = sub_21E4DD4E8();
      MEMORY[0x223D5ACB0](v124);

      MEMORY[0x223D5ACB0](0x646E6520646E6120, 0xEE0020656D697420);
      v125 = sub_21E4DD4E8();
      MEMORY[0x223D5ACB0](v125);

      v126 = *(&v185 + 1);
      v127 = v185;
      v128 = sub_21E4DD208();
      *&v188 = 0xD000000000000014;
      *(&v188 + 1) = v118;
      v129 = sub_21E45C20C(0);
      if (v130)
      {
        *&v185 = 32;
        *(&v185 + 1) = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v129);

        MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
      }

      v131 = HIBYTE(v126) & 0xF;
      if ((v126 & 0x2000000000000000) == 0)
      {
        v131 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (v131)
      {
        *&v185 = 32;
        *(&v185 + 1) = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v127, v126);
        MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
      }

      v132 = v188;
      v133 = sub_21E4DBCB8();
      if (os_log_type_enabled(v133, v128))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *&v185 = v135;
        *v134 = 136315138;
        v136 = sub_21E426648(v132, *(&v132 + 1), &v185);

        *(v134 + 4) = v136;
        _os_log_impl(&dword_21E3EB000, v133, v128, "%s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v135);
        v137 = v135;
        v50 = v182;
        MEMORY[0x223D5BF10](v137, -1, -1);
        MEMORY[0x223D5BF10](v134, -1, -1);
      }

      else
      {
      }

      v142 = v172;
      v143 = v175;
      if (sub_21E4DB5E8())
      {
        *&v188 = 0;
        *(&v188 + 1) = 0xE000000000000000;
        sub_21E4DD3A8();
        MEMORY[0x223D5ACB0](v177, v178);
        MEMORY[0x223D5ACB0](58, 0xE100000000000000);
        v144 = v179;
        MEMORY[0x223D5ACB0](0xD000000000000014, v179);
        MEMORY[0x223D5ACB0](58, 0xE100000000000000);
        *&v185 = 99;
        v145 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v145);

        MEMORY[0x223D5ACB0](0xD000000000000031, 0x800000021E4F0E50);
        v146 = *(&v188 + 1);
        v147 = v188;
        v148 = sub_21E4DD218();
        *&v188 = 0xD000000000000014;
        *(&v188 + 1) = v144;
        v149 = sub_21E45C20C(0);
        if (v150)
        {
          *&v185 = 32;
          *(&v185 + 1) = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v149);

          MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
        }

        v151 = HIBYTE(v146) & 0xF;
        if ((v146 & 0x2000000000000000) == 0)
        {
          v151 = v147 & 0xFFFFFFFFFFFFLL;
        }

        v152 = v172;
        if (v151)
        {
          *&v185 = 32;
          *(&v185 + 1) = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v147, v146);
          MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
        }

        v153 = v188;
        v154 = sub_21E4DBCB8();
        if (os_log_type_enabled(v154, v148))
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *&v185 = v156;
          *v155 = 136315138;
          v157 = sub_21E426648(v153, *(&v153 + 1), &v185);

          *(v155 + 4) = v157;
          _os_log_impl(&dword_21E3EB000, v154, v148, "%s", v155, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v156);
          v158 = v156;
          v50 = v182;
          MEMORY[0x223D5BF10](v158, -1, -1);
          MEMORY[0x223D5BF10](v155, -1, -1);
        }

        else
        {
        }

        v162 = v152;
        goto LABEL_79;
      }

      v115 = *(v52 + 16);
      v115(v165, v142 + v143, v46);
      v115(v166, v50, v46);
      v159 = v168;
      sub_21E4DB448();
      *v159 = v120;
      v159[1] = v121;
      v159[2] = v122;
      v159[3] = v123;
      sub_21E4AA3B0(v159);
      sub_21E4AB4D4(v159, type metadata accessor for FrameSnapshot);
      sub_21E4AB4D4(v142, type metadata accessor for FrameUpdate);
      v48 = v180;
    }

    v160 = v176;
    v115(&v176[*(v48 + 20)], v50, v46);
    *v160 = v55;
    v160[1] = v54;
    v160[2] = v57;
    v160[3] = v56;
    (*(v183 + 56))(v160, 0, 1, v48);
    v141 = v160;
    goto LABEL_71;
  }

  swift_beginAccess();
  v53 = v174;
  sub_21E4AB394(v47 + v49, v174);
  if ((*v51)(v53, 1, v48) != 1)
  {
    v60 = v53;
    v61 = v175;
    sub_21E4AB46C(v60, v175, type metadata accessor for FrameUpdate);
    v62 = *(v48 + 20);
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_21E4DD3A8();
    v185 = v188;
    MEMORY[0x223D5ACB0](v177, v178);
    MEMORY[0x223D5ACB0](58, 0xE100000000000000);
    v63 = v179;
    MEMORY[0x223D5ACB0](0xD000000000000014, v179);
    MEMORY[0x223D5ACB0](58, 0xE100000000000000);
    *&v188 = 74;
    v64 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v64);

    MEMORY[0x223D5ACB0](0xD00000000000001BLL, 0x800000021E4F0E10);
    v65 = *v61;
    v66 = v61[1];
    v67 = v61[2];
    v68 = v61[3];
    *&v188 = *v61;
    *(&v188 + 1) = v66;
    *&v189 = v67;
    *(&v189 + 1) = v68;
    type metadata accessor for CGRect(0);
    sub_21E4DD458();
    MEMORY[0x223D5ACB0](0xD000000000000011, 0x800000021E4F0E30);
    v69 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v69);

    MEMORY[0x223D5ACB0](0x646E6520646E6120, 0xEE0020656D697420);
    v70 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v70);

    v72 = *(&v185 + 1);
    v71 = v185;
    v73 = sub_21E4DD208();
    *&v188 = 0xD000000000000014;
    *(&v188 + 1) = v63;
    v74 = sub_21E45C20C(0);
    if (v75)
    {
      *&v185 = 32;
      *(&v185 + 1) = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v74);

      MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
    }

    v76 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v76 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {
      *&v185 = 32;
      *(&v185 + 1) = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v71, v72);
      MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
    }

    v77 = v188;
    v78 = sub_21E4DBCB8();
    if (os_log_type_enabled(v78, v73))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v185 = v80;
      *v79 = 136315138;
      v81 = sub_21E426648(v77, *(&v77 + 1), &v185);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_21E3EB000, v78, v73, "%s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      v82 = v80;
      v50 = v182;
      MEMORY[0x223D5BF10](v82, -1, -1);
      MEMORY[0x223D5BF10](v79, -1, -1);
    }

    else
    {
    }

    v99 = v175;
    if ((sub_21E4DB5E8() & 1) == 0)
    {
      v138 = *(v52 + 16);
      v138(v165, v99 + v62, v46);
      v138(v166, v50, v46);
      v139 = v168;
      sub_21E4DB448();
      *v139 = v65;
      v139[1] = v66;
      v139[2] = v67;
      v139[3] = v68;
      sub_21E4AA3B0(v139);
      sub_21E4AB4D4(v139, type metadata accessor for FrameSnapshot);
      sub_21E4AB4D4(v99, type metadata accessor for FrameUpdate);
      v48 = v180;
      goto LABEL_58;
    }

    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](v177, v178);
    MEMORY[0x223D5ACB0](58, 0xE100000000000000);
    v100 = v179;
    MEMORY[0x223D5ACB0](0xD000000000000014, v179);
    MEMORY[0x223D5ACB0](58, 0xE100000000000000);
    *&v185 = 76;
    v101 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v101);

    MEMORY[0x223D5ACB0](0xD000000000000031, 0x800000021E4F0E50);
    v103 = *(&v188 + 1);
    v102 = v188;
    v104 = sub_21E4DD218();
    *&v188 = 0xD000000000000014;
    *(&v188 + 1) = v100;
    v105 = sub_21E45C20C(0);
    if (v106)
    {
      *&v185 = 32;
      *(&v185 + 1) = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v105);

      MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
    }

    v107 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v107 = v102 & 0xFFFFFFFFFFFFLL;
    }

    if (v107)
    {
      *&v185 = 32;
      *(&v185 + 1) = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v102, v103);
      MEMORY[0x223D5ACB0](v185, *(&v185 + 1));
    }

    v108 = v188;
    v109 = sub_21E4DBCB8();
    if (os_log_type_enabled(v109, v104))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v185 = v111;
      *v110 = 136315138;
      v112 = sub_21E426648(v108, *(&v108 + 1), &v185);

      *(v110 + 4) = v112;
      _os_log_impl(&dword_21E3EB000, v109, v104, "%s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      v113 = v111;
      v50 = v182;
      MEMORY[0x223D5BF10](v113, -1, -1);
      MEMORY[0x223D5BF10](v110, -1, -1);
    }

    else
    {
    }

    v161 = &v192;
    goto LABEL_76;
  }

  sub_21E4AB404(v53);
LABEL_58:
  v140 = v176;
  (*(v183 + 56))(v176, 1, 1, v48);
  v141 = v140;
LABEL_71:
  sub_21E4A7D30(v141);
  return (*(v52 + 8))(v50, v46);
}

uint64_t sub_21E4A9950(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v81 = a1;
  v80 = sub_21E4DB478();
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_21E4DB628();
  v77 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = type metadata accessor for FrameSnapshot(0);
  v83 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v78 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v73 = &v70 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70 - v23;
  v25 = type metadata accessor for FrameUpdate(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots;
  swift_beginAccess();
  v84 = *(v4 + v29);
  v30 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate;
  swift_beginAccess();
  sub_21E4AB394(v4 + v30, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v31 = v74;
    v32 = v84;

    sub_21E4AB404(v24);
    v33 = v78;
    v34 = v32;
  }

  else
  {
    v35 = v74;
    sub_21E4AB46C(v24, v28, type metadata accessor for FrameUpdate);
    v36 = *(v25 + 20);
    v37 = *(v77 + 16);
    v38 = v28[1];
    v71 = *v28;
    v70 = v38;
    v72 = v28;
    v37(v15, v28 + v36, v82);
    v39 = v84;

    sub_21E4DB618();
    v40 = v73;
    sub_21E4DB448();
    v41 = v70;
    *v40 = v71;
    v40[1] = v41;
    sub_21E4AB274(v40, v75);
    v34 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21E443B74(0, v39[2] + 1, 1, v39);
    }

    v33 = v78;
    v31 = v35;
    v43 = v34[2];
    v42 = v34[3];
    v84 = (v43 + 1);
    if (v43 >= v42 >> 1)
    {
      v34 = sub_21E443B74((v42 > 1), v43 + 1, 1, v34);
    }

    sub_21E4AB4D4(v40, type metadata accessor for FrameSnapshot);
    sub_21E4AB4D4(v72, type metadata accessor for FrameUpdate);
    v44 = v83;
    v34[2] = v84;
    sub_21E4AB46C(v75, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, type metadata accessor for FrameSnapshot);
  }

  v45 = v34[2];
  if (v45)
  {
    v78 = (v34 + ((*(v83 + 80) + 32) & ~*(v83 + 80)));
    v46 = (v77 + 8);
    v77 = v31 + 8;
    v76 = v16;
    v84 = v34;
    while (v45 <= v34[2])
    {
      --v45;
      sub_21E4AB274(v78 + *(v83 + 72) * v45, v33);
      sub_21E4DB458();
      sub_21E4DB608();
      v47 = v8;
      v48 = *v46;
      v31 = v15;
      v49 = v82;
      (*v46)(v13, v82);
      v50 = v79;
      sub_21E4DB438();
      sub_21E4DB5F8();
      v51 = v49;
      v15 = v31;
      v48(v50, v51);
      v8 = v47;
      sub_21E4DB448();
      if (sub_21E4DB468())
      {
        v89.x = a2;
        v89.y = a3;
        v52 = CGRectContainsPoint(*v33, v89);
        (*v77)(v47, v80);
        sub_21E4AB4D4(v33, type metadata accessor for FrameSnapshot);
        if (v52)
        {
          v31 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        (*v77)(v47, v80);
        sub_21E4AB4D4(v33, type metadata accessor for FrameSnapshot);
      }

      v34 = v84;
      if (!v45)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
  v31 = 0;
LABEL_16:

  v8 = 0x800000021E4F0EE0;
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_21E4DD3A8();
  if (qword_280C15430 != -1)
  {
LABEL_37:
    swift_once();
  }

  MEMORY[0x223D5ACB0](qword_280C15438, unk_280C15440);
  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  MEMORY[0x223D5ACB0](0xD00000000000002ELL, v8);
  MEMORY[0x223D5ACB0](58, 0xE100000000000000);
  v85 = 145;
  v53 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v53);

  MEMORY[0x223D5ACB0](0xD00000000000001CLL, 0x800000021E4F0F10);
  if (v31)
  {
    v54 = 0x444E554F46;
  }

  else
  {
    v54 = 0x20544F4E20444944;
  }

  if (v31)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xEC000000444E4946;
  }

  MEMORY[0x223D5ACB0](v54, v55);

  MEMORY[0x223D5ACB0](0xD000000000000012, 0x800000021E4F0F30);
  v85 = *&a2;
  v86 = a3;
  type metadata accessor for CGPoint(0);
  sub_21E4DD458();
  v57 = v87;
  v56 = v88;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v58 = sub_21E4DBCC8();
  __swift_project_value_buffer(v58, qword_280C14558);
  v59 = sub_21E4DD208();
  v87 = 0xD00000000000002ELL;
  v88 = v8;
  v60 = sub_21E45C20C(0);
  if (v61)
  {
    v85 = 32;
    v86 = -1.7573882e159;
    MEMORY[0x223D5ACB0](v60);

    MEMORY[0x223D5ACB0](v85, *&v86);
  }

  v62 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v62)
  {
    v85 = 32;
    v86 = -1.7573882e159;
    MEMORY[0x223D5ACB0](v57, v56);
    MEMORY[0x223D5ACB0](v85, *&v86);
  }

  v64 = v87;
  v63 = v88;
  v65 = sub_21E4DBCB8();
  if (os_log_type_enabled(v65, v59))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v85 = v67;
    *v66 = 136315138;
    v68 = sub_21E426648(v64, v63, &v85);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_21E3EB000, v65, v59, "%s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x223D5BF10](v67, -1, -1);
    MEMORY[0x223D5BF10](v66, -1, -1);
  }

  else
  {
  }

  return v31;
}

uint64_t sub_21E4AA3B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FrameSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots;
  swift_beginAccess();

  sub_21E4AADA4((v1 + v8), v1);
  v10 = v9;

  v11 = *(*(v2 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_21E4AB19C(v10, v11, sub_21E443B74, sub_21E4D1718);
    sub_21E4AB274(a1, v7);
    v10 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v10 = sub_21E443B74(0, v10[2] + 1, 1, v10);
  *(v2 + v8) = v10;
LABEL_3:
  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_21E443B74((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  sub_21E4AB46C(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for FrameSnapshot);
  *(v2 + v8) = v10;
  return swift_endAccess();
}

uint64_t sub_21E4AA5A4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  sub_21E4AB404(v0 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_21E4AA624(uint64_t a1)
{
  sub_21E4AA6E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E4AA6E4(uint64_t a1)
{
  if (!qword_280C15198[0])
  {
    type metadata accessor for FrameUpdate(255);
    v1 = sub_21E4DD318();
    if (!v2)
    {
      atomic_store(v1, qword_280C15198);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 20);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(a4 + 20);
  v8 = (a5)(0, a2, a3);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, a2, a2, v8);
}

void sub_21E4AA8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for CGRect(319);
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E4AAA2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21E4DD488();
  }

  return sub_21E4DD3E8();
}

uint64_t sub_21E4AAA90(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_21E4DB628();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return 0;
  }

  v19 = v2;
  v11 = (v8 + 8);
  v12 = 0;
  v20 = type metadata accessor for FrameSnapshot(0);
  v13 = a1 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80));
  v14 = *(*(v20 - 8) + 72);
  while (1)
  {
    sub_21E4DB438();
    sub_21E4DB618();
    sub_21E4DB5D8();
    v16 = v15;
    v17 = *v11;
    (*v11)(v7, v4);
    v17(v10, v4);
    if (v16 < -*(v22 + 112))
    {
      break;
    }

    ++v12;
    v13 += v14;
    if (v21 == v12)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_21E4AACA0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21E4DD488();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_21E4DD488();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_21E4D2ADC();

  return sub_21E4D1450(v5, v3, 0);
}

void sub_21E4AADA4(uint64_t *a1, uint64_t a2)
{
  v56 = a2;
  v54 = sub_21E4DB628();
  v52 = *(v54 - 8);
  v3 = MEMORY[0x28223BE20](v54);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v43 - v6;
  v7 = type metadata accessor for FrameSnapshot(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = v57;
  v19 = sub_21E4AAA90(*a1, v56);
  if (!v18)
  {
    v50 = v16;
    v45 = v11;
    v46 = v14;
    v43 = 0;
    if (v20)
    {
      v55 = v17[2];
      return;
    }

    v49 = v7;
    v44 = a1;
    v55 = v19;
    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      v23 = v17 + 2;
      v22 = v17[2];
      v24 = v50;
      if (v21 == v22)
      {
        return;
      }

      v47 = v8;
      v48 = (v52 + 8);
      while (v21 < v22)
      {
        v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v57 = v17;
        v51 = v25;
        v26 = v17 + v25;
        v27 = *(v8 + 72);
        v52 = v27 * v21;
        sub_21E4AB274(v17 + v25 + v27 * v21, v24);
        v28 = v53;
        sub_21E4DB438();
        sub_21E4DB618();
        sub_21E4DB5D8();
        v30 = v29;
        v31 = *v48;
        v32 = v5;
        v33 = v5;
        v34 = v54;
        (*v48)(v33, v54);
        v35 = v28;
        v24 = v50;
        v31(v35, v34);
        v36 = -*(v56 + 112);
        sub_21E4AB4D4(v24, type metadata accessor for FrameSnapshot);
        if (v30 < v36)
        {
          v5 = v32;
          v8 = v47;
          v17 = v57;
        }

        else
        {
          v37 = v55;
          if (v21 == v55)
          {
            v5 = v32;
            v8 = v47;
            v17 = v57;
          }

          else
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            v38 = *v23;
            if (v55 >= *v23)
            {
              goto LABEL_24;
            }

            v5 = v32;
            v39 = v27 * v55;
            sub_21E4AB274(&v26[v27 * v55], v46);
            if (v21 >= v38)
            {
              goto LABEL_25;
            }

            v40 = &v26[v52];
            v41 = v52;
            sub_21E4AB274(v40, v45);
            v17 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_21E4AAA18(v17);
            }

            v8 = v47;
            v42 = v17 + v51;
            sub_21E4AB2D8(v45, v17 + v51 + v39);
            if (v21 >= v17[2])
            {
              goto LABEL_26;
            }

            sub_21E4AB2D8(v46, &v42[v41]);
            *v44 = v17;
            v37 = v55;
          }

          v55 = v37 + 1;
        }

        ++v21;
        v23 = v17 + 2;
        v22 = v17[2];
        if (v21 == v22)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_21E4AB19C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_21E4AB274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E4AB2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E4AB33C()
{
  result = qword_280C15B58;
  if (!qword_280C15B58)
  {
    sub_21E4DB628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C15B58);
  }

  return result;
}

uint64_t sub_21E4AB394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E4AB404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E4AB46C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E4AB4D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21E4AB534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6690, &qword_21E4E93F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21E4AB5C8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = sub_21E4DD1D8();
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA4F0]];

  v3 = sub_21E4DCF68();
  [v1 setName_];

  v4 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v5 = sub_21E4DD078();
  [v4 setValue:v5 forKey:*MEMORY[0x277CDA358]];

  v6 = sub_21E4DCF68();
  [v4 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21E4E6F90;
  v8 = sub_21E4272C0();
  *(v7 + 32) = v1;
  *(v7 + 88) = v8;
  *(v7 + 56) = v8;
  *(v7 + 64) = v4;
  v9 = v1;
  v10 = v4;
  v11 = sub_21E4DD078();

  [v0 setFilters_];
}

void sub_21E4AB7CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = sub_21E4DD1D8();
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA4F0]];

  v3 = sub_21E4DCF68();
  [v1 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E4E57E0;
  *(v4 + 56) = sub_21E4272C0();
  *(v4 + 32) = v1;
  v5 = v1;
  v6 = sub_21E4DD078();

  [v0 setFilters_];
}

id SiriSharedUIDropletLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUIDropletLayer.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SiriSharedUIDropletLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

void *SiriSharedUIDropletLayer.init(layer:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v3 = sub_21E4DD508();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

id SiriSharedUIDropletLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriSharedUIDropletLayer.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SiriSharedUIDropletLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIDropletLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21E4ABD50(__int128 *a1)
{
  v2 = sub_21E4DC518();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1[3];
  v12 = a1[2];
  v13 = v3;
  v4 = a1[5];
  v14 = a1[4];
  v15 = v4;
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  sub_21E430954(a1, v9);
  v6 = sub_21E4DC2C8();
  result = [v6 view];
  if (result)
  {
    v8 = result;
    sub_21E4B1B84(a1);
    [v8 setBackgroundColor_];

    sub_21E4DC508();
    sub_21E4DC2A8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E4ABE50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E4ABEC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E4ABF38()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI15ReplayViewModel__isRecording;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6740, &qword_21E4E77C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12SiriSharedUI15ReplayViewModel__message;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AD0, &qword_21E4E77C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_21E4AC02C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ReplayViewModel(0);
  result = sub_21E4DBD78();
  *a2 = result;
  return result;
}

id sub_21E4AC06C()
{
  result = [objc_allocWithZone(type metadata accessor for SiriSharedUIReplayUtility()) init];
  qword_280C15A10 = result;
  return result;
}

id static SiriSharedUIReplayUtility.shared.getter()
{
  if (qword_280C15A08 != -1)
  {
    swift_once();
  }

  v1 = qword_280C15A10;

  return v1;
}

uint64_t sub_21E4AC19C()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21E4AC27C()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21E4AC314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_21E4DB588();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewModel;
  type metadata accessor for ReplayViewModel(0);
  v9 = swift_allocObject();
  LOBYTE(v16) = 0;
  sub_21E4DBDC8();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_21E4DBDC8();
  *&v0[v8] = v9;
  v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying] = 0;
  v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_currentSpeechRecognized] = 0;
  v10 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v11 = &v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_latestIndexReplayed] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_resetReplayTask] = 0;
  v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached] = 0;
  v12 = type metadata accessor for SiriSharedUIReplayUtility();
  v15.receiver = v0;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_21E4AEB68(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

    sub_21E424BC0(v3, &qword_27CEC6700, &qword_21E4E90E0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_21E4AF8B4(v7);

    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

id sub_21E4AC5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_21E4AF664(a2);

  return sub_21E4B0424(a1, a3, a4);
}

void sub_21E4AC7B0(uint64_t a1, uint64_t a2)
{
  sub_21E4AF664(a2);

  sub_21E4B012C(a1);
}

void sub_21E4AC924(void *a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController;
  v4 = *&v1[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_25;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *&v1[v3];
    if (v8)
    {
LABEL_4:
      v9 = v8;
      v10 = [a1 view];
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        v13 = [v12 view];
        if (v13)
        {
          v14 = v13;
          [v11 addSubview_];

          [v12 didMoveToParentViewController_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_21E4E7410;
          v16 = [v12 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 leadingAnchor];

            v19 = [a1 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v19 leadingAnchor];

              v22 = [v18 constraintEqualToAnchor_];
              *(v15 + 32) = v22;
              v23 = [v12 view];

              if (v23)
              {
                v24 = [v23 bottomAnchor];

                v25 = [a1 view];
                if (v25)
                {
                  v26 = v25;
                  v27 = objc_opt_self();
                  v28 = [v26 bottomAnchor];

                  v29 = [v24 constraintEqualToAnchor_];
                  *(v15 + 40) = v29;
                  sub_21E43F008(0, &qword_280C14148, 0x277CCAAD0);
                  v30 = sub_21E4DD078();

                  [v27 activateConstraints_];

                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v52) = 0;

                  sub_21E4DBDF8();

                  return;
                }

                goto LABEL_30;
              }

LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {

    v31 = v1;
    v32 = v1;
    sub_21E430EEC(v1, 0, v54);
    v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC66C8, &unk_21E4E9450));
    sub_21E430954(v54, &v52);
    v34 = sub_21E4ABD50(v54);
    v35 = [v34 view];
    if (!v35)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v36 = v35;
    [v35 setTranslatesAutoresizingMaskIntoConstraints_];

    v37 = [v34 view];
    if (!v37)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v38 = [objc_opt_self() clearColor];
    [v37 setBackgroundColor_];
    sub_21E4B1B84(v54);

    v39 = *&v32[v3];
    *&v32[v3] = v34;

    v8 = *&v32[v3];
    if (v8)
    {
      goto LABEL_4;
    }
  }

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v40 = sub_21E4DBCC8();
  __swift_project_value_buffer(v40, qword_280C14558);
  v41 = sub_21E4DD218();
  v52 = 0xD000000000000015;
  v53 = 0x800000021E4F0FC0;
  v42 = sub_21E45C20C(0);
  if (v43)
  {
    v50 = 32;
    v51 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v42);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("addReplayControl(to:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v50 = 32;
    v51 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001DLL, 0x800000021E4F0FE0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v45 = v52;
  v44 = v53;
  v46 = sub_21E4DBCB8();
  if (os_log_type_enabled(v46, v41))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v47 = 136315138;
    v49 = sub_21E426648(v45, v44, &v50);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_21E3EB000, v46, v41, "%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x223D5BF10](v48, -1, -1);
    MEMORY[0x223D5BF10](v47, -1, -1);
  }

  else
  {
  }
}

void sub_21E4ACFC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (v1)
  {
    v4 = v1;
    v2 = [v4 view];
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];

      [v4 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21E4AD110(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
  swift_beginAccess();
  if ((*(v1 + v4) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), , sub_21E4DBDE8(), , , , (v98[0] & 1) == 0))
  {
    v98[0] = 0;
    v98[1] = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000026, 0x800000021E4F1000);
    if (*(v1 + v4))
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (*(v1 + v4))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x223D5ACB0](v12, v13);

    MEMORY[0x223D5ACB0](0x6F6365527369202CLL, 0xEF203A676E696472);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21E4DBDE8();

    if (v96)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v96)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x223D5ACB0](v14, v15);

    v17 = v98[0];
    v16 = v98[1];
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v18 = sub_21E4DBCC8();
    __swift_project_value_buffer(v18, qword_280C14558);
    v19 = sub_21E4DD1F8();
    strcpy(v98, "received(_:)");
    BYTE5(v98[1]) = 0;
    HIWORD(v98[1]) = -5120;
    v20 = sub_21E45C20C(0);
    if (v21)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v20);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if ((v16 & 0xF00000000000000) != 0)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v17, v16);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v23 = v98[0];
    v22 = v98[1];
    v24 = sub_21E4DBCB8();
    if (os_log_type_enabled(v24, v19))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v96 = v26;
      *v25 = 136315138;
      v27 = sub_21E426648(v23, v22, &v96);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_21E3EB000, v24, v19, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223D5BF10](v26, -1, -1);
      MEMORY[0x223D5BF10](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v5 = [a1 encodedClassName];
  if (!v5)
  {
    sub_21E4DCF78();
    goto LABEL_32;
  }

  v6 = v5;
  v7 = sub_21E4DCF78();
  v9 = v8;

  v10 = sub_21E4DCF78();
  if (!v9)
  {
LABEL_32:

    goto LABEL_33;
  }

  if (v7 == v10 && v9 == v11)
  {

    goto LABEL_51;
  }

  v47 = sub_21E4DD518();

  if ((v47 & 1) == 0)
  {
LABEL_33:
    v28 = [a1 encodedClassName];
    if (v28)
    {
      v29 = v28;
      v30 = sub_21E4DCF78();
      v32 = v31;

      v33 = sub_21E4DCF78();
      if (v32)
      {
        if (v30 == v33 && v32 == v34)
        {

          goto LABEL_56;
        }

        v61 = sub_21E4DD518();

        if (v61)
        {
LABEL_56:
          objc_opt_self();
          v62 = swift_dynamicCastObjCClass();
          if (v62)
          {
            v24 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_currentSpeechRecognized);
            *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_currentSpeechRecognized) = v62;
            v63 = a1;
            goto LABEL_30;
          }

          if (qword_280C14550 != -1)
          {
            swift_once();
          }

          v67 = sub_21E4DBCC8();
          __swift_project_value_buffer(v67, qword_280C14558);
          v36 = sub_21E4DD218();
          strcpy(v98, "received(_:)");
          BYTE5(v98[1]) = 0;
          HIWORD(v98[1]) = -5120;
          v68 = sub_21E45C20C(0);
          if (v69)
          {
            v96 = 32;
            v97 = 0xE100000000000000;
            MEMORY[0x223D5ACB0](v68);

            MEMORY[0x223D5ACB0](32, 0xE100000000000000);
          }

          if (("dViews or RecognizeSpeech" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v96 = 32;
            v97 = 0xE100000000000000;
            v41 = 0x800000021E4F1070;
            v40 = 0xD00000000000002FLL;
            goto LABEL_47;
          }

          goto LABEL_48;
        }

LABEL_40:
        if (qword_280C14550 != -1)
        {
          swift_once();
        }

        v35 = sub_21E4DBCC8();
        __swift_project_value_buffer(v35, qword_280C14558);
        v36 = sub_21E4DD1F8();
        strcpy(v98, "received(_:)");
        BYTE5(v98[1]) = 0;
        HIWORD(v98[1]) = -5120;
        v37 = sub_21E45C20C(0);
        if (v38)
        {
          v96 = 32;
          v97 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v37);

          MEMORY[0x223D5ACB0](32, 0xE100000000000000);
        }

        v39 = "cording. isReplaying: ";
        if (("cording. isReplaying: " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v96 = 32;
          v97 = 0xE100000000000000;
          v40 = 0xD000000000000039;
LABEL_46:
          v41 = v39 | 0x8000000000000000;
LABEL_47:
          MEMORY[0x223D5ACB0](v40, v41);
          MEMORY[0x223D5ACB0](v96, v97);
        }

LABEL_48:
        v43 = v98[0];
        v42 = v98[1];
        v24 = sub_21E4DBCB8();
        if (os_log_type_enabled(v24, v36))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v96 = v45;
          *v44 = 136315138;
          v46 = sub_21E426648(v43, v42, &v96);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_21E3EB000, v24, v36, "%s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x223D5BF10](v45, -1, -1);
          MEMORY[0x223D5BF10](v44, -1, -1);
          goto LABEL_30;
        }

LABEL_29:

LABEL_30:

        return;
      }
    }

    else
    {
      sub_21E4DCF78();
    }

    goto LABEL_40;
  }

LABEL_51:
  v48 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_currentSpeechRecognized);
  if (!v48)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v64 = sub_21E4DBCC8();
    __swift_project_value_buffer(v64, qword_280C14558);
    v36 = sub_21E4DD218();
    strcpy(v98, "received(_:)");
    BYTE5(v98[1]) = 0;
    HIWORD(v98[1]) = -5120;
    v65 = sub_21E45C20C(0);
    if (v66)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v65);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v39 = "to retrieve SASSpeechRecognized";
    if (("to retrieve SASSpeechRecognized" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      v40 = 0xD000000000000027;
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (!v49)
  {
    v70 = qword_280C14550;
    v71 = v48;
    if (v70 != -1)
    {
      swift_once();
    }

    v72 = sub_21E4DBCC8();
    __swift_project_value_buffer(v72, qword_280C14558);
    v73 = sub_21E4DD218();
    strcpy(v98, "received(_:)");
    BYTE5(v98[1]) = 0;
    HIWORD(v98[1]) = -5120;
    v74 = sub_21E45C20C(0);
    if (v75)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v74);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("ecognized not available" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v96 = 32;
      v97 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000028, 0x800000021E4F10D0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v77 = v98[0];
    v76 = v98[1];
    v24 = sub_21E4DBCB8();
    if (os_log_type_enabled(v24, v73))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v96 = v79;
      *v78 = 136315138;
      v80 = sub_21E426648(v77, v76, &v96);

      *(v78 + 4) = v80;
      _os_log_impl(&dword_21E3EB000, v24, v73, "%s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x223D5BF10](v79, -1, -1);
      MEMORY[0x223D5BF10](v78, -1, -1);

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v50 = v49;
  v51 = objc_allocWithZone(type metadata accessor for SiriSharedUIReplayData());
  v52 = a1;
  v53 = v48;
  sub_21E43F050(v53, v50);
  v55 = v54;
  [*(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) addObject_];
  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD00000000000002FLL, 0x800000021E4F1100);
  v56 = [v52 aceId];
  if (v56)
  {
    v57 = v56;
    v58 = sub_21E4DCF78();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v96 = v58;
  v97 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5538, &qword_21E4E6D70);
  v81 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v81);

  MEMORY[0x223D5ACB0](0x617265747475202CLL, 0xED0000203A65636ELL);
  v82 = *&v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance];
  v83 = *&v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance + 8];

  MEMORY[0x223D5ACB0](v82, v83);

  v85 = v98[0];
  v84 = v98[1];
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v86 = sub_21E4DBCC8();
  __swift_project_value_buffer(v86, qword_280C14558);
  v87 = sub_21E4DD1F8();
  strcpy(v98, "received(_:)");
  BYTE5(v98[1]) = 0;
  HIWORD(v98[1]) = -5120;
  v88 = sub_21E45C20C(0);
  if (v89)
  {
    v96 = 32;
    v97 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v88);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((v84 & 0xF00000000000000) != 0)
  {
    v96 = 32;
    v97 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v85, v84);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v91 = v98[0];
  v90 = v98[1];
  v92 = sub_21E4DBCB8();
  if (os_log_type_enabled(v92, v87))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *v93 = 136315138;
    v95 = sub_21E426648(v91, v90, &v96);

    *(v93 + 4) = v95;
    _os_log_impl(&dword_21E3EB000, v92, v87, "%s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    MEMORY[0x223D5BF10](v94, -1, -1);
    MEMORY[0x223D5BF10](v93, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21E4ADFAC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  v4 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  v5 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_21E3F1EB0(v4, v5);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

id sub_21E4AE144(CGFloat a1, CGFloat a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  result = [v6 view];
  if (result)
  {
    v8 = result;
    [result frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    v18.x = a1;
    v18.y = a2;
    v17 = CGRectContainsPoint(v19, v18);

    return v17;
  }

  __break(1u);
  return result;
}

void sub_21E4AE2E0()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  *(v0 + v1) = 1;
}

uint64_t sub_21E4AE3A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 environment];

  v5 = sub_21E4DCE98();
  if (*(v5 + 16))
  {
    sub_21E4B143C(0xD000000000000012, 0x800000021E4F1130);
    if (v6)
    {
    }
  }

  sub_21E4DB578();

  sub_21E4AF664(v2);
  return sub_21E424BC0(v2, &qword_27CEC6700, &qword_21E4E90E0);
}

void sub_21E4AE56C(unint64_t a1, unint64_t a2, __int16 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDE8();

  if (v22 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v6 = sub_21E4DD518();

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;

  sub_21E4DBDF8();
LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  *&v22 = a1;
  *(&v22 + 1) = a2;

  sub_21E4DBDF8();
  if ((a3 & 0x100) == 0)
  {
    if (sub_21E4DD1F8() == a3)
    {
      MEMORY[0x223D5ACB0](a1, a2);
      v8 = 0x3A79616C70655223;
      v7 = 0xE900000000000020;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v9 = sub_21E4DBCC8();
      __swift_project_value_buffer(v9, qword_280C14558);
      v10 = sub_21E4DD1F8();
    }

    else
    {
      if (sub_21E4DD218() == a3)
      {
        *&v22 = 0x3A79616C70655223;
        *(&v22 + 1) = 0xE900000000000020;
      }

      else
      {
        *&v22 = 0;
        *(&v22 + 1) = 0xE000000000000000;
        sub_21E4DD3A8();
        MEMORY[0x223D5ACB0](0xD00000000000001ALL, 0x800000021E4F15C0);
        LOBYTE(v20) = a3;
        type metadata accessor for OSLogType(0);
        sub_21E4DD458();
        MEMORY[0x223D5ACB0](8238, 0xE200000000000000);
      }

      MEMORY[0x223D5ACB0](a1, a2);
      v7 = *(&v22 + 1);
      v8 = v22;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v11 = sub_21E4DBCC8();
      __swift_project_value_buffer(v11, qword_280C14558);
      v10 = sub_21E4DD218();
    }

    v12 = v10;
    *&v22 = 0xD00000000000001CLL;
    *(&v22 + 1) = 0x800000021E4F15A0;
    v13 = sub_21E45C20C(0);
    if (v14)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v13);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if ((v7 & 0xF00000000000000) != 0)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v8, v7);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v15 = v22;
    v16 = sub_21E4DBCB8();
    if (os_log_type_enabled(v16, v12))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      v19 = sub_21E426648(v15, *(&v15 + 1), &v20);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_21E3EB000, v16, v12, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x223D5BF10](v18, -1, -1);
      MEMORY[0x223D5BF10](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21E4AEA10()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_21E4DCF68();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_21E4DD338();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_21E4DB538();

      return;
    }
  }

  else
  {
    sub_21E424BC0(v5, &unk_27CEC5DF0, &unk_21E4E9540);
  }

  sub_21E4DB538();
}

uint64_t sub_21E4AEB68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E4DB588();
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21E4DCF68();
  v8 = sub_21E4DCF68();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_21E4DB568();

    (*(v13 + 32))(a1, v4, v2);
    return (*(v13 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v11 = sub_21E4DD218();
    sub_21E4AE56C(0xD00000000000002CLL, 0x800000021E4F1550, v11);

    v12 = *(v13 + 56);

    return v12(a1, 1, 1, v2);
  }
}

void sub_21E4AED80()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) count];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext;
    sub_21E4B012C(*(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext));
    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = *(v0 + v3);
    *(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_latestIndexReplayed) = v5;
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else if (v2 != -1 || v7 != 0x8000000000000000)
    {
      *(v0 + v3) = v7 % v2;
      return;
    }

    __break(1u);
    return;
  }

  sub_21E4AE56C(0xD000000000000012, 0x800000021E4F1530, 256);
}

void sub_21E4AEE5C()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = sub_21E4DB588();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects);
  v22 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v22];
  v8 = v22;
  if (v7)
  {
    v9 = sub_21E4DB5B8();
    v11 = v10;

    sub_21E4AEA10();
    sub_21E4DB5C8();
    v22 = 0x6F74206465766153;
    v23 = 0xE900000000000020;
    sub_21E4B2890(&qword_280C15B68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_21E4DD4E8();
    MEMORY[0x223D5ACB0](v17);

    v18 = v22;
    v19 = v23;
    v20 = sub_21E4DD1F8();
    sub_21E4AE56C(v18, v19, v20);

    sub_21E424920(v9, v11);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v12 = v8;
    v13 = sub_21E4DB4E8();

    swift_willThrow();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000016, 0x800000021E4F14F0);
    v21[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720, &qword_21E4E7820);
    sub_21E4DD458();
    v14 = v22;
    v15 = v23;
    v16 = sub_21E4DD218();
    sub_21E4AE56C(v14, v15, v16);
  }
}

double sub_21E4AF1EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  v0 = sub_21E4DBDD8();
  *v1 = !*v1;
  v0(&v6, 0);

  v6 = 0x6E6964726F636552;
  v7 = 0xEB00000000203A67;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDE8();

  if (v5)
  {
    v2 = 20047;
  }

  else
  {
    v2 = 4605519;
  }

  if (v5)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x223D5ACB0](v2, v3);

  sub_21E4AE56C(v6, v7, 256);

  return result;
}

void sub_21E4AF380()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects;
  v2 = [*(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) count];
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext;
    v4 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v5 = __OFADD__(v6, v2);
      v7 = v6 + v2;
      if (!v5)
      {
        v8 = v7 % v2;
        v9 = [*(v0 + v1) objectAtIndex_];
        sub_21E4DD338();
        swift_unknownObjectRelease();
        type metadata accessor for SiriSharedUIReplayData();
        if (swift_dynamicCast())
        {
          v10 = v17;
        }

        else
        {
          v10 = 0;
        }

        [*(v0 + v1) removeObjectAtIndex_];
        if (![*(v0 + v1) count])
        {
          goto LABEL_12;
        }

        v11 = *(v0 + v3);
        v12 = [*(v0 + v1) count];
        if (v12)
        {
          if (v11 != 0x8000000000000000 || v12 != -1)
          {
            *(v0 + v3) = v11 % v12;
LABEL_12:
            if (v10)
            {
              v14 = *&v10[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance];
              v13 = *&v10[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance + 8];
            }

            else
            {
              v13 = 0x800000021E4F14D0;
              v14 = 0xD00000000000001FLL;
            }

            sub_21E4DD3A8();

            v15 = sub_21E4DD4E8();
            MEMORY[0x223D5ACB0](v15);

            MEMORY[0x223D5ACB0](47, 0xE100000000000000);
            v16 = sub_21E4DD4E8();
            MEMORY[0x223D5ACB0](v16);

            MEMORY[0x223D5ACB0](2570, 0xE200000000000000);
            MEMORY[0x223D5ACB0](v14, v13);

            sub_21E4AE56C(0x676E6974656C6544uLL, 0xE900000000000020, 256);

            return;
          }

LABEL_22:
          __break(1u);
          return;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_21E4AE56C(0xD000000000000012, 0x800000021E4F14B0, 256);
}

uint64_t sub_21E4AF664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = sub_21E4DB588();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_21E4B2820(a1, v7);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_21E424BC0(v7, &qword_27CEC6700, &qword_21E4E90E0);
    sub_21E4AEB68(v5);
    if (v15(v5, 1, v8) == 1)
    {
      return sub_21E424BC0(v5, &qword_27CEC6700, &qword_21E4E90E0);
    }

    else
    {
      (*(v9 + 32))(v12, v5, v8);
      sub_21E4AF8B4(v12);
      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_21E4AF8B4(v14);
    return (*(v9 + 8))(v14, v8);
  }
}

void sub_21E4AF8B4(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects;
  [*(v1 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) removeAllObjects];
  v24 = sub_21E4DB598();
  v25 = v4;
  sub_21E4DD3A8();

  sub_21E4DB588();
  sub_21E4B2890(&qword_280C15B68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v5 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v5);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v6 = sub_21E4DBCC8();
  __swift_project_value_buffer(v6, qword_280C14558);
  v7 = sub_21E4DD1F8();
  v26 = 0xD000000000000016;
  v27 = 0x800000021E4F13B0;
  v8 = sub_21E45C20C(0);
  if (v9)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v8);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v10 = (0x800000021E4F1420 >> 56) & 0xF;
  if ((0x800000021E4F1420 & 0x2000000000000000) == 0)
  {
    v10 = 26;
  }

  if (v10)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001ALL, 0x800000021E4F1420);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v12 = v26;
  v11 = v27;
  v13 = sub_21E4DBCB8();
  if (os_log_type_enabled(v13, v7))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = sub_21E426648(v12, v11, &v29);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_21E3EB000, v13, v7, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x223D5BF10](v15, -1, -1);
    MEMORY[0x223D5BF10](v14, -1, -1);
  }

  else
  {
  }

  sub_21E4B1358();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E6F90;
  *(inited + 32) = sub_21E43F008(0, &qword_280C14188, 0x277CBEB18);
  *(inited + 40) = type metadata accessor for SiriSharedUIReplayData();
  sub_21E43F008(0, &unk_280C14160, 0x277CCAAC8);
  sub_21E48F084(inited);

  sub_21E4DD248();

  if (v28)
  {
    if (swift_dynamicCast())
    {
      v18 = v29;
      v19 = *(v2 + v3);
      *(v2 + v3) = v29;
      v20 = v18;

      sub_21E4DD3A8();

      v26 = 0x20646564616F4CLL;
      v27 = 0xE700000000000000;
      v29 = [*(v2 + v3) count];
      v21 = sub_21E4DD4E8();
      MEMORY[0x223D5ACB0](v21);

      MEMORY[0x223D5ACB0](0xD00000000000001ALL, 0x800000021E4F1490);
      v22 = sub_21E4DD1F8();
      sub_21E4AE56C(0x20646564616F4CuLL, 0xE700000000000000, v22);

      sub_21E424920(v24, v25);

      *(v2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_indexToReplayNext) = 0;
      return;
    }
  }

  else
  {
    sub_21E424BC0(&v26, &unk_27CEC5DF0, &unk_21E4E9540);
  }

  v23 = sub_21E4DD218();
  sub_21E4AE56C(0xD00000000000002DLL, 0x800000021E4F1460, v23);
  sub_21E424920(v24, v25);
}

void sub_21E4B012C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects;
  v4 = [*(v1 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) objectAtIndex_];
  sub_21E4DD338();
  swift_unknownObjectRelease();
  type metadata accessor for SiriSharedUIReplayData();
  if (swift_dynamicCast())
  {
    v5 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback + 8);
      v7 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
      swift_beginAccess();
      *(v1 + v7) = 1;
      v8 = *&v18[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_speechRecognized];
      sub_21E3F1E78(v5, v6);
      v9 = v8;
      v5();

      v10 = *&v18[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_addViews];
      v5();

      *(v1 + v7) = 0;
      sub_21E4B0E88();
      sub_21E4DD3A8();

      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else
      {
        v11 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v11);

        MEMORY[0x223D5ACB0](47, 0xE100000000000000);
        [*(v1 + v3) count];
        v12 = sub_21E4DD4E8();
        MEMORY[0x223D5ACB0](v12);

        MEMORY[0x223D5ACB0](2570, 0xE200000000000000);
        v13 = *&v18[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance];
        v14 = *&v18[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance + 8];

        MEMORY[0x223D5ACB0](v13, v14);

        v15 = sub_21E4DD1F8();
        sub_21E4AE56C(0x2079616C706552uLL, 0xE700000000000000, v15);
        sub_21E3F1EB0(v5, v6);
      }
    }

    else
    {
      v17 = sub_21E4DD218();
      sub_21E4AE56C(0xD000000000000021, 0x800000021E4F1640, v17);
    }
  }

  else
  {
    v16 = sub_21E4DD218();
    sub_21E4AE56C(0xD00000000000003BLL, 0x800000021E4F1600, v16);
  }
}

id sub_21E4B0424(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v34 = a1;
  v5 = sub_21E4DCBF8();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21E4DCC18();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E4DCBE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21E4DCC38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  result = [*(v4 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects) count];
  if (result)
  {
    v20 = result;
    if (result <= 0)
    {
      *(v4 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal) = 0;
      return v40();
    }

    else
    {
      sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
      v32 = v5;
      v33 = sub_21E4DD278();
      sub_21E4DCC28();
      *v11 = 0;
      (*(v9 + 104))(v11, *MEMORY[0x277D85188], v8);
      MEMORY[0x223D5A920](v16, v11);
      (*(v9 + 8))(v11, v8);
      v21 = *(v13 + 8);
      v22 = v12;
      v21(v16, v12);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = 0;
      v25 = v34;
      v24[4] = v20;
      v24[5] = v25;
      v26 = v41;
      v24[6] = v40;
      v24[7] = v26;
      aBlock[4] = sub_21E4B28E4;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E46C644;
      aBlock[3] = &block_descriptor_91;
      v27 = _Block_copy(aBlock);

      v28 = v35;
      sub_21E4DCC08();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21E4B2890(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
      sub_21E42E3E8();
      v29 = v37;
      v30 = v32;
      sub_21E4DD358();
      v31 = v33;
      MEMORY[0x223D5AF00](v18, v28, v29, v27);
      _Block_release(v27);

      (*(v39 + 8))(v29, v30);
      (*(v36 + 8))(v28, v38);
      return (v21)(v18, v22);
    }
  }

  return result;
}

void sub_21E4B092C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), void (*a5)(void), uint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v47 = a3;
  v7 = sub_21E4DCBF8();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21E4DCC18();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E4DCBE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21E4DCC38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_21E4B012C(a2);
    if ((v23 & 1) == 0)
    {
LABEL_8:

      return;
    }

    v24 = __OFADD__(a2, 1);
    v25 = a2 + 1;
    if (v24)
    {
      __break(1u);
    }

    else if (v25 >= v47)
    {
      *(v22 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal) = 0;
      v45();
    }

    else
    {
      if (v25)
      {
        v37 = v44;
        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_8;
        }
      }

      else
      {
        v37 = 0;
      }

      sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
      v36 = sub_21E4DD278();
      sub_21E4DCC28();
      *v13 = v37;
      (*(v11 + 104))(v13, *MEMORY[0x277D85188], v10);
      MEMORY[0x223D5A920](v18, v13);
      (*(v11 + 8))(v13, v10);
      v37 = *(v15 + 8);
      v37(v18, v14);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v25;
      v28 = v46;
      v30 = v44;
      v29 = v45;
      v27[4] = v47;
      v27[5] = v30;
      v27[6] = v29;
      v27[7] = v28;
      aBlock[4] = sub_21E4B28E4;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E46C644;
      aBlock[3] = &block_descriptor_83;
      v31 = _Block_copy(aBlock);

      v32 = v38;
      sub_21E4DCC08();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21E4B2890(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
      sub_21E42E3E8();
      v33 = v40;
      v34 = v43;
      sub_21E4DD358();
      v35 = v36;
      MEMORY[0x223D5AF00](v20, v32, v33, v31);
      _Block_release(v31);

      (*(v42 + 8))(v33, v34);
      (*(v39 + 8))(v32, v41);
      v37(v20, v14);
    }
  }
}

double sub_21E4B0E88()
{
  v1 = v0;
  v18[0] = sub_21E4DCC38();
  v2 = *(v18[0] - 8);
  v3 = MEMORY[0x28223BE20](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = sub_21E4DCBF8();
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_resetReplayTask;
  if (*&v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_resetReplayTask])
  {

    sub_21E4DCC58();
  }

  v0[OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal] = 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_21E4B27A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_13;
  _Block_copy(aBlock);
  v18[1] = MEMORY[0x277D84F90];
  sub_21E4B2890(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
  sub_21E42E3E8();
  sub_21E4DD358();
  sub_21E4DCC68();
  swift_allocObject();
  v12 = sub_21E4DCC48();

  sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
  v13 = sub_21E4DD278();
  sub_21E4DCC28();
  sub_21E4DCC88();
  v14 = *(v2 + 8);
  v15 = v5;
  v16 = v18[0];
  v14(v15, v18[0]);
  sub_21E4DD268();

  v14(v7, v16);
  *&v1[v9] = v12;

  return result;
}

id SiriSharedUIReplayUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIReplayUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E4B1264(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a2 = v3;
}

uint64_t sub_21E4B12E4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E4B1358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6730, &qword_21E4E8D18);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27CEC6738;
    v3 = &unk_21E4E9550;
  }

  else
  {
    v2 = &qword_27CEC57D0;
    v3 = &qword_21E4E6F40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t sub_21E4B13D0(uint64_t a1)
{
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](a1);
  v2 = sub_21E4DD608();

  return sub_21E4B1728(a1, v2);
}

unint64_t sub_21E4B143C(uint64_t a1, uint64_t a2)
{
  sub_21E4DD5C8();
  sub_21E4DCFD8();
  v4 = sub_21E4DD608();

  return sub_21E4B1794(a1, a2, v4);
}

unint64_t sub_21E4B14B4(uint64_t a1)
{
  sub_21E4DB8A8();
  v2 = MEMORY[0x277D08668];
  sub_21E4B2890(&qword_27CEC5E48, MEMORY[0x277D08668], MEMORY[0x277D08670]);
  v3 = sub_21E4DCEB8();
  return sub_21E4B184C(a1, v3, MEMORY[0x277D08668], &unk_27CEC6750, v2, MEMORY[0x277D08678]);
}

unint64_t sub_21E4B1588(uint64_t a1)
{
  v2 = sub_21E4DD5B8();

  return sub_21E4B1728(a1, v2);
}

unint64_t sub_21E4B15CC(uint64_t a1)
{
  sub_21E4DB698();
  v2 = MEMORY[0x277CC95F0];
  sub_21E4B2890(&qword_280C15B50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_21E4DCEB8();
  return sub_21E4B184C(a1, v3, MEMORY[0x277CC95F0], &unk_280C15B40, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_21E4B16A0(uint64_t a1)
{
  v2 = sub_21E4DD2E8();

  return sub_21E4B19EC(a1, v2);
}

unint64_t sub_21E4B16E4(uint64_t a1)
{
  v2 = sub_21E4DD2E8();

  return sub_21E4B1AC0(a1, v2);
}

unint64_t sub_21E4B1728(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21E4B1794(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21E4DD518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21E4B184C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_21E4B2890(v23, v24, v25);
      v19 = sub_21E4DCEE8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_21E4B19EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21E4DD2F8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21E4B1AC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21E4DD2F8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_21E4B1BD8(uint64_t a1, uint64_t a2, void (**a3)(void))
{
  v33 = a1;
  v5 = sub_21E4DCBF8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21E4DCC18();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E4DCBE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_21E4DCC38();
  v12 = *(v40 - 8);
  v13 = MEMORY[0x28223BE20](v40);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_savedAceObjects);
  _Block_copy(a3);
  v20 = [v19 count];
  if (v20)
  {
    v21 = v20;
    if (v20 >= 1)
    {
      sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
      v32 = sub_21E4DD278();
      sub_21E4DCC28();
      *v11 = 0;
      (*(v9 + 104))(v11, *MEMORY[0x277D85188], v8);
      MEMORY[0x223D5A920](v15, v11);
      (*(v9 + 8))(v11, v8);
      v31 = *(v12 + 8);
      v31(v15, v40);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = 0;
      v24 = v33;
      v23[4] = v21;
      v23[5] = v24;
      v23[6] = sub_21E462CF0;
      v23[7] = v18;
      aBlock[4] = sub_21E4B27CC;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21E46C644;
      aBlock[3] = &block_descriptor_75;
      v25 = _Block_copy(aBlock);

      v26 = v34;
      sub_21E4DCC08();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21E4B2890(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
      sub_21E42E3E8();
      v27 = v36;
      v28 = v39;
      sub_21E4DD358();
      v29 = v32;
      MEMORY[0x223D5AF00](v17, v26, v27, v25);
      _Block_release(v25);

      (*(v38 + 8))(v27, v28);
      (*(v35 + 8))(v26, v37);
      v31(v17, v40);

      return result;
    }

    *(a2 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal) = 0;
    a3[2](a3);
  }

  return result;
}

uint64_t sub_21E4B214C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_21E4DCE98();
  if (*(v2 + 16) && (v3 = sub_21E4B143C(0xD000000000000017, 0x800000021E4F15E0), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 1702195828 && v6 == 0xE400000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_21E4DD518();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void keypath_get_3Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_4Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t type metadata accessor for ReplayViewModel(uint64_t a1)
{
  result = qword_280C14ED8;
  if (!qword_280C14ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E4B2398(uint64_t a1)
{
  sub_21E45B5E8(319, &qword_280C14518, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_21E45B5E8(319, &qword_280C14520, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21E4B2820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700, &qword_21E4E90E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E4B2890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E4B28F4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_21E4DB698() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_21E4B29E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_21E4DD488();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D5B080](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_21E4B2AF4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_21E4DD488())
  {
    if (sub_21E4DD488())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x223D5B080](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_21E4DD488();
LABEL_13:
      if (v3)
      {
        sub_21E4AACA0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

id sub_21E4B2C54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType] = 2;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldBottomPaddingPad] = 0x4028000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_horizontalContentInset] = 0x4020000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewLeadingPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringDuration] = 0x3FE5F4B1EE243569;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringMass] = 0x4000000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringStiffness] = 0x4079000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringDamping] = 0x404699999999999ALL;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewStaggerDelay] = 0x3FA47AE147AE147BLL;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_landscapeTopPadding] = 0x402E000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_indexOfSelectedSuggestion] = -1;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_glassContainerView] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects] = 1;
  v9 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetsDropletView;
  v10 = type metadata accessor for SiriSharedUIDropletView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsDropletView;
  *&v4[v11] = [objc_allocWithZone(v10) &selRef_setEnabled_];
  v12 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView;
  *&v4[v12] = [objc_allocWithZone(SiriSharedUITouchPassthroughView) initWithFrame_];
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView] = 0;
  v13 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViews] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousSuggestionsViews] = v13;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_additionalSuggestionsViews] = v13;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_preprocessedSuggestions] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionContentViewsToRemove] = v13;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_dismissedAnimationSuggestionsViews] = v13;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingViews] = v13;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_originalViewSizeDict] = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerSuggestionsViews] = v13;
  v24 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewSnapshotManager;
  v30 = &type metadata for DefaultCurrentTimeProvider;
  v31 = &off_282F83790;
  type metadata accessor for SiriSharedUIViewFrameSnapshotManager(0);
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for DefaultCurrentTimeProvider);
  v27 = &type metadata for DefaultCurrentTimeProvider;
  v28 = &off_282F83790;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate;
  v16 = type metadata accessor for FrameUpdate(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots) = v13;
  *(v14 + 112) = 0x4000000000000000;
  sub_21E424A24(&v26, v14 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  *&v4[v24] = v14;
  v18 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewSnapshotManager;
  v30 = &type metadata for DefaultCurrentTimeProvider;
  v31 = &off_282F83790;
  v19 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for DefaultCurrentTimeProvider);
  v27 = &type metadata for DefaultCurrentTimeProvider;
  v28 = &off_282F83790;
  swift_defaultActor_initialize();
  v17(v19 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate, 1, 1, v16);
  *(v19 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots) = v13;
  *(v19 + 112) = 0x4000000000000000;
  sub_21E424A24(&v26, v19 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  *&v4[v18] = v19;
  v20 = &v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultSize];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultSize];
  *v21 = 0;
  v21[1] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewFromLoading] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingViewFromResult] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsExpanded] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_dismissingLatency] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isResultPresented] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_backgroundColorAsyncDict] = MEMORY[0x277D84F98];
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsWerePressedDownToggle] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionSpacing] = 0x4010000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingSpacing] = 0x4024000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_defaultLoadingPillSize] = vdupq_n_s64(0x4049000000000000uLL);
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultLoadingAnimationDistanceY] = 0x4049000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingAnimationDistanceY] = 0x4069000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_minVoiceLoadingAnimationDistanceFromTextField] = 0x4028000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionViewInset] = 0x4024000000000000;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewTransplanted] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground] = 0;
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState] = 0;
  *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_fluidDismissalManager] = [objc_allocWithZone(type metadata accessor for SiriSharedUIResultViewPanFluidDismissalManager()) init];
  v25.receiver = v4;
  v25.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21E4B3284();

  return v22;
}

void sub_21E4B3284()
{
  v1 = v0;
  v2 = [v0 snippetsDropletView];
  v3 = [v2 layer];

  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB7CC();

  v4 = [v1 suggestionsDropletView];
  [v1 addSubview_];

  v5 = [v1 snippetsDropletView];
  v75[3] = sub_21E4DBCF8();
  v75[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v75);
  sub_21E4DBCE8();
  sub_21E4DD298();

  v6 = [v1 snippetsDropletView];
  [v6 setAutoresizingMask_];

  if (SiriSharedUIDeviceIsPad())
  {
    v7 = sub_21E4D187C();
    [v1 setGradientLayer_];

    v8 = [v1 snippetsDropletView];
    v9 = [v8 layer];

    v10 = [v9 superlayer];
    if (v10)
    {
      v11 = [v1 gradientLayer];
      [v10 setMask_];
    }
  }

  v12 = *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
  [v1 addSubview_];
  v13 = [v1 snippetsDropletView];
  [v12 addSubview_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v1 snippetsDropletView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v15 = [v1 suggestionsDropletView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v74 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21E4E95D0;
  v17 = [v12 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [v12 bottomAnchor];
  v21 = [v1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v16 + 40) = v22;
  v23 = [v12 leadingAnchor];
  v24 = [v1 &selRef_mainRunLoop + 1];
  v25 = [v23 constraintEqualToAnchor_];

  *(v16 + 48) = v25;
  v26 = [v12 trailingAnchor];
  v27 = [v1 &selRef_suggestionRequestType + 4];
  v28 = [v26 constraintEqualToAnchor_];

  *(v16 + 56) = v28;
  v29 = [v1 suggestionsDropletView];
  v30 = [v29 topAnchor];

  v31 = [v1 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v16 + 64) = v32;
  v33 = [v1 suggestionsDropletView];
  v34 = [v33 bottomAnchor];

  v35 = [v1 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v16 + 72) = v36;
  v37 = [v1 suggestionsDropletView];
  v38 = [v37 leadingAnchor];

  v39 = [v1 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v16 + 80) = v40;
  v41 = [v1 suggestionsDropletView];
  v42 = [v41 trailingAnchor];

  v43 = [v1 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v16 + 88) = v44;
  v45 = [v1 snippetsDropletView];
  v46 = [v45 topAnchor];

  v47 = [v1 topAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v16 + 96) = v48;
  v49 = [v1 snippetsDropletView];
  v50 = [v49 bottomAnchor];

  v51 = [v1 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v16 + 104) = v52;
  v53 = [v1 snippetsDropletView];
  v54 = [v53 leadingAnchor];

  v55 = [v1 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v16 + 112) = v56;
  v57 = [v1 snippetsDropletView];
  v58 = [v57 &selRef_suggestionRequestType + 4];

  v59 = [v1 &selRef_suggestionRequestType + 4];
  v60 = [v58 constraintEqualToAnchor_];

  *(v16 + 120) = v60;
  sub_21E43F008(0, &qword_280C14148, 0x277CCAAD0);
  v61 = sub_21E4DD078();

  [v74 activateConstraints_];

  v62 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v63 = sub_21E4DCF68();
  [v62 setName_];

  v64 = sub_21E4DD1D8();
  [v62 setValue:v64 forKey:*MEMORY[0x277CDA4F0]];

  v65 = [v12 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_21E4E57E0;
  *(v66 + 56) = sub_21E43F008(0, &qword_280C14078, 0x277CD9EA0);
  *(v66 + 32) = v62;
  v67 = v62;
  v68 = sub_21E4DD078();

  [v65 setFilters_];

  if (SiriSharedUIDeviceIsPad())
  {
    v69 = [v1 snippetsDropletView];
    v70 = [v69 layer];

    [swift_dynamicCastClassUnconditional() setCornerRadius_];
  }

  v71 = [v1 snippetsDropletView];
  v72 = [v71 layer];

  [swift_dynamicCastClassUnconditional() setMasksToBounds_];
  v73 = [v1 fluidDismissalManager];

  *&v73[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_delegate + 8] = &off_282F84100;
  swift_unknownObjectWeakAssign();
}