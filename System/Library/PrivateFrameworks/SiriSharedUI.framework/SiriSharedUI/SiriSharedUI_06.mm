id SiriSharedUISystemAssistantExperienceContainerView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType] = 2;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldBottomPaddingPad] = 0x4028000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_horizontalContentInset] = 0x4020000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewLeadingPadding] = 0x4014000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringDuration] = 0x3FE5F4B1EE243569;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringMass] = 0x4000000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringStiffness] = 0x4079000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewSpringDamping] = 0x404699999999999ALL;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViewStaggerDelay] = 0x3FA47AE147AE147BLL;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_landscapeTopPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_indexOfSelectedSuggestion] = -1;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_gradientLayer] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_glassContainerView] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects] = 1;
  v2 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetsDropletView;
  v3 = type metadata accessor for SiriSharedUIDropletView();
  *&v1[v2] = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsDropletView;
  *&v1[v4] = [objc_allocWithZone(v3) &selRef_setEnabled_];
  v5 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView;
  *&v1[v5] = [objc_allocWithZone(SiriSharedUITouchPassthroughView) initWithFrame_];
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldView] = 0;
  v6 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousSuggestionsViews] = v6;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_additionalSuggestionsViews] = v6;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_preprocessedSuggestions] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionContentViewsToRemove] = v6;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_dismissedAnimationSuggestionsViews] = v6;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingViews] = v6;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomFloatingButtonView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_originalViewSizeDict] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldLoadingView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_collapseLoadingView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerPill] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetSuggestionPageantView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_continuerSuggestionsViews] = v6;
  v19 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewSnapshotManager;
  v26 = &type metadata for DefaultCurrentTimeProvider;
  v27 = &off_282F83790;
  type metadata accessor for SiriSharedUIViewFrameSnapshotManager(0);
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for DefaultCurrentTimeProvider);
  v23 = &type metadata for DefaultCurrentTimeProvider;
  v24 = &off_282F83790;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate;
  v9 = type metadata accessor for FrameUpdate(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots) = v6;
  *(v7 + 112) = 0x4000000000000000;
  sub_21E424A24(&v22, v7 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  *&v1[v19] = v7;
  v11 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewSnapshotManager;
  v26 = &type metadata for DefaultCurrentTimeProvider;
  v27 = &off_282F83790;
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for DefaultCurrentTimeProvider);
  v23 = &type metadata for DefaultCurrentTimeProvider;
  v24 = &off_282F83790;
  swift_defaultActor_initialize();
  v10(v12 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_currentFrameUpdate, 1, 1, v9);
  *(v12 + OBJC_IVAR____TtC12SiriSharedUI36SiriSharedUIViewFrameSnapshotManager_frameSnapshots) = v6;
  *(v12 + 112) = 0x4000000000000000;
  sub_21E424A24(&v22, v12 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  *&v1[v11] = v12;
  v13 = &v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_previousResultSize];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultSize];
  *v14 = 0;
  v14[1] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewFromLoading] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingViewFromResult] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsExpanded] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_dismissingLatency] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isResultPresented] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_backgroundColorAsyncDict] = MEMORY[0x277D84F98];
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionsWerePressedDownToggle] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionSpacing] = 0x4010000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_loadingSpacing] = 0x4024000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_defaultLoadingPillSize] = vdupq_n_s64(0x4049000000000000uLL);
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultLoadingAnimationDistanceY] = 0x4049000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_voiceLoadingAnimationDistanceY] = 0x4069000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_minVoiceLoadingAnimationDistanceFromTextField] = 0x4028000000000000;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_suggestionViewInset] = 0x4024000000000000;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewTransplanted] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_snippetBackgroundView] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_pairedSmartDialogViewForBackground] = 0;
  v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_fluidDismissalManager] = [objc_allocWithZone(type metadata accessor for SiriSharedUIResultViewPanFluidDismissalManager()) init];
  v21.receiver = v1;
  v21.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v15 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_21E4B3284();
  }

  return v16;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

double SiriSharedUISystemAssistantExperienceContainerView.textFieldHeight.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.textFieldHeight.setter(double a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SiriSharedUISystemAssistantExperienceContainerView.userUtteranceViewHeight.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.userUtteranceViewHeight.setter(double a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_userUtteranceViewHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.isExternalKeyboardPresented.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.isExternalKeyboardPresented.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isExternalKeyboardPresented;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.shouldPreserveResultSpace.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.shouldPreserveResultSpace.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_shouldPreserveResultSpace;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.createDefaultMaterialBackgroundView()(UIView *__return_ptr retstr)
{
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  v3 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
  sub_21E4523C4(1);
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.hasContentAt(point:)(double a1, double a2)
{
  *(v3 + 48) = v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v4 = sub_21E4DB628();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  sub_21E4DD128();
  *(v3 + 80) = sub_21E4DD118();
  v6 = sub_21E4DD0F8();
  *(v3 + 88) = v6;
  *(v3 + 96) = v5;

  return MEMORY[0x2822009F8](sub_21E4B4AE8, v6, v5);
}

uint64_t sub_21E4B4AE8()
{
  v1 = [*(v0 + 48) suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v2 = sub_21E4DD088();

  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_33:
    v4 = sub_21E4DD488();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D5B080](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v2 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    [v8 frame];
    v23.x = v7;
    v23.y = v6;
    v10 = CGRectContainsPoint(v25, v23);

    ++v5;
    if (v10)
    {
LABEL_23:

      v18 = *(v0 + 8);

      return v18(1);
    }
  }

  v11 = *(v0 + 48);

  v12 = [v11 loadingViews];
  v2 = sub_21E4DD088();

  if (v2 >> 62)
  {
    v13 = sub_21E4DD488();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v3 = v2 & 0xC000000000000001;
  while (v13 != v14)
  {
    if (v3)
    {
      v15 = MEMORY[0x223D5B080](v14, v2);
    }

    else
    {
      if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v15 = *(v2 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_31;
    }

    [v15 frame];
    v24.x = v7;
    v24.y = v6;
    v17 = CGRectContainsPoint(v26, v24);

    ++v14;
    if (v17)
    {
      goto LABEL_23;
    }
  }

  v20 = *(v0 + 48);

  v21 = *(v20 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewSnapshotManager);
  *(v0 + 104) = v21;

  return MEMORY[0x2822009F8](sub_21E4B4DBC, v21, 0);
}

uint64_t sub_21E4B4DBC(uint64_t a1)
{
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v1 + 56);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_21E4DB618();
  *(v1 + 136) = sub_21E4A9950(v2, v6, v5, 0.05) & 1;

  v7 = *(v3 + 8);
  *(v1 + 112) = v7;
  *(v1 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21E4B4E8C, v8, v9);
}

uint64_t sub_21E4B4E8C()
{
  if (*(v0 + 136) == 1)
  {

    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    v3 = *(*(v0 + 48) + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewSnapshotManager);
    *(v0 + 128) = v3;

    return MEMORY[0x2822009F8](sub_21E4B4F5C, v3, 0);
  }
}

uint64_t sub_21E4B4F5C(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_21E4DB618();
  *(v1 + 137) = sub_21E4A9950(v3, v6, v5, 0.05) & 1;

  v2(v3, v4);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21E4B5020, v7, v8);
}

uint64_t sub_21E4B5020()
{
  v1 = *(v0 + 137);

  if ((v1 & 1) != 0 || (v2 = [*(v0 + 48) snippetSuggestionPageantView]) != 0 && (v3 = *(v0 + 16), v4 = *(v0 + 24), v5 = v2, objc_msgSend(v2, sel_frame), v15.x = v3, v15.y = v4, v6 = CGRectContainsPoint(v17, v15), v5, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(v0 + 48) bottomFloatingButtonView];
    if (v8)
    {
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = v8;
      [v8 frame];
      v16.x = v9;
      v16.y = v10;
      v7 = CGRectContainsPoint(v18, v16);
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_21E4B52C4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  sub_21E4DD128();
  *(v4 + 48) = sub_21E4DD118();
  v6 = sub_21E4DD0F8();

  return MEMORY[0x2822009F8](sub_21E4B5360, v6, v5);
}

uint64_t sub_21E4B5360()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 4);

  *(v0 + 7) = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 8) = v4;
  *v4 = v0;
  v4[1] = sub_21E4B5414;
  v5 = v0[2];
  v6 = v0[3];

  return SiriSharedUISystemAssistantExperienceContainerView.hasContentAt(point:)(v5, v6);
}

uint64_t sub_21E4B5414(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 56);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

Swift::Bool __swiftcall SiriSharedUISystemAssistantExperienceContainerView.isDisplayingResponse()()
{
  v1 = [v0 resultView];
  if (v1)
  {

    return 1;
  }

  else
  {
    v3 = [v0 loadingViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v4 = sub_21E4DD088();

    if (v4 >> 62)
    {
      v5 = sub_21E4DD488();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v5 != 0;
  }
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.presentedResponseElements()()
{
  v1 = [v0 resultView];
  if (v1)
  {

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v0 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v4 = sub_21E4DD088();

  if (v4 >> 62)
  {
    v5 = sub_21E4DD488();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    return v2 + 1;
  }

  else
  {
    return v2;
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setTextField(textFieldView:)(UIView_optional *textFieldView)
{
  v3 = [v1 textFieldView];
  if (v3)
  {
    v4 = v3;
    sub_21E4B5BE0(v3);
  }

  if (textFieldView)
  {
    v25 = textFieldView;
    v5 = sub_21E4B5E04(v25);
    [v1 addSubview_];
    [v1 setTextFieldView_];
    if (!SiriSharedUIDeviceIsPad())
    {
      v6 = [v1 keyboardLayoutGuide];
      [v6 useLightEffectsBackgroundBelowView_];
    }

    v7 = 0.0;
    if (SiriSharedUIDeviceIsPad())
    {
      [v1 textFieldBottomPaddingPad];
      v7 = v8;
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v9 = [v1 keyboardLayoutGuide];
    v10 = [v9 topAnchor];

    v11 = [v5 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:v7];

    [v12 setActive_];
    v13 = [v5 leftAnchor];

    v14 = [v1 leftAnchor];
    v15 = [v13 constraintEqualToSystemSpacingAfterAnchor:v14 multiplier:1.0];

    LODWORD(v16) = 1144750080;
    [v15 setPriority_];
    [v15 setActive_];
    v17 = [v1 rightAnchor];
    v18 = [v5 rightAnchor];

    v19 = [v17 constraintEqualToSystemSpacingAfterAnchor:v18 multiplier:1.0];
    LODWORD(v20) = 1144750080;
    [v19 setPriority_];
    [v19 setActive_];
    v21 = [v1 centerXAnchor];
    v22 = [v5 centerXAnchor];

    v23 = [v21 constraintEqualToAnchor_];
    [v23 setActive_];
    if (!SiriSharedUIDeviceIsPad())
    {
      v24 = [objc_opt_self() constraintWithItem:v5 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:556.0];
      [v24 setActive_];
    }
  }

  [v1 setNeedsLayout];

  [v1 layoutIfNeeded];
}

void sub_21E4B5BE0(char *a1)
{
  v2 = v1;
  [a1 removeFromSuperview];
  [*&a1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
  [*&a1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] removeFromSuperview];
  v4 = [v1 originalViewSizeDict];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
  sub_21E4DCE98();

  sub_21E4CFCB0(a1);
  v5 = sub_21E4DCE88();

  [v2 setOriginalViewSizeDict_];

  v6 = *&a1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  if (v6)
  {
    v7 = v6;
    v8 = [v2 backgroundColorAsyncDict];
    sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
    sub_21E4D1674();
    sub_21E4DCE98();

    sub_21E4CFC1C(v7);
    v9 = sub_21E4DCE88();

    [v2 setBackgroundColorAsyncDict_];
  }
}

char *sub_21E4B5E04(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v5 = a1;
  v6 = [v4 init];
  v7 = objc_allocWithZone(type metadata accessor for SiriSharedUIDropletContainerView(0));
  v8 = sub_21E4D3568(a1, v6, 0, 0, 0, 28.0);
  sub_21E4D84DC();
  v9 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
  swift_beginAccess();
  v8[v9] = 0;
  v10 = v8;
  [v2 bounds];
  [v5 sizeThatFits_];
  v14 = v13;
  v16 = v15;
  v17 = [v2 originalViewSizeDict];
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
  v18 = sub_21E4DCE98();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21E44449C(v10, isUniquelyReferenced_nonNull_native, v14, v16);

  v20 = sub_21E4DCE88();

  [v2 setOriginalViewSizeDict_];

  return v10;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setSuggestions(_:animatedBlur:)(Swift::OpaquePointer _, Swift::Bool animatedBlur)
{
  sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
  v3 = sub_21E4DD078();
  [v2 setSuggestions_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setSuggestions(_:)(Swift::OpaquePointer a1)
{
  v179 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v2 = MEMORY[0x28223BE20](v179);
  v180 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v153 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260, &qword_21E4E7D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v153 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268, &unk_21E4E6560);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v153 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270, &unk_21E4E7D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v153 - v13);
  v15 = sub_21E4DB698();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v153 - v20;
  v22 = (a1._rawValue >> 62);
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_111;
  }

  v23 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = 0.0;
  v167 = v23;
  if (v23 >= 3)
  {
    v178 = v22;
    sub_21E4DB688();
    (*(v16 + 16))(v19, v21, v15);
    v25 = sub_21E4DBAD8();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    v26 = sub_21E4DB978();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = sub_21E4DCBD8();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    type metadata accessor for SiriSharedUISuggestion(0);
    v28 = swift_allocObject();
    v29 = (v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
    *v29 = 0;
    v29[1] = 0;
    v30 = v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier;
    (*(v16 + 8))(v21, v15);
    strcpy(v30, "com.apple.siri");
    v30[15] = -18;
    v28[2] = 32;
    v28[3] = 0xE100000000000000;
    v28[4] = 32;
    v28[5] = 0xE100000000000000;
    (*(v16 + 32))(v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId, v19, v15);
    *(v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type) = 0;
    sub_21E42D214(v14, v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData, &qword_27CEC5270, &unk_21E4E7D10);
    *(v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType) = 0;
    sub_21E42D214(v11, v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData, &qword_27CEC5268, &unk_21E4E6560);
    sub_21E42D214(v8, v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData, &qword_27CEC5260, &qword_21E4E7D20);
    v31 = (v28 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
    *v31 = CGPointMake;
    v31[1] = 0;
    v32 = type metadata accessor for SiriSharedUIAssistantSuggestionView();
    v33 = objc_allocWithZone(v32);
    v34 = OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel;
    type metadata accessor for SiriSharedUISuggestionsViewModel(0);
    swift_allocObject();

    *&v33[v34] = sub_21E4241E4();
    *&v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView] = 0;
    *&v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsMaxWidth] = 0x4074000000000000;
    v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_isDismissed] = 0;
    v35 = &v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler];
    *v35 = 0;
    v35[1] = 0;
    v36 = &v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler];
    *v36 = 0;
    v36[1] = 0;
    *&v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion] = v28;
    swift_beginAccess();
    *v35 = CGPointMake;
    v35[1] = 0;
    swift_beginAccess();
    *v36 = CGPointMake;
    v36[1] = 0;
    v37 = &v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData];
    *v37 = CGPointMake;
    v37[1] = 0;
    v38 = &v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData];
    *v38 = CGPointMake;
    v38[1] = 0;
    *&v33[OBJC_IVAR___SiriSharedUIAssistantSuggestionView_index] = 0;
    v181.receiver = v33;
    v181.super_class = v32;

    v14 = objc_msgSendSuper2(&v181, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v39 = *(v14 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    v43 = v179;
    *(v5 + *(v179 + 32)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00, &unk_21E4E5990);
    swift_storeEnumTagMultiPayload();
    v44 = swift_getKeyPath();
    *v5 = v39;
    *(v5 + 8) = sub_21E49AC44;
    *(v5 + 16) = v40;
    *(v5 + 24) = sub_21E49AC4C;
    *(v5 + 32) = v41;
    *(v5 + 40) = CGPointMake;
    *(v5 + 48) = 0;
    v45 = v5 + *(v43 + 36);
    *v45 = v44;
    *(v45 + 8) = 0;
    v46 = v5 + *(v43 + 40);
    v190 = 0;
    v16 = v14;

    sub_21E4DC9F8();
    MEMORY[0x223D5BFD0](v191);

    v47 = v183;
    *v46 = aBlock;
    *(v46 + 8) = v47;
    sub_21E48B3D4(v5, v180);
    v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC62D8, &qword_21E4E8DA0));
    v49 = sub_21E4DBFB8();
    v50 = *(v16 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView);
    *(v16 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView) = v49;

    v51 = v16;
    [v51 addSubview_];
    v52 = [v51 layer];

    [v52 setCornerRadius_];
    if (!*MEMORY[0x277D76620])
    {
      goto LABEL_126;
    }

    if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]))
    {
      SiriSharedUIDeviceIsPad();
    }

    sub_21E48798C(v28);

    sub_21E48B448(v5);
    v53 = v177;
    [v177 bounds];
    CGRectGetWidth(v193);
    [v53 bounds];
    CGRectGetHeight(v194);
    CGPointMake();
    [v51 sizeThatFits_];
    v24 = v54;

    v22 = v178;
  }

  v192 = MEMORY[0x277D84F90];
  v55 = [v177 suggestionsViews];
  v56 = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v21 = sub_21E4DD088();

  v5 = rawValue;
  if (v22)
  {
    v58 = sub_21E4DD488();
  }

  else
  {
    v58 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v167;
  v176 = v21 >> 62;
  v155 = v21;
  if (v58)
  {
    v166 = v56;
    v19 = 0;
    LODWORD(v168) = 0;
    v172 = 0;
    LODWORD(v178) = 0;
    v8 = 0;
    v154 = 0;
    v164 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView;
    v175 = v5 & 0xC000000000000001;
    v174 = v5 & 0xFFFFFFFFFFFFFF8;
    v59 = v21 & 0xFFFFFFFFFFFFFF8;
    v179 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 < 0)
    {
      v59 = v21;
    }

    v153 = v59;
    v163 = v21 & 0xC000000000000001;
    v161 = v21 + 32;
    v160 = 0x800000021E4F1670;
    v158 = "setSuggestions(_:)";
    v159 = "setSuggestions(_:)" & 0x2F00000000000000;
    v156 = MEMORY[0x277D84F90];
    v11 = v177;
    v162 = &v177[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient];
    *&v57 = 136315138;
    v157 = v57;
    v173 = v58;
    while (1)
    {
      if (v175)
      {
        v61 = MEMORY[0x223D5B080](v19, v5);
      }

      else
      {
        if (v19 >= *(v174 + 16))
        {
          goto LABEL_107;
        }

        v61 = *(v5 + 8 * v19 + 32);
      }

      v22 = v61;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v23 = sub_21E4DD488();
        goto LABEL_3;
      }

      if (v176)
      {
        v62 = sub_21E4DD488();
      }

      else
      {
        v62 = *(v179 + 16);
      }

      v180 = v19 + 1;
      if (v8 == v62)
      {
        v170 = v8;
        v171 = v19;
        v63 = [v11 traitCollection];
        [v63 userInterfaceStyle];

        v64 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
        v65 = sub_21E4523C4(0);
        [v11 bounds];
        CGRectGetWidth(v195);
        [v11 bounds];
        CGRectGetHeight(v196);
        CGPointMake();
        [v22 sizeThatFits_];
        v67 = v66;
        v69 = v68;
        [v11 defaultLoadingPillSize];
        if (v70 >= v69)
        {
          [v11 defaultLoadingPillSize];
          v69 = v71;
        }

        [v11 defaultLoadingPillSize];
        if (v72 * 0.5 <= 28.0)
        {
          v73 = v72 * 0.5;
        }

        else
        {
          v73 = 28.0;
        }

        v74 = *v162;
        v75 = objc_allocWithZone(v166);
        v169 = v22;
        v14 = v65;
        v21 = sub_21E4D3568(v22, v14, 1, (v74 & 1) == 0, 0, v73);
        v76 = [v177 originalViewSizeDict];
        type metadata accessor for CGSize(0);
        sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
        v77 = sub_21E4DCE98();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v77;
        sub_21E44449C(v21, isUniquelyReferenced_nonNull_native, v67, v69);

        v11 = v177;
        v79 = sub_21E4DCE88();

        [v11 setOriginalViewSizeDict_];

        v80 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
        [*(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView) setAlpha_];
        v81 = *&v11[v164];
        v82 = *(v21 + v80);
        v83 = [v11 snippetsDropletView];
        [v81 insertSubview:v82 belowSubview:v83];

        v84 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView;
        v85 = *(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView);

        v86 = [v11 snippetsDropletView];
        [v81 insertSubview:v85 belowSubview:v86];

        v87 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
        swift_beginAccess();
        *(v21 + v87) = 0;

        v88 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
        swift_beginAccess();
        *(v21 + v88) = 0;
        v89 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
        swift_beginAccess();
        *(v21 + v89) = 1;
        v90 = [v21 layer];
        [v90 setMasksToBounds_];

        v22 = &selRef_setResultViewFromLoading_;
        [v21 _setContinuousCornerRadius_];
        v91 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
        [*(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView) _setContinuousCornerRadius_];
        v92 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
        swift_beginAccess();
        [*(v21 + v92) _setContinuousCornerRadius_];
        [*(v21 + v84) _setContinuousCornerRadius_];
        [*(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView) _setContinuousCornerRadius_];
        [*(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView) _setContinuousCornerRadius_];
        [*(v21 + v80) _setContinuousCornerRadius_];
        [v21 setAlpha_];
        [*(v21 + v91) setAlpha_];
        sub_21E4D82D4();
        v15 = v167;
        if (v167 < 3)
        {
          v93 = v178;
          v19 = v171;
          goto LABEL_65;
        }

        v98 = *(v21 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
        v19 = v171;
        if (v98)
        {
          v8 = v170;
          if (v178)
          {
            if (v171 != 2)
            {
              v99 = 1;
LABEL_76:
              LODWORD(v178) = v99;
              v114 = [v11 snippetsDropletView];
              [v114 addSubview_];

              v21 = v21;
              v115 = [v11 suggestionsViews];
              v16 = v11;
              v116 = sub_21E4DD088();

              aBlock = v116;
              MEMORY[0x223D5AD10]();
              if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              v117 = sub_21E4DD078();

              [v11 setSuggestionsViews_];

              v5 = rawValue;
              goto LABEL_17;
            }

            goto LABEL_68;
          }

          v118 = v98;
          [v11 bounds];
          CGRectGetWidth(v199);
          [v11 bounds];
          CGRectGetHeight(v200);
          CGPointMake();
          [v118 sizeThatFits_];
          v120 = v119;

          v93 = v24 < v120;
          v172 = v24 < v120;
          LODWORD(v168) = v172;
        }

        else
        {
          v93 = v178;
LABEL_65:
          v8 = v170;
        }

        v99 = v19 != 2 && v93;
        if (v19 != 2 || !v93)
        {
          goto LABEL_76;
        }

LABEL_68:
        if (qword_280C14550 != -1)
        {
          swift_once();
        }

        v108 = sub_21E4DBCC8();
        v14 = __swift_project_value_buffer(v108, qword_280C14558);
        v22 = sub_21E4DD1F8();
        aBlock = 0xD000000000000012;
        v183 = v160;
        v109 = sub_21E45C20C(0);
        if (v110)
        {
          v188 = 32;
          v189 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](v109);

          MEMORY[0x223D5ACB0](v188, v189);
        }

        if (v159 != 0x2000000000000000)
        {
          v188 = 32;
          v189 = 0xE100000000000000;
          MEMORY[0x223D5ACB0](0xD000000000000051, v158 | 0x8000000000000000);
          MEMORY[0x223D5ACB0](v188, v189);
        }

        v16 = aBlock;
        v111 = v183;
        v112 = sub_21E4DBCB8();
        if (os_log_type_enabled(v112, v22))
        {
          v14 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v188 = v113;
          *v14 = v157;
          v16 = sub_21E426648(v16, v111, &v188);

          *(v14 + 1) = v16;
          _os_log_impl(&dword_21E3EB000, v112, v22, "%s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v113);
          MEMORY[0x223D5BF10](v113, -1, -1);
          MEMORY[0x223D5BF10](v14, -1, -1);
        }

        else
        {
        }

        v5 = rawValue;
        LODWORD(v178) = 1;
        v15 = v167;
        goto LABEL_17;
      }

      if (v163)
      {
        v94 = MEMORY[0x223D5B080](v8, v155);
      }

      else
      {
        if (v8 < 0)
        {
          goto LABEL_108;
        }

        if (v8 >= *(v179 + 16))
        {
          goto LABEL_110;
        }

        v94 = *(v161 + 8 * v8);
      }

      v14 = v94;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_109;
      }

      v16 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView;
      v96 = *(v94 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
      v171 = v94;
      if (v96)
      {
        type metadata accessor for SiriSharedUIAssistantSuggestionView();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v97 = v96;
        }
      }

      else
      {
        v21 = 0;
      }

      type metadata accessor for SiriSharedUIAssistantSuggestionView();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v100 = v22;
        if (v21)
        {
          v101 = *(v21 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion);
          v102 = *(v14 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestion);
          if (*(v101 + 32) != *(v102 + 32) || *(v101 + 40) != *(v102 + 40))
          {
            v170 = v100;
            if ((sub_21E4DD518() & 1) == 0)
            {
              break;
            }
          }
        }
      }

      if (v15 < 3)
      {
        v104 = v168;
        goto LABEL_60;
      }

      v104 = v168;
      if (!v96)
      {
        goto LABEL_60;
      }

      if ((v172 & 1) == 0)
      {
        v105 = v96;
        v16 = &selRef_setResultViewFromLoading_;
        [v11 bounds];
        CGRectGetWidth(v197);
        [v11 bounds];
        CGRectGetHeight(v198);
        CGPointMake();
        [v105 sizeThatFits_];
        v107 = v106;

        v104 = v24 < v107;
        v172 = v104;
        LODWORD(v178) = v104;
LABEL_60:
        v60 = v173;
        LODWORD(v168) = v104;
        if (v19 != 2)
        {

          goto LABEL_18;
        }

        if ((v172 & 1) == 0)
        {

          LODWORD(v178) = 0;
          v172 = 0;
          goto LABEL_18;
        }

LABEL_62:
        v16 = v171;
        sub_21E4B7F88(v171, v11);

        LODWORD(v178) = 1;
        v172 = 1;
        goto LABEL_18;
      }

      if (v19 == 2)
      {
        v60 = v173;
        goto LABEL_62;
      }

      LODWORD(v178) = 1;
      v172 = 1;
LABEL_17:
      v60 = v173;
LABEL_18:
      ++v19;
      if (v180 == v60)
      {
        goto LABEL_103;
      }
    }

    if (v96)
    {
      v121 = v96;
      MEMORY[0x223D5AD10](v121);
      if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E4DD0A8();
      }

      sub_21E4DD0D8();

      v156 = v192;
    }

    [v11 bounds];
    CGRectGetWidth(v201);
    [v11 bounds];
    CGRectGetHeight(v202);
    CGPointMake();
    v122 = v170;
    [v170 sizeThatFits_];
    v123 = v14;
    v124 = v122;
    [v122 frame];
    [v123 setFrame_];

    v125 = *(v123 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView);
    if (!v125)
    {
      goto LABEL_125;
    }

    v126 = v125;
    [v124 frame];
    [v126 setFrame_];

    v14 = *(v123 + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
    swift_getKeyPath();
    v169 = v123;
    aBlock = v14;
    sub_21E4D156C(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel, &unk_21E4E5200);

    sub_21E4DB718();

    aBlock = v14;
    swift_getKeyPath();
    sub_21E4DB738();

    *(v14 + 33) = 0;
    aBlock = v14;
    swift_getKeyPath();
    v22 = v169;
    sub_21E4DB728();

    [v22 layoutIfNeeded];
    v127 = v171;
    sub_21E4D42F4(v170);
    v15 = v167;
    if (v167 >= 3)
    {
      v130 = *&v127[v16];
      v128 = v168;
      v129 = v178;
      if (v130)
      {
        if (v168)
        {
          if (v19 == 2)
          {
LABEL_96:
            sub_21E4B7F88(v127, v11);

            LODWORD(v178) = 1;
            v172 = 1;
            LODWORD(v168) = 1;
LABEL_98:
            v5 = rawValue;
            goto LABEL_17;
          }

          v131 = 1;
          v172 = 1;
          v16 = 1;
LABEL_97:
          LODWORD(v178) = v131;
          v14 = sub_21E4DCB38();
          v168 = &v153;
          MEMORY[0x28223BE20](v14);
          *(&v153 - 2) = v21;
          v136 = v154;
          sub_21E4DBF78();
          v154 = v136;

          LODWORD(v168) = v16;
          goto LABEL_98;
        }

        v132 = v130;
        [v11 bounds];
        CGRectGetWidth(v203);
        [v11 bounds];
        CGRectGetHeight(v204);
        CGPointMake();
        [v132 sizeThatFits_];
        v134 = v133;

        v129 = v24 < v134;
        v172 = v129;
        v128 = v129;
      }
    }

    else
    {
      v128 = v168;
      v129 = v178;
    }

    v135 = v19 != 2;
    v131 = v135 && v129;
    v172 &= v135;
    v16 = v135 & v128;
    if (v19 == 2 && (v128 & 1) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v8 = 0;
  v156 = MEMORY[0x277D84F90];
  v11 = v177;
LABEL_103:
  [v11 setNeedsLayout];
  [v11 layoutIfNeeded];
  if (v176)
  {
    v137 = v155;
    v138 = sub_21E4DD488();
    v139 = v8 < v138;
    if (v8 == v138)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v137 = v155;
    v138 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v139 = v8 < v138;
    if (v8 == v138)
    {
LABEL_105:

      v140 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.51302];
      v141 = objc_opt_self();
      v142 = swift_allocObject();
      *(v142 + 16) = v11;
      *(v142 + 24) = 0x4024000000000000;
      v186 = sub_21E4D15B4;
      v187 = v142;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_21E46C644;
      v185 = &block_descriptor_14;
      v143 = _Block_copy(&aBlock);
      v144 = v140;
      v145 = v11;

      v146 = swift_allocObject();
      v147 = v156;
      *(v146 + 16) = v145;
      *(v146 + 24) = v147;
      v186 = sub_21E4D15D8;
      v187 = v146;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_21E4B8F48;
      v185 = &block_descriptor_6;
      v148 = _Block_copy(&aBlock);
      v149 = v145;

      [v141 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v148);
      _Block_release(v143);

      return;
    }
  }

  if (v139)
  {
    if ((v137 & 0xC000000000000001) != 0)
    {
      goto LABEL_122;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v150 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 < v150 && v138 - 1 < v150)
      {
        goto LABEL_122;
      }

      __break(1u);
LABEL_120:
      for (i = MEMORY[0x223D5B080](v8, v137); ; i = *(v137 + 8 * v8 + 32))
      {
        v152 = i;
        ++v8;
        sub_21E4B7F88(i, v11);

        if (v138 == v8)
        {
          break;
        }

LABEL_122:
        if ((v137 & 0xC000000000000001) != 0)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_105;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

void sub_21E4B7F88(void *a1, void *a2)
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v27 = 0xD000000000000027;
  v28 = 0x800000021E4F3330;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v25 = 32;
    v26 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("setSuggestions(_:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v25 = 32;
    v26 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000051, 0x800000021E4F1690);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v27;
  v8 = v28;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v25);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = [a2 dismissedAnimationSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v15 = sub_21E4DD088();

  v27 = v15;
  v16 = a1;
  MEMORY[0x223D5AD10]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();
  v17 = sub_21E4DD078();

  [a2 setDismissedAnimationSuggestionsViews_];

  v18 = [a2 suggestionsViews];
  v19 = sub_21E4DD088();

  v20 = sub_21E4B8328(v16, v19);
  LOBYTE(v18) = v21;

  if ((v18 & 1) == 0)
  {
    v22 = [a2 suggestionsViews];
    v23 = sub_21E4DD088();

    v27 = v23;
    v24 = sub_21E4DD078();

    [a2 setSuggestionsViews_];
  }

  sub_21E4D80E4();
}

unint64_t sub_21E4B8328(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21E4DD488();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D5B080](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v8 = sub_21E4DD2F8();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_21E4B8418(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21E4AAA2C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_21E4B84A8(void *a1)
{
  v1 = a1;
  v2 = [a1 suggestionsViews];
  isUniquelyReferenced_nonNull_native = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v4 = sub_21E4DD088();

  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v5; i = v1)
  {
    v6 = 0;
    v53 = v4 & 0xC000000000000001;
    v49 = v4 & 0xFFFFFFFFFFFFFF8;
    v50 = v5;
    v51 = v4;
    while (1)
    {
      if (v53)
      {
        v11 = MEMORY[0x223D5B080](v6, v4);
      }

      else
      {
        if (v6 >= *(v49 + 16))
        {
          goto LABEL_27;
        }

        v11 = *(v4 + 8 * v6 + 32);
      }

      v10 = v11;
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v13 = *&v11[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
      if (v13)
      {
        v14 = v13;
        [v1 bounds];
        CGRectGetWidth(v55);
        [v1 bounds];
        CGRectGetHeight(v56);
        CGPointMake();
        v16 = v15;
        v18 = v17;
        v54 = v10;
        v19 = v10;
        [v14 sizeThatFits_];
        v21 = v20;
        v23 = v22;
        v24 = [v1 originalViewSizeDict];
        type metadata accessor for CGSize(0);
        v1 = v25;
        sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
        v26 = isUniquelyReferenced_nonNull_native;
        v4 = sub_21E4DCE98();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = sub_21E4B16E4(v19);
        v29 = *(v4 + 16);
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_26;
        }

        v32 = v27;
        if (*(v4 + 24) >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21E4D0C2C();
          }
        }

        else
        {
          sub_21E475E40(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_21E4B16E4(v19);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_41;
          }

          v28 = v33;
        }

        isUniquelyReferenced_nonNull_native = v26;
        if (v32)
        {
          v35 = (*(v4 + 56) + 16 * v28);
          *v35 = v21;
          v35[1] = v23;
        }

        else
        {
          *(v4 + 8 * (v28 >> 6) + 64) |= 1 << v28;
          *(*(v4 + 48) + 8 * v28) = v19;
          v36 = (*(v4 + 56) + 16 * v28);
          *v36 = v21;
          v36[1] = v23;
          v37 = *(v4 + 16);
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_28;
          }

          *(v4 + 16) = v39;
        }

        v40 = sub_21E4DCE88();

        v1 = i;
        [i setOriginalViewSizeDict_];

        type metadata accessor for SiriSharedUIAssistantSuggestionView();
        if (swift_dynamicCastClass())
        {
          v7 = v14;
          v8 = sub_21E4DCB38();
          MEMORY[0x28223BE20](v8);
          sub_21E4DBF78();

          v9 = v7;

          sub_21E421A48();

          sub_21E421E18();
        }

        else
        {
        }

        v5 = v50;
        v4 = v51;
        v10 = v54;
      }

      [v10 setAlpha_];
      [*&v10[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];

      ++v6;
      if (v12 == v5)
      {
        goto LABEL_30;
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
    v5 = sub_21E4DD488();
  }

LABEL_30:

  v41 = [v1 dismissedAnimationSuggestionsViews];
  v42 = sub_21E4DD088();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_32;
    }

LABEL_39:

    [i setNeedsLayout];
    return [i layoutIfNeeded];
  }

  v43 = sub_21E4DD488();
  if (!v43)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v43 >= 1)
  {
    v44 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223D5B080](v44, v42);
      }

      else
      {
        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      [v45 setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] setAlpha_];
      v47 = *&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
      [v47 setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] setAlpha_];
      [v47 setAlpha_];
      [*&v46[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] setAlpha_];
      sub_21E4DD298();
    }

    while (v43 != v44);
    goto LABEL_39;
  }

  __break(1u);
LABEL_41:
  result = sub_21E4DD548();
  __break(1u);
  return result;
}

void sub_21E4B8B28(int a1, int a2, id a3, unint64_t a4)
{
  v6 = [a3 dismissedAnimationSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v7 = sub_21E4DD088();

  v8 = v7;
  v32 = a4;
  if (v7 >> 62)
  {
    v9 = sub_21E4DD488();
    v8 = v7;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  v35 = v9 - 1;
  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v10 = 0;
  v33 = v8 & 0xC000000000000001;
  v34 = v8;
  if ((v8 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = MEMORY[0x223D5B080](v10); ; i = *(v8 + 8 * v10 + 32))
  {
    v12 = i;
    [i removeFromSuperview];
    [*&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
    [*&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] removeFromSuperview];
    v13 = [a3 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v14 = sub_21E4DCE98();

    v15 = sub_21E4B16E4(v12);
    if (v16)
    {
      v17 = v15;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_21E4D0C2C();
      }

      sub_21E4D0210(v17, v14);
    }

    v18 = sub_21E4DCE88();

    [a3 setOriginalViewSizeDict_];

    v19 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    if (v19)
    {
      v20 = v19;
      v21 = [a3 backgroundColorAsyncDict];
      sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
      sub_21E4D1674();
      v22 = sub_21E4DCE98();

      v23 = sub_21E4B16A0(v20);
      if (v24)
      {
        v25 = v23;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_21E4D0AD0();
        }

        sub_21E4D0084(v25, v22);
      }

      v26 = sub_21E4DCE88();

      [a3 setBackgroundColorAsyncDict_];
    }

    else
    {
    }

    v8 = v34;
    if (v35 == v10)
    {
      break;
    }

    ++v10;
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

LABEL_22:

  v27 = sub_21E4DD078();
  [a3 setDismissedAnimationSuggestionsViews_];

  if (v32 >> 62)
  {
    v28 = sub_21E4DD488();
    if (!v28)
    {
      return;
    }
  }

  else
  {
    v28 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      return;
    }
  }

  if (v28 < 1)
  {
LABEL_33:
    __break(1u);
    return;
  }

  for (j = 0; j != v28; ++j)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x223D5B080](j, v32);
    }

    else
    {
      v30 = *(v32 + 8 * j + 32);
    }

    v31 = v30;
    [v30 removeFromSuperview];
  }
}

double sub_21E4B8F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.removeSuggestions()()
{
  sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
  v1 = sub_21E4DD078();
  [v0 setSuggestions_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.removeContinuerSuggestions()()
{
  if ((*(v0 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
  {
    v1 = v0;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v2 = sub_21E4DBCC8();
    __swift_project_value_buffer(v2, qword_280C14558);
    v3 = sub_21E4DD1F8();
    v23 = 0xD00000000000001CLL;
    v24 = 0x800000021E4F1700;
    v4 = sub_21E45C20C(0);
    if (v5)
    {
      v29 = 32;
      v30 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v4);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("removeContinuerSuggestions()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v29 = 32;
      v30 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000002DLL, 0x800000021E4F1720);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v7 = v23;
    v6 = v24;
    v8 = sub_21E4DBCB8();
    if (os_log_type_enabled(v8, v3))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136315138;
      v11 = sub_21E426648(v7, v6, &v29);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x223D5BF10](v10, -1, -1);
      MEMORY[0x223D5BF10](v9, -1, -1);
    }

    else
    {
    }

    v12 = [v1 continuerSuggestionsViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v13 = sub_21E4DD088();

    v14 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.2];
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v1;
    v27 = sub_21E4D15E0;
    v28 = v16;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21E46C644;
    v26 = &block_descriptor_24;
    v17 = _Block_copy(&v23);
    v18 = v14;

    v19 = v1;

    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    *(v20 + 24) = v19;
    v27 = sub_21E4D1628;
    v28 = v20;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21E4B8F48;
    v26 = &block_descriptor_30;
    v21 = _Block_copy(&v23);
    v22 = v19;

    [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v21);
    _Block_release(v17);
  }
}

unint64_t sub_21E4B951C(unint64_t result, void *a2)
{
  v2 = result;
  if (result >> 62)
  {
    result = sub_21E4DD488();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D5B080](v4, v2);
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v5 setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] setAlpha_];
    v7 = *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];
    [v7 setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] setAlpha_];
    [v7 setAlpha_];
    [*&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] setAlpha_];
    sub_21E4DD298();
  }

  while (v3 != v4);
LABEL_10:
  [a2 setNeedsLayout];

  return [a2 layoutIfNeeded];
}

void sub_21E4B970C(int a1, int a2, unint64_t a3, id a4)
{
  v5 = a3;
  if (a3 >> 62)
  {
    v25 = sub_21E4DD488();
    v5 = a3;
    v6 = v25;
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v28 = v5 & 0xC000000000000001;
  v29 = v5;
  do
  {
    if (v28)
    {
      v9 = MEMORY[0x223D5B080](v7);
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    [v9 removeFromSuperview];
    [*&v10[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
    [*&v10[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] removeFromSuperview];
    v11 = [a4 originalViewSizeDict];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v12 = sub_21E4DCE98();

    v13 = sub_21E4B16E4(v10);
    if (v14)
    {
      v15 = v13;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_21E4D0C2C();
      }

      sub_21E4D0210(v15, v12);
    }

    v16 = sub_21E4DCE88();

    [a4 setOriginalViewSizeDict_];

    v17 = *&v10[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    if (v17)
    {
      v18 = v17;
      v19 = [a4 backgroundColorAsyncDict];
      sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
      sub_21E4D1674();
      v20 = sub_21E4DCE98();

      v21 = sub_21E4B16A0(v18);
      if (v22)
      {
        v23 = v21;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_21E4D0AD0();
        }

        sub_21E4D0084(v23, v20);
      }

      v8 = sub_21E4DCE88();

      [a4 setBackgroundColorAsyncDict_];
    }

    ++v7;
    [v10 removeFromSuperview];

    v5 = v29;
  }

  while (v6 != v7);
LABEL_20:
  v26 = [a4 snippetSuggestionPageantView];
  if (v26)
  {
    v27 = v26;
    [v26 removeFromSuperview];
  }

  [a4 setSnippetSuggestionPageantView_];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v30 = sub_21E4DD078();
  [a4 setContinuerSuggestionsViews_];
}

void sub_21E4B9B14(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = [v4 voiceLoadingView];
  if (v10)
  {
    v11 = v10;
    sub_21E4B5BE0(v10);
  }

  v12 = [v4 traitCollection];
  [v12 userInterfaceStyle];

  v13 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
  v14 = sub_21E4523C4(0);
  [v5 bounds];
  CGRectGetWidth(v42);
  [v5 bounds];
  CGRectGetHeight(v43);
  if (a4)
  {
    CGPointMake();
    [a1 sizeThatFits_];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *&a2;
    v18 = *&a3;
  }

  [v5 defaultLoadingPillSize];
  if (v19 >= v18)
  {
    [v5 defaultLoadingPillSize];
    v18 = v20;
  }

  [v5 defaultLoadingPillSize];
  if (v21 * 0.5 <= 28.0)
  {
    v22 = v21 * 0.5;
  }

  else
  {
    v22 = 28.0;
  }

  v23 = v5[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient];
  v24 = objc_allocWithZone(type metadata accessor for SiriSharedUIDropletContainerView(0));
  v25 = v14;
  v26 = a1;
  v27 = sub_21E4D3568(a1, v25, 1, (v23 & 1) == 0, 0, v22);
  v28 = [v5 originalViewSizeDict];
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
  sub_21E4DCE98();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21E44449C(v27, isUniquelyReferenced_nonNull_native, v16, v18);

  v30 = sub_21E4DCE88();

  [v5 setOriginalViewSizeDict_];

  v31 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
  [*&v27[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setAlpha_];
  v32 = *&v5[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
  v33 = *&v27[v31];
  v34 = [v5 snippetsDropletView];
  [v32 insertSubview:v33 belowSubview:v34];

  v35 = *&v27[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
  v36 = [v5 snippetsDropletView];
  [v32 insertSubview:v35 belowSubview:v36];

  v37 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
  v38 = *&v27[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  v40 = v27;
  [v40 addSubview_];
  [v40 sendSubviewToBack_];

  [*&v27[v37] setAlpha_];
  v39 = [v5 snippetsDropletView];
  [v39 addSubview_];

  [v5 setVoiceLoadingView_];
  [v5 setNeedsLayout];
  [v5 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setCollapseLoading(collapseLoading:collapseLoadingSize:)(UIView *collapseLoading, CGSize collapseLoadingSize)
{
  v3 = v2;
  height = collapseLoadingSize.height;
  width = collapseLoadingSize.width;
  v7 = [v2 traitCollection];
  [v7 userInterfaceStyle];

  v8 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
  v9 = sub_21E4523C4(0);
  [v3 bounds];
  [v3 bounds];
  [v3 defaultLoadingPillSize];
  if (v10 >= height)
  {
    [v3 defaultLoadingPillSize];
    height = v11;
  }

  [v3 defaultLoadingPillSize];
  if (v12 * 0.5 <= 28.0)
  {
    v13 = v12 * 0.5;
  }

  else
  {
    v13 = 28.0;
  }

  v14 = v3[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient];
  v15 = objc_allocWithZone(type metadata accessor for SiriSharedUIDropletContainerView(0));
  v16 = v9;
  v17 = collapseLoading;
  v18 = sub_21E4D3568(collapseLoading, v16, 1, (v14 & 1) == 0, 0, v13);
  v19 = [v3 originalViewSizeDict];
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
  sub_21E4DCE98();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21E44449C(v18, isUniquelyReferenced_nonNull_native, width, height);

  v21 = sub_21E4DCE88();

  [v3 setOriginalViewSizeDict_];

  v22 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
  [*&v18[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setAlpha_];
  v23 = *&v3[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
  v24 = *&v18[v22];
  v25 = [v3 snippetsDropletView];
  [v23 insertSubview:v24 belowSubview:v25];

  v26 = *&v18[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
  v27 = [v3 snippetsDropletView];
  [v23 insertSubview:v26 belowSubview:v27];

  v28 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
  v29 = *&v18[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
  v41 = v18;
  [v41 addSubview_];
  [v41 sendSubviewToBack_];

  [v3 setCollapseLoadingView_];
  v30 = [v3 resultView];
  [v3 setPreviousResultView_];

  [v3 resultSize];
  [v3 setPreviousResultSize_];
  [v3 setResultView_];
  v31 = [v3 previousResultView];
  if (v31)
  {
    v32 = v31;
    [v31 frame];
    v34 = v33;
    [v32 frame];
    v36 = v35;
    [v32 frame];
    v37 = CGRectGetWidth(v45);
    [v32 frame];
    [v41 setFrame_];
    [v3 previousResultSize];
    v38 = &v41[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight];
    *v38 = v39;
    v38[8] = 0;
    [*&v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] removeFromSuperview];
    [*&v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] removeFromSuperview];
    [*&v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] removeFromSuperview];
  }

  v40 = [v3 snippetsDropletView];
  [v40 addSubview_];

  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setBottomFloatingButton(_:)(UIView *a1)
{
  v2 = v1;
  v4 = [v1 bottomFloatingButtonView];
  if (!v4 || (v5 = *&v4[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView], v6 = v4, v7 = v5, v6, !v5) || (sub_21E43F008(0, &qword_280C140A0, 0x277D75D18), v8 = a1, v9 = sub_21E4DD2F8(), v8, v7, (v9 & 1) == 0))
  {
    v10 = [v2 traitCollection];
    [v10 userInterfaceStyle];

    v11 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
    v12 = sub_21E4523C4(0);
    [v2 bounds];
    CGRectGetWidth(v56);
    [v2 bounds];
    CGRectGetHeight(v57);
    CGPointMake();
    [(UIView *)a1 sizeThatFits:?];
    v14 = v13;
    v16 = v15;
    [v2 defaultLoadingPillSize];
    if (v17 >= v16)
    {
      [v2 defaultLoadingPillSize];
      v16 = v18;
    }

    [v2 defaultLoadingPillSize];
    if (v19 * 0.5 <= 28.0)
    {
      v20 = v19 * 0.5;
    }

    else
    {
      v20 = 28.0;
    }

    v21 = v2[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient];
    v22 = objc_allocWithZone(type metadata accessor for SiriSharedUIDropletContainerView(0));
    v23 = a1;
    v24 = v12;
    v25 = sub_21E4D3568(a1, v24, 1, (v21 & 1) == 0, 0, v20);
    v26 = [v2 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    sub_21E4DCE98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21E44449C(v25, isUniquelyReferenced_nonNull_native, v14, v16);

    v28 = sub_21E4DCE88();

    [v2 setOriginalViewSizeDict_];

    v29 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
    [*&v25[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setAlpha_];
    v30 = *&v2[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
    v55 = v29;
    v31 = *&v25[v29];
    v32 = [v2 snippetsDropletView];
    [v30 insertSubview:v31 belowSubview:v32];

    v33 = *&v25[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
    v34 = [v2 snippetsDropletView];
    [v30 insertSubview:v33 belowSubview:v34];

    v35 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
    swift_beginAccess();
    *&v25[v35] = 0;

    v36 = [(UIView *)v23 layer];
    [(CALayer *)v36 setDisableUpdateMask:2];

    v37 = v25;
    v38 = [v37 layer];
    [v38 setDisableUpdateMask_];

    v39 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
    v40 = [*&v37[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] layer];
    [v40 setDisableUpdateMask_];

    v41 = [*&v25[v29] layer];
    [v41 setDisableUpdateMask_];

    v42 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
    swift_beginAccess();
    v37[v42] = 0;
    v43 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    swift_beginAccess();
    v37[v43] = 1;
    [v2 addSubview_];
    [v2 addSubview_];
    [v2 setBottomFloatingButtonView_];
    v44 = sub_21E4DCF68();
    v45 = [objc_opt_self() animationWithKeyPath_];

    v46 = sub_21E4DD1D8();
    [v45 setFromValue_];

    v47 = sub_21E4DD1D8();
    [v45 setToValue_];

    [v45 setDuration_];
    v48 = [v37 layer];

    v49 = v45;
    v50 = [v49 keyPath];
    [v48 addAnimation:v49 forKey:v50];

    v51 = [*&v37[v39] layer];
    v52 = [v49 keyPath];
    [v51 addAnimation:v49 forKey:v52];

    v53 = [*&v25[v29] layer];
    v54 = [v49 keyPath];

    [v53 addAnimation:v49 forKey:v54];
    sub_21E4D652C();
  }

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.updateBottomFloatingButtonVisibility(_:)(Swift::Bool a1)
{
  v3 = [v1 bottomFloatingButtonView];
  if (v3)
  {
    v4 = 0.0;
    if (a1)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha_];
  }

  v6 = [v1 bottomFloatingButtonView];
  if (v6)
  {
    v7 = v6;
    v9 = *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];

    v8 = 0.0;
    if (a1)
    {
      v8 = 1.0;
    }

    [v9 setAlpha_];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.cleanupBottomFloatingButtonIfNeeded()()
{
  v1 = [v0 bottomFloatingButtonView];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
    v3 = v1;
    swift_beginAccess();
    v3[v2] = 1;
  }

  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setResult(resultView:resultSize:eligibleForLightEffects:)(UIView *resultView, CGSize resultSize, Swift::Bool eligibleForLightEffects)
{
  v4 = v3;
  height = resultSize.height;
  width = resultSize.width;
  [v3 setResultEligibleForLightEffects_];
  if (v3[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState] != 1)
  {
    v3[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState] = 0;
    sub_21E4CF000();
  }

  v8 = [v3 resultView];
  if (v8 && (v9 = *&v8[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView], v10 = v8, v11 = v9, v10, v9) && (sub_21E43F008(0, &qword_280C140A0, 0x277D75D18), v12 = resultView, v13 = sub_21E4DD2F8(), v12, v11, (v13 & 1) != 0))
  {
    v14 = [v4 resultView];
    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = v14;
    v16 = [v4 originalViewSizeDict];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    sub_21E4DCE98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21E44449C(v15, isUniquelyReferenced_nonNull_native, width, height);

    v18 = sub_21E4DCE88();

    [v4 setOriginalViewSizeDict_];
  }

  else
  {
    [v4 cleanupResultTransitionIfNeeded];
    v19 = [v4 resultView];
    [v4 setPreviousResultView_];

    [v4 resultSize];
    [v4 setPreviousResultSize_];
    v20 = [v4 traitCollection];
    [v20 userInterfaceStyle];

    v21 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
    v22 = sub_21E4523C4(0);
    [v4 bounds];
    CGRectGetWidth(v67);
    [v4 bounds];
    CGRectGetHeight(v68);
    CGPointMake();
    v24 = v23;
    v26 = v25;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = resultView;
      [v28 maxSnippetWidth];
      [v4 bounds];
      CGRectGetHeight(v69);

      CGPointMake();
    }

    else
    {
      v30 = v24;
      v31 = v26;
    }

    [(UIView *)resultView sizeThatFits:v30, v31];
    v33 = v32;
    v35 = v34;
    [v4 defaultLoadingPillSize];
    if (v36 >= v35)
    {
      [v4 defaultLoadingPillSize];
      v35 = v37;
    }

    [v4 defaultLoadingPillSize];
    if (v38 * 0.5 <= 28.0)
    {
      v39 = v38 * 0.5;
    }

    else
    {
      v39 = 28.0;
    }

    v40 = v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient];
    v41 = objc_allocWithZone(type metadata accessor for SiriSharedUIDropletContainerView(0));
    v42 = resultView;
    v43 = v22;
    v44 = sub_21E4D3568(resultView, v43, 1, (v40 & 1) == 0, 0, v39);
    v45 = [v4 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    sub_21E4DCE98();

    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_21E44449C(v44, v46, v33, v35);

    v47 = sub_21E4DCE88();

    [v4 setOriginalViewSizeDict_];

    v48 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
    [*&v44[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setAlpha_];
    v49 = *&v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
    v50 = *&v44[v48];
    v51 = [v4 snippetsDropletView];
    [v49 insertSubview:v50 belowSubview:v51];

    v52 = *&v44[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
    v53 = [v4 snippetsDropletView];
    [v49 insertSubview:v52 belowSubview:v53];

    v54 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
    v55 = *&v44[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
    v15 = v44;
    [v15 addSubview_];
    [v15 sendSubviewToBack_];

    v56 = [v4 snippetBackgroundView];
    if (v56)
    {
      v57 = *&v15[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      *&v15[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] = v56;
      v58 = v56;
      sub_21E4D8CE4(v57);

      [v4 setSnippetBackgroundView_];
    }

    v59 = [v4 snippetsDropletView];
    [v59 addSubview_];

    [*&v44[v54] setAlpha_];
    v60 = [v4 previousResultView];
    if (v60)
    {
      v61 = v60;
      [v60 frame];
      [v15 setFrame_];
      [v4 previousResultSize];
      v63 = v62;

      v64 = &v15[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight];
      *v64 = v63;
      v64[8] = 0;
    }

    [v4 setResultView_];
  }

LABEL_22:
  v4[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState] = 0;
  [v4 setResultSize_];
  [v4 setResultViewFromLoading_];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  if (([v4 isFirstSnippet] & 1) == 0)
  {
    LODWORD(v65) = 1053609165;

    [v4 preFollowupPulseWithDuration_];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.updateResultSize(resultSize:)(CGSize resultSize)
{
  v2 = v1;
  height = resultSize.height;
  width = resultSize.width;
  v5 = [v1 resultView];
  if (v5)
  {
    v21 = v5;
    [v1 resultSize];
    v24.width = v6;
    v24.height = v7;
    v23.width = width;
    v23.height = height;
    if (!CGSizeEqualToSize(v23, v24))
    {
      v8 = v21;
      v9 = [v1 originalViewSizeDict];
      type metadata accessor for SiriSharedUIDropletContainerView(0);
      type metadata accessor for CGSize(0);
      sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
      sub_21E4DCE98();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21E44449C(v8, isUniquelyReferenced_nonNull_native, width, height);

      v11 = sub_21E4DCE88();

      [v2 setOriginalViewSizeDict_];

      [v2 setResultSize_];
      v12 = [v2 resultView];
      if (v12)
      {
        v13 = v12;
        [v12 setNeedsLayout];
      }

      v14 = [v2 resultView];
      if (v14)
      {
        v15 = v14;
        [v14 layoutIfNeeded];
      }

      v16 = [v2 resultView];
      if (v16)
      {
        v17 = v16;
        [v2 bounds];
        v19 = v18 * 0.5;
        [v2 resultSize];
        [v17 setCenter_];
      }

      [v2 setNeedsLayout];
      [v2 layoutIfNeeded];
    }
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.updateLoadingPillSize(withCandidateSize:)(CGSize withCandidateSize)
{
  v2 = v1;
  height = withCandidateSize.height;
  width = withCandidateSize.width;
  v5 = [v1 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v6 = sub_21E4DD088();

  if (v6 >> 62)
  {
    if (sub_21E4DD488())
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D5B080](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  [v2 defaultLoadingPillSize];
  v10 = v9;
  v12 = v11;
  [v2 defaultLoadingPillSize];
  if (v13 >= width)
  {
    width = v10;
  }

  [v2 defaultLoadingPillSize];
  if (v14 >= height)
  {
    height = v12;
  }

  v18 = v8;
  v15 = [v2 originalViewSizeDict];
  type metadata accessor for CGSize(0);
  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
  sub_21E4DCE98();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21E44449C(v18, isUniquelyReferenced_nonNull_native, width, height);

  v17 = sub_21E4DCE88();

  [v2 setOriginalViewSizeDict_];

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setTransitionLoadingToResult(resultSize:)(CGSize resultSize)
{
  v2 = v1;
  height = resultSize.height;
  width = resultSize.width;
  v5 = [v1 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v6 = sub_21E4DD088();

  if (v6 >> 62)
  {
    v7 = sub_21E4DD488();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    return;
  }

  [v2 cleanupResultTransitionIfNeeded];
  v8 = [v2 resultView];
  [v2 setPreviousResultView_];

  [v2 resultSize];
  [v2 setPreviousResultSize_];
  *(v2 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 0;
  if (*(v2 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) != 1)
  {
    *(v2 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) = 0;
    sub_21E4CF000();
  }

  [v2 setResultSize_];
  v9 = [v2 loadingViews];
  v10 = sub_21E4DD088();

  if (v10 >> 62)
  {
    if (sub_21E4DD488())
    {
      goto LABEL_8;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D5B080](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v11 = *(v10 + 32);
    }

    v12 = v11;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  [v2 setResultView_];

  if ([v2 loadingViewFromResult])
  {
    v13 = [v2 resultView];
    if (v13)
    {
      v14 = v13;
      [*&v13[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] removeFromSuperview];
      [*&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] removeFromSuperview];
      [*&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] removeFromSuperview];
    }
  }

  [v2 setLoadingViewFromResult_];
  v15 = [v2 loadingViews];
  sub_21E4DD088();

  sub_21E4B2AF4();
  v17 = sub_21E4DD078();

  [v2 setLoadingViews_];

  [v2 setResultViewFromLoading_];
  v18 = [v2 resultView];
  if (v18)
  {
    v19 = v18;
    [v2 previousResultSize];
    v20 = &v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_previousSnippetHeight];
    *v20 = v21;
    v20[8] = 0;
  }

  [v2 layoutSubviews];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setMergedResultsForTransition()()
{
  v0[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState] = 2;
  [v0 setNeedsLayout];

  [v0 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setIsInAmbient(_:)(Swift::Bool a1)
{
  if (v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient] != a1)
  {
    v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient] = a1;
    [v1 setNeedsLayout];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.updateKeyboardLightEffects(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = [v1 textFieldView];
    if (!v2)
    {
      goto LABEL_6;
    }

    v3 = v2;
    v4 = [v1 keyboardLayoutGuide];
    [v4 useLightEffectsBackgroundBelowView_];
  }

  else
  {
    v4 = [v1 keyboardLayoutGuide];
    [v4 removeLightEffectsView];
  }

LABEL_6:
  [v1 setNeedsLayout];

  [v1 layoutIfNeeded];
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.inputType.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.inputType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_inputType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.showsSensitiveUI.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.showsSensitiveUI.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_showsSensitiveUI;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SiriSharedUISystemAssistantExperienceContainerView.bottomContentInset.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.bottomContentInset.setter(double a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_bottomContentInset;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.isFirstSnippet.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.isFirstSnippet.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isFirstSnippet;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.isInVoiceLatency.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.isInVoiceLatency.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInVoiceLatency;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISystemAssistantExperienceContainerView.resultEligibleForLightEffects.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  return *(v0 + v1);
}

void SiriSharedUISystemAssistantExperienceContainerView.resultEligibleForLightEffects.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultEligibleForLightEffects;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Bool __swiftcall SiriSharedUISystemAssistantExperienceContainerView.loadingToResultRequiresMerge()()
{
  v1 = [v0 previousResultView];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Bool __swiftcall SiriSharedUISystemAssistantExperienceContainerView.hasLoadingViews()()
{
  v1 = [v0 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v2 = sub_21E4DD088();

  if (v2 >> 62)
  {
    v3 = sub_21E4DD488();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.cleanupResultTransitionIfNeeded()()
{
  v1 = [v0 previousResultView];
  if (v1)
  {
    v2 = v1;
    sub_21E4B5BE0(v1);
  }

  [v0 setPreviousResultView_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.cleanupLoadingTransitionIfNeeded()()
{
  v1 = [v0 voiceLoadingView];
  [v1 removeFromSuperview];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.cleanupResponseElements(by:)(Swift::OpaquePointer by)
{
  v2 = v1;
  v4 = sub_21E4DB698();
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(by._rawValue + 2);
  if (!v63)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v60 = by._rawValue + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v61 = v11;
  v57 = (v10 - 8);
  v58 = v4;
  v62 = v10;
  v59 = *(v10 + 56);
  v12 = &unk_278355000;
  v11(v7, v60, v4);
  while (1)
  {
    v13 = [v2 v12[477]];
    v68 = type metadata accessor for SiriSharedUIDropletContainerView(0);
    v14 = sub_21E4DD088();

    v65 = v9;
    if (v14 >> 62)
    {
      v15 = sub_21E4DD488();
      v64 = v8;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = v8;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    if (v15 < 1)
    {
      goto LABEL_55;
    }

    v16 = 0;
    v66 = v14;
    v67 = v14 & 0xC000000000000001;
    do
    {
      if (v67)
      {
        v18 = MEMORY[0x223D5B080](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      if (sub_21E4DB668())
      {
        v20 = v15;
        v21 = v7;
        [v19 removeFromSuperview];
        [*&v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
        [*&v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] removeFromSuperview];
        v22 = v2;
        v23 = [v2 originalViewSizeDict];
        type metadata accessor for CGSize(0);
        sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
        v24 = sub_21E4DCE98();

        v25 = sub_21E4B16E4(v19);
        if (v26)
        {
          v27 = v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v24;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21E4D0C2C();
            v24 = v69;
          }

          sub_21E4D0210(v27, v24);
        }

        v29 = sub_21E4DCE88();

        v2 = v22;
        [v22 setOriginalViewSizeDict_];

        v30 = *&v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
        v15 = v20;
        v14 = v66;
        if (v30)
        {
          v31 = v30;
          v32 = [v22 backgroundColorAsyncDict];
          sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
          sub_21E4D1674();
          v33 = sub_21E4DCE98();

          v34 = sub_21E4B16A0(v31);
          if (v35)
          {
            v36 = v34;
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v69 = v33;
            if (!v37)
            {
              sub_21E4D0AD0();
              v33 = v69;
            }

            sub_21E4D0084(v36, v33);
          }

          v17 = sub_21E4DCE88();

          v2 = v22;
          [v22 setBackgroundColorAsyncDict_];

          v7 = v21;
          v15 = v20;
          v14 = v66;
        }
      }

      ++v16;
    }

    while (v15 != v16);
LABEL_26:

    MEMORY[0x28223BE20](v38);
    *(&v57 - 2) = v7;
    v12 = &unk_278355000;
    v39 = [v2 loadingViews];
    v40 = sub_21E4DD088();

    v69 = v40;
    v9 = v65;
    v41 = sub_21E4D11D0(sub_21E4D1630, (&v57 - 4));
    v42 = v41;
    v43 = v69;
    v44 = v69 >> 62;
    if (v69 >> 62)
    {
      v45 = sub_21E4DD488();
      v46 = v45 - v42;
      if (v45 < v42)
      {
LABEL_49:
        __break(1u);
        return;
      }
    }

    else
    {
      v45 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v45 - v41;
      if (v45 < v41)
      {
        goto LABEL_49;
      }
    }

    if (v42 < 0)
    {
      break;
    }

    if (v44)
    {
      v47 = sub_21E4DD488();
    }

    else
    {
      v47 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v45)
    {
      goto LABEL_52;
    }

    v48 = __OFSUB__(0, v46);
    v49 = -v46;
    if (v48)
    {
      goto LABEL_53;
    }

    if (v44)
    {
      v50 = sub_21E4DD488();
    }

    else
    {
      v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = __OFADD__(v50, v49);
    v51 = v50 + v49;
    if (v48)
    {
      goto LABEL_54;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v44)
      {
        if (v51 <= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_43:
      sub_21E4DD488();
      goto LABEL_44;
    }

    if (v44)
    {
      goto LABEL_43;
    }

LABEL_44:
    v69 = sub_21E4DD3E8();
LABEL_45:
    sub_21E4D1450(v42, v45, 0);
    v52 = sub_21E4DD078();

    [v2 setLoadingViews_];

    v53 = [v2 resultView];
    v54 = v58;
    v55 = v64;
    if (v53)
    {
      v56 = v53;
      if (sub_21E4DB668())
      {
        [v2 cleanupResultTransitionIfNeeded];
        sub_21E4B5BE0(v56);
        [v2 setResultView_];
      }
    }

    v8 = v55 + 1;
    (*v57)(v7, v54);
    if (v8 == v63)
    {
      return;
    }

    v61(v7, &v60[v59 * v8], v54);
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.cleanupResultView()()
{
  [v0 cleanupResultTransitionIfNeeded];
  v1 = [v0 resultView];
  if (v1)
  {
    v2 = v1;
    sub_21E4B5BE0(v1);
    [v0 setResultView_];
  }
}

Swift::Bool __swiftcall SiriSharedUISystemAssistantExperienceContainerView.shouldExecuteContinuerAction(index:)(Swift::Int index)
{
  v3 = [v1 continuerSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v4 = sub_21E4DD088();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D5B080](index, v4);
    goto LABEL_5;
  }

  if (index < 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > index)
  {
    v6 = *(v4 + 8 * index + 32);
LABEL_5:
    v7 = v6;

    v8 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
    swift_beginAccess();
    LOBYTE(v8) = v7[v8];

    return v8;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.prepareForPillMergeContinuerWith(index:)(Swift::Int index)
{
  v3 = [v1 continuerSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v4 = sub_21E4DD088();

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v5 = MEMORY[0x223D5B080](index, v4);
    goto LABEL_5;
  }

  if (index < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    v10 = sub_21E4DD488();

    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_9;
  }

  v5 = *(v4 + 8 * index + 32);
LABEL_5:
  v6 = v5;

  v7 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldExecuteContinuerAction;
  swift_beginAccess();
  LODWORD(v7) = v6[v7];

  if (v7 != 1)
  {
    return;
  }

  v50 = [v1 snippetSuggestionPageantView];
  if (!v50)
  {
    return;
  }

  v8 = [v1 continuerSuggestionsViews];
  v9 = sub_21E4DD088();

  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_9:
  if (v10)
  {
    v11 = 0;
    for (i = [v1 continuerSuggestionsViews]; ; i = objc_msgSend(v1, sel_continuerSuggestionsViews, v49))
    {
      v20 = i;
      v21 = sub_21E4DD088();

      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223D5B080](v11, v21);
      }

      else
      {
        if (v11 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v22 = *(v21 + 8 * v11 + 32);
      }

      v23 = v22;

      if (index == v11)
      {
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [v1 setContinuerPill_];
        v32 = [v1 continuerPill];
        if (v32)
        {
          v33 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
          v34 = v32;
          v35 = *&v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
          [v34 removeFromSuperview];
          [v35 removeFromSuperview];
          v36 = [v1 snippetsDropletView];
          [v36 addSubview_];

          v37 = [v1 snippetsDropletView];
          [v37 sendSubviewToBack_];

          [v50 convertRect:v1 toCoordinateSpace:{v25, v27, v29, v31}];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          [*&v50[v49] contentOffset];
          v47 = v39 - v46;
          [v34 setFrame_];
          v4 = *&v34[v33];
          [v4 setFrame_];
        }
      }

      else
      {
        v13 = objc_opt_self();
        v14 = swift_allocObject();
        *(v14 + 16) = v23;
        v55 = sub_21E4D16DC;
        v56 = v14;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_21E46C644;
        v54 = &block_descriptor_36;
        v15 = _Block_copy(&aBlock);
        v16 = v23;

        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        v55 = sub_21E4D16F0;
        v56 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_21E4A4148;
        v54 = &block_descriptor_42;
        v18 = _Block_copy(&aBlock);
        v4 = v56;
        v19 = v16;

        [v13 animateWithDuration:v15 animations:v18 completion:0.1];

        _Block_release(v18);
        _Block_release(v15);
      }

      if (v10 == ++v11)
      {
        break;
      }
    }
  }

  HIDWORD(v48) = 1072693248;
  *&v48 = 1.0;
  [v1 mitoseWithDuration:1 mitosingIntoSnippet:v48];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.removeContinuerPill()()
{
  v1 = [v0 continuerPill];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];
    [*&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] removeFromSuperview];
    [v0 setContinuerPill_];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.suggestionTapAnimationWith(index:isTouchUp:)(Swift::Int index, Swift::Bool isTouchUp)
{
  v8 = &unk_27CEC6000;
  if (byte_27CEC6760 != isTouchUp)
  {
    if (!isTouchUp)
    {
      [v2 setSuggestionsWerePressedDownToggle_];
    }

    byte_27CEC6760 = isTouchUp;
    v9 = [v2 layer];
    v10 = [v9 presentationLayer];

    if (v10)
    {
      v11 = sub_21E4DCF68();
      v12 = [v10 valueForKeyPath_];

      if (v12)
      {
        sub_21E4DD338();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v47 = v45;
      v48 = v46;
      if (*(&v46 + 1))
      {
        if (swift_dynamicCast())
        {
          v17 = *&v45;
          v5 = 1.0;
          if (isTouchUp)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_19:
        v5 = 1.0;
        if (isTouchUp)
        {
          v17 = 0.925;
LABEL_23:
          v8 = &unk_278355000;
          v18 = [v2 suggestionsViews];
          v19 = type metadata accessor for SiriSharedUIDropletContainerView(0);
          v20 = sub_21E4DD088();

          if (!(v20 >> 62))
          {
            v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_25:
            if (v21 > index)
            {
              v22 = [v2 suggestionsViews];
              v19 = sub_21E4DD088();

              if ((v19 & 0xC000000000000001) == 0)
              {
                if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > index)
                {
                  v23 = *(v19 + 8 * index + 32);
LABEL_29:
                  v24 = v23;

                  [v2 applyPressTransformAnimationToSuggestionTo:v24 from:v17 to:v5 duration:0.1];

                  return;
                }

                __break(1u);
                goto LABEL_68;
              }

LABEL_66:
              v23 = MEMORY[0x223D5B080](index, v19);
              goto LABEL_29;
            }

            if (qword_280C14550 != -1)
            {
              swift_once();
            }

            v25 = sub_21E4DBCC8();
            __swift_project_value_buffer(v25, qword_280C14558);
            v26 = sub_21E4DD208();
            *&v47 = 0xD00000000000002CLL;
            *(&v47 + 1) = 0x800000021E4F1760;
            v27 = sub_21E45C20C(0);
            if (v28)
            {
              *&v45 = 32;
              *(&v45 + 1) = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v27);

              MEMORY[0x223D5ACB0](32, 0xE100000000000000);
            }

            v29 = "mationWith(index:isTouchUp:)";
            if (("mationWith(index:isTouchUp:)" & 0x2F00000000000000) == 0x2000000000000000)
            {
              goto LABEL_57;
            }

            *&v45 = 32;
            *(&v45 + 1) = 0xE100000000000000;
            v30 = 0xD00000000000003FLL;
            goto LABEL_56;
          }

          v21 = sub_21E4DD488();

          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_64;
        }

        v17 = 1.0;
LABEL_22:
        v5 = 0.925;
        goto LABEL_23;
      }
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    sub_21E424BC0(&v47, &unk_27CEC5DF0, &unk_21E4E9540);
    goto LABEL_19;
  }

  v3 = &selRef_setResultViewFromLoading_;
  if (![v2 suggestionsWerePressedDownToggle] || isTouchUp)
  {
    return;
  }

  v13 = [v2 layer];
  v14 = [v13 presentationLayer];

  if (!v14)
  {
    v47 = 0u;
    v48 = 0u;
LABEL_41:
    sub_21E424BC0(&v47, &unk_27CEC5DF0, &unk_21E4E9540);
    goto LABEL_42;
  }

  v15 = sub_21E4DCF68();
  v16 = [v14 valueForKeyPath_];

  if (v16)
  {
    sub_21E4DD338();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_41;
  }

  if (swift_dynamicCast())
  {
    v17 = *&v45;
    goto LABEL_43;
  }

LABEL_42:
  v17 = 0.925;
LABEL_43:
  v4 = &unk_278355000;
  v31 = [v2 suggestionsViews];
  v19 = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v32 = sub_21E4DD088();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_45;
  }

LABEL_64:
  v33 = sub_21E4DD488();

  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_45:
  if (v33 <= index)
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v37 = sub_21E4DBCC8();
    __swift_project_value_buffer(v37, qword_280C14558);
    v26 = sub_21E4DD208();
    *&v47 = 0xD00000000000002CLL;
    *(&v47 + 1) = 0x800000021E4F1760;
    v38 = sub_21E45C20C(0);
    if (v39)
    {
      *&v45 = 32;
      *(&v45 + 1) = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v38);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v29 = "transform.scale.xy";
    if (("transform.scale.xy" & 0x2F00000000000000) == 0x2000000000000000)
    {
      goto LABEL_57;
    }

    *&v45 = 32;
    *(&v45 + 1) = 0xE100000000000000;
    v30 = 0xD00000000000003DLL;
LABEL_56:
    MEMORY[0x223D5ACB0](v30, v29 | 0x8000000000000000);
    MEMORY[0x223D5ACB0](v45, *(&v45 + 1));

LABEL_57:
    v40 = v47;
    v41 = sub_21E4DBCB8();
    if (os_log_type_enabled(v41, v26))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v45 = v43;
      *v42 = 136315138;
      v44 = sub_21E426648(v40, *(&v40 + 1), &v45);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_21E3EB000, v41, v26, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x223D5BF10](v43, -1, -1);
      MEMORY[0x223D5BF10](v42, -1, -1);
    }

    else
    {
    }

    return;
  }

  v34 = [v2 v4[476]];
  v19 = sub_21E4DD088();

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_68:
    v35 = MEMORY[0x223D5B080](index, v19);
    goto LABEL_49;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > index)
  {
    v35 = *(v19 + 8 * index + 32);
LABEL_49:
    v36 = v35;

    [v2 applyPressTransformAnimationToSuggestionTo:v36 from:v17 to:1.0 duration:0.1];

    v8[1888] = 1;
    [v2 setSuggestionsWerePressedDownToggle_];
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsExpanded()()
{
  if ((*(v0 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
  {
    v1 = v0;
    v2 = &unk_278355000;
    if (([v0 suggestionsExpanded] & 1) == 0)
    {
      v3 = [v0 suggestionsViews];
      type metadata accessor for SiriSharedUIDropletContainerView(0);
      v4 = sub_21E4DD088();

      if (v4 >> 62)
      {
        goto LABEL_79;
      }

      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      if (v5)
      {
        [v1 suggestionsMitose];
      }
    }

    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    if (*MEMORY[0x277D76620])
    {
      v99 = 0.0;
      if (!UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) || SiriSharedUIDeviceIsPad())
      {
LABEL_23:
        v10 = &unk_278355000;
        v21 = [v1 suggestionsViews];
        v2 = type metadata accessor for SiriSharedUIDropletContainerView(0);
        v22 = sub_21E4DD088();

        if (v22 >> 62)
        {
          goto LABEL_77;
        }

        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

        while (1)
        {
          if (!v23)
          {
LABEL_69:
            [v1 setSuggestionsExpanded_];

            return;
          }

          v25 = 4;
          *&v24 = 136315138;
          v95 = v24;
          v96 = v2;
          while (1)
          {
            v26 = v25 - 4;
            v27 = [v1 v10[476]];
            v28 = sub_21E4DD088();

            if ((v28 & 0xC000000000000001) == 0)
            {
              break;
            }

            v29 = MEMORY[0x223D5B080](v25 - 4, v28);
LABEL_32:
            v30 = v29;

            if (!SiriSharedUIReducedMotionEnabled())
            {
              v31 = *&v30[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];
              [v30 sendSubviewToBack_];
              v32 = [v30 traitCollection];
              v33 = [v32 userInterfaceStyle];

              v34 = 0.35;
              if (v33 == 1)
              {
                v34 = 0.25;
              }

              [v31 setAlpha_];
              [*&v30[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffect] setActivationTransitionDirection_];
              v35 = objc_opt_self();
              v36 = swift_allocObject();
              *(v36 + 16) = v30;
              v106 = sub_21E4D1CF4;
              v107 = v36;
              aBlock = MEMORY[0x277D85DD0];
              v103 = 1107296256;
              v104 = sub_21E46C644;
              v105 = &block_descriptor_52;
              v37 = _Block_copy(&aBlock);
              v38 = v30;

              [v35 animateWithDuration:v37 animations:1.0 * 0.5];
              _Block_release(v37);
            }

            v39 = [v1 v10[476]];
            v40 = sub_21E4DD088();

            if ((v40 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x223D5B080](v25 - 4, v40);
            }

            else
            {
              if (v26 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v41 = *(v40 + 8 * v25);
            }

            v42 = v41;

            v43 = [v1 originalViewSizeDict];
            type metadata accessor for CGSize(0);
            sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
            v44 = sub_21E4DCE98();

            if (!*(v44 + 16) || (v45 = sub_21E4B16E4(v42), (v46 & 1) == 0))
            {

              goto LABEL_28;
            }

            v47 = (*(v44 + 56) + 16 * v45);
            v49 = *v47;
            v48 = v47[1];

            v50 = [v1 v10[476]];
            v51 = sub_21E4DD088();

            if ((v51 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x223D5B080](v25 - 4, v51);
            }

            else
            {
              if (v26 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_74;
              }

              v52 = *(v51 + 8 * v25);
            }

            v53 = v52;

            [v53 setUserInteractionEnabled_];

            v54 = [v1 textFieldView];
            if (!v54)
            {
              [v1 bounds];
              v81 = v80;
              [v1 textFieldHeight];
              v83 = v82;
              if (qword_280C14550 != -1)
              {
                swift_once();
              }

              v84 = sub_21E4DBCC8();
              __swift_project_value_buffer(v84, qword_280C14558);
              v85 = sub_21E4DD218();
              aBlock = 0xD00000000000001FLL;
              v103 = 0x800000021E4F1830;
              v86 = sub_21E45C20C(0);
              if (v87)
              {
                v100 = 32;
                v101 = 0xE100000000000000;
                MEMORY[0x223D5ACB0](v86);

                MEMORY[0x223D5ACB0](v100, v101);
              }

              if (("calculateSuggestionsFrameMinY()" & 0x2F00000000000000) != 0x2000000000000000)
              {
                v100 = 32;
                v101 = 0xE100000000000000;
                MEMORY[0x223D5ACB0](0xD000000000000053, 0x800000021E4F1850);
                MEMORY[0x223D5ACB0](v100, v101);
              }

              v88 = aBlock;
              v89 = v103;
              v90 = sub_21E4DBCB8();
              if (os_log_type_enabled(v90, v85))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v100 = v92;
                *v91 = v95;
                v93 = sub_21E426648(v88, v89, &v100);

                *(v91 + 4) = v93;
                _os_log_impl(&dword_21E3EB000, v90, v85, "%s", v91, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v92);
                v94 = v92;
                v2 = v96;
                MEMORY[0x223D5BF10](v94, -1, -1);
                MEMORY[0x223D5BF10](v91, -1, -1);
              }

              else
              {
              }

              v10 = &unk_278355000;
              MinY = v81 - v83;
              if (!SiriSharedUIDeviceIsPad())
              {
                goto LABEL_47;
              }

LABEL_46:
              [v1 textFieldBottomPaddingPad];
              goto LABEL_47;
            }

            v55 = v54;
            [v54 frame];
            MinY = CGRectGetMinY(v108);

            if (SiriSharedUIDeviceIsPad())
            {
              goto LABEL_46;
            }

LABEL_47:
            [v1 bottomContentInset];
            if (v57 <= 0.0)
            {
              [v1 safeAreaInsets];
            }

            [v1 suggestionsViewSpringDuration];
            v59 = v58;
            v60 = [v1 v10[476]];
            v61 = sub_21E4DD088();

            if (v61 >> 62)
            {
              v62 = sub_21E4DD488();
            }

            else
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v63 = objc_opt_self();
            v64 = v62 - v26;
            if (__OFSUB__(v62, v26))
            {
              goto LABEL_73;
            }

            v65 = __OFSUB__(v64, 1);
            v66 = v64 - 1;
            if (v65)
            {
              goto LABEL_75;
            }

            v67 = v63;
            v68 = v66;
            [v1 suggestionsViewStaggerDelay];
            v70 = v69 * v68;
            [v1 suggestionsViewSpringMass];
            v72 = v71;
            [v1 suggestionsViewSpringStiffness];
            v74 = v73;
            [v1 suggestionsViewSpringDamping];
            v76 = v75;
            v77 = swift_allocObject();
            *(v77 + 16) = v1;
            *(v77 + 24) = v99;
            *(v77 + 32) = v26;
            *(v77 + 40) = v97;
            *(v77 + 48) = MinY;
            *(v77 + 56) = v49;
            *(v77 + 64) = v48;
            *(v77 + 72) = v98;
            v106 = sub_21E4D1CFC;
            v107 = v77;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_21E46C644;
            v105 = &block_descriptor_58;
            v78 = _Block_copy(&aBlock);
            v79 = v1;

            v2 = v96;

            [v67 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
            _Block_release(v78);
LABEL_28:
            ++v25;
            if (!--v23)
            {
              goto LABEL_69;
            }
          }

          if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v23 = sub_21E4DD488();

          if (v23 < 0)
          {
            __break(1u);
LABEL_79:
            v5 = sub_21E4DD488();
            goto LABEL_5;
          }
        }

        v29 = *(v28 + 8 * v25);
        goto LABEL_32;
      }

      v6 = [v1 v2[476]];
      type metadata accessor for SiriSharedUIDropletContainerView(0);
      v7 = sub_21E4DD088();

      if (!(v7 >> 62))
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        goto LABEL_12;
      }

      v8 = sub_21E4DD488();

      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_12:
        if (v8)
        {
          v9 = 0;
          v99 = 0.0;
          v2 = &unk_278355000;
          v10 = &selRef_setResultViewFromLoading_;
          do
          {
            v11 = [v1 suggestionsViews];
            v12 = sub_21E4DD088();

            if ((v12 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D5B080](v9, v12);
            }

            else
            {
              if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              v13 = *(v12 + 8 * v9 + 32);
            }

            v14 = v13;

            v15 = [v1 originalViewSizeDict];
            type metadata accessor for CGSize(0);
            sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
            v16 = sub_21E4DCE98();

            if (*(v16 + 16) && (v17 = sub_21E4B16E4(v14), (v18 & 1) != 0))
            {
              v19 = *(*(v16 + 56) + 16 * v17);

              [v1 suggestionSpacing];
              v99 = v99 + v19 + v20;
            }

            else
            {
            }

            ++v9;
          }

          while (v8 != v9);
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_21E4BF8E0(uint64_t a1, unint64_t a2, double *a3, double *a4, double a5, double a6, double a7, double a8)
{
  if (!*MEMORY[0x277D76620])
  {
    goto LABEL_37;
  }

  if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
  {
    [a1 bounds];
    v10 = v26;
    v27 = [a1 suggestionsViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v8 = sub_21E4DD088();

    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_34:
      v28 = MEMORY[0x223D5B080](a2, v8);
      goto LABEL_13;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v28 = *(v8 + 8 * a2 + 32);
LABEL_13:
      v29 = v28;
      v21 = a3 + 2;
      v30 = (v10 - a5) * 0.5;

      [a1 horizontalContentInset];
      v32 = v31;
      swift_beginAccess();
      v33 = v30 + v32 + *v21;
      [a1 suggestionSpacing];
      [v29 setFrame_];

      [a1 suggestionSpacing];
      a8 = v35 + a7;
      goto LABEL_14;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  a3 = [a1 suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v9 = sub_21E4DD088();

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  for (i = *(v9 + 8 * a2 + 32); ; i = MEMORY[0x223D5B080](a2, v9))
  {
    v20 = i;
    v21 = a4 + 2;

    [a1 horizontalContentInset];
    v23 = v22;
    swift_beginAccess();
    a6 = a6 - a4[2];
    [a1 suggestionSpacing];
    [v20 setFrame_];

    [a1 suggestionSpacing];
    a8 = v25 + a8;
LABEL_14:
    swift_beginAccess();
    *v21 = a8 + *v21;
    a4 = [a1 suggestionsViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v36 = sub_21E4DD088();

    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223D5B080](a2, v36);
      goto LABEL_18;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v37 = *(v36 + 8 * a2 + 32);
LABEL_18:
    a4 = v37;

    v38 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    swift_beginAccess();
    *(a4 + v38) = 1;

    v39 = [a1 suggestionsViews];
    a1 = sub_21E4DD088();

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_27;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v40 = *(a1 + 8 * a2 + 32);
      goto LABEL_22;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  __break(1u);
LABEL_27:
  v40 = MEMORY[0x223D5B080](a2, a1);
LABEL_22:
  v41 = v40;

  v42 = *&v41[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  v43 = v42;

  if (v42)
  {
    [v43 setAlpha_];
  }
}

void sub_21E4BFD70(void *a1, void *a2, void *a3, int a4, uint64_t a5, double a6)
{
  v7 = v6;
  v41 = a5;
  v40 = a4;
  v12 = sub_21E4DCBF8();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_21E4DCC18();
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a2 frame];
  [a1 convertRect:v7 toCoordinateSpace:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  [v7 horizontalContentInset];
  v28 = v27;
  [a3 frame];
  MinY = CGRectGetMinY(v45);
  [v7 textFieldHeight];
  *(v26 + 16) = v28;
  *(v26 + 24) = MinY;
  *(v26 + 32) = a6;
  *(v26 + 40) = v30;
  if (*MEMORY[0x277D76620])
  {
    if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
    {
      [a3 frame];
      MinX = CGRectGetMinX(v46);
      [a3 frame];
      v32 = CGRectGetMinY(v47);
      [v7 textFieldHeight];
      *(v26 + 16) = MinX;
      *(v26 + 24) = v32;
      *(v26 + 32) = a6;
      *(v26 + 40) = v33;
    }

    sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
    v34 = sub_21E4DD278();
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = v7;
    *(v35 + 32) = v19;
    *(v35 + 40) = v21;
    *(v35 + 48) = v23;
    *(v35 + 56) = v25;
    *(v35 + 64) = v40 & 1;
    *(v35 + 72) = v41;
    *(v35 + 80) = v26;
    aBlock[4] = sub_21E4D21F4;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E46C644;
    aBlock[3] = &block_descriptor_202;
    v36 = _Block_copy(aBlock);
    v37 = a2;
    v38 = v7;

    sub_21E4DCC08();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21E4D156C(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
    sub_21E42E3E8();
    sub_21E4DD358();
    MEMORY[0x223D5AF30](0, v17, v14, v36);
    _Block_release(v36);

    (*(v43 + 8))(v14, v12);
    (*(v15 + 8))(v17, v42);
  }

  else
  {
    __break(1u);
  }
}

void sub_21E4C0198(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  [a1 removeFromSuperview];
  [a2 addSubview_];
  [a1 setFrame_];
  v18 = 0.0;
  if (a3)
  {
    [a2 suggestionsViewSpringDuration];
    v18 = v19;
  }

  v20 = objc_opt_self();
  [a2 suggestionsViewStaggerDelay];
  v22 = v21;
  [a2 suggestionsViewSpringDamping];
  if ((a4 - 0x1000000000000000) >> 61 == 7)
  {
    v24 = v22 * a4;
    v25 = v23 + (8 * a4);
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = a5;
    v29[4] = sub_21E4D225C;
    v29[5] = v26;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = sub_21E46C644;
    v29[3] = &block_descriptor_208;
    v27 = _Block_copy(v29);
    v28 = a1;

    [v20 animateWithDuration:0 delay:v27 usingSpringWithDamping:0 initialSpringVelocity:v18 options:v24 animations:v25 completion:0.0];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

void SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsCollapsedWith(index:animated:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ([v5 suggestionsExpanded])
  {
    v7 = [v5 suggestionsViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v8 = sub_21E4DD088();

    if (v8 >> 62)
    {
      goto LABEL_50;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      [v5 suggestionsMitose];
    }
  }

  [v5 setSuggestionsExpanded_];
  [v5 setIndexOfSelectedSuggestion_];
  a1 = [v5 suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v10 = sub_21E4DD088();

  if (v10 >> 62)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_8:
  if (v11)
  {
    v12 = 0;
    v13 = &unk_278355000;
    do
    {
      v14 = [v5 suggestionsViews];
      a1 = sub_21E4DD088();

      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D5B080](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v11 = sub_21E4DD488();

          if (v11 < 0)
          {
            __break(1u);
LABEL_50:
            v9 = sub_21E4DD488();
            goto LABEL_4;
          }

          goto LABEL_8;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v16 = v15;

      v17 = [v5 v13[491]];
      type metadata accessor for CGSize(0);
      sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
      v18 = sub_21E4DCE98();

      if (*(v18 + 16) && (v19 = sub_21E4B16E4(v16), (v20 & 1) != 0))
      {
        v21 = (*(v18 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];

        v24 = [v5 suggestionsViews];
        a1 = sub_21E4DD088();

        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x223D5B080](v12, a1);
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v25 = *(a1 + 8 * v12 + 32);
        }

        v26 = v25;

        a1 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v69 = sub_21E4D1D18;
        v70 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v66 = 1107296256;
        v67 = sub_21E46C644;
        v68 = &block_descriptor_64;
        v28 = _Block_copy(&aBlock);
        v29 = v26;

        [a1 animateWithDuration:v28 animations:1.0 * 0.125];
        _Block_release(v28);

        v30 = [v5 suggestionsViews];
        v31 = sub_21E4DD088();

        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x223D5B080](v12, v31);
        }

        else
        {
          if (v12 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v32 = *(v31 + 8 * v12 + 32);
        }

        v33 = v32;

        v34 = *&v33[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
        v35 = v34;

        if (v34)
        {
          [v5 textFieldHeight];
          [v35 setBounds_];
        }

        v37 = [v5 suggestionsViews];
        v38 = sub_21E4DD088();

        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x223D5B080](v12, v38);
        }

        else
        {
          if (v12 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v39 = *(v38 + 8 * v12 + 32);
        }

        v40 = v39;

        v41 = *&v40[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
        v42 = v41;

        if (v41)
        {
          v43 = [v42 superview];
          if (v43)
          {
            v44 = v43;
            if (v12 == [v5 indexOfSelectedSuggestion])
            {
              v45 = [v5 textFieldView];
              if (v45)
              {
                v46 = v45;
                [v5 prepSuggestionContentViewForAnimation____:v44 :{v42, v45, a2 & 1, v12, v22, v23}];
              }
            }

            v47 = 0.0;
            if (a2)
            {
              [v5 suggestionsViewSpringDuration];
              v47 = v48;
            }

            [v5 suggestionsViewStaggerDelay];
            v50 = v49;
            [v5 suggestionsViewSpringDamping];
            if ((v12 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_47;
            }

            v52 = v51 + (8 * v12);
            v53 = swift_allocObject();
            *(v53 + 2) = v5;
            *(v53 + 3) = v12;
            v53[4] = v22;
            v53[5] = v23;
            v69 = sub_21E4D1D20;
            v70 = v53;
            aBlock = MEMORY[0x277D85DD0];
            v66 = 1107296256;
            v67 = sub_21E46C644;
            v68 = &block_descriptor_70;
            v54 = _Block_copy(&aBlock);
            v64 = v44;
            v63 = v42;
            v55 = v11;
            v56 = v5;

            v57 = swift_allocObject();
            *(v57 + 2) = v56;
            *(v57 + 3) = v12;
            *(v57 + 4) = a3;
            *(v57 + 5) = a4;
            v69 = sub_21E4D1D2C;
            v70 = v57;
            aBlock = MEMORY[0x277D85DD0];
            v66 = 1107296256;
            v67 = sub_21E4A4148;
            v68 = &block_descriptor_76;
            v58 = _Block_copy(&aBlock);
            v59 = v56;
            v11 = v55;

            v13 = &unk_278355000;

            [a1 animateWithDuration:0 delay:v54 usingSpringWithDamping:v58 initialSpringVelocity:v47 options:v50 * v12 animations:v52 completion:0.0];

            _Block_release(v58);
            _Block_release(v54);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      ++v12;
    }

    while (v12 != v11);
  }
}

void sub_21E4C0CC0(void *a1, unint64_t a2, double a3)
{
  v7 = a1;
  v8 = &unk_278355000;
  v9 = [a1 suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v10 = sub_21E4DD088();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D5B080](a2, v10);
LABEL_5:
    v12 = v11;

    [v12 setUserInteractionEnabled_];

    v4 = &unk_278355000;
    v13 = [v7 textFieldView];
    v3 = &selRef_displayLinkWithTarget_selector_;
    if (v13)
    {
      v14 = v13;
      [v13 frame];
      MinY = CGRectGetMinY(v67);

      goto LABEL_16;
    }

    [v7 bounds];
    MinY = v16;
    [v7 textFieldHeight];
    v18 = v17;
    v10 = 0x800000021E4F1830;
    if (qword_280C14550 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v11 = *(v10 + 8 * a2 + 32);
    goto LABEL_5;
  }

  __break(1u);
LABEL_61:
  for (i = MEMORY[0x223D5B080](a2, v10); ; i = *(v10 + 8 * a2 + 32))
  {
    v58 = i;

    v59 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    v33 = 1;
    swift_beginAccess();
    v58[v59] = 1;

    if ([v7 indexOfSelectedSuggestion] == a2)
    {
      return;
    }

    v7 = [v7 v8[476]];
    v10 = sub_21E4DD088();

    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_64;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_66;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      break;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v34 = MEMORY[0x223D5B080](a2, v33);
LABEL_28:
    v35 = v34;

    [v7 horizontalContentInset];
    MinY = v36;
    [v10 v3[35]];
    v18 = CGRectGetMinY(v68);
    v3 = &selRef_setResultViewFromLoading_;
    [v7 textFieldHeight];
    [v35 setFrame_];

    v38 = [v7 v8[476]];
    v32 = sub_21E4DD088();

    if ((v32 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v39 = *(v32 + 8 * a2 + 32);
        goto LABEL_32;
      }

      goto LABEL_72;
    }

    while (1)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
LABEL_8:
      v19 = sub_21E4DBCC8();
      __swift_project_value_buffer(v19, qword_280C14558);
      v20 = sub_21E4DD218();
      v64 = v10;
      v21 = sub_21E45C20C(0);
      if (v22)
      {
        v65 = 32;
        v66 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v21);

        MEMORY[0x223D5ACB0](v65, v66);
      }

      if (("calculateSuggestionsFrameMinY()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v65 = 32;
        v66 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD000000000000053, 0x800000021E4F1850);
        MEMORY[0x223D5ACB0](v65, v66);
      }

      v23 = sub_21E4DBCB8();
      if (os_log_type_enabled(v23, v20))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v65 = v25;
        *v24 = 136315138;
        v26 = sub_21E426648(0xD00000000000001FLL, v64, &v65);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_21E3EB000, v23, v20, "%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        v27 = v25;
        v8 = &unk_278355000;
        MEMORY[0x223D5BF10](v27, -1, -1);
        MEMORY[0x223D5BF10](v24, -1, -1);
      }

      else
      {
      }

      v3 = &selRef_displayLinkWithTarget_selector_;
      MinY = MinY - v18;
LABEL_16:
      v18 = 0.0;
      if (SiriSharedUIDeviceIsPad())
      {
        [v7 textFieldBottomPaddingPad];
        v18 = v28;
      }

      [v7 bottomContentInset];
      if (v29 <= 0.0)
      {
        [v7 safeAreaInsets];
        v18 = v18 + v30;
      }

      if (!*MEMORY[0x277D76620])
      {
        goto LABEL_80;
      }

      if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
      {
        v10 = [v7 v4[480]];
        v44 = [v7 v8[476]];
        v45 = sub_21E4DD088();

        v46 = v45 & 0xC000000000000001;
        if (v10)
        {
          if (v46)
          {
            v47 = MEMORY[0x223D5B080](a2, v45);
            goto LABEL_39;
          }

          if ((a2 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
          {
            v47 = *(v45 + 8 * a2 + 32);
LABEL_39:
            v48 = v47;

            [v10 frame];
            MinX = CGRectGetMinX(v69);
            [v10 frame];
            v50 = CGRectGetMinY(v70);
            [v7 textFieldHeight];
            [v48 setFrame_];

            goto LABEL_45;
          }

          __break(1u);
LABEL_77:
          v52 = MEMORY[0x223D5B080](a2, v45);
        }

        else
        {
          if (v46)
          {
            goto LABEL_77;
          }

          if ((a2 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
            return;
          }

          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
          {
            goto LABEL_79;
          }

          v52 = *(v45 + 8 * a2 + 32);
        }

        v10 = v52;

        [v7 bounds];
        v54 = v53 * 0.5;
        [v7 textFieldHeight];
        [v10 setFrame_];
        goto LABEL_45;
      }

      v31 = [v7 v4[480]];
      if (!v31)
      {
        goto LABEL_46;
      }

      v10 = v31;
      v32 = [v7 v8[476]];
      v33 = sub_21E4DD088();

      if ((v33 & 0xC000000000000001) != 0)
      {
        goto LABEL_67;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v34 = *(v33 + 8 * a2 + 32);
        goto LABEL_28;
      }

      __break(1u);
    }

    __break(1u);
LABEL_69:
    v39 = MEMORY[0x223D5B080](a2, v32);
LABEL_32:
    v40 = v39;

    v41 = *&v40[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v42 = v41;

    if (v41)
    {
      [v7 v3[23]];
      [v42 setBounds_];
    }

LABEL_45:

LABEL_46:
    v56 = [v7 v8[476]];
    v10 = sub_21E4DD088();

    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v60 = MEMORY[0x223D5B080](a2, v10);
      goto LABEL_55;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      goto LABEL_63;
    }
  }

  v60 = *(v10 + 8 * a2 + 32);
LABEL_55:
  v61 = v60;

  v62 = *&v61[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  v63 = v62;

  if (v62)
  {
    [v63 setAlpha_];
  }
}

void sub_21E4C1514(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  v6 = a2;
  v7 = [a2 indexOfSelectedSuggestion];
  v8 = [v6 suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v9 = sub_21E4DD088();

  if (v9 >> 62)
  {
    v10 = sub_21E4DD488();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10 - 1 == a3 && v7 != -1)
  {
    v12 = [v6 suggestionsViews];
    v6 = sub_21E4DD088();

    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v6 + 8 * v7 + 32);
LABEL_12:
        v14 = v13;

        v15 = *&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
        v16 = v15;

        if (v15)
        {
          [v16 setAlpha_];
        }

        a4();
        return;
      }

      __break(1u);
      return;
    }

LABEL_18:
    v13 = MEMORY[0x223D5B080](v7, v6);
    goto LABEL_12;
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionToSuggestionsCollapsed()()
{
  [v0 setSuggestionsExpanded_];
  [v0 setNeedsLayout];

  [v0 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionSuggestionToLoading(index:)(Swift::Int index)
{
  v2 = v1;
  v4 = [v1 suggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v5 = sub_21E4DD088();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D5B080](index, v5);
    goto LABEL_5;
  }

  if ((index & 0x8000000000000000) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * index + 32);
LABEL_5:
    v7 = v6;

    v13 = v7;
    v8 = [v2 loadingViews];
    v9 = sub_21E4DD088();

    MEMORY[0x223D5AD10]();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  sub_21E4DD0A8();
LABEL_6:
  sub_21E4DD0D8();
  v10 = sub_21E4DD078();

  [v2 setLoadingViews_];

  v11 = [v2 suggestionsViews];
  sub_21E4DD088();

  v12 = sub_21E4DD078();

  [v2 setSuggestionsViews_];

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  if ([v2 showsSensitiveUI] && (*(v2 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
  {
    sub_21E4D5A7C();
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionVoiceLoadingToLoading()()
{
  v1 = v0;
  v2 = [v0 voiceLoadingView];
  if (v2)
  {
    v3 = v2;
    [v1 setIsInVoiceLatency_];
    [*&v3[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
    v7 = v3;
    v4 = [v1 loadingViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v5 = sub_21E4DD088();

    MEMORY[0x223D5AD10]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v6 = sub_21E4DD078();

    [v1 setLoadingViews_];

    [v1 setVoiceLoadingView_];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.startLatencyLightOnActivePill()()
{
  if (v0[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient])
  {
    return;
  }

  v1 = [v0 loadingViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v2 = sub_21E4DD088();

  if (v2 >> 62)
  {
    if (sub_21E4DD488())
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223D5B080](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_21E4D5A7C();
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionTextFieldLoadingToLoading()()
{
  v1 = v0;
  v2 = [v0 textFieldLoadingView];
  if (v2)
  {
    v6 = v2;
    v3 = [v0 loadingViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v4 = sub_21E4DD088();

    MEMORY[0x223D5AD10]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v5 = sub_21E4DD078();

    [v1 setLoadingViews_];

    [v1 setTextFieldLoadingView_];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    if ([v1 showsSensitiveUI] && (*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
    {
      sub_21E4D5A7C();
    }
  }
}

void *SiriSharedUISystemAssistantExperienceContainerView.transition(toRemovedResponseElements:)(char a1)
{
  v3 = sub_21E4DB698();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = [v1 loadingViews];
  v11 = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v12 = sub_21E4DD088();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v14 = [v1 resultView];
    if (!v14)
    {
      return MEMORY[0x277D84F90];
    }

    if ((a1 & 1) == 0)
    {
LABEL_25:
      v20 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
LABEL_33:
        [v1 setNeedsLayout];
        [v1 layoutIfNeeded];
        return v20;
      }

LABEL_26:
      v23 = [v1 resultView];
      if (v23)
      {
        v24 = v23;
        v25 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
        swift_beginAccess();
        v24[v25] = 1;
        [v1 setIsResultPresented_];
        (*(v4 + 16))(v7, &v24[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id], v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21E44397C(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          v20 = sub_21E44397C((v26 > 1), v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v7, v3);
        v28 = [v1 previousResultView];

        if (v28)
        {
          v29 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
          swift_beginAccess();
          v28[v29] = 1;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_10;
  }

  if (!sub_21E4DD488())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D5B080](0, v12);
    swift_unknownObjectRelease();

    if ((a1 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v13)
    {
      __break(1u);
      goto LABEL_23;
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_10:
  v15 = [v1 loadingViews];
  v11 = sub_21E4DD088();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_23:
  result = sub_21E4DD488();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223D5B080](0, v11);
LABEL_15:
    v18 = v17;

    v19 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
    swift_beginAccess();
    v18[v19] = 1;
    (*(v4 + 16))(v9, &v18[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_id], v3);
    v20 = sub_21E44397C(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_21E44397C((v21 > 1), v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v9, v3);
    if ((a1 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v11 + 32);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.stopLatencyBreathingLoop()()
{
  v1 = [v0 resultView];
  if (v1)
  {
    v2 = v1;
    sub_21E4D5550();
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionMergedResults()()
{
  v1 = [v0 previousResultView];
  if (v1)
  {

    *(v0 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 1;
    [v0 setNeedsLayout];

    [v0 layoutIfNeeded];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionToResult()()
{
  v1 = v0;
  v2 = [v0 resultView];
  if (v2)
  {
    v3 = v2;
    sub_21E4D5C44();
  }

  if (([v1 isResultPresented] & 1) == 0)
  {
    if ([v1 showsSensitiveUI])
    {
      if ((*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
      {
        if ([v1 resultEligibleForLightEffects])
        {
          v4 = [v1 resultView];
          if (v4)
          {
            v5 = v4;
            sub_21E4D4760(0);
          }
        }
      }
    }
  }

  *(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 3;
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];
  [v1 setResultViewFromLoading_];

  [v1 setIsResultPresented_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionFromResultToCollapseLoading()()
{
  v1 = v0;
  v2 = [v0 collapseLoadingView];
  if (v2)
  {
    *(v0 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) = 0;
    v3 = v2;
    [*&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] setAlpha_];
    v7 = v3;
    v4 = [v1 loadingViews];
    type metadata accessor for SiriSharedUIDropletContainerView(0);
    v5 = sub_21E4DD088();

    MEMORY[0x223D5AD10]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E4DD0A8();
    }

    sub_21E4DD0D8();
    v6 = sub_21E4DD078();

    [v1 setLoadingViews_];

    [v1 setCollapseLoadingView_];
    [v1 setLoadingViewFromResult_];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.transitionToUpdatedContentInset()()
{
  [v0 setNeedsLayout];

  [v0 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.clearResultViewAndBackground()()
{
  v1 = [v0 resultView];
  [v1 removeFromSuperview];

  v2 = [v0 resultView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];

    [v4 removeFromSuperview];
  }

  v5 = [v0 resultView];
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];

    [v7 removeFromSuperview];
  }

  [v0 setResultView_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.prepareForDrillinAnimation()()
{
  v1 = [v0 bottomFloatingButtonView];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v17[4] = sub_21E4D2AB0;
    v17[5] = v4;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_21E46C644;
    v17[3] = &block_descriptor_83_0;
    v5 = _Block_copy(v17);
    v6 = v2;

    [v3 animateWithDuration:v5 animations:1.0 * 0.125];
    _Block_release(v5);
  }

  [v0 updateBottomFloatingButtonVisibility_];
  [v0 removeSuggestionsForDrillIn];
  sub_21E4C2E94(0);
  sub_21E4C3164(0);
  v7 = [v0 previousResultView];
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v9 = v7;
    v10 = v8;

    if (v8)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 prepareForDrillInAnimation];
      }
    }
  }

  v12 = [v0 resultView];
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v14 = v12;
    v15 = v13;

    if (v13)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        [v16 prepareForDrillInAnimation];
      }
    }
  }
}

void sub_21E4C2E94(char a1)
{
  if (a1)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [v1 previousResultView];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];

    [v5 setAlpha_];
  }

  v6 = [v1 previousResultView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];

    [v8 setAlpha_];
  }

  v9 = [v1 previousResultView];
  if (v9)
  {
    v10 = v9;
    v11 = *&v9[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView];

    [v11 setAlpha_];
  }

  v12 = [v1 previousResultView];
  if (v12)
  {
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView];

    [v14 setAlpha_];
  }

  v15 = [v1 resultView];
  if (v15)
  {
    v16 = v15;
    v17 = *&v15[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView];

    [v17 setAlpha_];
  }

  v18 = [v1 resultView];
  if (v18)
  {
    v19 = v18;
    v20 = *&v18[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];

    [v20 setAlpha_];
  }

  v21 = [v1 resultView];
  if (v21)
  {
    v22 = v21;
    v23 = *&v21[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView];

    [v23 setAlpha_];
  }

  v24 = [v1 resultView];
  if (v24)
  {
    v25 = v24;
    v26 = *&v24[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView];

    [v26 setAlpha_];
  }
}

void sub_21E4C3164(char a1)
{
  if (a1)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [v1 previousResultView];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];

    [v5 setAlpha_];
  }

  v6 = [v1 resultView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v6[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];

    [v8 setAlpha_];
  }

  v9 = [v1 snippetBackgroundView];
  [v9 setAlpha_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.restoreSubviewsFromDrillIn()()
{
  [v0 updateBottomFloatingButtonVisibility_];
  v1 = [v0 bottomFloatingButtonView];
  if (v1)
  {
    v2 = v1;
    sub_21E4D652C();
  }
}

void SiriSharedUISystemAssistantExperienceContainerView.prepareForPopAnimation(ofType:)(uint64_t a1)
{
  v2 = v1;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_21E4DD3A8();
      MEMORY[0x223D5ACB0](0xD00000000000001CLL, 0x800000021E4F18D0);
      v24[0] = a1;
      type metadata accessor for SiriSharedUIPopAnimationType(0);
      sub_21E4DD458();
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v4 = sub_21E4DBCC8();
      __swift_project_value_buffer(v4, qword_280C14558);
      v5 = sub_21E4DD218();
      v25 = 0xD00000000000001FLL;
      v26 = 0x800000021E4F18B0;
      v6 = sub_21E45C20C(0);
      if (v7)
      {
        v24[0] = 32;
        v24[1] = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v6);

        MEMORY[0x223D5ACB0](32, 0xE100000000000000);
      }

      v9 = v25;
      v8 = v26;
      v10 = sub_21E4DBCB8();
      if (os_log_type_enabled(v10, v5))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24[0] = v12;
        *v11 = 136315138;
        v13 = sub_21E426648(v9, v8, v24);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x223D5BF10](v12, -1, -1);
        MEMORY[0x223D5BF10](v11, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      sub_21E4C3164(1);
    }
  }

  sub_21E4C2E94(1);
  v14 = [v2 previousResultView];
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v16 = v14;
    v17 = v15;

    if (v15)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        [v18 prepareForPopAnimationOfType_];
      }
    }
  }

  v19 = [v2 resultView];
  if (v19)
  {
    v20 = *&v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v21 = v19;
    v22 = v20;

    if (v20)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        [v23 prepareForPopAnimationOfType_];
      }
    }
  }
}

void SiriSharedUISystemAssistantExperienceContainerView.finalizePopAnimation(ofType:)(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_21E4C3164(1);
    }

    else
    {
      sub_21E4DD3A8();
      MEMORY[0x223D5ACB0](0xD00000000000001CLL, 0x800000021E4F18D0);
      v12[0] = a1;
      type metadata accessor for SiriSharedUIPopAnimationType(0);
      sub_21E4DD458();
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v2 = sub_21E4DBCC8();
      __swift_project_value_buffer(v2, qword_280C14558);
      v3 = sub_21E4DD218();
      v13 = 0xD00000000000001DLL;
      v14 = 0x800000021E4F18F0;
      v4 = sub_21E45C20C(0);
      if (v5)
      {
        v12[0] = 32;
        v12[1] = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v4);

        MEMORY[0x223D5ACB0](32, 0xE100000000000000);
      }

      v7 = v13;
      v6 = v14;
      v8 = sub_21E4DBCB8();
      if (os_log_type_enabled(v8, v3))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v12[0] = v10;
        *v9 = 136315138;
        v11 = sub_21E426648(v7, v6, v12);

        *(v9 + 4) = v11;
        _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        MEMORY[0x223D5BF10](v10, -1, -1);
        MEMORY[0x223D5BF10](v9, -1, -1);
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.didDismissResults()()
{
  v1 = [v0 fluidDismissalManager];
  v1[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing] = 0;
}

id SiriSharedUISystemAssistantExperienceContainerView.resultViewContainer.getter()
{
  v1 = [v0 resultView];

  return v1;
}

void *sub_21E4C3BC0(void *a1)
{
  v3 = [v1 resultView];
  if (!v3)
  {
    return 0;
  }

  v4 = *&v3[*a1];
  v5 = v3;
  v6 = v4;

  return v4;
}

id sub_21E4C3C28(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 resultView];
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[*a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.updateBackgroundView(_:smartDialogView:isSnippetAsyncColored:)(UIView *_, UIView_optional *smartDialogView, Swift::Bool isSnippetAsyncColored)
{
  v4 = v3;
  [v4 setSnippetBackgroundView_];
  p_info = &OBJC_METACLASS___SiriSharedUIGenerativeAssistantOnboardingManager.info;
  if (smartDialogView)
  {
    v9 = smartDialogView;
    v10 = [v4 backgroundColorAsyncDict];
    sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
    sub_21E4D1674();
    v11 = sub_21E4DCE98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v11;
    sub_21E4445C4(isSnippetAsyncColored, v9, isUniquelyReferenced_nonNull_native);

    p_info = (&OBJC_METACLASS___SiriSharedUIGenerativeAssistantOnboardingManager + 32);
    v13 = sub_21E4DCE88();

    [v4 setBackgroundColorAsyncDict_];
  }

  else
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v14 = sub_21E4DBCC8();
    __swift_project_value_buffer(v14, qword_280C14558);
    v15 = sub_21E4DD218();
    v55 = 0xD00000000000003ELL;
    v56 = 0x800000021E4F1910;
    v16 = sub_21E45C20C(0);
    if (v17)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v16);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("ogView:isSnippetAsyncColored:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v53 = 32;
      v54 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000043, 0x800000021E4F1950);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v19 = v55;
    v18 = v56;
    v20 = sub_21E4DBCB8();
    if (os_log_type_enabled(v20, v15))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53 = v22;
      *v21 = 136315138;
      v23 = sub_21E426648(v19, v18, &v53);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_21E3EB000, v20, v15, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v24 = v22;
      p_info = (&OBJC_METACLASS___SiriSharedUIGenerativeAssistantOnboardingManager + 32);
      MEMORY[0x223D5BF10](v24, -1, -1);
      MEMORY[0x223D5BF10](v21, -1, -1);
    }

    else
    {
    }
  }

  v25 = [(UIView *)_ layer];
  [(CALayer *)v25 setCornerRadius:28.0];

  v26 = [v4 resultView];
  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    if (v27)
    {
      if (v27 == smartDialogView)
      {
LABEL_16:
        v52 = v26;
        v28 = [v4 snippetBackgroundView];
        v29 = *&v52[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
        *&v52[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] = v28;
        v30 = v28;
        sub_21E4D8CE4(v29);

        [v4 setSnippetBackgroundView_];

        return;
      }
    }

    else if (!smartDialogView)
    {
      goto LABEL_16;
    }
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD00000000000003DLL, 0x800000021E4F19A0);
  v53 = [v4 resultView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6990, &qword_21E4E9690);
  v31 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v31);

  MEMORY[0x223D5ACB0](0x746E65746E6F6320, 0xED00002077656956);
  v32 = [v4 resultView];
  if (v32)
  {
    v33 = *&v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v33 = 0;
  }

  v53 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5D10, qword_21E4E6B40);
  v36 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v36);

  MEMORY[0x223D5ACB0](0xD000000000000012, 0x800000021E4F19E0);
  v53 = smartDialogView;
  v37 = smartDialogView;
  v38 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v38);

  v40 = v55;
  v39 = v56;
  if (p_info[170] != -1)
  {
    swift_once();
  }

  v41 = sub_21E4DBCC8();
  __swift_project_value_buffer(v41, qword_280C14558);
  v42 = sub_21E4DD1F8();
  v55 = 0xD00000000000003ELL;
  v56 = 0x800000021E4F1910;
  v43 = sub_21E45C20C(0);
  if (v44)
  {
    v53 = 32;
    v54 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v43);

    MEMORY[0x223D5ACB0](v53, v54);
  }

  v45 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v45 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v53 = 32;
    v54 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v40, v39);
    MEMORY[0x223D5ACB0](v53, v54);
  }

  v47 = v55;
  v46 = v56;
  v48 = sub_21E4DBCB8();
  if (os_log_type_enabled(v48, v42))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v49 = 136315138;
    v51 = sub_21E426648(v47, v46, &v53);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_21E3EB000, v48, v42, "%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x223D5BF10](v50, -1, -1);
    MEMORY[0x223D5BF10](v49, -1, -1);
  }

  else
  {
  }

  [v4 setPairedSmartDialogViewForBackground_];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.searchUIBackgroundColorUpdateSuccessful(_:)(Swift::Bool a1)
{
  if (a1)
  {
    if (*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) == 2)
    {
      *(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) = 3;
    }

    else
    {
      if (*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState))
      {
        return;
      }

      *(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) = 1;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) = 0;
  }

  sub_21E4CF000();
}

id sub_21E4C45DC(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for SiriSharedUIDropletContainerView(0);

  v3 = sub_21E4DD078();

  return v3;
}

double sub_21E4C4648(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  *(a1 + *a4) = sub_21E4DD088();

  return result;
}

void sub_21E4C4880(uint64_t a1)
{
  v2 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView;
  v3 = *&v1[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultView];
  if (!v3)
  {
    return;
  }

  v5 = v3;
  v6 = [v1 fluidDismissalManager];
  v7 = [*&v6[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_fluidDismissalGesture] _panGestureRecognizer];

  [v5 addGestureRecognizer_];
  v8 = *&v1[v2];
  if (!v8 || a1 != 0)
  {
    return;
  }

  v29 = v8;
  v10 = [v1 snippetBackgroundView];
  if (!v10)
  {
    v15 = v29;
LABEL_25:

    return;
  }

  v28 = v10;
  v11 = *&v29[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  v12 = v11;
  v13 = [v1 pairedSmartDialogViewForBackground];
  v14 = v13;
  if (v11)
  {
    if (!v13)
    {

      goto LABEL_24;
    }

    if (v14 != v12)
    {

LABEL_24:
      v15 = v28;
      goto LABEL_25;
    }
  }

  else if (v13)
  {

    goto LABEL_24;
  }

  v16 = *&v29[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
  *&v29[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView] = v28;
  v17 = v28;
  sub_21E4D8CE4(v16);

  [v1 setSnippetBackgroundView_];
  [v1 setPairedSmartDialogViewForBackground_];
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v18 = sub_21E4DBCC8();
  __swift_project_value_buffer(v18, qword_280C14558);
  v19 = sub_21E4DD1F8();
  v32 = 0x6956746C75736572;
  v33 = 0xEA00000000007765;
  v20 = sub_21E45C20C(0);
  if (v21)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v20);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("ted glass SDF portal mask." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000004ALL, 0x800000021E4F3280);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v23 = v32;
  v22 = v33;
  v24 = sub_21E4DBCB8();
  if (os_log_type_enabled(v24, v19))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v25 = 136315138;
    v27 = sub_21E426648(v23, v22, &v30);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_21E3EB000, v24, v19, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x223D5BF10](v26, -1, -1);
    MEMORY[0x223D5BF10](v25, -1, -1);
  }

  else
  {
  }
}

void SiriSharedUISystemAssistantExperienceContainerView.frame.setter()
{
  v3.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  objc_msgSendSuper2(&v3, sel_setFrame_);
  v1 = [v0 gradientLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v5 = CGRectInset(v4, -30.0, -30.0);
    [v2 setFrame_];
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.safeAreaInsetsDidChange()()
{
  v1.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  objc_msgSendSuper2(&v1, sel_safeAreaInsetsDidChange);
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.layoutSubviews()()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968, &qword_21E4E5240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v376 - v6;
  v390.receiver = v0;
  v390.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  objc_msgSendSuper2(&v390, sel_layoutSubviews);
  v8 = [v0 suggestionsDropletView];
  v9 = &selRef_setResultViewFromLoading_;
  [v0 bringSubviewToFront_];

  v10 = [v0 dismissedAnimationSuggestionsViews];
  v385 = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v11 = sub_21E4DD088();

  if (v11 >> 62)
  {
    v12 = sub_21E4DD488();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    goto LABEL_273;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D5B080](i, v11);
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    [v0 bringSubviewToFront_];
  }

LABEL_10:

  v16 = [v0 textFieldView];
  v17 = sub_21E4DD158();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v376[0] = v17;
  v376[1] = v18 + 56;
  v377 = v19;
  (v19)(v7, 1, 1);
  v20 = sub_21E4DD128();
  v11 = v0;
  v9 = &selRef_displayLinkWithTarget_selector_;
  v378 = v20;
  if (v16)
  {
    v20 = v16;
    v21 = sub_21E4DD118();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v11;
    v22[5] = v20;
    sub_21E46011C(0, 0, v7, &unk_21E4E96F8, v22);

    [v20 frame];
    [v11 setTextFieldHeight_];
    v24 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    swift_beginAccess();
    *(v20 + v24) = 1;
  }

  else
  {
    v25 = sub_21E4DD118();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v11;
    sub_21E46011C(0, 0, v7, &unk_21E4E96A0, v26);
  }

  if (!*MEMORY[0x277D76620])
  {
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
    return;
  }

  IsLandscape = UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]);
  v29 = 0.0;
  v30 = &unk_278355000;
  v381 = v7;
  if (!IsLandscape || SiriSharedUIDeviceIsPad())
  {
LABEL_29:
    v41 = [v11 v30[476]];
    v10 = sub_21E4DD088();

    if (v10 >> 62)
    {
      goto LABEL_225;
    }

    v42 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_31;
  }

  v31 = [v11 suggestionsViews];
  v32 = sub_21E4DD088();

  if (v32 >> 62)
  {
    goto LABEL_279;
  }

  v20 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (2)
  {
    if (!v20)
    {
      goto LABEL_29;
    }

    v9 = 0;
    v7 = &qword_280C158D8;
    while (1)
    {
      v10 = [v11 v30[476]];
      v33 = sub_21E4DD088();

      if ((v33 & 0xC000000000000001) == 0)
      {
        break;
      }

      v34 = MEMORY[0x223D5B080](v9, v33);
LABEL_25:
      v35 = v34;

      v36 = [v11 originalViewSizeDict];
      type metadata accessor for CGSize(0);
      sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
      v37 = sub_21E4DCE98();

      if (*(v37 + 16) && (v38 = sub_21E4B16E4(v35), (v39 & 1) != 0))
      {
        v1 = *(*(v37 + 56) + 16 * v38);

        [v11 suggestionSpacing];
        v29 = v29 + v1 + v40;
      }

      else
      {
      }

      ++v9;
      v30 = &unk_278355000;
      if (v20 == v9)
      {
        goto LABEL_29;
      }
    }

    if (v9 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v33 + 8 * v9 + 32);
      goto LABEL_25;
    }

LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    v42 = COERCE_DOUBLE(sub_21E4DD488());

    if ((*&v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_227;
    }

LABEL_31:
    v9 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    if (v42 == 0.0)
    {
LABEL_122:
      MinX = 0.0;
      IsPad = SiriSharedUIDeviceIsPad();
      v130 = 0.0;
      v7 = v381;
      if (!IsPad && (*(v11 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
      {
        if (!*MEMORY[0x277D76620])
        {
          goto LABEL_284;
        }

        if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
        {
          [v11 landscapeTopPadding];
        }

        else
        {
          [v11 safeAreaInsets];
        }

        v130 = v131;
      }

      v132 = [v11 fluidDismissalManager];
      sub_21E45EB1C(v130);
      v1 = v133;

      v134 = [v11 previousResultView];
      v135 = &selRef_setResultViewFromLoading_;
      if (v134)
      {
        v136 = v134;
        if ([v11 loadingViewFromResult])
        {
LABEL_134:

          goto LABEL_136;
        }

        v137 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
        swift_beginAccess();
        if (*(v136 + v137) == 1)
        {
          sub_21E4D45AC();
          goto LABEL_134;
        }

        [v136 frame];
        Height = CGRectGetHeight(v396);

        MinX = v1 + Height;
      }

LABEL_136:
      v30 = &unk_278355000;
      v139 = [v11 resultView];
      if (!v139)
      {
        goto LABEL_178;
      }

      v20 = v139;
      v140 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
      swift_beginAccess();
      if (*(v20 + v140) == 1)
      {
        sub_21E4D45AC();
        v377(v7, 1, 1, v376[0]);
        v141 = v11;
        v142 = sub_21E4DD118();
        v143 = swift_allocObject();
        v144 = MEMORY[0x277D85700];
        v143[2] = v142;
        v143[3] = v144;
        v143[4] = v141;
        sub_21E46011C(0, 0, v7, &unk_21E4E96E8, v143);

LABEL_177:
        v135 = &selRef_setResultViewFromLoading_;
LABEL_178:
        if (MinX > v1)
        {
          v1 = MinX;
        }

        goto LABEL_180;
      }

      v145 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState;
      if (*(v11 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) > 1u)
      {
        if (*(v11 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState) != 2)
        {
          [v11 bounds];
          v172 = v171 * 0.5;
          [v11 resultSize];
          v174 = v173 * 0.5;
          if ([v11 isFirstSnippet])
          {
            v175 = 0;
          }

          else
          {
            v193 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
            swift_beginAccess();
            v175 = *(v20 + v193) != 1;
          }

          v194 = v172 - v174;
          v195 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
          swift_beginAccess();
          *(v20 + v195) = v175;
          [v11 setIsFirstSnippet_];
          v196 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
          swift_beginAccess();
          *(v20 + v196) = 1;
          if (*(v11 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) == 1)
          {
            [v11 resultSize];
            v198 = v197;
            [v11 bounds];
            if (v198 < CGRectGetHeight(v397))
            {
              [v11 bounds];
              v199 = CGRectGetHeight(v398);
              [v11 resultSize];
              v1 = (v199 - v200) * 0.5;
            }
          }

          [v11 resultSize];
          v202 = v201;
          [v11 resultSize];
          sub_21E4C87D8(v194, v1, v202, v203);
          v4 = v204;
          MinY = v205;
          v207 = v206;
          v29 = v208;
          v209 = [v11 snippetSuggestionPageantView];
          if (v209)
          {
            v210 = v209;
            [v210 frame];
            v384 = v211;
            v399.origin.x = v4;
            v399.origin.y = MinY;
            v399.size.width = v207;
            v399.size.height = v29;
            v212 = MinX;
            v213 = v29;
            v214 = v207;
            v215 = MinY;
            v216 = v4;
            v217 = v1 + CGRectGetHeight(v399) + 10.0;
            [v210 frame];
            v219 = v218;
            [v210 frame];
            v220 = v217;
            v4 = v216;
            MinY = v215;
            v207 = v214;
            v29 = v213;
            MinX = v212;
            sub_21E4C87D8(v384, v220, v219, v221);
            [v210 setFrame_];
          }

          v222 = [v11 resultView];
          if (v222)
          {
            v223 = v222;
            [v222 setFrame_];
            v377(v7, 1, 1, v376[0]);
            v224 = v11;
            v225 = sub_21E4DD118();
            v226 = swift_allocObject();
            v227 = MEMORY[0x277D85700];
            *(v226 + 16) = v225;
            *(v226 + 24) = v227;
            *(v226 + 32) = v224;
            *(v226 + 40) = v4;
            *(v226 + 48) = MinY;
            *(v226 + 56) = v207;
            *(v226 + 64) = v29;
            sub_21E46011C(0, 0, v7, &unk_21E4E96C0, v226);
          }

          v7 = &selRef_displayLinkWithTarget_selector_;
          [v20 setAlpha_];
          sub_21E4C8908();
          v400.origin.x = v4;
          v400.origin.y = MinY;
          v400.size.width = v207;
          v400.size.height = v29;
          v1 = v1 + CGRectGetHeight(v400);
          [v20 setNeedsLayout];
          [v20 layoutIfNeeded];
          v228 = [v11 previousResultView];
          if (v228)
          {
            v229 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
            v9 = 1;
            v230 = v228;
            swift_beginAccess();
            v230[v229] = 1;
            v231 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
            swift_beginAccess();
            v230[v231] = 0;
            [v20 frame];
            [v230 setFrame_];
            [v230 setNeedsLayout];
            [v230 layoutIfNeeded];
            [v230 setAlpha_];

            v135 = &selRef_setResultViewFromLoading_;
            if (v1 < 0.0)
            {
              v1 = 0.0;
            }

LABEL_180:
            v232 = [v11 v30[475]];
            if (!v232 && (v232 = [v11 previousResultView]) == 0 || (v232, objc_msgSend(v11, v135[5])))
            {
              [v11 loadingSpacing];
              v1 = v1 - v233;
            }

            v234 = [v11 loadingViews];
            v10 = sub_21E4DD088();

            if (v10 >> 62)
            {
LABEL_227:
              v235 = sub_21E4DD488();
              if (v235)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v235 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v235)
              {
LABEL_186:
                if (v235 < 1)
                {
                  goto LABEL_274;
                }

                v236 = 0;
                v384 = *&OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient;
                v4 = 0.0;
                v29 = 0.5;
                do
                {
                  if ((v10 & 0xC000000000000001) != 0)
                  {
                    v237 = MEMORY[0x223D5B080](v236, v10);
                  }

                  else
                  {
                    v237 = *(v10 + 8 * v236 + 32);
                  }

                  v238 = v237;
                  v30 = [v11 originalViewSizeDict];
                  type metadata accessor for CGSize(0);
                  sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
                  v239 = sub_21E4DCE98();

                  if (*(v239 + 16) && (v240 = sub_21E4B16E4(v238), (v241 & 1) != 0))
                  {
                    v242 = (*(v239 + 56) + 16 * v240);
                    MinY = *v242;
                    MinX = v242[1];

                    v243 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
                    swift_beginAccess();
                    v238[v243] = 1;
                    [v11 bounds];
                    v245 = v244;
                    [v11 loadingSpacing];
                    if (*(v11 + *&v384) == 1)
                    {
                      [v11 bounds];
                      v248 = (v247 - MinX) * 0.5;
                    }

                    else
                    {
                      v248 = v1 + v246;
                    }

                    [v238 setFrame_];
                    v249 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
                    swift_beginAccess();
                    if (v238[v249] == 1)
                    {
                      [*&v238[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] removeFromSuperview];
                      sub_21E4D45AC();
                    }

                    else
                    {
                      [v11 loadingSpacing];
                      v4 = v4 + MinX + v250;
                      v251 = *&v238[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
                      if (v251)
                      {
                        v252 = v251;
                        [v252 setAlpha_];
                      }
                    }
                  }

                  else
                  {
                  }

                  ++v236;
                }

                while (v235 != v236);
                goto LABEL_229;
              }
            }

            v4 = 0.0;
LABEL_229:

            v287 = [v11 loadingViews];
            v10 = sub_21E4DD088();

            v7 = &selRef_displayLinkWithTarget_selector_;
            if (v10 >> 62)
            {
              v288 = sub_21E4DD488();
            }

            else
            {
              v288 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v9 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
            if (!v288)
            {

              goto LABEL_242;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              goto LABEL_275;
            }

            if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v289 = *(v10 + 32);
              goto LABEL_235;
            }

            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            v20 = sub_21E4DD488();

            if (v20 < 0)
            {
              __break(1u);
LABEL_281:
              __break(1u);
LABEL_282:
              __break(1u);
              goto LABEL_283;
            }

            continue;
          }

          goto LABEL_176;
        }

        if ([v11 shouldPreserveResultSpace])
        {
          sub_21E4B5BE0(v20);
          v157 = [v11 previousResultView];
          [v11 setResultView_];

          [v11 previousResultSize];
          [v11 setResultSize_];
          [v11 setPreviousResultView_];
          [v11 setPreviousResultSize_];
          [v11 setShouldPreserveResultSpace_];

          *(v11 + v145) = 3;
          return;
        }

        v176 = [v11 previousResultView];
        if (!v176)
        {
LABEL_176:

          goto LABEL_177;
        }

        v9 = v176;
        [v176 frame];
        v178 = v177;
        v29 = v179;
        MinY = v180;
        v182 = v181;
        v183 = [v11 resultView];
        if (v183)
        {
          v184 = v183;
          [v183 setFrame_];
          v377(v7, 1, 1, v376[0]);
          v185 = v11;
          v186 = sub_21E4DD118();
          v187 = swift_allocObject();
          v188 = MEMORY[0x277D85700];
          *(v187 + 16) = v186;
          *(v187 + 24) = v188;
          *(v187 + 32) = v185;
          *(v187 + 40) = v178;
          *(v187 + 48) = v29;
          *(v187 + 56) = MinY;
          *(v187 + 64) = v182;
          sub_21E46011C(0, 0, v7, &unk_21E4E96B0, v187);
        }

        v189 = *(v20 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView);
        if (!v189)
        {
          v189 = *(v20 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView);
        }

        v190 = v189;
        [v190 setAlpha_];
        v135 = &selRef_setResultViewFromLoading_;

        v191 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
        swift_beginAccess();
        *(v20 + v191) = 1;
        v192 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
        swift_beginAccess();
        *(v20 + v192) = 2;
      }

      else
      {
        if (!*(v11 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewState))
        {
          v146 = [v11 originalViewSizeDict];
          type metadata accessor for CGSize(0);
          sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
          v147 = sub_21E4DCE98();

          if (*(v147 + 16))
          {
            v148 = sub_21E4B16E4(v20);
            v135 = &selRef_setResultViewFromLoading_;
            if (v149)
            {
              v150 = (*(v147 + 56) + 16 * v148);
              v151 = *v150;
              v44 = v150[1];

              v152 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
              swift_beginAccess();
              *(v20 + v152) = 0;
              [v11 bounds];
              MinY = v153 * 0.5 - v151 * 0.5;
              LODWORD(v152) = [v11 resultViewFromLoading];
              v154 = [v11 previousResultView];
              v9 = v154;
              if (!v152)
              {
                if (v154)
                {
                  [v154 frame];
                  v254 = v253;
                  MinY = v255;
                  v257 = v256;
                  v29 = v258;
                  v259 = [v11 resultView];
                  if (v259)
                  {
                    v260 = v259;
                    [v259 setFrame_];
                    v377(v7, 1, 1, v376[0]);
                    v261 = v11;
                    v262 = sub_21E4DD118();
                    v263 = swift_allocObject();
                    v264 = MEMORY[0x277D85700];
                    *(v263 + 16) = v262;
                    *(v263 + 24) = v264;
                    *(v263 + 32) = v261;
                    v135 = &selRef_setResultViewFromLoading_;
                    *(v263 + 40) = v254;
                    *(v263 + 48) = MinY;
                    *(v263 + 56) = v257;
                    *(v263 + 64) = v29;
                    sub_21E46011C(0, 0, v7, &unk_21E4E96D0, v263);
                  }
                }

                else
                {
                  v265 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
                  swift_beginAccess();
                  *(v20 + v265) = 1;
                  [v11 resultLoadingAnimationDistanceY];
                  v29 = v266;
                  v267 = [v11 resultView];
                  if (v267)
                  {
                    v268 = v1 + v29;
                    v269 = v267;
                    [v267 setFrame_];
                    v377(v7, 1, 1, v376[0]);
                    v270 = v11;
                    v271 = sub_21E4DD118();
                    v272 = swift_allocObject();
                    v273 = MEMORY[0x277D85700];
                    *(v272 + 16) = v271;
                    *(v272 + 24) = v273;
                    *(v272 + 32) = v270;
                    v135 = &selRef_setResultViewFromLoading_;
                    *(v272 + 40) = MinY;
                    *(v272 + 48) = v268;
                    *(v272 + 56) = v151;
                    *(v272 + 64) = v44;
                    sub_21E46011C(0, 0, v7, &unk_21E4E96C8, v272);
                  }

                  v1 = v44;
                }

                goto LABEL_178;
              }

              if (v154)
              {
                v155 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
                swift_beginAccess();
                v156 = &unk_27CEC6000;
                if (*(v9 + v155))
                {
                }

                else
                {
                  [v11 loadingSpacing];
                  v275 = v274;

                  v1 = MinX + v275;
                }
              }

              else
              {
LABEL_207:
                v156 = &unk_27CEC6000;
              }

              v276 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
              swift_beginAccess();
              *(v20 + v276) = 1;
              if (*(v11 + v156[289]) == 1)
              {
                [v11 bounds];
                v1 = (v277 - v44) * 0.5;
              }

              [v20 frame];
              v279 = v278;
              [v20 frame];
              v29 = v280;
              v281 = [v11 v30[475]];
              if (v281)
              {
                v282 = v281;
                [v281 setFrame_];
                v377(v7, 1, 1, v376[0]);
                v283 = v11;
                v284 = sub_21E4DD118();
                v285 = swift_allocObject();
                v286 = MEMORY[0x277D85700];
                *(v285 + 16) = v284;
                *(v285 + 24) = v286;
                *(v285 + 32) = v283;
                *(v285 + 40) = MinY;
                *(v285 + 48) = v1;
                *(v285 + 56) = v279;
                *(v285 + 64) = v29;
                sub_21E46011C(0, 0, v7, &unk_21E4E96D8, v285);
              }

              v1 = v44 + v1;
              goto LABEL_177;
            }

LABEL_157:

            goto LABEL_178;
          }

          goto LABEL_156;
        }

        v158 = [v11 originalViewSizeDict];
        type metadata accessor for CGSize(0);
        sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
        v159 = sub_21E4DCE98();

        if (!*(v159 + 16))
        {
LABEL_156:

          goto LABEL_176;
        }

        v160 = sub_21E4B16E4(v20);
        v135 = &selRef_setResultViewFromLoading_;
        if ((v161 & 1) == 0)
        {
          goto LABEL_157;
        }

        v162 = (*(v159 + 56) + 16 * v160);
        v163 = *v162;
        v29 = v162[1];

        [v11 bounds];
        MinY = v164;
        v165 = [v11 resultView];
        if (v165)
        {
          MinY = MinY * 0.5 - v163 * 0.5;
          v166 = v165;
          [v165 setFrame_];
          v377(v7, 1, 1, v376[0]);
          v167 = v11;
          v168 = sub_21E4DD118();
          v169 = swift_allocObject();
          v170 = MEMORY[0x277D85700];
          *(v169 + 16) = v168;
          *(v169 + 24) = v170;
          *(v169 + 32) = v167;
          v135 = &selRef_setResultViewFromLoading_;
          *(v169 + 40) = MinY;
          *(v169 + 48) = MinX - v29;
          *(v169 + 56) = v163;
          *(v169 + 64) = v29;
          sub_21E46011C(0, 0, v7, &unk_21E4E96B8, v169);
        }
      }

      v1 = MinX;
      goto LABEL_178;
    }

    break;
  }

  v7 = 0;
  v380 = "calculateSuggestionsFrameMinY()";
  v382 = "calculateSuggestionsFrameMinY()" & 0x2F00000000000000;
  v383 = 0x800000021E4F1830;
  v44 = 0.0;
  *&v43 = 136315138;
  v379 = v43;
  v4 = 0.5;
  v45 = 0.0;
  v384 = v42;
  while (1)
  {
    v46 = [v11 v30[476]];
    v47 = sub_21E4DD088();

    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x223D5B080](v7, v47);
    }

    else
    {
      if (v7 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_207;
      }

      v48 = *(v47 + 8 * v7 + 32);
    }

    v20 = v48;

    v49 = [v11 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v50 = sub_21E4DCE98();

    if (*(v50 + 16))
    {
      v51 = sub_21E4B16E4(v20);
      if (v52)
      {
        break;
      }
    }

LABEL_34:
    if (*&v42 == ++v7)
    {
      goto LABEL_122;
    }
  }

  v53 = (*(v50 + 56) + 16 * v51);
  v1 = *v53;
  MinX = v53[1];

  v10 = [v11 v30[476]];
  v54 = sub_21E4DD088();

  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x223D5B080](v7, v54);
  }

  else
  {
    if (v7 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_218;
    }

    v55 = *(v54 + 8 * v7 + 32);
  }

  v56 = v55;

  [v11 bringSubviewToFront_];

  v57 = [v11 textFieldView];
  if (v57)
  {
    v58 = v57;
    [v57 frame];
    MinY = CGRectGetMinY(v392);
  }

  else
  {
    [v11 bounds];
    v60 = v59;
    [v11 textFieldHeight];
    v62 = v61;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v63 = sub_21E4DBCC8();
    __swift_project_value_buffer(v63, qword_280C14558);
    v20 = sub_21E4DD218();
    v388 = 0xD00000000000001FLL;
    v389 = v383;
    v64 = sub_21E45C20C(0);
    if (v65)
    {
      v386 = 32;
      v387 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v64);

      MEMORY[0x223D5ACB0](v386, v387);
    }

    if (v382 != 0x2000000000000000)
    {
      v386 = 32;
      v387 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000053, v380 | 0x8000000000000000);
      MEMORY[0x223D5ACB0](v386, v387);
    }

    v67 = v388;
    v66 = v389;
    v68 = sub_21E4DBCB8();
    if (os_log_type_enabled(v68, v20))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v386 = v70;
      *v69 = v379;
      v71 = sub_21E426648(v67, v66, &v386);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_21E3EB000, v68, v20, "%s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      v72 = v70;
      v9 = &OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
      MEMORY[0x223D5BF10](v72, -1, -1);
      MEMORY[0x223D5BF10](v69, -1, -1);
    }

    else
    {
    }

    v30 = &unk_278355000;
    MinY = v60 - v62;
  }

  v73 = 0.0;
  if (SiriSharedUIDeviceIsPad())
  {
    [v11 textFieldBottomPaddingPad];
    v73 = v74;
  }

  [v11 bottomContentInset];
  if (v75 <= 0.0)
  {
    [v11 safeAreaInsets];
    v73 = v73 + v76;
  }

  v77 = [v11 suggestionsExpanded];
  v78 = *MEMORY[0x277D76620];
  if (v77)
  {
    if (!v78)
    {
      goto LABEL_282;
    }

    if (UIInterfaceOrientationIsLandscape([v78 activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
    {
      [v11 bounds];
      v100 = v99;
      v101 = [v11 v30[476]];
      v10 = sub_21E4DD088();

      if ((v10 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x223D5B080](v7, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_272;
        }

        v102 = *(v10 + 8 * v7 + 32);
      }

      v103 = v102;

      [v11 horizontalContentInset];
      v105 = (v100 - v29) * 0.5 + v45 + v104;
      [v11 suggestionSpacing];
      [v103 setFrame_];

      [v11 suggestionSpacing];
      v45 = v45 + v1 + v107;
    }

    else
    {
      v79 = [v11 v30[476]];
      v10 = sub_21E4DD088();

      if ((v10 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x223D5B080](v7, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_222;
        }

        v80 = *(v10 + 8 * v7 + 32);
      }

      v81 = v80;

      [v11 horizontalContentInset];
      v83 = v82;
      MinY = MinY - v44;
      [v11 suggestionSpacing];
      [v81 setFrame_];

      [v11 suggestionSpacing];
      v44 = v44 + MinX + v85;
    }

    v10 = [v11 v30[476]];
    v108 = sub_21E4DD088();

    if ((v108 & 0xC000000000000001) != 0)
    {
      v109 = MEMORY[0x223D5B080](v7, v108);
    }

    else
    {
      if (v7 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_219;
      }

      v109 = *(v108 + 8 * v7 + 32);
    }

    v110 = v109;

    v111 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
    swift_beginAccess();
    v110[v111] = 0;

    v10 = [v11 v30[476]];
    v112 = sub_21E4DD088();

    if ((v112 & 0xC000000000000001) != 0)
    {
      v113 = MEMORY[0x223D5B080](v7, v112);
    }

    else
    {
      if (v7 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_220;
      }

      v113 = *(v112 + 8 * v7 + 32);
    }

    v114 = v113;

    v115 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
    swift_beginAccess();
    v114[v115] = 1;

    v10 = [v11 v30[476]];
    v116 = sub_21E4DD088();

    if ((v116 & 0xC000000000000001) != 0)
    {
      v117 = MEMORY[0x223D5B080](v7, v116);
    }

    else
    {
      if (v7 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_221;
      }

      v117 = *(v116 + 8 * v7 + 32);
    }

    v118 = v117;

    v119 = *&v118[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
    v86 = v119;

    if (!v119)
    {
      goto LABEL_99;
    }

    [v86 setAlpha_];
LABEL_98:

LABEL_99:
    v42 = v384;
    goto LABEL_34;
  }

  if (!v78)
  {
    goto LABEL_281;
  }

  if (UIInterfaceOrientationIsLandscape([v78 activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
  {
    v120 = [v11 textFieldView];
    v121 = [v11 v30[476]];
    v20 = sub_21E4DD088();

    v122 = v20 & 0xC000000000000001;
    if (!v120)
    {
      if (v122)
      {
        v126 = MEMORY[0x223D5B080](v7, v20);
      }

      else
      {
        if (v7 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_278;
        }

        v126 = *(v20 + 8 * v7 + 32);
      }

      v97 = v126;

      [v11 bounds];
      MinX = v127 * 0.5;
      goto LABEL_109;
    }

    if (v122)
    {
      v123 = MEMORY[0x223D5B080](v7, v20);
    }

    else
    {
      if (v7 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_277;
      }

      v123 = *(v20 + 8 * v7 + 32);
    }

    v124 = v123;

    [v120 frame];
    MinX = CGRectGetMinX(v394);
    [v120 frame];
    MinY = CGRectGetMinY(v395);
    [v11 textFieldHeight];
    [v124 setFrame_];

    goto LABEL_99;
  }

  v86 = [v11 textFieldView];
  v10 = [v11 v30[476]];
  v20 = sub_21E4DD088();

  v87 = v20 & 0xC000000000000001;
  if (v86)
  {
    if (v87)
    {
      v88 = MEMORY[0x223D5B080](v7, v20);
    }

    else
    {
      if (v7 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_223;
      }

      v88 = *(v20 + 8 * v7 + 32);
    }

    v89 = v88;

    [v11 horizontalContentInset];
    MinX = v90;
    [v86 frame];
    MinY = CGRectGetMinY(v393);
    [v11 textFieldHeight];
    [v89 setFrame_];

    v20 = [v11 v30[476]];
    v10 = sub_21E4DD088();

    if ((v10 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x223D5B080](v7, v10);
    }

    else
    {
      if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_224;
      }

      v92 = *(v10 + 8 * v7 + 32);
    }

    v20 = v92;

    v93 = *(v20 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
    v94 = v93;

    if (v93)
    {
      [v11 textFieldHeight];
      [v94 setBounds_];
    }

    goto LABEL_98;
  }

  if (v87)
  {
    v96 = MEMORY[0x223D5B080](v7, v20);
    goto LABEL_82;
  }

  if (v7 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v96 = *(v20 + 8 * v7 + 32);
LABEL_82:
    v97 = v96;

    [v11 horizontalContentInset];
    MinX = v98;
LABEL_109:
    MinY = MinY - v73;
    [v11 textFieldHeight];
    [v97 setFrame_];

    goto LABEL_34;
  }

  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  v289 = MEMORY[0x223D5B080](0, v10);
LABEL_235:
  v290 = v289;

  v291 = [v11 previousResultView];
  if (v291)
  {
    v292 = v291;
    if ([v11 loadingViewFromResult])
    {
      [v11 defaultLoadingPillSize];
      v294 = v293 * 0.5;
      [v290 _setContinuousCornerRadius_];
      [*&v290[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] _setContinuousCornerRadius_];
      v295 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
      swift_beginAccess();
      [*&v290[v295] _setContinuousCornerRadius_];
      [*&v290[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView] _setContinuousCornerRadius_];
      [*&v290[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] _setContinuousCornerRadius_];
      [*&v290[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] _setContinuousCornerRadius_];
      [*&v290[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] _setContinuousCornerRadius_];
      v296 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
      swift_beginAccess();
      v292[v296] = 1;
      v297 = *v9;
      swift_beginAccess();
      v292[v297] = 0;
      [v290 *(v7 + 280)];
      v299 = v298;
      v301 = v300;
      v303 = v302;
      v305 = v304;
      [v292 *(v7 + 280)];
      v306 = CGRectGetWidth(v401) * 0.5;
      v402.origin.x = v299;
      v402.origin.y = v301;
      v402.size.width = v303;
      v402.size.height = v305;
      v307 = v306 - CGRectGetWidth(v402) * 0.5;
      v403.origin.x = v299;
      v403.origin.y = v301;
      v403.size.width = v303;
      v403.size.height = v305;
      Width = CGRectGetWidth(v403);
      v404.origin.x = v299;
      v404.origin.y = v301;
      v404.size.width = v303;
      v404.size.height = v305;
      v309 = CGRectGetHeight(v404);
      v310 = &v292[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_pillMaskFrame];
      *v310 = v307;
      *(v310 + 1) = 0;
      *(v310 + 2) = Width;
      *(v310 + 3) = v309;
      v310[32] = 0;
      v311 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
      swift_beginAccess();
      v405.origin.x = v299;
      v405.origin.y = v301;
      v405.size.width = v303;
      v405.size.height = v305;
      v406 = CGRectInset(v405, *&v292[v311], *&v292[v311]);
      [v292 setFrame_];
      [v292 setNeedsLayout];
      [v292 layoutIfNeeded];
      v312 = *&v292[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
      [v312 setAlpha_];
    }
  }

  else
  {
  }

LABEL_242:
  v313 = [v11 textFieldLoadingView];
  if (v313)
  {
    v314 = v313;
    v315 = [v11 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v316 = sub_21E4DCE98();

    if (*(v316 + 16) && (v317 = sub_21E4B16E4(v314), (v318 & 1) != 0))
    {
      v319 = *(v316 + 56) + 16 * v317;
      v320 = *v319;
      v321 = *(v319 + 8);

      [v11 bounds];
      v323 = v322 * 0.5 - v320 * 0.5;
      [v11 bounds];
      v325 = v324;
      [v11 textFieldHeight];
      v327 = v325 - v326;
      [v11 bottomContentInset];
      v329 = v327 - v328;
      [v11 safeAreaInsets];
      [v314 setFrame_];
      v331 = *&v314[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
      if (v331)
      {
        v332 = v331;
        [v332 setAlpha_];
      }
    }

    else
    {
    }
  }

  v333 = [v11 voiceLoadingView];
  if (v333)
  {
    v334 = v333;
    v335 = [v11 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v336 = sub_21E4DCE98();

    if (*(v336 + 16) && (v337 = sub_21E4B16E4(v334), (v338 & 1) != 0))
    {
      v339 = v1 + v4;
      v340 = *(v336 + 56) + 16 * v337;
      v341 = *v340;
      v342 = *(v340 + 8);

      [v11 bounds];
      v344 = v343 * 0.5 - v341 * 0.5;
      [v11 voiceLoadingAnimationDistanceY];
      v346 = v339 + v345;
      [v11 bounds];
      v348 = v347;
      [v11 textFieldHeight];
      v350 = v348 - v349;
      [v11 minVoiceLoadingAnimationDistanceFromTextField];
      v352 = v350 - v351;
      [v11 bottomContentInset];
      v354 = v352 - v353;
      if (v354 >= v346)
      {
        v355 = v346;
      }

      else
      {
        v355 = v354;
      }

      v356 = *v9;
      swift_beginAccess();
      v334[v356] = 1;
      [v334 setFrame_];
    }

    else
    {
    }
  }

  v357 = [v11 bottomFloatingButtonView];
  if (v357)
  {
    v358 = v357;
    v359 = [v11 originalViewSizeDict];
    type metadata accessor for CGSize(0);
    sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
    v360 = sub_21E4DCE98();

    if (*(v360 + 16) && (v361 = sub_21E4B16E4(v358), (v362 & 1) != 0))
    {
      v363 = (*(v360 + 56) + 16 * v361);
      v364 = *v363;
      v365 = v363[1];

      v366 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_removeOnNextLayoutPass;
      swift_beginAccess();
      if (*(v358 + v366))
      {
        sub_21E4D45AC();
      }

      else
      {
        [v11 textFieldHeight];
        if (v367 <= 0.0)
        {
          v368 = 24.0;
        }

        else
        {
          v368 = 12.0;
        }

        [v11 bounds];
        v370 = v369 - v364 - v368;
        [v11 bounds];
        v372 = v371;
        [v11 bottomContentInset];
        v374 = v372 - v373 - v365;
        [v11 textFieldHeight];
        [v358 setFrame_];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21E4C8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_21E4DD128();
  v5[9] = sub_21E4DD118();
  v7 = sub_21E4DD0F8();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_21E4C82E0, v7, v6);
}

uint64_t sub_21E4C82E0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewSnapshotManager);
  *(v0 + 96) = v2;

  [v1 frame];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_21E4C8378, v2, 0);
}

uint64_t sub_21E4C8378()
{
  sub_21E4A8158((v0 + 16));

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21E4C83E8, v1, v2);
}

uint64_t sub_21E4C83E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E4C8448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_21E4DD128();
  v4[8] = sub_21E4DD118();
  v6 = sub_21E4DD0F8();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_21E4C84E0, v6, v5);
}

uint64_t sub_21E4C84E0()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_textFieldViewSnapshotManager);
  *(v0 + 88) = v1;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;

  return MEMORY[0x2822009F8](sub_21E4C8570, v1, 0);
}

uint64_t sub_21E4C8570()
{
  sub_21E4A8158((v0 + 16));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21E4C85E0, v1, v2);
}

uint64_t sub_21E4C85E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E4C8640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_21E4DD128();
  v4[8] = sub_21E4DD118();
  v6 = sub_21E4DD0F8();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_21E4C86D8, v6, v5);
}

uint64_t sub_21E4C86D8()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewSnapshotManager);
  *(v0 + 88) = v1;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;

  return MEMORY[0x2822009F8](sub_21E4C8768, v1, 0);
}

uint64_t sub_21E4C8768()
{
  sub_21E4A8158((v0 + 16));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21E4D2A80, v1, v2);
}

void sub_21E4C87D8(double a1, double a2, double a3, double a4)
{
  if ((*(v4 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient) & 1) == 0)
  {
    [v4 bounds];
    v10 = (v9 - a2 + -16.0) * 0.666666667;
    [v4 userUtteranceViewHeight];
    v12 = v11 + v10;
    if (v12 < a4)
    {
      a4 = v12;
    }

    v13 = [v4 resultView];
    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
      v15 = v13;
      v16 = v14;

      if (v14)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          [v17 setCappedFrame_];
        }
      }
    }
  }
}

void sub_21E4C8908()
{
  v1 = v0;
  v2 = [v0 resultView];
  if (!v2)
  {
    return;
  }

  v3 = *&v2[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
  v4 = v2;
  v16 = v3;

  if (!v3)
  {
    return;
  }

  v5 = [v1 backgroundColorAsyncDict];
  sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
  sub_21E4D1674();
  v6 = sub_21E4DCE98();

  if (*(v6 + 16) && (v7 = sub_21E4B16A0(v16), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);

    if ((v9 & 1) == 0)
    {
      v11 = [v1 resultView];
      if (v11)
      {
        v12 = *&v11[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_snippetBackgroundView];
        if (v12)
        {
          v13 = *&v11[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView];
          v14 = v11;
          v15 = v12;
          [v13 setAlpha_];
          [v15 setAlpha_];
        }

        else
        {
        }
      }

      goto LABEL_11;
    }

    if (*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) == 1)
    {
      v10 = 3;
      goto LABEL_18;
    }

    if (!*(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState))
    {
      v10 = 2;
LABEL_18:
      *(v1 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_searchUIBackgroundState) = v10;
      sub_21E4CF000();
    }
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_21E4C8B28(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 56) = a8;
  sub_21E4DD128();
  *(v8 + 96) = sub_21E4DD118();
  v10 = sub_21E4DD0F8();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return MEMORY[0x2822009F8](sub_21E4C8BC8, v10, v9);
}

uint64_t sub_21E4C8BC8()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_resultViewSnapshotManager);
  *(v0 + 120) = v1;
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_21E4C8C54, v1, 0);
}

uint64_t sub_21E4C8C54()
{
  sub_21E4A8158((v0 + 16));

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21E4C8CC4, v1, v2);
}

uint64_t sub_21E4C8CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v8.super_class = SiriSharedUISystemAssistantExperienceContainerView;
  v4 = [(UIView_optional *)&v8 hitTest:with.value.super.isa withEvent:_.x, _.y];
  if (v4)
  {
    sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
    v5 = v4;
    v6 = v3;
    v7 = sub_21E4DD2F8();

    if (v7)
    {
    }
  }
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.setContinuerSuggestions(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_21E4DCBF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E4DCC18();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E4DCC38();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v138 = OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient;
  if (v2[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_isInAmbient])
  {
    return;
  }

  v122 = v17;
  v123 = &v121 - v15;
  v124 = v16;
  v129 = v5;
  v130 = v4;
  v131 = v14;
  v18 = [v2 snippetSuggestionPageantView];
  if (v18)
  {
    v19 = v18;
    [v18 removeFromSuperview];
  }

  v20 = type metadata accessor for SiriSharedUIDropletContainerView(0);
  v21 = sub_21E4DD078();
  [v2 setContinuerSuggestionsViews_];

  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_58;
  }

  for (a1._rawValue = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; a1._rawValue = v120)
  {
    v140 = v20;
    v125 = v11;
    v126 = v9;
    v127 = v7;
    v128 = v8;
    v23 = MEMORY[0x277D84F90];
    v142 = rawValue;
    v141 = a1._rawValue;
    if (!a1._rawValue)
    {
      break;
    }

    v24 = 0;
    v20 = (rawValue & 0xC000000000000001);
    v9 = rawValue & 0xFFFFFFFFFFFFFF8;
    v11 = 0xC044000000000000;
    while (1)
    {
      if (v20)
      {
        v25 = MEMORY[0x223D5B080](v24, rawValue);
      }

      else
      {
        if (v24 >= *(v9 + 16))
        {
          goto LABEL_57;
        }

        v25 = *(rawValue + 8 * v24 + 32);
      }

      v8 = v25;
      v26 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v2 bounds];
      CGRectGetWidth(v151);
      [v2 bounds];
      CGRectGetHeight(v152);
      CGPointMake();
      [v8 sizeThatFits_];
      v28 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_21E443D78(0, *(v23 + 2) + 1, 1, v23);
      }

      v30 = *(v23 + 2);
      v29 = *(v23 + 3);
      v7 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        v23 = sub_21E443D78((v29 > 1), v30 + 1, 1, v23);
      }

      *(v23 + 2) = v7;
      *&v23[8 * v30 + 32] = v28;
      [v8 frame];
      [v8 setFrame_];

      ++v24;
      a1._rawValue = v141;
      rawValue = v142;
      if (v26 == v141)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v120 = sub_21E4DD488();
    rawValue = a1._rawValue;
  }

LABEL_19:
  v31 = rawValue;
  v32 = [v2 resultView];
  if (v32)
  {
    if (a1._rawValue)
    {
      v121 = v32;
      v137 = objc_opt_self();
      v136 = objc_opt_self();
      if (a1._rawValue < 1)
      {
        __break(1u);
      }

      else
      {
        v33 = 0;
        v134 = *&v2[OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView];
        v34 = v31;
        v133 = v31 & 0xC000000000000001;
        v35 = &unk_278355000;
        v132 = *MEMORY[0x277CDA7B0];
        v135 = v23;
        do
        {
          v139 = v33;
          if (v133)
          {
            v37 = MEMORY[0x223D5B080](v33, v34);
          }

          else
          {
            v37 = v34[v33 + 4];
          }

          v38 = v37;
          v39 = [v2 traitCollection];
          [v39 userInterfaceStyle];

          v40 = objc_allocWithZone(type metadata accessor for SiriSharedUIStandardViewDropletMaterial());
          v41 = sub_21E4523C4(0);
          [v2 bounds];
          CGRectGetWidth(v153);
          [v2 bounds];
          CGRectGetHeight(v154);
          CGPointMake();
          [v38 sizeThatFits_];
          v43 = v42;
          v45 = v44;
          [v2 v35[490]];
          if (v46 >= v45)
          {
            [v2 v35[490]];
            v45 = v47;
          }

          [v2 v35[490]];
          if (v48 * 0.5 <= 28.0)
          {
            v49 = v48 * 0.5;
          }

          else
          {
            v49 = 28.0;
          }

          v50 = v2[v138];
          v51 = objc_allocWithZone(v140);
          v52 = v41;
          v143 = v38;
          v53 = sub_21E4D3568(v38, v52, 1, (v50 & 1) == 0, 0, v49);
          v54 = [v2 originalViewSizeDict];
          type metadata accessor for CGSize(0);
          sub_21E4D156C(&qword_280C158D8, type metadata accessor for SiriSharedUIDropletContainerView, MEMORY[0x277D85378]);
          v55 = sub_21E4DCE98();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v55;
          sub_21E44449C(v53, isUniquelyReferenced_nonNull_native, v43, v45);

          v57 = sub_21E4DCE88();

          [v2 setOriginalViewSizeDict_];

          v58 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView;
          [*&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentLightEffectView] setAlpha_];
          v59 = *&v53[v58];
          v60 = [v2 snippetsDropletView];
          v61 = v134;
          [v134 insertSubview:v59 belowSubview:v60];

          v62 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView;
          v63 = *&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shimmerEffectView];

          v64 = [v2 snippetsDropletView];
          [v61 insertSubview:v63 belowSubview:v64];

          v65 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
          swift_beginAccess();
          *&v53[v65] = 0;

          v66 = sub_21E4DCF68();
          v67 = [v137 animationWithKeyPath_];

          v68 = v67;
          [v68 setDuration_];
          v69 = [v136 functionWithName_];
          [v68 setTimingFunction_];

          v70 = sub_21E4DD1D8();
          [v68 setFromValue_];

          v71 = sub_21E4DD1D8();
          [v68 setToValue_];

          v72 = [v143 layer];
          v73 = sub_21E4DCF68();
          [v72 addAnimation:v68 forKey:v73];

          v74 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_shouldBlurUponTransition;
          swift_beginAccess();
          v53[v74] = 0;
          v75 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
          swift_beginAccess();
          v53[v75] = 1;
          v76 = [v53 layer];
          [v76 setMasksToBounds_];

          [v53 _setContinuousCornerRadius_];
          v77 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView;
          [*&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundView] _setContinuousCornerRadius_];
          v78 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
          swift_beginAccess();
          [*&v53[v78] _setContinuousCornerRadius_];
          [*&v53[v62] _setContinuousCornerRadius_];
          [*&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightRimEffectView] _setContinuousCornerRadius_];
          [*&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_latencyLightInnerEffectView] _setContinuousCornerRadius_];
          [*&v53[v58] _setContinuousCornerRadius_];
          [v53 setAlpha_];
          [*&v53[v77] setAlpha_];
          v79 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView;
          [*&v53[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView] setAlpha_];
          v80 = v53;
          v81 = [v2 continuerSuggestionsViews];
          v82 = sub_21E4DD088();

          aBlock = v82;
          MEMORY[0x223D5AD10]();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21E4DD0A8();
          }

          sub_21E4DD0D8();
          v83 = sub_21E4DD078();

          [v2 setContinuerSuggestionsViews_];

          v84 = *&v53[v79];
          if (v84)
          {
            type metadata accessor for SiriSharedUIAssistantSuggestionView();
            v85 = swift_dynamicCastClass();
            v36 = v139;
            v35 = &unk_278355000;
            if (v85)
            {
              v86 = v84;

              sub_21E421A48();
            }

            else
            {
            }
          }

          else
          {

            v36 = v139;
            v35 = &unk_278355000;
          }

          v33 = v36 + 1;
          v34 = v142;
        }

        while (v141 != v33);
        [v2 frame];
        v88 = [objc_allocWithZone(type metadata accessor for SiriSharedUIScrollablePageantView()) initWithFrame_];
        v89 = [v2 continuerSuggestionsViews];
        v90 = sub_21E4DD088();

        sub_21E48179C(v90);

        v91 = v88;
        v92 = v121;
        [v121 center];
        [v92 center];
        [v92 frame];
        [v91 frame];
        CGRectGetHeight(v155);
        CGPointMake();
        [v91 setCenter_];
        v93 = [v2 snippetsDropletView];
        [v93 addSubview_];

        v94 = [v2 snippetsDropletView];
        [v94 sendSubviewToBack_];

        [v2 setSnippetSuggestionPageantView_];
        v95 = 0.0;
        if (SiriSharedUIDeviceIsPad() || (v2[v138] & 1) != 0)
        {
          goto LABEL_51;
        }

        if (*MEMORY[0x277D76620])
        {
          if (UIInterfaceOrientationIsLandscape([*MEMORY[0x277D76620] activeInterfaceOrientation]) && !SiriSharedUIDeviceIsPad())
          {
            [v2 landscapeTopPadding];
          }

          else
          {
            [v2 safeAreaInsets];
          }

          v95 = v96;
LABEL_51:
          v97 = [v2 fluidDismissalManager];
          sub_21E45EB1C(v95);
          v99 = v98;

          [v91 frame];
          v101 = v100;

          v102 = sub_21E4DD078();

          [v2 setExposureStateIfInViewWithAvailableMaxWidth:v102 suggestionWidths:v101 suggestionsInset:20.0];

          if (SiriSharedUIReducedMotionEnabled())
          {
            v103 = 0.0;
          }

          else
          {
            v103 = 0.7;
          }

          v104 = [objc_opt_self() behaviorWithDampingRatio:0.65 response:v103];
          v105 = objc_opt_self();
          v106 = swift_allocObject();
          v106[2] = v91;
          v106[3] = v2;
          v106[4] = v92;
          v106[5] = v99;
          v148 = sub_21E4D2090;
          v149 = v106;
          aBlock = MEMORY[0x277D85DD0];
          v145 = 1107296256;
          v146 = sub_21E46C644;
          v147 = &block_descriptor_130;
          v107 = _Block_copy(&aBlock);
          v108 = v91;
          v109 = v104;
          v110 = v2;
          v143 = v92;

          [v105 _animateUsingSpringBehavior_tracking_animations_completion_];
          _Block_release(v107);

          SiriSharedUIReducedMotionEnabled();
          sub_21E43F008(0, &qword_280C14150, 0x277D85C78);
          v141 = sub_21E4DD278();
          v111 = v122;
          sub_21E4DCC28();
          v112 = v123;
          sub_21E4DCC88();
          v142 = *(v124 + 8);
          (v142)(v111, v131);
          v113 = swift_allocObject();
          *(v113 + 16) = v108;
          v148 = sub_21E4D20A0;
          v149 = v113;
          aBlock = MEMORY[0x277D85DD0];
          v145 = 1107296256;
          v146 = sub_21E46C644;
          v147 = &block_descriptor_136;
          v114 = _Block_copy(&aBlock);
          v115 = v108;

          v116 = v125;
          sub_21E4DCC08();
          aBlock = MEMORY[0x277D84F90];
          sub_21E4D156C(&qword_280C14250, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660, &unk_21E4E92A0);
          sub_21E42E3E8();
          v117 = v127;
          v118 = v130;
          sub_21E4DD358();
          v119 = v141;
          MEMORY[0x223D5AF00](v112, v116, v117, v114);
          _Block_release(v114);

          (*(v129 + 8))(v117, v118);
          (*(v126 + 8))(v116, v128);
          (v142)(v112, v131);
          return;
        }
      }

      __break(1u);
      return;
    }
  }
}

id sub_21E4CA238(void *a1, double a2, uint64_t a3, void *a4)
{
  [a1 frame];
  v8 = v7;
  [a4 frame];
  v9 = CGRectGetHeight(v15) + a2 + 10.0;
  [a1 frame];
  v11 = v10;
  [a1 frame];
  sub_21E4C87D8(v8, v9, v11, v12);

  return [a1 setFrame_];
}

double sub_21E4CA308(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_21E43F008(0, &qword_280C140A0, 0x277D75D18);
  v6 = sub_21E4DD088();
  v7 = a1;
  a4(v6);

  return result;
}

void sub_21E4CA38C(uint64_t a1, double a2, double a3)
{
  v7 = [v3 continuerSuggestionsViews];
  type metadata accessor for SiriSharedUIDropletContainerView(0);
  v8 = sub_21E4DD088();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

LABEL_23:
  v9 = sub_21E4DD488();
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D5B080](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v15 = *&v12[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView];
      if (v15)
      {
        type metadata accessor for SiriSharedUIAssistantSuggestionView();
        if (swift_dynamicCastClass())
        {
          break;
        }
      }

      ++v10;
      if (v14 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v16 = *(a1 + 32 + 8 * v10);
    if (v11 + v16 > a2)
    {

      goto LABEL_18;
    }

    v17 = v15;

    sub_21E421E18();

    v11 = v11 + v16 + a3;
    ++v10;
    if (v14 == v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.suggestionsMitose()()
{
  v1 = v0;
  v2 = [v0 suggestionsDropletView];
  v3 = [v2 layer];

  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB5C8();

  v37 = objc_opt_self();
  [v37 begin];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  aBlock[4] = sub_21E4D20C4;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_142;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  [v37 setCompletionBlock_];
  _Block_release(v5);
  v7 = sub_21E4DCF68();
  v8 = objc_opt_self();
  v9 = [v8 animationWithKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21E4E6FA0;
  v11 = MEMORY[0x277D83B88];
  *(v10 + 32) = 0;
  *(v10 + 56) = v11;
  *(v10 + 64) = 6;
  *(v10 + 120) = v11;
  *(v10 + 88) = v11;
  *(v10 + 96) = 0;
  v12 = sub_21E4DD078();

  [v9 setValues_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21E4E95E0;
  sub_21E43F008(0, &qword_280C14070, 0x277CCABB0);
  *(v13 + 32) = sub_21E4DD2C8();
  *(v13 + 40) = sub_21E4DD2C8();
  *(v13 + 48) = sub_21E4DD2C8();
  v14 = sub_21E4DD078();

  [v9 setKeyTimes_];

  v15 = v9;
  [v6 suggestionsViewSpringDuration];
  [v15 setDuration_];
  v16 = *MEMORY[0x277CDA7A8];
  v17 = objc_opt_self();
  v18 = [v17 functionWithName_];
  [v15 setTimingFunction_];

  v19 = [v6 suggestionsDropletView];
  v20 = [v19 layer];

  v21 = swift_dynamicCastClassUnconditional();
  v22 = [v15 keyPath];
  [v21 addAnimation:v15 forKey:v22];

  v23 = sub_21E4DCF68();
  v24 = [v8 animationWithKeyPath_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21E4E6FA0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5390, &qword_21E4E6960);
  *(v25 + 32) = &unk_282F808A0;
  *(v25 + 56) = v26;
  *(v25 + 64) = &unk_282F808E0;
  *(v25 + 120) = v26;
  *(v25 + 88) = v26;
  *(v25 + 96) = &unk_282F808A0;
  v27 = sub_21E4DD078();

  [v24 setValues_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21E4E95E0;
  *(v28 + 32) = sub_21E4DD2C8();
  *(v28 + 40) = sub_21E4DD2C8();
  *(v28 + 48) = sub_21E4DD2C8();
  v29 = sub_21E4DD078();

  [v24 setKeyTimes_];

  v30 = v24;
  [v30 setAdditive_];
  v31 = v30;
  [v6 suggestionsViewSpringDuration];
  [v31 setDuration_];
  v32 = [v17 functionWithName_];
  [v31 setTimingFunction_];

  v33 = [v6 suggestionsDropletView];
  v34 = [v33 layer];

  v35 = swift_dynamicCastClassUnconditional();
  v36 = [v31 keyPath];

  [v35 addAnimation:v31 forKey:v36];
  [v37 commit];
}

void sub_21E4CAC64(void *a1)
{
  v1 = [a1 suggestionsDropletView];
  v2 = [v1 layer];

  type metadata accessor for SiriSharedUIDropletLayer();
  swift_dynamicCastClassUnconditional();
  sub_21E4AB7CC();
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.reduceMotionCarousel(withDuration:isFirstSnippet:)(Swift::Float withDuration, Swift::Bool isFirstSnippet)
{
  v3 = v2;
  v6 = sub_21E4DCF68();
  v7 = [objc_opt_self() animationWithKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280, &unk_21E4E57F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E4E6FB0;
  v9 = MEMORY[0x277D839F8];
  v10 = 1.0;
  if (isFirstSnippet)
  {
    v10 = 0.0;
  }

  *(v8 + 32) = v10;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0;
  *(v8 + 88) = v9;
  *(v8 + 96) = 0;
  *(v8 + 152) = v9;
  *(v8 + 120) = v9;
  *(v8 + 128) = 0x3FF0000000000000;
  v11 = sub_21E4DD078();

  [v7 setValues_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0, &qword_21E4E6F40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21E4E8900;
  sub_21E43F008(0, &qword_280C14070, 0x277CCABB0);
  *(v12 + 32) = sub_21E4DD2C8();
  *(v12 + 40) = sub_21E4DD2C8();
  *(v12 + 48) = sub_21E4DD2C8();
  *(v12 + 56) = sub_21E4DD2C8();
  v13 = sub_21E4DD078();

  [v7 setKeyTimes_];

  v14 = v7;
  [v14 setDuration_];
  v15 = [objc_opt_self() functionWithName_];
  [v14 setTimingFunction_];

  v16 = [*(v3 + OBJC_IVAR___SiriSharedUISystemAssistantExperienceContainerView_blurrableView) layer];
  v17 = sub_21E4DCF68();
  [v16 addAnimation:v14 forKey:v17];
}

Swift::Void __swiftcall SiriSharedUISystemAssistantExperienceContainerView.reduceMotionMitosis(withDuration:intoSnippet:)(Swift::Float withDuration, Swift::Bool intoSnippet)
{
  if (intoSnippet)
  {
    v4 = [v2 resultView];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v24 = sub_21E4D20D4;
    v25 = v7;
    *&v22 = MEMORY[0x277D85DD0];
    *(&v22 + 1) = 1107296256;
    *&v23 = sub_21E46C644;
    *(&v23 + 1) = &block_descriptor_155;
    v8 = _Block_copy(&v22);
    v9 = v5;

    v10 = swift_allocObject();
    *(v10 + 16) = withDuration;
    *(v10 + 24) = v9;
    v24 = sub_21E4D20DC;
    v25 = v10;
    *&v22 = MEMORY[0x277D85DD0];
    *(&v22 + 1) = 1107296256;
    *&v23 = sub_21E4A4148;
    *(&v23 + 1) = &block_descriptor_161;
    v11 = _Block_copy(&v22);
    v12 = v9;

    [v6 animateWithDuration:v8 animations:v11 completion:withDuration];
    _Block_release(v11);
    goto LABEL_15;
  }

  v13 = [v2 snippetSuggestionPageantView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = *&v13[OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers];
  if (v15 >> 62)
  {
    v16 = sub_21E4DD488();
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_7:
      if (v16 < 1)
      {
        __break(1u);
        return;
      }

      v17 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x223D5B080](v17, v15);
        }

        else
        {
          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        sub_21E4DD298();
      }

      while (v16 != v17);
    }
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  v24 = sub_21E4D20CC;
  v25 = v21;
  *&v22 = MEMORY[0x277D85DD0];
  *(&v22 + 1) = 1107296256;
  *&v23 = sub_21E46C644;
  *(&v23 + 1) = &block_descriptor_149;
  v8 = _Block_copy(&v22);
  v12 = v14;

  [v20 animateWithDuration:v8 animations:(withDuration * 0.5)];
LABEL_15:
  _Block_release(v8);
}

id sub_21E4CB3AC(uint64_t a1)
{
  sub_21E4DD298();
  result = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_21E4CB428(float a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v9[4] = sub_21E4D2864;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21E46C644;
  v9[3] = &block_descriptor_239;
  v7 = _Block_copy(v9);
  v8 = a3;

  [v5 animateWithDuration:v7 animations:a1];
  _Block_release(v7);
}

id sub_21E4CB524(uint64_t a1)
{
  v2 = sub_21E4DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C140A8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280C168B0);
  (*(v3 + 16))(v5, v6, v2);
  v9[3] = sub_21E4DBD58();
  v9[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_21E4DBD68();
  sub_21E4DD298();
  result = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_contentView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_21E4CB680(uint64_t a1)
{
  v2 = sub_21E4DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI33SiriSharedUIScrollablePageantView_suggestionContainers);
  if (v6 >> 62)
  {
    v7 = sub_21E4DD488();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v3 + 16);

    v9 = 0;
    v10 = MEMORY[0x277D74E20];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D5B080](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      if (qword_280C140A8 != -1)
      {
        swift_once();
      }

      ++v9;
      v13 = __swift_project_value_buffer(v2, qword_280C168B0);
      (*v8)(v5, v13, v2);
      v15[3] = sub_21E4DBD58();
      v15[4] = v10;
      __swift_allocate_boxed_opaque_existential_1(v15);
      sub_21E4DBD68();
      sub_21E4DD298();
    }

    while (v7 != v9);
  }
}