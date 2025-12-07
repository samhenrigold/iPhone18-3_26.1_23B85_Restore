uint64_t closure #2 in MultiwayViewController.promptForCaptionsSpeechModelFetch()(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.conversationKit;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("User declined speech model fetch, captions will not be enabled", 62, 2, &dword_1BBC58000, v1, v2, MEMORY[0x1E69E7CC0]);
  v3 = MultiwayViewController.captionsViewController.getter();
  if (v3)
  {
    v4 = v3;
    v5 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
    swift_beginAccess();
    v4[v5] = 0;
  }

  CaptioningStateManager.setCaptioningEnabled(_:)(0);
}

Swift::Void __swiftcall MultiwayViewController.implementNewCaptionsState(newLayoutState:newRecognizerState:)(ConversationKit::CaptionsLayoutState newLayoutState, Swift::Bool newRecognizerState)
{
  v4 = *newLayoutState;
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v7 = *(v5 + v6);
  ConversationController.captionsRecognizerShouldBeRunning.setter();
  v31 = v4;
  MultiwayViewController.updateCaptionsLayoutState(_:)(&v31, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(v5 + v6);
  if (v7 == v15)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_110_7(&one-time initialization token for logger);
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v23, logger);
    v18 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109376;
      *(v25 + 4) = newRecognizerState;
      *(v25 + 8) = 1024;
      *(v25 + 10) = v15;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v26, v27, v28, v29, v30, 0xEu);
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    v16 = MEMORY[0x1E69D8E28];
    if (*(v5 + v6))
    {
      v16 = MEMORY[0x1E69D8E20];
    }

    v17 = *v16;
    v18 = CFNotificationCenterGetDarwinNotifyCenter();
    OUTLINED_FUNCTION_3_0();
    CFNotificationCenterPostNotification(v19, v20, v21, v22, 1u);
  }
}

void MultiwayViewController.updateCaptionsLayoutState(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = MultiwayViewController.constraintController.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v13 = v11[v12];

    if (v9 == 3)
    {
      if (v13 == 3)
      {
        return;
      }
    }

    else if (v13 != 3 && v9 == v13)
    {
      return;
    }
  }

  else if (v9 == 3)
  {
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = v8;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315394;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v32 = MultiwayViewController.constraintController.getter(v24, v25, v26, v27, v28, v29, v30, v31);
    if (v32)
    {
      v33 = v32;
      swift_beginAccess();

      v34 = String.init<A>(reflecting:)();
      v36 = v35;
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 7104878;
    }

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v38);

    *(v19 + 14) = v37;
    _os_log_impl(&dword_1BBC58000, v17, v18, "updateCaptionsLayoutState to %s from %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  swift_unknownObjectWeakInit();
  specialized closure #1 in MultiwayViewController.updateCaptionsLayoutState(_:)(&v38, v9);
  MEMORY[0x1BFB23F10](&v38);
}

void specialized closure #1 in MultiwayViewController.updateCaptionsLayoutState(_:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v84 - v4 + 80;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = a2;
  v17 = MultiwayViewController.constraintController.getter(Strong, v8, v9, v10, v11, v12, v13, v14);
  if (v17)
  {
    v25 = v17;
    v26 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v27 = v25[v26];

    if (v27)
    {
      if (v27 == 1)
      {
        if (v16 != 2)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }

      if (v16 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_15;
      }

      if (v16 != 1)
      {
LABEL_9:
        v28 = MultiwayViewController.captionsViewController.getter();
        if (v28)
        {
          v29 = v28;
          CaptionsViewController.minimize(_:)(0);
        }

        LOBYTE(v88[0]) = 0;
        v17 = MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v88, 0xFCu, 1);
        goto LABEL_15;
      }
    }

    v17 = MultiwayViewController.captionsViewController.getter();
    if (v17)
    {
      v30 = v17;
      CaptionsViewController.minimize(_:)(1);
    }
  }

LABEL_15:
  v31 = MultiwayViewController.constraintController.getter(v17, v18, v19, v20, v21, v22, v23, v24);
  if (v31)
  {
    v39 = v31;
    v40 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v41 = v39[v40];
  }

  else
  {
    v41 = 3;
  }

  v42 = MultiwayViewController.constraintController.getter(v31, v32, v33, v34, v35, v36, v37, v38);
  if (v42)
  {
    v43 = v42;
    LOBYTE(v88[0]) = v16;
    MultiwayViewConstraintsController.captionsState.setter(v88);
  }

  v44 = *&v15[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  ObjectType = swift_getObjectType();
  v46 = (*(v44 + 320))(ObjectType, v44);
  MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v46 & 1, 0, 0, 0, 0);
  if (v41 == 3)
  {
    if (v16 == 3)
    {
      goto LABEL_33;
    }
  }

  else if (v16 != 3 && v41 == v16)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    if ([v48 respondsToSelector_])
    {
      [v49 didChangeCaptionsLayout];
    }

    swift_unknownObjectRelease();
  }

  v50 = &v15[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  swift_beginAccess();
  v51 = *v50;
  if (*v50)
  {
    v52 = *(v50 + 1);

    v51(v53);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v51, v52);
  }

LABEL_33:
  v54 = MultiwayViewController.isCaptioningEnabled.getter();
  MultiwayViewController.updateCameraBlurState(captionEnabled:)(v54 & 1);
  MultiwayViewController.updateCurrentLayout()();
  MultiwayViewController.oneOnOneParticipant.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    return;
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  v55 = &v15[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memmove(v88, v55, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v88) != 1)
  {
    v56 = v55[1];
    ParticipantGridViewController.update(participant:broadcastingState:)();
  }

  v57 = objc_opt_self();
  v58 = [v57 currentDevice];
  v59 = [v58 userInterfaceIdiom];

  if (v59 != 1)
  {
    v73 = [v57 currentDevice];
    v74 = [v73 userInterfaceIdiom];

    if (v74)
    {
      goto LABEL_51;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_51;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v60 = Features.isICUIRedesignEnabled.getter();
    if ((v60 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v68 = MultiwayViewController.constraintController.getter(v60, v61, v62, v63, v64, v65, v66, v67);
  if (v68 && (v69 = v68, v70 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState, swift_beginAccess(), LODWORD(v70) = v69[v70], v69, v70 == 2))
  {
    MultiwayViewController.setLocalParticipantState(_:animated:)(3, 1);
    memmove(v87, v55, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v87) != 1)
    {

      v72 = 0;
LABEL_50:
      ParticipantViewDragController.dragEnabled.setter(v72, v71);
    }
  }

  else
  {
    memmove(v87, v55, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v87) != 1)
    {

      v72 = 1;
      goto LABEL_50;
    }
  }

LABEL_51:
  memcpy(v86, v55, sizeof(v86));
  memmove(v87, v55, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v87) == 1)
  {
    _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_56:

    return;
  }

  memcpy(v85, v86, sizeof(v85));
  v75 = v87[18];
  outlined init with copy of MultiwayViewController.ViewContent(v85, v84);
  v76 = [v75 view];
  if (v76)
  {
    v77 = v76;
    [v76 frame];
    v79 = v78;
    v81 = v80;

    v82 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v79, v81);
    if (v82 > 0xFBu)
    {
      _s15ConversationKit11ParticipantVWOhTm_17();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      goto LABEL_56;
    }

    v84[0] = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v84, v82, 1);
    MultiwayViewController.updateIsCaptionsViewDragEnabled()();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.updateCameraBlurState(captionEnabled:)(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(v16, (v2 + v4), sizeof(v16));
  result = getEnumTag for TapInteraction.EventType(v16);
  if (result != 1)
  {
    memcpy(v14, __dst, sizeof(v14));
    outlined init with copy of MultiwayViewController.ViewContent(v14, v11);
    if (ConversationController.supportsCameraBlur.getter())
    {
      MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter(v6);
    }

    LocalParticipantView.supportsCameraBlur.setter();
    if ((a1 & 1) != 0 && ([objc_opt_self() allowsPortraitBlurWhenCaptionsEnabled] & 1) == 0)
    {
      MultiwayViewController.localVideoProvider.getter();
      v7 = v12;
      v8 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v8 + 96))(0, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MultiwayViewController.localVideoProvider.getter();
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v10 + 136))(1, v9, v10);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  return result;
}

uint64_t MultiwayViewController.oneOnOneParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  ConversationController.remoteOneToOneParticipant.getter();
  v7 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v7, v8, v5);
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_7:
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_40_2();
  _s15ConversationKit11ParticipantVWObTm_7();
  v10 = Participant.isActiveWithVideo.getter();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v11 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
}

uint64_t MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v5), sizeof(__dst));
  memcpy(v57, (v2 + v5), sizeof(v57));
  if (getEnumTag for TapInteraction.EventType(v57) == 1)
  {
    goto LABEL_10;
  }

  v6 = v57[19];
  swift_beginAccess();
  if (*(v6 + 16) != 1)
  {
    goto LABEL_10;
  }

  memcpy(v55, __dst, sizeof(v55));
  v7 = outlined init with copy of MultiwayViewController.ViewContent(v55, v54);
  MultiwayViewController.captionsLayoutState.getter(v52, v7, v8, v9, v10, v11, v12, v13, v14);
  if (LOBYTE(v52[0]) != 1)
  {
LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
LABEL_10:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v33, "nextLocalParticipantState is nil due to viewContent state", v34, 2u);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    return 252;
  }

  result = [v57[18] view];
  if (result)
  {
    v16 = result;
    [result frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v57[7] frame];
    v59.origin.x = v25;
    v59.origin.y = v26;
    v59.size.width = v27;
    v59.size.height = v28;
    v58.origin.x = v18;
    v58.origin.y = v20;
    v58.size.width = v22;
    v58.size.height = v24;
    if (CGRectIntersectsRect(v58, v59))
    {
      MultiwayViewController.ConversationSnapshot.init(of:)(*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController), v54);
      v29 = MultiwayViewController.localParticipantState(for:)(v54);
      outlined destroy of MultiwayViewController.ConversationSnapshot(v54);
      if (!(v29 >> 6))
      {
        v30 = 16777986;
        goto LABEL_18;
      }

      if (v29 >> 6 == 1)
      {
        v29 &= 0x3Fu;
        v30 = 1094730562;
LABEL_18:
        v36 = 8 * v29;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v35 = v30 >> v36;
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, logger);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v53 = v41;
          *v40 = 136315394;
          *v52 = a1;
          *&v52[1] = a2;
          type metadata accessor for CGPoint(0);
          v42 = String.init<A>(reflecting:)();
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v53);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          LOBYTE(v52[0]) = v35;
          v45 = String.init<A>(reflecting:)();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v53);

          *(v40 + 14) = v47;
          _os_log_impl(&dword_1BBC58000, v38, v39, "nextLocalParticipantState forNewCaptionsViewPosition %s is %s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v41, -1, -1);
          MEMORY[0x1BFB23DF0](v40, -1, -1);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        return v35;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, logger);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1BBC58000, v49, v50, "nextLocalParticipantState is nil, unhandled localParticipantState", v51, 2u);
        MEMORY[0x1BFB23DF0](v51, -1, -1);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      return 252;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t MultiwayViewController.updateIsCaptionsViewDragEnabled()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v17, (v0 + v1), sizeof(v17));
  result = getEnumTag for TapInteraction.EventType(v17);
  if (result != 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    MultiwayViewController.ConversationSnapshot.init(of:)(v3, v15);
    v4 = MultiwayViewController.localParticipantState(for:)(v15);
    outlined destroy of MultiwayViewController.ConversationSnapshot(v15);
    if ((v4 & 0x80) == 0)
    {
      v6 = [*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) captionDraggingEnabled];
      if (!v6)
      {
LABEL_8:
        CaptionsViewDragController.dragEnabled.setter(v6 & 1, v5);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      v7 = static Platform.current.getter();
      if (!v7)
      {
        MultiwayViewController.captionsLayoutState.getter(&v14, v7, v5, v8, v9, v10, v11, v12, v13);
        if (v14 == 1)
        {
          LOBYTE(v6) = ConversationController.isOneToOneModeEnabled.getter();
          goto LABEL_8;
        }
      }
    }

    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t MultiwayViewController.handleShareLinkAction(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in MultiwayViewController.handleShareLinkAction(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_353_0;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

char *closure #1 in MultiwayViewController.handleShareLinkAction(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *&result[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    v8 = a2;
    ConversationController.shareableLink(completionHandler:)(partial apply for closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:), v7);
  }

  return result;
}

double closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  if (a1)
  {
    v38 = v9;
    v18 = a1;
    v19 = [v18 URL];
    if (v19)
    {
      v20 = v19;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v37 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      v22[2] = a3;
      v22[3] = v18;
      v22[4] = a4;
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:);
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_362;
      v23 = _Block_copy(aBlock);
      v24 = v18;

      v25 = a4;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v37;
      MEMORY[0x1BFB215C0](0, v14, v11, v23);
      _Block_release(v23);

      (*(v38 + 8))(v11, v8);
      (*(v39 + 8))(v14, v12);
      return result;
    }

    v28 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v28);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BC4BA940;
  if (a2)
  {
    aBlock[0] = a2;
    v31 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
    v32 = 7104878;
  }

  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v35 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Couldn't look up a link for the active conversation (error: %@)", 63, 2, &dword_1BBC58000, v29, v35, v30);

  return result;
}

void closure #1 in closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v15 = 0;
    v7 = type metadata accessor for LinkShareCoordinator();
    objc_allocWithZone(v7);
    v8 = a2;
    v9 = v6;
    v10 = a3;
    v16 = v7;
    v17 = &protocol witness table for LinkShareCoordinator;
    v14 = LinkShareCoordinator.init(type:hostViewController:originatingView:)();
    v11 = v9 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator;
    swift_beginAccess();
    outlined assign with take of AttributedString?();
    swift_endAccess();
    if (*(v11 + 24))
    {
      outlined init with copy of IDSLookupManager(v11, &v14);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(&v14, v16);
      (v13[2])(TPNumberPadCharacter.rawValue.getter, 0, v12, v13);

      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
    }
  }
}

void closure #1 in MultiwayViewController.scheduleLinkEducationFirstTimeAlert()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MultiwayViewController.showLinkEducationFirstTimeAlert(for:)(a2);
  }
}

void MultiwayViewController.showLinkEducationFirstTimeAlert(for:)(void *a1)
{
  v1 = MultiwayViewController.localParticipantHandleFormattedString(for:)(a1);
  if (v2)
  {
    countAndFlagsBits = v1;
    object = v2;
  }

  else
  {
    v5 = [objc_opt_self() &off_1E7FE9588];
    v24._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD00000000000002DLL;
    v6._object = 0x80000001BC51D0C0;
    v7.value._countAndFlagsBits = 0x61737265766E6F43;
    v7.value._object = 0xEF74694B6E6F6974;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v24);
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  type metadata accessor for PlatformAlert();
  v10 = objc_opt_self();
  v11 = [v10 conversationKit];
  v25._object = 0xE000000000000000;
  v12._object = 0x80000001BC51D0F0;
  v12._countAndFlagsBits = 0xD000000000000023;
  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v25);

  v16 = static PlatformAlert.create(with:message:)(countAndFlagsBits, object, v15._countAndFlagsBits, v15._object);

  if (v16)
  {
    v17 = [v10 conversationKit];
    v26._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000025;
    v18._object = 0x80000001BC51D120;
    v19.value._countAndFlagsBits = 0x61737265766E6F43;
    v19.value._object = 0xEF74694B6E6F6974;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v26);

    v22 = 0;
    (*(*v16 + 328))(v21._countAndFlagsBits, v21._object, &v22, TPNumberPadCharacter.rawValue.getter, 0);

    (*(*v16 + 336))(0);
  }
}

uint64_t MultiwayViewController.localParticipantHandleFormattedString(for:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  if (!v4)
  {
    return OUTLINED_FUNCTION_62_0();
  }

  v5 = v4;
  v6 = [v4 association];
  if (v6)
  {
    v7 = v6;
    if ([v6 type] == 2 && (objc_msgSend(v7, sel_isPrimary) & 1) == 0)
    {
      v8 = [v7 handle];

      goto LABEL_7;
    }
  }

  v8 = [v5 handle];
LABEL_7:
  v9 = v8;
  TUHandle.formattedPhoneNumber.getter();
  if (v10)
  {
  }

  else
  {
    v11 = [v9 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_62_0();
}

void *MultiwayViewController.accessibilityConstraintController()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[6];
    v3 = v2;
  }

  return v2;
}

Swift::Void __swiftcall MultiwayViewController.embedEffectsBrowserViewController(_:)(UIViewController *a1)
{
  [v1 loadViewIfNeeded];
  v3 = a1;

  MultiwayViewController.effectsBrowserViewController.setter(a1);
}

__n128 key path getter for MultiwayViewController.additionalLocalParticipantInsets : MultiwayViewController@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id MultiwayViewController.additionalLocalParticipantInsets.setter()
{
  OUTLINED_FUNCTION_20_2();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets);
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets, v7);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return MultiwayViewController.updateAdditionalSafeAreaInsets()();
}

uint64_t MultiwayViewController.additionalLocalParticipantInsets.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t MultiwayViewController.bannerPresentationManagerBox.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor_];

  [v0 setAlpha_];
  [v0 setHidden_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id MultiwayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    MEMORY[0x1BFB209B0](a1);
    OUTLINED_FUNCTION_246();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

void (*protocol witness for EffectsHandler.effectsViewController.modify in conformance MultiwayViewController(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(id *a1, char a2)
{
  a1[1] = v8;
  *a1 = MultiwayViewController.effectsViewController.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  return MultiwayViewController.effectsViewController.modify;
}

void (*protocol witness for EffectsHandler.effectsBrowserViewController.modify in conformance MultiwayViewController(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(id *a1, char a2)
{
  a1[1] = v8;
  *a1 = MultiwayViewController.effectsBrowserViewController.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  return MultiwayViewController.effectsBrowserViewController.modify;
}

Swift::Void __swiftcall MultiwayViewController.didSelectApp(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_159_3();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_23_34();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_26_30();
  v12(v11);
  if (v8)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_191_0(v22);
    OUTLINED_FUNCTION_191_0(v23);
    OUTLINED_FUNCTION_46_26(v23);
    if (!v13)
    {
      v14 = v23[6];
      v15 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if ((*(v14 + v15) - 4) >= 3)
      {
        OUTLINED_FUNCTION_226_3();
        outlined init with copy of MultiwayViewController.ViewContent(v21, v20);
      }

      else
      {
        v16 = objc_opt_self();
        OUTLINED_FUNCTION_226_3();
        outlined init with copy of MultiwayViewController.ViewContent(v21, v20);
        v17 = [v16 currentDevice];
        v18 = [v17 userInterfaceIdiom];

        if (!v18)
        {
          [v1 setControlsState:2 animated:1];
        }
      }

      v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (*(v14 + v19) > 0x3Fu)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_16();
        MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v2, 0);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
      }
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.didSelectEffect(_:)()
{
  OUTLINED_FUNCTION_239_3();
  if (CFXEffect.isAnimoji()())
  {
    MultiwayViewController.localVideoProvider.getter();
    OUTLINED_FUNCTION_82_0(v12);
    v0 = OUTLINED_FUNCTION_2_14();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v2)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v3, static Logger.conversationKit);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v5))
      {
        v6 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v6);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        OUTLINED_FUNCTION_18();
      }

      MultiwayViewController.toggleCinematicFraming()();
    }
  }
}

void MultiwayViewController.didDismissPicker(_:effectsState:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v128);
  OUTLINED_FUNCTION_178_1(v129);
  OUTLINED_FUNCTION_46_26(v129);
  if (!v14)
  {
    v1 = v129[7];
    v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v1 + v2))
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v3 == v6 && v5 == v7;
      if (v14)
      {
        v32 = OUTLINED_FUNCTION_157_3(v6, v7, v8, v9, v10, v11, v12, v13, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
        OUTLINED_FUNCTION_278_1(v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126);
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v15;
        v24 = OUTLINED_FUNCTION_157_3(v15, v17, v18, v19, v20, v21, v22, v23, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
        OUTLINED_FUNCTION_278_1(v24, v25, v26, v27, v28, v29, v30, v31, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125);

        if ((v16 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      MultiwayViewController.didRequestMemojiPicker.setter(0);
LABEL_11:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }
}

uint64_t MultiwayViewController.captionsBubbleModeIsAllowed.getter()
{
  if (static Platform.current.getter())
  {
    v1 = 1;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

BOOL MultiwayViewController.isReadyToShowCallDetails.getter()
{
  v1 = MultiwayViewController.isOnScreen.getter();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1(v1);
  return *(v0 + v2) == 0;
}

void MultiwayViewController.gridViewOverlappingInsets.getter()
{
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_159_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_12_3();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_9_37();
  v10(v9);
  if (v6)
  {
    v11 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    if (v11[1] == 0.0 && v11[2] == 0.0)
    {
      goto LABEL_26;
    }

    MultiwayViewController.layoutIdiom.getter(v43);
    if (!v43[0])
    {
      goto LABEL_26;
    }

    if (MultiwayViewController.isModallyPresentingCallDetails.getter())
    {
      goto LABEL_26;
    }

    v1 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_205_5();
    memcpy(v12, v13, v14);
    OUTLINED_FUNCTION_46_26(&v38);
    if (v15)
    {
      goto LABEL_26;
    }

    v16 = v1[6];
    v17 = &v16[OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantAspectRatio];
    OUTLINED_FUNCTION_25_54();
    swift_beginAccess();
    v18 = *(v17 + 32);
    if ((v18 & 1) == 0 && *v17 != 1.0)
    {
      goto LABEL_26;
    }

    v19 = v17[1] == 1.0 ? 1 : *(v17 + 32);
    if (v19 != 1)
    {
      goto LABEL_26;
    }

    v20 = v17[2] == 1.0 ? 1 : *(v17 + 32);
    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v17[3] == 1.0)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_26;
    }

    v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v16[v21] & 0xFE) == 0x80)
    {
      goto LABEL_26;
    }

    v22 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (v16[v22] != 1)
    {
      goto LABEL_26;
    }

    v4 = v16;
    static Layout.LocalParticipantViewCameraControls.iOS.getter(&v39);
    Layout.MultiwayFaceTime.init()(&v40);
    Layout.MultiwayFaceTime.init()(v41);
    v2 = v41[1];
    v23 = *&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24];
    v24 = *&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 32];
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout], v23);
    (*(v24 + 192))(v23, v24);
    if (v16[v21] >= 0x40u)
    {
      Layout.MultiwayFaceTime.init()(&v42);
    }

    v25 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantListState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v26 = v4[v25];
    v6 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = v4[v6];
  if ((v27 - 1) <= 1)
  {
    if (one-time initialization token for bottomInsetAfterPadding != -1)
    {
      swift_once();
    }

LABEL_31:
    v27 = v4[v6];
  }

  if (v27 || (OUTLINED_FUNCTION_205_5(), memcpy(v28, v29, v30), OUTLINED_FUNCTION_46_26(&v37), v15))
  {

LABEL_26:
    OUTLINED_FUNCTION_80();
    return;
  }

  v31 = v1[1];
  v32 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(*&v31[v32] + 16) == 1)
  {
    v33 = v31;
  }

  else
  {
    v36 = v31;
    ParticipantGridViewController.effectiveLayoutStyle.getter(v43);
    if (v43[0] == 2 || !v43[0])
    {

      goto LABEL_26;
    }
  }

  v34 = [v0 view];
  if (v34)
  {
    v35 = v34;
    [v34 safeAreaInsetFrame];

    Layout.MultiwayFaceTime.init()(v43);
    goto LABEL_26;
  }

  __break(1u);
}

void MultiwayViewController.mediaPipFrame.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [v1 viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];
      if (v9 && (v10 = v9, v11 = [v9 windowScene], v10, v11))
      {
        v12 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
        swift_beginAccess();
        [v8 convertRect:objc_msgSend(v11 fromCoordinateSpace:{sel_coordinateSpace), *v12, v12[1], v12[2], v12[3]}];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(int a1)
{
  LODWORD(v27) = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = v27 & 1;
    if (v27)
    {
      v18 = 2.0;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)(v18);
    v20 = *(v5 + 8);
    v26 = v4;
    v27 = v20;
    v20(v7, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v17;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_412;
    v23 = _Block_copy(aBlock);

    v24 = v28;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v25 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB21510](v10, v24, v25, v23);
    _Block_release(v23);

    (*(v32 + 8))(v25, v1);
    (*(v29 + 8))(v24, v31);
    return v27(v10, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
    swift_beginAccess();
    if (*(v5 + 8) != 0.0 || *(v5 + 16) != 0.0)
    {
      v6 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
      if (!CGRectIsEmpty(*&v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame]))
      {
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        MultiwayViewController.mediaPipFrame.getter();
        v17.origin.x = v11;
        v17.origin.y = v12;
        v17.size.width = v13;
        v17.size.height = v14;
        v16.origin.x = v7;
        v16.origin.y = v8;
        v16.size.width = v9;
        v16.size.height = v10;
        if (!CGRectContainsRect(v16, v17))
        {
          MultiwayViewController.cachedMediaPipSafeAreaFrame.setter(0.0, 0.0, 0.0, 0.0);
          v15 = [v4 viewIfLoaded];
          [v15 setNeedsLayout];

          if ((a2 & 1) == 0)
          {
            MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(1);
          }
        }
      }
    }
  }
}

uint64_t MultiwayViewController.nameForPhotoIndicator.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - v2;
  MultiwayViewController.oneOnOneParticipant.getter(v8 - v2);
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_115(v3, 1, v4);
  if (v5)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    Participant.contactDetails.getter();
    v6 = v8[1];
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  return OUTLINED_FUNCTION_15_14();
}

void MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43[-v4];
  v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v54, v12, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v54) != 1)
  {
    v51 = v8;
    v50 = a1;
    v46 = v1;
    v13 = v12[3];
    v14 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
    swift_beginAccess();
    v15 = *(v13 + v14);
    v16 = MEMORY[0x1E69E7D40];
    v17 = (*MEMORY[0x1E69E7D40] & *v15) + 2560;
    v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0xA00);
    v47 = v15;
    v19 = v15;
    v48 = v18;
    v49 = v17;
    v18();
    _s15ConversationKit11ParticipantVWObTm_7();
    if (swift_getEnumCaseMultiPayload() - 9 >= 3)
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
      return;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationKit);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v51;
    v45 = v21;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      v27 = v53[0];
      *v26 = 136315394;
      v44 = v23;
      v48();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      specialized >> prefix<A>(_:)();
      v29 = v28;
      v31 = v30;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v53);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v33 = v50;
      v52 = v50 & 1;
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v53);

      *(v26 + 14) = v36;
      v16 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1BBC58000, v22, v44, "Hiding Name+Photo banner %s dueToExplicitUserAction: %s", v26, 0x16u);
      swift_arrayDestroy();
      v37 = v27;
      v25 = v51;
      MEMORY[0x1BFB23DF0](v37, -1, -1);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }

    else
    {

      v33 = v50;
    }

    v38 = v45;
    if ((v33 & 1) == 0)
    {
      goto LABEL_20;
    }

    v48();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 9) >= 2)
    {
      if (EnumCaseMultiPayload != 11)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_20;
      }

      v40 = v16;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v42 = MultiwayViewController.call.getter();
      specialized NameAndPhotoUtilities.denyIncomingName(from:)(v42);
    }

    else
    {
      v40 = v16;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v41 = static NameAndPhotoUtilities.shared;
      v42 = MultiwayViewController.call.getter();
      specialized NameAndPhotoUtilities.denySendingNameAndPhoto(using:)(v42, v41);
    }

    v16 = v40;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    (*((*v16 & *v38) + 0xA08))(v25);
  }
}

void MultiwayViewController.showSNAPHudIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(v55, v18, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v55) == 1)
  {
    MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
  }

  else
  {
    v43 = v3;
    v19 = *(v18 + 3);
    v20 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(&v2[v22], 1, v11))
    {
      v23 = v21;
      v24 = 0.0;
    }

    else
    {
      (*(v12 + 16))(v17, &v2[v22], v11);
      v25 = v21;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v24 = v26;
      v27 = *(v12 + 8);
      v27(v14, v11);
      v27(v17, v11);
    }

    if (one-time initialization token for secondsDelayBeforeShowingNameAndPhotoBanner != -1)
    {
      swift_once();
    }

    v28 = *&static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner;
    v29 = v24 - *&static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner;
    static DispatchTime.now()();
    v30 = vabdd_f64(v24, v28);
    if (v29 > 0.0)
    {
      v30 = 0.0;
    }

    v42 = v10;
    + infix(_:_:)(v30);
    v45 = *(v45 + 8);
    (v45)(v7, v51);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v31 = static OS_dispatch_queue.main.getter();
    outlined init with copy of ConversationControlsType(v44, &v53);
    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    *(v32 + 24) = v2;
    v33 = v54[0];
    *(v32 + 32) = v53;
    *(v32 + 48) = v33;
    *(v32 + 57) = *(v54 + 9);
    v52[4] = partial apply for closure #1 in MultiwayViewController.showSNAPHudIfNeeded(for:);
    v52[5] = v32;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 1107296256;
    v52[2] = thunk for @escaping @callee_guaranteed () -> ();
    v52[3] = &block_descriptor_404;
    v34 = _Block_copy(v52);
    v35 = v21;
    v36 = v2;

    v37 = v46;
    static DispatchQoS.unspecified.getter();
    v52[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v38 = v48;
    v39 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = v42;
    MEMORY[0x1BFB21510](v42, v37, v38, v34);
    _Block_release(v34);

    (*(v50 + 8))(v38, v39);
    (*(v47 + 8))(v37, v49);
    (v45)(v40, v51);
  }
}

uint64_t specialized MultiwayViewController.getSuggestedBannerType(completion:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3 - 16];
  static Date.now.getter();
  v5 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  swift_beginAccess();
  outlined assign with take of AttributedString?();
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = MultiwayViewController.call.getter();
  v7 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  NameAndPhotoUtilities.suggestedBannerType(for:)(v6, v7, &v13);

  if (v14[24] == 255)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v13, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  }

  v15 = v13;
  v16[0] = *v14;
  *(v16 + 9) = *&v14[9];
  v8 = MultiwayViewController.call.getter();
  v9 = [v8 status];

  if (v9 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      MultiwayViewController.showSNAPHudIfNeeded(for:)(&v15);
    }
  }

  else
  {
    MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
  }

  return outlined destroy of ConversationControlsType(&v15);
}

void closure #1 in MultiwayViewController.showSNAPHudIfNeeded(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v57 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = *MEMORY[0x1E69E7D40] & *a1;
  v61 = *(v18 + 0xA00);
  v62 = v18 + 2560;
  v61(v15);
  swift_storeEnumTagMultiPayload();
  v19 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v17, v13);
  _s15ConversationKit11ParticipantVWOhTm_17();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (v19)
  {
    v58 = v11;
    v59 = a1;
    v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill;
    v21 = *(a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill);
    v22 = MultiwayViewController.call.getter();

    v23 = [v22 uniqueProxyIdentifierUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1EEE9AC00](v24);
    *(&v57 - 2) = v10;
    LOBYTE(v22) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v57 - 4), v21);

    (*(v8 + 8))(v10, v7);
    if ((v22 & 1) == 0)
    {
      v25 = MultiwayViewController.call.getter();
      v26 = [v25 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(*(a2 + v20) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v27);
      v28 = *(a2 + v20);
      *(v28 + 16) = v27 + 1;
      (*(v8 + 32))(v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v10, v7);
      *(a2 + v20) = v28;
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.conversationKit);
      v30 = v59;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v57 = v30;

      v33 = os_log_type_enabled(v31, v32);
      v34 = v58;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v64 = v36;
        *v35 = 136315138;
        v37 = v63;
        (v61)();
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v34);
        specialized >> prefix<A>(_:)();
        v39 = v38;
        v41 = v40;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v64);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_1BBC58000, v31, v32, "Showing Name+Photo banner %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
        MEMORY[0x1BFB23DF0](v35, -1, -1);
      }

      outlined init with copy of ConversationControlsType(v60, &v64);
      if (v67 == 7 && ((v43 = vorrq_s8(v65, v66), v44 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), v64 == 12) && !*&v44 || v64 == 13 && !*&v44 || v64 == 19 && !*&v44))
      {
        swift_storeEnumTagMultiPayload();
        (*((*MEMORY[0x1E69E7D40] & *v57) + 0xA08))(v17);
      }

      else
      {
        outlined destroy of ConversationControlsType(&v64);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.conversationKit);
    v46 = a1;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      *v49 = 136315138;
      v51 = v63;
      (v61)();
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v11);
      specialized >> prefix<A>(_:)();
      v53 = v52;
      v55 = v54;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v64);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_1BBC58000, v47, v48, "Not showing Name+Photo banner because showing a different secondryPill button %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFB23DF0](v50, -1, -1);
      MEMORY[0x1BFB23DF0](v49, -1, -1);
    }
  }
}

void MultiwayViewController.nameAndPhotoUtilitiesDidUpdatePersonalNickname(oldValue:newValue:)(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (a2)
    {
      MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();
    }
  }
}

uint64_t MultiwayViewController.nameAndPhotoUtilitiesNameAndPhotoAvailable(forDestinations:withBannerType:)(uint64_t a1)
{
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (v11[24] == 255)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v10, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  }

  v12 = v10;
  v13[0] = *v11;
  *(v13 + 9) = *&v11[9];
  *&v10 = a1;

  specialized MutableCollection<>.sort(by:)(&v10);
  v2 = MultiwayViewController.call.getter();
  v3 = [v2 remoteParticipantHandles];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v4, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v5);
  v7 = v6;

  *&v10 = v7;

  specialized MutableCollection<>.sort(by:)(&v10);

  OUTLINED_FUNCTION_44_0();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  LOBYTE(v7) = v8;

  if (v7)
  {
    MultiwayViewController.showSNAPHudIfNeeded(for:)(&v12);
  }

  return outlined destroy of ConversationControlsType(&v12);
}

void MultiwayViewController.handleTapInteraction(_:eventType:)()
{
  OUTLINED_FUNCTION_29();
  v105 = v3;
  v106 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_174();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_246_3();
  v15 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v108 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v107 = v19 - v18;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v110, (v0 + v20), sizeof(v110));
  memcpy(v111, (v0 + v20), 0xE8uLL);
  OUTLINED_FUNCTION_46_26(v111);
  if (v54)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v24);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v31 = v6;

    Strong = v6;
  }

  else
  {
    memcpy(v109, v110, sizeof(v109));
    v32 = OUTLINED_FUNCTION_145_6();
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) == 1)
  {
    MultiwayViewController.toggleReactionsView()(v32);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
    v22 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v34))
    {
      v35 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v35);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_18();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
LABEL_16:

LABEL_17:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!Strong || (type metadata accessor for ParticipantView(0), (v41 = swift_dynamicCastClass()) == 0))
  {
    v44 = *(v8 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
    if ([v44 numberOfTapsRequired] == 1)
    {
      MultiwayViewController.didSingleTapBackground()();
      MultiwayViewController.restartAutoHideInCallControlsTimer()();
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v46 = OUTLINED_FUNCTION_13_12(v45);
      *(v46 + 16) = xmmword_1BC4BA940;
      v109[0] = [v44 numberOfTapsRequired];
      v47 = String.init<A>(reflecting:)();
      v49 = v48;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)(v50);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    goto LABEL_17;
  }

  v104 = Strong;
  v42 = v15;
  v43 = v41;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v0, 1, v42);
  if (v54)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v53 = v104;
LABEL_32:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v56 = OUTLINED_FUNCTION_13_12(v55);
    *(v56 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_195_1();
    v57 = v53;
    OUTLINED_FUNCTION_232_3();
    OUTLINED_FUNCTION_254();
    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v56 + 32) = v11;
    *(v56 + 40) = v2;
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v58);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

    goto LABEL_17;
  }

  v51 = OUTLINED_FUNCTION_78();
  v52(v51);
  v102 = v42;
  v53 = v104;
  v103 = v104;
  ConversationController.participant(with:)();
  OUTLINED_FUNCTION_115(v2, 1, v11);
  if (v54)
  {

    (*(v108 + 8))(v107, v102);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v59 = [v111[1] view];
  if (v59)
  {
    v60 = v59;
    v61 = [v43 isDescendantOfView_];

    if (v61)
    {
      v62 = *(v8 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
      v63 = [v62 numberOfTapsRequired];
      if (v63 != 2)
      {
        v64 = v103;
        if (v63 == 1)
        {
          v65 = OUTLINED_FUNCTION_180_4();
          MultiwayViewController.didSingleTapGridParticipantView(_:participant:)(v65, v66);
LABEL_44:
          MultiwayViewController.restartAutoHideInCallControlsTimer()();
LABEL_64:
          v94 = v107;
          goto LABEL_65;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_194();
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1BC4BAA20;
        [v62 numberOfTapsRequired];
        v79 = String.init<A>(reflecting:)();
        v81 = v80;
        v82 = MEMORY[0x1E69E6158];
        *(v78 + 56) = MEMORY[0x1E69E6158];
        v83 = lazy protocol witness table accessor for type String and conformance String();
        *(v78 + 64) = v83;
        *(v78 + 32) = v79;
        *(v78 + 40) = v81;
        OUTLINED_FUNCTION_195_1();
        v84 = v103;
        v85 = OUTLINED_FUNCTION_232_3();
        *(v78 + 96) = v82;
        *(v78 + 104) = v83;
        *(v78 + 72) = v85;
        *(v78 + 80) = v86;
        OUTLINED_FUNCTION_51_22();
        os_log(_:dso:log:type:_:)(v87);
LABEL_63:

        goto LABEL_64;
      }

      v76 = OUTLINED_FUNCTION_180_4();
      MultiwayViewController.didDoubleTapGridParticipantView(_:participant:)(v76, v77);
LABEL_58:
      MultiwayViewController.restartAutoHideInCallControlsTimer()();
      v94 = v107;
      v64 = v103;
LABEL_65:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

      (*(v108 + 8))(v94, v102);
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
      goto LABEL_17;
    }

    v67 = [v111[0] &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
    if (v67)
    {
      v68 = v67;
      v69 = [v43 isDescendantOfView_];

      if (v69)
      {
        v64 = v103;
        if (OUTLINED_FUNCTION_270_3(OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer) == 1)
        {
          v70 = OUTLINED_FUNCTION_180_4();
          MultiwayViewController.didSingleTapRosterParticipantView(_:participant:)(v70, v71);
          goto LABEL_44;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_194();
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1BC4BAA20;
        [v69 &selRef_setOracleUsingController_contact_ + 5];
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        v89 = MEMORY[0x1E69E6158];
        *(v88 + 56) = MEMORY[0x1E69E6158];
        v90 = lazy protocol witness table accessor for type String and conformance String();
        *(v88 + 64) = v90;
        *(v88 + 32) = v69;
        *(v88 + 40) = &selRef__iconForResourceProxy_format_;
        OUTLINED_FUNCTION_195_1();
        v91 = v103;
        v92 = OUTLINED_FUNCTION_232_3();
        *(v88 + 96) = v89;
        *(v88 + 104) = v90;
        *(v88 + 72) = v92;
        *(v88 + 80) = v93;
      }

      else
      {
        if (*(v1 + *(v11 + 28)))
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          static os_log_type_t.error.getter();
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v73 = OUTLINED_FUNCTION_13_12(v72);
          *(v73 + 16) = xmmword_1BC4BA940;
          OUTLINED_FUNCTION_195_1();
          v64 = v103;
          v74 = v103;
          OUTLINED_FUNCTION_232_3();
          OUTLINED_FUNCTION_80_0();
          *(v73 + 56) = MEMORY[0x1E69E6158];
          *(v73 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v73 + 32) = v69;
          *(v73 + 40) = &selRef__iconForResourceProxy_format_;
          OUTLINED_FUNCTION_51_22();
          os_log(_:dso:log:type:_:)(v75);

          goto LABEL_64;
        }

        if (OUTLINED_FUNCTION_270_3(OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer) == 1)
        {
          MultiwayViewController.didTapLocalParticipantView(_:eventType:)(v43, v6, v105, v106);
          goto LABEL_58;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_194();
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1BC4BAA20;
        [v69 &selRef_setOracleUsingController_contact_ + 5];
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        v96 = MEMORY[0x1E69E6158];
        *(v95 + 56) = MEMORY[0x1E69E6158];
        v97 = lazy protocol witness table accessor for type String and conformance String();
        *(v95 + 64) = v97;
        *(v95 + 32) = v69;
        *(v95 + 40) = &selRef__iconForResourceProxy_format_;
        OUTLINED_FUNCTION_195_1();
        v64 = v103;
        v98 = v103;
        v99 = OUTLINED_FUNCTION_232_3();
        *(v95 + 96) = v96;
        *(v95 + 104) = v97;
        *(v95 + 72) = v99;
        *(v95 + 80) = v100;
      }

      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v101);
      goto LABEL_63;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MultiwayViewController.didSingleTapGridParticipantView(_:participant:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v89 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v89 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v93 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v93);
  specialized >> prefix<A>(_:)();
  v14 = v13;
  v16 = v15;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling single tap of participant in grid view controller %@", 61, 2, &dword_1BBC58000, v11, v17, v12);

  v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v99, &v2[v18], sizeof(v99));
  memcpy(v100, &v2[v18], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v100);
  if (result != 1)
  {
    v92 = v2;
    memcpy(v97, v99, sizeof(v97));
    outlined init with copy of MultiwayViewController.ViewContent(v97, v96);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v90 = a1;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Logger.conversationControls);
    memcpy(v98, v99, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v98, v96);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    if (os_log_type_enabled(v21, v22))
    {
      v91 = v7;
      v89 = a2;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v96[0] = v24;
      *v23 = 136315394;
      v25 = v100[6];
      v26 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      swift_beginAccess();
      v95[0] = *(v25 + v26);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v96);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v30 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v25 + v30))
      {
        v31 = v92;
        if (*(v25 + v30) == 1)
        {
          v32 = 0xE700000000000000;
          v33 = 0x656C6269736976;
        }

        else
        {
          v32 = 0xEE00756E654D676ELL;
          v33 = 0x69746E6573657270;
        }

        a2 = v89;
      }

      else
      {
        v32 = 0xE600000000000000;
        v33 = 0x6E6564646968;
        a2 = v89;
        v31 = v92;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v96);

      *(v23 + 14) = v35;
      _os_log_impl(&dword_1BBC58000, v21, v22, "didSingleTapGridParticipantView: inCallControlsState:%s inCallConversationBannerState:%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v23, -1, -1);

      v7 = v91;
      v34 = v93;
    }

    else
    {

      v31 = v92;
      v34 = v93;
    }

    v36 = v100[6];
    v37 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    swift_beginAccess();
    if ((*(v36 + v37) & 1) == 0)
    {
      MultiwayViewController.didSingleTapBackground()();
    }

    if ((Participant.isActive.getter() & 1) == 0)
    {
      MultiwayViewController.didSingleTapBackground()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }

    v38 = v100[1];
    if ((*(v36 + v37) & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v34);
      ParticipantGridViewController.select(_:forFocusing:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_25:
      v46 = v100[7];
      v47 = v100[7];
      MultiwayViewController.bringSubviewToFront(_:)(v46);
      goto LABEL_26;
    }

    v39 = v7;
    v40 = *(v34 + 20);
    v41 = type metadata accessor for UUID();
    v42 = *(v41 - 8);
    v92 = *(v42 + 16);
    v89 = v42 + 16;
    (v92)(v39, a2 + v40, v41);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v41);
    ParticipantGridViewController.isSelected(_:)();
    v44 = v43;
    v91 = v39;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v44)
    {
      v45 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v36 + v45))
      {
        if (*(v36 + v45) == 1)
        {
          v94 = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v94, 0xFCu, 1);
          MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
        }
      }

      else
      {
        v94 = 1;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v94, 0xFCu, 1);
      }

      goto LABEL_25;
    }

    MultiwayViewController.markParticipantWithIdentifierAsUserSelected(_:)(a2 + v40);
    MultiwayViewController.mostActiveParticipants.getter();
    LOWORD(v95[0]) = 512;
    ParticipantGridViewController.update(with:updateReason:)(v101, v95);

    _s15ConversationKit11ParticipantVWOcTm_16();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v93);
    ParticipantGridViewController.select(_:forFocusing:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v52 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    swift_beginAccess();
    if (*(v36 + v52))
    {
      v53 = v91;
      (v92)(v91, a2 + v40, v41);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v41);
      ParticipantGridViewController.isSelected(_:)();
      v55 = v54;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v55 & 1) == 0)
      {
        v94 = 0;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v94, 0xFCu, 1);
        MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
      }
    }

    else
    {
      v94 = 1;
      MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v94, 0xFCu, 1);
    }

    result = [v31 view];
    if (result)
    {
      v56 = result;
      [v90 frame];
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = [v38 view];
      [v56 convertRect:v65 fromView:{v58, v60, v62, v64}];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v74 = v100[7];
      [v100[7] frame];
      v104.origin.x = v75;
      v104.origin.y = v76;
      v104.size.width = v77;
      v104.size.height = v78;
      v102.origin.x = v67;
      v102.origin.y = v69;
      v102.size.width = v71;
      v102.size.height = v73;
      if (!CGRectIntersectsRect(v102, v104) || (Participant.isActiveWithVideo.getter() & 1) == 0)
      {
        v80 = v74;
        MultiwayViewController.bringSubviewToFront(_:)(v74);
        goto LABEL_46;
      }

      v79 = [v38 view];
      MultiwayViewController.bringSubviewToFront(_:)(v79);

      if (!v100[16])
      {
        goto LABEL_47;
      }

      v80 = v100[16];
      v81 = [v80 superview];
      if (!v81)
      {
LABEL_46:

LABEL_47:
        if (!v100[4])
        {
          goto LABEL_27;
        }

        v83 = [v100[4] view];
        if (!v83)
        {
          goto LABEL_27;
        }

        v47 = v83;
        [v83 frame];
        v105.origin.x = v84;
        v105.origin.y = v85;
        v105.size.width = v86;
        v105.size.height = v87;
        v103.origin.x = v67;
        v103.origin.y = v69;
        v103.size.width = v71;
        v103.size.height = v73;
        if (CGRectIntersectsRect(v103, v105))
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if (Features.isICUIRedesignEnabled.getter())
          {
            v88 = v47;
            MultiwayViewController.bringSubviewToFront(_:)(v47);

            v47 = [v100[3] view];
            MultiwayViewController.bringSubviewToFront(_:)(v47);
          }
        }

LABEL_26:

LABEL_27:
        v48 = *&v31[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
        if (v48)
        {
          v49 = MEMORY[0x1E69E7D40];
          v50 = *((*MEMORY[0x1E69E7D40] & *v48) + 0x78);
          v51 = v48;
          if (v50())
          {
            (*((*v49 & *v51) + 0xC8))(0xD000000000000026, 0x80000001BC51CCC0, 0);
          }
        }

        MultiwayViewController.needsUpdatePresentationContexts.setter(1);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      result = [v31 view];
      if (result)
      {
        v82 = result;
        [result bringSubviewToFront_];

        v80 = v82;
        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void MultiwayViewController.didDoubleTapGridParticipantView(_:participant:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v9 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  specialized >> prefix<A>(_:)();
  v11 = v10;
  v13 = v12;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling double tap of participant in grid view controller %@", 61, 2, &dword_1BBC58000, v7, v14, v8);

  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v21, (v2 + v15), sizeof(v21));
  memcpy(v22, (v2 + v15), 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v22) != 1)
  {
    v16 = v22[6];
    v17 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    swift_beginAccess();
    if (*(v16 + v17) == 1)
    {
      memcpy(v20, v21, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v20, &v19);
      MultiwayViewController.toggleFocusedParticipant(_:)(a2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }
}

uint64_t MultiwayViewController.didSingleTapRosterParticipantView(_:participant:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v13 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  specialized >> prefix<A>(_:)();
  v15 = v14;
  v17 = v16;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling single tap of participant in list view controller %@", 61, 2, &dword_1BBC58000, v11, v18, v12);

  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v29, (v3 + v19), sizeof(v29));
  memcpy(v30, (v3 + v19), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v30);
  if (result != 1)
  {
    memcpy(v28, v29, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v28, &v27);
    if (!MultiwayViewController.participantIsShownInGrid(_:)())
    {
      MultiwayViewController.markParticipantWithIdentifierAsUserSelected(_:)(a2 + *(v13 + 20));
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      MultiwayViewController.mostActiveParticipants.getter();
      if (EnumTagSinglePayload == 1)
      {
        v26[0] = 512;
        ParticipantGridViewController.update(with:updateReason:)(v22, v26);
      }

      else
      {
        ParticipantGridViewController.defocus(to:)(v22);
      }

      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
      ParticipantGridViewController.select(_:forFocusing:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      MultiwayViewController.mostActiveParticipants.getter();
      MultiwayViewController.activeRemoteParticipants(in:)();

      swift_beginAccess();

      Array<A>.participants(notIn:)();
      v24 = v23;

      v25[3] = 513;
      ParticipantListViewController.update(with:updateReason:)(v24);

      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.didTapLocalParticipantView(_:eventType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.conversationKit;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling tap of local participant view", 38, 2, &dword_1BBC58000, v9, v10, MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v5 + v11), sizeof(__dst));
  memcpy(v32, (v5 + v11), sizeof(v32));
  result = getEnumTag for TapInteraction.EventType(v32);
  if (result != 1)
  {
    v13 = v32[6];
    v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    result = specialized Sequence<>.contains(_:)(*(v13 + v14), &outlined read-only object #0 of MultiwayViewController.didTapLocalParticipantView(_:eventType:));
    if ((result & 1) == 0)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      MultiwayViewController.focusLocalParticipant()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }

    if (!a2)
    {
      return result;
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v15 = a2;
    [v15 bounds];
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v20 = CGRectGetWidth(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v21 = CGRectGetHeight(v34);
    v22 = *(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if ((*(v22 + 16) & 0x80000000) == 0)
    {
LABEL_21:

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }

    v23 = *(v22 + 1);
    if (Features.tapToTrackEnabled.getter())
    {
      v24 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
      swift_beginAccess();
      if (*(v5 + v24))
      {

        DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)(__PAIR128__(*&a4 / v21, *&a3 / v20), v23);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_20;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "No DockKitAccessoryManager found";
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_20;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "DockKit Tap to track feature is not enabled";
    }

    _os_log_impl(&dword_1BBC58000, v26, v27, v29, v28, 2u);
    MEMORY[0x1BFB23DF0](v28, -1, -1);
LABEL_20:

    goto LABEL_21;
  }

  return result;
}

uint64_t MultiwayViewController.didSingleTapBackground()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2 - 8];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.conversationKit;
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling single tap on background view", 38, 2, &dword_1BBC58000, v4, v5, MEMORY[0x1E69E7CC0]);
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v14, (v0 + v6), sizeof(v14));
  memcpy(v15, (v0 + v6), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v15);
  if (result != 1)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v8 = type metadata accessor for Participant(0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
    {
      memcpy(v13, v14, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v13, v12);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v9 = v15[6];
      v10 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v9 + v10))
      {
        if (*(v9 + v10) == 1)
        {
          HIBYTE(v11) = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v11 + 7, 0xFCu, 1);
          MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
        }
      }

      else
      {
        HIBYTE(v11) = 1;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v11 + 7, 0xFCu, 1);
      }
    }

    else
    {
      memcpy(v13, v14, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v13, v12);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      MultiwayViewController.unfocusFocusedParticipant()();
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.toggleFocusedParticipant(_:)(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for UUID();
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v56 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v23 = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v69, &v2[v25], sizeof(v69));
  memcpy(v70, &v2[v25], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v70);
  if (result != 1)
  {
    v26 = v70[1];
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v27 = type metadata accessor for Participant(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
    {
      memcpy(v68, v69, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v68, v67);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v28 = v66;
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v3);
      goto LABEL_13;
    }

    v58 = v26;
    v59 = v2;
    v29 = *(v63 + 16);
    v30 = &v11[*(v27 + 20)];
    v31 = v27;
    v32 = v66;
    v29(v66, v30, v3);
    memcpy(v68, v69, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v68, v67);
    _s15ConversationKit11ParticipantVWOhTm_17();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v3);
    v57 = v31;
    v29(v16, (v65 + *(v31 + 20)), v3);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
    v33 = *(v62 + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v6, 1, v3) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v6[v33], 1, v3);
      v2 = v59;
      v27 = v57;
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v28 = v66;
LABEL_12:
        if (__swift_getEnumTagSinglePayload(v28, 1, v3) != 1)
        {
          MultiwayViewController.unfocusFocusedParticipant()();
LABEL_14:
          v41 = v64;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          if (__swift_getEnumTagSinglePayload(v41, 1, v27) == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
            v42 = &_s15ConversationKit11ParticipantVSgMd;
            v43 = &_s15ConversationKit11ParticipantVSgMR;
            v44 = v41;
          }

          else
          {
            if (*(v41 + *(v27 + 28)))
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
              _s15ConversationKit11ParticipantVWOhTm_17();
              return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            }

            _s15ConversationKit11ParticipantVWOhTm_17();
            v45 = v70[6];
            v46 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
            v47 = swift_beginAccess();
            if (!*(v45 + v46))
            {
              if (MultiwayViewController.effectsBrowserIsOpaque.getter(v47, v48, v49, v50, v51, v52, v53, v54))
              {
                v55 = 2;
              }

              else
              {
                v55 = 1;
              }

              [v2 setControlsState:v55 animated:1];
              v67[0] = 1;
              MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v67, 0xFCu, 1);
            }

            v42 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
            v43 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR;
            v44 = v69;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, v42, v43);
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

LABEL_13:
        MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v65, 1);
        goto LABEL_14;
      }
    }

    else
    {
      v35 = v61;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(&v6[v33], 1, v3) != 1)
      {
        v36 = v63;
        v37 = v60;
        (*(v63 + 32))(v60, &v6[v33], v3);
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v38 = v35;
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v36 + 8);
        v40(v37, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v40(v38, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v2 = v59;
        v28 = v66;
        v27 = v57;
        if ((v39 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v63 + 8))(v35, v3);
      v2 = v59;
      v27 = v57;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v28 = v66;
    goto LABEL_13;
  }

  return result;
}

uint64_t MultiwayViewController.focusLocalParticipant()()
{
  v0 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v0);
  specialized >> prefix<A>(_:)();
  v9 = v8;
  v11 = v10;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Focusing on local participant %@", 32, 2, &dword_1BBC58000, v6, v12, v7);

  MultiwayViewController.unfocusFocusedParticipant()();
  _s15ConversationKit11ParticipantVWOcTm_16();
  MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v2, 1);
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t MultiwayViewController.collapseLocalParticipantView()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "collapseLocalParticipantView", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v6), sizeof(__dst));
  memcpy(v14, (v1 + v6), sizeof(v14));
  result = getEnumTag for TapInteraction.EventType(v14);
  if (result != 1)
  {
    v8 = v14[6];
    v9 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    if ((*(v8 + v9) & 0xFE) == 0x80)
    {
      memcpy(v12, __dst, sizeof(v12));
      outlined init with copy of MultiwayViewController.ViewContent(v12, v11);
      v10 = MultiwayViewController.localParticipantCornerToUse.getter() | 0x40;
    }

    else
    {
      memcpy(v12, __dst, sizeof(v12));
      outlined init with copy of MultiwayViewController.ViewContent(v12, v11);
      v10 = 128;
    }

    v12[0] = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v12, v10, 1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.localParticipantViewDidLongPress(_:localParticipantView:)()
{
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_279_0(v6);
  OUTLINED_FUNCTION_279_0(v7);
  result = OUTLINED_FUNCTION_46_26(v7);
  if (!v1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v2 = v7[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v3 = v2;
    OUTLINED_FUNCTION_208();
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      MultiwayViewController.toggleReactionsView()(v5);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

void MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v29, (v0 + v4), sizeof(v29));
  OUTLINED_FUNCTION_46_26(v29);
  if (!v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v6 = v29[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v7 = v6;
    OUTLINED_FUNCTION_288();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v9, static Logger.conversationKit);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v11))
      {
        v12 = OUTLINED_FUNCTION_42();
        v13 = swift_slowAlloc();
        v27[0] = v13;
        *v12 = 136315138;
        v14 = String.init<A>(reflecting:)();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v27);

        *(v12 + 4) = v16;
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_4_4();
      }

      switch(v3)
      {
        case 1:
          MultiwayViewController.pauseVideoMessageRecording()();
          goto LABEL_26;
        case 2:
          type metadata completion function for SyncedScreeningAlphaGradientView();
          MultiwayViewController.cancelVideoRecording(completion:)();
          goto LABEL_26;
        case 3:
          ConversationController.stopRecordingVideoMessage()();
          goto LABEL_26;
        case 4:
          MultiwayViewController.collapseLocalParticipantView()();
          goto LABEL_26;
        case 5:
          MultiwayViewController.toggleRecordingLocalVideo()();
          goto LABEL_26;
        case 6:
          MultiwayViewController.toggleLocalOrientation()();
          goto LABEL_26;
        case 7:
          type metadata accessor for SpringBoardUtilities();
          OUTLINED_FUNCTION_20();
          v26 = swift_allocObject();
          OUTLINED_FUNCTION_95_3(v26);
          swift_unknownObjectWeakInit();

          OUTLINED_FUNCTION_15_14();
          specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

          break;
        case 8:
          MultiwayViewController.toggleCameraBlur()();
          goto LABEL_26;
        case 9:
          MultiwayViewController.handleLocalParticipantViewDidTapFlipCamera()();
          goto LABEL_26;
        case 10:
          MultiwayViewController.toggleCinematicFraming()();
          goto LABEL_26;
        case 11:
          ConversationController.callBack()();
          goto LABEL_26;
        case 12:
          if (!*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_244_2();
          OUTLINED_FUNCTION_4_137();
          v23 = *(v22 + 184);
          v25 = v24;
          OUTLINED_FUNCTION_262_2();
          v23(0xD00000000000001ALL);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

          break;
        case 13:
          MultiwayViewController.closeVideoMessageCallBack()();
          goto LABEL_26;
        case 14:
          ConversationController.toggleReactionEffectGesture()();
          goto LABEL_26;
        case 15:
          ConversationController.toggleStudioLight()();
          goto LABEL_26;
        case 16:
          MultiwayViewController.toggleBackgroundReplacement()();
          goto LABEL_26;
        default:
          MultiwayViewController.startRecordingVideoMessage()();
          goto LABEL_26;
      }
    }

    else
    {
LABEL_26:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void MultiwayViewController.toggleRecordingLocalVideo()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 312))(ObjectType, v1))
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID;
    swift_beginAccess();
    if (*(v3 + 8))
    {
      ConversationController.stopRecordingLocalVideo()();
    }

    else
    {
      ConversationController.startRecordingLocalVideo()();
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.toggleLocalOrientation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_110_7(&one-time initialization token for logger);
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v5);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((*(v1 + v11) & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = ConversationController.deviceOrientation.setter(v12);
    v21 = MultiwayViewController.constraintController.getter(v13, v14, v15, v16, v17, v18, v19, v20);
    if (!v21 || (v22 = v21, v23 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LODWORD(v23) = v22[v23], v22, v23 != 128))
    {
      v24 = MultiwayViewController.localParticipantCornerToUse.getter();
      MultiwayViewController.setLocalParticipantState(_:animated:)(v24 | 0x40u, 1);
    }
  }
}

void closure #1 in MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:)(char a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      MultiwayViewController.toggleLocalParticipantEffectsButton()();
    }
  }
}

void MultiwayViewController.handleLocalParticipantViewDidTapFlipCamera()()
{
  if ([*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) frsvEnabled])
  {
    ConversationController.toggleFRSV()();
  }

  else
  {
    MultiwayViewController.showButtonShelfIfFrontCamera(_:)(0);
    ConversationController.swapLocalParticipantCamera()();

    MultiwayViewController.updateShouldShowReactionPickerTipView()();
  }
}

uint64_t MultiwayViewController.pauseVideoMessageRecording()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v10, (v0 + v1), sizeof(v10));
  result = getEnumTag for TapInteraction.EventType(v10);
  if (result != 1)
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xF0);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v5 = v3;
    LOBYTE(v4) = v4();

    if (VideoMessageController.State.rawValue.getter(v4) == 0x676E696D726177 && v6 == 0xE700000000000000)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }
    }

    ConversationController.pauseRecordingVideoMessage()();
    LocalParticipantView.endCountdown()();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.startRecordingVideoMessage()()
{
  v1 = v0;
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 0, 0);
  MultiwayViewController.removeAllEffectsObjects()();
  MultiwayViewController.localVideoProvider.getter();
  v2 = __src[3];
  v3 = __src[4];
  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  (*(v3 + 96))(0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v4), sizeof(__dst));
  memcpy(__src, (v1 + v4), sizeof(__src));
  result = getEnumTag for TapInteraction.EventType(__src);
  if (result != 1)
  {
    memcpy(v32, __src, sizeof(v32));
    v6 = MultiwayViewController.call.getter();
    memcpy(v31, __dst, sizeof(v31));
    outlined init with copy of MultiwayViewController.ViewContent(v31, v30);
    v7 = [v6 isSendingVideo];

    if (v7)
    {
      v16 = MultiwayViewController.isPresentingEffectsBrowser.getter(v8, v9, v10, v11, v12, v13, v14, v15);
      v17 = MEMORY[0x1E69E7D40];
      if (v16)
      {
        if (__src[10])
        {
          v18 = *((*MEMORY[0x1E69E7D40] & *__src[10]) + 0x98);
          v19 = __src[10];
          v18(0);
        }

        v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
        swift_beginAccess();
        *(v1 + v20) = 0;
        MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
      }

      v21 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
      v22 = *((*v17 & *v21) + 0xF0);
      v23 = v21;
      LOBYTE(v22) = v22();

      if (VideoMessageController.State.rawValue.getter(v22) == 0x7964616572 && v24 == 0xE500000000000000)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          [__src[7] updateCountdownWith_];
          v27 = swift_allocObject();
          memcpy((v27 + 16), v32, 0xE8uLL);
          v28 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v29 = swift_allocObject();
          memcpy((v29 + 16), v32, 0xE8uLL);
          *(v29 + 248) = v28;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          outlined init with copy of [CaptionSectioner.SpeakerSection]();

          ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        }
      }

      ConversationController.startRecordingVideoMessage()();
    }

    else
    {
      MultiwayViewController.showCameraAlert()();
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

Swift::Void __swiftcall MultiwayViewController.closeVideoMessageCallBack()()
{
  v0 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_iOSDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    [Strong unansweredCallUIDismissed];
    Strong = swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_33_42(Strong, v2, v3, v4, v5, v6, v7, v8, v12);
  v9 = *v0;
  if (*v0)
  {
    v10 = *(v0 + 8);

    v9(v11);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
  }
}

Swift::Void __swiftcall MultiwayViewController.pipDidRotate()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v7, v8, v9);
  OUTLINED_FUNCTION_46_26(&v18);
  if (!v10)
  {
    v11 = *(v6 + 104);
    v12 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
    OUTLINED_FUNCTION_3_5(&v11[OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates], &v17);
    v13 = v11[v12];
    v11[v12] = 0;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v1, 1, v4);
    if (v10)
    {
      v14 = v11;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_1_184();
      OUTLINED_FUNCTION_2_40();
      _s15ConversationKit11ParticipantVWObTm_7();
      v15 = v11;
      if (v13)
      {
        OUTLINED_FUNCTION_6_4();
        MostActiveParticipantViewController.focus(on:)();
        v16 = OUTLINED_FUNCTION_215_3();
        MostActiveParticipantViewController.update(participant:broadcastingState:)(v16);
      }

      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MostActiveParticipantViewController.handleParticipantVideoRotationForPIP()();
  }

  OUTLINED_FUNCTION_49();
}

BOOL MultiwayViewController.canShowReactionsView()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &selRef_sharedInstance;
  v6 = &selRef_isRecordingAllowed;
  v7 = &selRef_displayString;
  if (os_log_type_enabled(v3, v4))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136315906;
    v10 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    __dst[0] = *(v10 + v11);
    type metadata accessor for TUConversationState(0);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v40);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v15, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v18 = *(v15 + 6);
      v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v39 = *(v18 + v19);
      v17 = String.init<A>(reflecting:)();
      v16 = v20;
    }

    v5 = &selRef_sharedInstance;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v40);

    *(v8 + 14) = v21;
    *(v8 + 22) = 2080;
    v22 = v10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v39 = *(v22 + 16) >> 7;
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v40);

    *(v8 + 24) = v25;
    *(v8 + 32) = 1024;
    v26 = [objc_opt_self() sharedInstance];
    v6 = &selRef_isRecordingAllowed;
    v27 = [v26 videoDeviceController];

    v7 = &selRef_displayString;
    LODWORD(v26) = [v27 currentInputSupportsReactionEffects];

    *(v8 + 34) = v26;
    _os_log_impl(&dword_1BBC58000, v3, v4, "canShowReactionsView - conversationState: %s, localParticipantState: %s, isVideoEnabled: %s, cameraSupportsReactions:%{BOOL}d", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  else
  {
  }

  v28 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  result = 0;
  if (*(v28 + v29) == 3)
  {
    v30 = v28 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v30 + 16) < 0)
    {
      v31 = [objc_opt_self() *v5];
      v32 = [v31 v6[278]];

      LODWORD(v31) = [v32 v7[275]];
      if (v31)
      {
        v33 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
        swift_beginAccess();
        memcpy(__dst, v33, sizeof(__dst));
        if (getEnumTag for TapInteraction.EventType(__dst) != 1)
        {
          v34 = *(v33 + 6);
          v35 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          swift_beginAccess();
          v36 = *(v34 + v35);
          if (v36 < 0x40 || (v36 & 0xC0) == 0x40)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL MultiwayViewController.inCallControlsVisible.getter()
{
  result = 1;
  if ((MultiwayViewController.isModallyPresentingCallDetails.getter() & 1) == 0)
  {
    v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_201_3();
    OUTLINED_FUNCTION_3_0();
    v3 = swift_beginAccess();
    OUTLINED_FUNCTION_135_3(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_46_26(v21);
    if (v11)
    {
      return 0;
    }

    v12 = *(v2 + 48);
    v13 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v12 + v13) - 1 > 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiwayViewController.isCameraMixedWithScreen.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v2 = type metadata accessor for Participant(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_16();
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWOcTm_16();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantVWOhTm_17();
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    goto LABEL_5;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
  v5 = *(v4 + 48);
  v6 = (v0 + *(v4 + 64));
  outlined consume of Participant.CopresenceInfo?(*v6, v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7]);
  memcpy(v11, (v0 + v5), sizeof(v11));
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  (*(v7 + 8))(v0);
  memcpy(v10, &v11[16], 0x4BuLL);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of Participant.MediaInfo(v11);
  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (!v10[0])
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v8 = BYTE1(v10[9]);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  return v8 & 1;
}

void MultiwayViewController.captionsViewController(_:didRequestToBeMinimized:)(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v17);
  OUTLINED_FUNCTION_46_26(v17);
  if (v12 || (v13 = *(v4 + 48), v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v13 + v14)))
  {
    if (a2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = v15;
    MultiwayViewController.updateCaptionsLayoutState(_:)(&v16, v5, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t MultiwayViewController.shouldShowTranscriptDrawer.getter()
{
  if (static Platform.current.getter() == 3)
  {
    v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_146_3(v26);
    OUTLINED_FUNCTION_46_26(v26);
    if (!v15)
    {
      v4 = *(v1 + 48);
      v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
      OUTLINED_FUNCTION_3_0();
      v6 = swift_beginAccess();
      v7 = *(v4 + v5);
      OUTLINED_FUNCTION_135_3(v6, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_46_26(v25);
      if (v15)
      {
        if (v7)
        {
LABEL_14:
          v2 = ConversationController.isOneToOneModeEnabled.getter();
          return v2 & 1;
        }
      }

      else
      {
        v16 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        if (*(v4 + v16) <= 0x80u && v7 != 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t MultiwayViewController.participantsViewController(_:didTapKickMember:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_223_3();
  v7 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v7, v8, v5);
  if (v9)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_33_0();
  _s15ConversationKit11ParticipantVWObTm_7();
  ConversationController.canKick(_:)();
  if (v11)
  {
    MultiwayViewController.showKickParticipantAlert(toKick:)();
  }

  OUTLINED_FUNCTION_0_220();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

void MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  OUTLINED_FUNCTION_29();
  v41 = v0;
  v37 = v1;
  v2 = type metadata accessor for Participant(0);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v40 = v4;
  v39 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v10.super.isa = v8;
  OUTLINED_FUNCTION_17_0(v9 + 5, 0x80000001BC505C50, 0x61737265766E6F43, 0xEF74694B6E6F6974, v10);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = OUTLINED_FUNCTION_13_12(v11);
  *(v12 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v13 = v42;
  v14 = v43;
  v15 = v44;

  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  String.init(format:_:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v36 = v7;
  v16 = [v7 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v17.super.isa = v16;
  OUTLINED_FUNCTION_17_0(0xD00000000000001ELL, 0x80000001BC505C80, 0x61737265766E6F43, 0xEF74694B6E6F6974, v17);

  OUTLINED_FUNCTION_153_3();
  v22 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v18, v19, v20, v21, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v23 = [v7 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v24.super.isa = v23;
  OUTLINED_FUNCTION_17_0(0xD000000000000032, 0x80000001BC505CA0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v24);

  OUTLINED_FUNCTION_20();
  v25 = swift_allocObject();
  v26 = v41;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_16();
  *(swift_allocObject() + 16) = v25;
  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v27 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v28 = [v36 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v29.super.isa = v28;
  OUTLINED_FUNCTION_17_0(v30, v31, v32, v33, v29);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_62_0();
  v34 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v22 addAction_];
  [v22 addAction_];
  OUTLINED_FUNCTION_259(v26, sel_presentViewController_animated_completion_, v22);

  OUTLINED_FUNCTION_30_0();
}

uint64_t MultiwayViewController.videoVisibility(for:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v17, v3, sizeof(v17));
  if (getEnumTag for TapInteraction.EventType(v17) == 1 || (v4 = v3[1], memcpy(v16, v3, 0xE8uLL), getEnumTag for TapInteraction.EventType(v16) == 1))
  {
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    return *(*(v5 + v6) + 16);
  }

  else
  {
    v9 = *v3;
    v10 = v4;
    v11 = v9;
    ParticipantGridViewController.participantIdentifiers.getter();
    v13 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v15[2] = a1;
    v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v15, v13);

    if (v14)
    {

      return 0;
    }

    else
    {
      v7 = ParticipantListViewController.visibilityIndex(for:)(a1);
    }
  }

  return v7;
}

uint64_t MultiwayViewController.prominenceIndex(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  MultiwayViewController.mostActiveParticipants.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = a1;
    v27 = v1;
    v10 = *(v3 + 28);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25[1] = v8;
    v12 = v8 + v11;
    v13 = *(v4 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (*&v7[v10])
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v16;
        }

        v15 = *(v14 + 16);
        if (v15 >= *(v14 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v17;
        }

        *(v14 + 16) = v15 + 1;
        _s15ConversationKit11ParticipantVWObTm_7();
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      v12 += v13;
      --v9;
    }

    while (v9);

    a1 = v26;
    v1 = v27;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v18);
  v25[-2] = a1;
  v19 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), &v25[-4], v14);
  v21 = v20;

  if (v21)
  {
    v22 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v23 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    return *(*(v22 + v23) + 16) - 1;
  }

  return v19;
}

void MultiwayViewController.spatialPosition(for:)()
{
  OUTLINED_FUNCTION_218_4();
  v1 = v0;
  v3 = v2;
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v20);
  if (getEnumTag for TapInteraction.EventType(v20) == 1 || (v5 = *(v4 + 1), OUTLINED_FUNCTION_190_1(v19), OUTLINED_FUNCTION_46_26(v19), v6))
  {
LABEL_13:
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_216_3();
    return;
  }

  v7 = *v4;
  v8 = v5;
  v9 = v7;
  ParticipantGridViewController.participantIdentifiers.getter();
  v10 = OUTLINED_FUNCTION_24_1();
  v11 = type metadata accessor for Participant(v10);
  MEMORY[0x1EEE9AC00](v11);
  v18[2] = v12;
  v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, v8);

  v14 = [v1 view];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      ParticipantGridViewController.spatialPosition(for:relativeTo:)(v3, v14);
LABEL_10:
      OUTLINED_FUNCTION_40_1();

      v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (!*&v1[v16])
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_35();
        MultiwayViewController.rotate(portraitRect:for:)(v17);
        OUTLINED_FUNCTION_40_1();
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  else if (v14)
  {
    ParticipantListViewController.spatialPosition(for:relativeTo:)(v3, v14);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t MultiwayViewController.presentationContext(for:withVideoVisibility:withProminence:withSpatialPosition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  result = type metadata accessor for Participant(0);
  v19 = a1 + *(result + 28);
  if (*v19 && (*(v19 + 16) & 1) == 0)
  {
    v21 = *(v19 + 8);
    result = MultiwayViewController.videoQuality(for:)(a1 + *(result + 20));
    v20 = a3 & 1;
    *a5 = v21;
    *(a5 + 8) = result;
    *(a5 + 16) = a2;
    *(a5 + 24) = a4;
    *(a5 + 32) = a6;
    *(a5 + 40) = a7;
    *(a5 + 48) = a8;
    *(a5 + 56) = a9;
  }

  else
  {
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v20 = 2;
  }

  *(a5 + 64) = v20;
  return result;
}

uint64_t MultiwayViewController.videoQuality(for:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v62 = (&v51 - v18);
  v19 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v63, v19, 0xE8uLL);
  Enum = getEnumTag for TapInteraction.EventType(v63);
  result = 0;
  if (Enum != 1)
  {
    v58 = v3;
    v59 = v4;
    v57 = v8;
    v22 = v1;
    v23 = v19[1];
    ParticipantGridViewController.participantIdentifiers.getter();
    v25 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v56 = a1;
    *(&v51 - 2) = a1;
    v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v51 - 4), v25);

    if (!v26)
    {
      goto LABEL_25;
    }

    ParticipantGridViewController.participantIdentifiers.getter();
    v28 = *(v27 + 16);

    v55 = v22;
    v29 = *(v22 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults);
    v30 = *(v22 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    if ((v30[34])(ObjectType, v30) >= v28)
    {

      return 2;
    }

    v52 = ObjectType;
    v53 = v29;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v32 = type metadata accessor for Participant(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v32);
    v54 = v23;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v34 = v62;
      v35 = v58;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, v58);
      (*(v59 + 16))(v16, v56, v35);
    }

    else
    {
      v36 = *(v32 + 20);
      v35 = v58;
      v37 = *(v59 + 16);
      v34 = v62;
      v37(v62, &v11[v36], v58);
      _s15ConversationKit11ParticipantVWOhTm_17();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      v37(v16, v56, v35);
    }

    __swift_storeEnumTagSinglePayload(v16, 0, 1, v35);
    v38 = *(v6 + 48);
    v39 = v57;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v39, 1, v35) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v35) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_22:

        return 2;
      }
    }

    else
    {
      v40 = v61;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v35) != 1)
      {
        v62 = v30;
        v47 = v59;
        v46 = v60;
        (*(v59 + 32))(v60, v39 + v38, v35);
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = v40;
        v49 = *(v47 + 8);
        v49(v46, v35);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v49(v48, v35);
        v30 = v62;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v58)
        {
          goto LABEL_22;
        }

LABEL_14:
        v23 = v54;
        ParticipantGridViewController.participantIdentifiers.getter();
        v42 = *(v41 + 16);

        v43 = v52;
        if ((v30[35])(v52, v30) >= v42)
        {
          goto LABEL_19;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if (Features.isICUIRedesignEnabled.getter())
        {
          v44 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
          v45 = v55;
          swift_beginAccess();
          if (*(v45 + v44) == 1)
          {
LABEL_19:

            return 1;
          }
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v50 = (v30[31])(v43, v30);

          return (v50 & 1) != 0;
        }

LABEL_25:

        return 0;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v59 + 8))(v40, v35);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_14;
  }

  return result;
}

ConversationKit::MultiwayViewController::VideoVisibility __swiftcall MultiwayViewController.VideoVisibility.init(visibility:isInCanvas:)(Swift::Int visibility, Swift::Bool isInCanvas)
{
  v2 = isInCanvas;
  result.visibility = visibility;
  result.isInCanvas = v2;
  return result;
}

void MultiwayViewController.inCallControlsViewController(_:didTap:from:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_185_5();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_229_0();
  v12(v11);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_63:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_5:
    static os_log_type_t.error.getter();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = OUTLINED_FUNCTION_13_12(v14);
    *(v15 + 16) = xmmword_1BC4BA940;
    v146[29] = v6;
    type metadata accessor for CNKCommand(0);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v19);

LABEL_61:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_191_0(v147);
  OUTLINED_FUNCTION_191_0(v148);
  OUTLINED_FUNCTION_46_26(v148);
  if (v13)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  switch(v6)
  {
    case 0:
    case 1:
    case 11:
    case 12:
    case 15:
    case 18:
      goto LABEL_61;
    case 2:
      v20 = OUTLINED_FUNCTION_24_56();
      memcpy(v20, v21, v22);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.removeAllEffectsObjects()();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_4_137();
      v24 = *(v23 + 376);
      v26 = v25;
      v24();

      ConversationController.leaveConversation(reason:)();
      goto LABEL_60;
    case 3:
      v38 = OUTLINED_FUNCTION_24_56();
      memcpy(v38, v39, v40);
      OUTLINED_FUNCTION_145_6();
      ConversationController.joinConversation()();
      goto LABEL_60;
    case 4:
      v51 = OUTLINED_FUNCTION_24_56();
      memcpy(v51, v52, v53);
      OUTLINED_FUNCTION_145_6();
      ConversationController.swapLocalParticipantCamera()();
      v54 = v149;
      v55 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      switch(*(v54 + v55))
      {
        case 0:
        case 1:
        case 2:
        case 3:
          goto LABEL_60;
        case 4:
          [v2 setControlsState:1 animated:1];
          goto LABEL_60;
        case 5:
          [v2 setControlsState:2 animated:1];
          goto LABEL_60;
        case 6:
          [v2 setControlsState:3 animated:1];
          goto LABEL_60;
        default:
          goto LABEL_65;
      }

    case 5:
      v35 = OUTLINED_FUNCTION_24_56();
      memcpy(v35, v36, v37);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleAudioMute()();
      goto LABEL_60;
    case 6:
      v48 = OUTLINED_FUNCTION_24_56();
      memcpy(v48, v49, v50);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleVideoMute(shouldPauseIfStopped:)(0);
      goto LABEL_60;
    case 7:
      v27 = OUTLINED_FUNCTION_24_56();
      memcpy(v27, v28, v29);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleCinematicFraming()();
      goto LABEL_60;
    case 8:
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_61;
      }

      v31 = Strong;
      v32 = OUTLINED_FUNCTION_24_56();
      memcpy(v32, v33, v34);
      OUTLINED_FUNCTION_145_6();
      [v31 viewControllerDidRequestAddParticipants:v2 showContacts:0];
      swift_unknownObjectRelease();
      goto LABEL_60;
    case 9:
      v44 = v149;
      v45 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v46 = *(v44 + v45) - 2;
      if (v46 > 4)
      {
        v47 = 4;
      }

      else
      {
        v47 = qword_1BC4E9570[v46];
      }

      [v2 setControlsState:v47 animated:1];
      goto LABEL_61;
    case 10:
      v107 = OUTLINED_FUNCTION_24_56();
      memcpy(v107, v108, v109);
      OUTLINED_FUNCTION_145_6();
      v110 = type metadata completion function for SyncedScreeningAlphaGradientView();
      ConversationController.openMessagesConversation(completion:)(v110, v111, v112, v113, v114, v115, v116, v117, v137, v138, *(&v138 + 1), v139, v140, v141, v142, *(&v142 + 1), v143, v144, v145, v146[0]);
      goto LABEL_60;
    case 13:
      v41 = OUTLINED_FUNCTION_24_56();
      memcpy(v41, v42, v43);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.handleToggleLayoutAction()();
      goto LABEL_60;
    case 14:
      v121 = OUTLINED_FUNCTION_24_56();
      if (v4)
      {
        memcpy(v121, v122, v123);
        OUTLINED_FUNCTION_145_6();
        v124 = v4;
LABEL_57:
        v136 = v4;
        MultiwayViewController.handleShareLinkAction(_:)(v124);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);

        goto LABEL_61;
      }

      memcpy(v121, v122, v123);
      OUTLINED_FUNCTION_145_6();
      v135 = [v2 view];
      if (v135)
      {
        v124 = v135;
        goto LABEL_57;
      }

      __break(1u);
LABEL_65:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
    case 16:
      v56 = OUTLINED_FUNCTION_24_56();
      memcpy(v56, v57, v58);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)(v59);
      goto LABEL_60;
    case 17:
      v92 = OUTLINED_FUNCTION_24_56();
      memcpy(v92, v93, v94);
      OUTLINED_FUNCTION_145_6();
      ConversationController.cancelJoinCountdown()();
      goto LABEL_60;
    case 19:
      v118 = OUTLINED_FUNCTION_24_56();
      memcpy(v118, v119, v120);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.handleUserDidToggleCaptions()();
      goto LABEL_60;
    case 20:
      v60 = OUTLINED_FUNCTION_24_56();
      memcpy(v60, v61, v62);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v63 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v63, static Logger.conversationKit);
      v64 = v2;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 67109120;
        v68 = MultiwayViewController.call.getter();
        v69 = TUCall.isBlocked()();

        *(v67 + 4) = v69;
        _os_log_impl(&dword_1BBC58000, v65, v66, "call is blocked() : %{BOOL}d", v67, 8u);
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v65 = v64;
      }

      v125 = MultiwayViewController.call.getter();
      v126 = TUCall.isBlocked()();

      if (v126)
      {
        v91 = MultiwayViewController.call.getter();
        TUCall.unblock()();
        goto LABEL_48;
      }

      v127 = *(&v64->isa + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder);
      v128 = MultiwayViewController.call.getter();
      if (one-time initialization token for faceTime != -1)
      {
        OUTLINED_FUNCTION_9_62(&one-time initialization token for faceTime);
      }

      v129 = OUTLINED_FUNCTION_35_30();
      v99 = specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(v129, v130, v131, v132, 0, v127);

      v133 = [v64 presentedViewController];
      if (v133)
      {
        v134 = v133;
        OUTLINED_FUNCTION_259(v133, sel_presentViewController_animated_completion_, v99);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        goto LABEL_61;
      }

LABEL_53:

      goto LABEL_60;
    case 21:
      v70 = OUTLINED_FUNCTION_24_56();
      memcpy(v70, v71, v72);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v73, static Logger.conversationKit);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v75))
      {
        v76 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v76);
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      v82 = MultiwayViewController.call.getter();
      if (one-time initialization token for faceTime != -1)
      {
        OUTLINED_FUNCTION_9_62(&one-time initialization token for faceTime);
      }

      v83 = static ReportSpamManager.faceTime;
      v146[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      v146[4] = &protocol witness table for TUCall;
      v146[0] = v82;
      outlined init with copy of IDSLookupManager(v146, &v142);
      OUTLINED_FUNCTION_77_0();
      v84 = swift_allocObject();
      outlined init with take of TapInteractionHandler(&v142, (v84 + 2));
      v84[8] = 0;
      v84[9] = 0;
      v84[7] = 0;
      outlined init with copy of IDSLookupManager(v146, &v138);
      v85 = swift_allocObject();
      outlined init with take of TapInteractionHandler(&v138, (v85 + 2));
      v85[7] = v83;
      v85[8] = 0;
      v85[9] = 0;
      v85[10] = 0;
      OUTLINED_FUNCTION_24();
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      OUTLINED_FUNCTION_24();
      v87 = swift_allocObject();
      *(v87 + 16) = 0;
      *(v87 + 24) = 0;

      _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F122of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v84, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU0_TATm_0, v85, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v86);
      v89 = v88;

      [0 fetchSharing];
      __swift_destroy_boxed_opaque_existential_1(v146);
      v90 = [v2 presentedViewController];
      if (v90)
      {
        v91 = v90;
        OUTLINED_FUNCTION_259(v90, sel_presentViewController_animated_completion_, v89);

LABEL_48:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      else
      {

LABEL_60:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v147, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
      }

      goto LABEL_61;
    default:
      v95 = OUTLINED_FUNCTION_24_56();
      memcpy(v95, v96, v97);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for default != -1)
      {
        OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
      }

      v98 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v98, &static Log.default);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_163(v100))
      {
        v101 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v101);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v102, v103, v104, v105, v106, 2u);
        OUTLINED_FUNCTION_18();
      }

      goto LABEL_53;
  }
}

double MultiwayViewController.didCreateCollectionViewForInCallControlsViewController(_:)()
{
  OUTLINED_FUNCTION_239_3();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v11);
  OUTLINED_FUNCTION_46_26(v11);
  if (!v4)
  {
    v5 = *(v2 + 16);
    type metadata accessor for InCallControlsViewController(0);
    v6 = v5;
    v7 = v1;
    OUTLINED_FUNCTION_206();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      OUTLINED_FUNCTION_113_4();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v10[0] = 513;

      InCallControlsViewController.update(with:updateReason:)(v9, v10);
    }
  }

  return result;
}

id closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 56);
  LocalParticipantView.isInRoster.setter(a2);
  v9 = *(v8 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  v10 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_isExpanded;
  swift_beginAccess();
  *(v9 + v10) = v7 == 128;
  ParticipantView.isExpanded.didset();
  LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_381;
  v13 = _Block_copy(aBlock);
  v14 = a4;

  [v11 animateWithDuration:0 delay:v13 options:0 animations:0.3 completion:0.1];
  _Block_release(v13);
  result = *(a1 + 64);
  if (result)
  {
    v16 = 0.0;
    v17 = 1.0;
    if (v7 != 128)
    {
      v17 = 0.0;
    }

    if (a3 < 0)
    {
      v16 = v17;
    }

    return [result setAlpha_];
  }

  return result;
}

void closure #1 in closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = a2;
  v4 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView, closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter);
  v7 = v4;
  v5 = 0.0;
  v6 = 1.0;
  if (v3 != 128)
  {
    v6 = 0.0;
  }

  if (v2 < 0)
  {
    v5 = v6;
  }

  [v4 setAlpha_];
}

void closure #2 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
    swift_beginAccess();
    v9 = *&v7[v8];
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x1B8);
    v11 = v9;
    v12 = v10();

    if ((v12 & 1) == 0)
    {
      v13 = &v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memmove(__dst, v13, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v14 = *(v13 + 6);
        v15 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        swift_beginAccess();
        if (static MultiwayViewConstraintsController.LocalParticipantState.== infix(_:_:)(v5, *(v14 + v15)))
        {
          MultiwayViewController.updateZoomControls(for:)(v5);
          if (a4)
          {
            MultiwayViewController.testing_localPreviewDidFinishMinimize()();
          }
        }
      }
    }
  }
}

UIMenu_optional __swiftcall MultiwayViewController.audioRouteMenu()()
{
  v0 = MultiwayViewController.audioRouteMenu()(&selRef_audioRouteMenu);
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t MultiwayViewController.audioRouteGlyph(for:)(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_9_67(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong audioRouteGlyphFor_];
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v1;
}

id MultiwayViewController.audioRouteGlyph(for:buttonStyle:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_67(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong audioRouteGlyphFor:a1 buttonStyle:a2];
  swift_unknownObjectRelease();
  return v5;
}

SEL *MultiwayViewController.audioRouteMenu()(SEL *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_9_67(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *v1];
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v1;
}

BOOL MultiwayViewController.canDismissControls.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_276_1(v80);
  OUTLINED_FUNCTION_276_1(v81);
  OUTLINED_FUNCTION_46_26(v81);
  if (v0)
  {
    return 0;
  }

  else
  {
    v2 = v81[6];
    v3 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_3_0();
    v4 = swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      v12 = OUTLINED_FUNCTION_157_3(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79);
      OUTLINED_FUNCTION_278_1(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
      v1 = MultiwayViewController.inCallConversationBannerHidable()();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }

    else
    {
      return 1;
    }
  }

  return v1;
}

uint64_t MultiwayViewController.isScreenSharingVisible.getter()
{
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  if (v1[1] == 0.0 && v1[2] == 0.0 || (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), OUTLINED_FUNCTION_243_2(), v3))
  {
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
    OUTLINED_FUNCTION_19_1(v2);
    v5 = v0[v4];
  }

  else
  {
    v5 = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationKit);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = swift_slowAlloc();
    v11 = v10;
    *v10 = 67109888;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1024;
    v12 = v1[1] != 0.0;
    if (v1[2] != 0.0)
    {
      v12 = 1;
    }

    *(v10 + 10) = v12;
    *(v10 + 14) = 1024;
    v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v11 + 16) = *(&v7->isa + v13);
    *(v11 + 20) = 1024;
    v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v11 + 22) = *(&v7->isa + v14);

    _os_log_impl(&dword_1BBC58000, v8, v9, "isScreenSharingVisible: %{BOOL}d, isMediaPipped: %{BOOL}d, isPipStashed:%{BOOL}d, isScreenSharingFullScreen:%{BOOL}d", v11, 0x1Au);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v8 = v7;
  }

  return v5;
}

Swift::Void __swiftcall MultiwayViewController.didRejectCall()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.isICUIRedesignEnabled.getter())
  {

    MultiwayViewController.didExpandIncomingCallBanner.setter(0);
  }
}

id MultiwayViewController.updateState(for:preferredControlsSize:presentingMenu:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_91();
  v6 = v5;
  swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v50);
  OUTLINED_FUNCTION_150_1(v51);
  result = OUTLINED_FUNCTION_46_26(v51);
  if (!v16)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v8 = v52;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = v53;
      v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      OUTLINED_FUNCTION_3_0();
      v13 = swift_beginAccess();
      if ((a2 & 1) == 0)
      {
        v14 = *(v11 + v12);
        v15 = v11 + OBJC_IVAR___CNKFaceTimeConstraintsController_bannerControlsSize;
        OUTLINED_FUNCTION_73(v13, v45);
        if ((*(v15 + 16) & 1) == 0 && *v15 == v3)
        {
          v16 = *(v15 + 8) == v2 && v14 == 1;
          if (v16)
          {
            return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
          }
        }

        v44 = *(v15 + 16);
        *v15 = v3;
        *(v15 + 8) = v2;
        *(v15 + 16) = 0;
        MultiwayViewConstraintsController.bannerControlsSize.didset();
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v17 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v19))
        {
          v20 = swift_slowAlloc();
          v43 = v12;
          v46 = swift_slowAlloc();
          *v20 = 136446466;
          v21 = _typeName(_:qualified:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v46);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2082;
          OUTLINED_FUNCTION_3_109();
          v24 = CGSize.debugDescription.getter();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v46);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_1BBC58000, v18, v19, "[%{public}s] set preffered contentSize of banner to %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v27 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          outlined init with copy of ConversationControlsType(&v6[v27], &v46);
          if (v49 == 7 && (v28 = vorrq_s8(v47, v48), !(*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | v46)))
          {
            outlined destroy of ConversationControlsType(&v46);
            v33 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            if (*&v6[v33])
            {
              OUTLINED_FUNCTION_4_137();
              v35 = *(v34 + 1096);
              v37 = v36;
              v35();
              v39 = v38;

              if (static Platform.current.getter())
              {
                MultiwayViewConstraintsController.configure(rosterCellWidth:)(v39, 0);
                v40 = ParticipantListViewController.collectionView.getter();
                if (v40)
                {
                  v41 = v40;
                  v42 = [v40 collectionViewLayout];

                  [v42 invalidateLayout];
                }
              }
            }
          }

          else
          {
            outlined destroy of ConversationControlsType(&v46);
          }
        }

        if (v44)
        {
          goto LABEL_22;
        }
      }

      if (*(v11 + v12))
      {
LABEL_22:
        result = [v6 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v29 = result;
        [result layoutIfNeeded];

        OUTLINED_FUNCTION_202_2();
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v30, v31, v32);
      }
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

Swift::Void __swiftcall MultiwayViewController.presentCallDetails()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v2 = static Features.shared;
  if ((Features.isMoreMenuEnabled.getter() & 1) != 0 && (v2 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent), OUTLINED_FUNCTION_25_54(), swift_beginAccess(), OUTLINED_FUNCTION_190_1(v19), v3 = OUTLINED_FUNCTION_46_26(v19), !v4) && (v2 = v2[3], v5 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController, OUTLINED_FUNCTION_9_67(v3), *(v2 + v5)) && (OUTLINED_FUNCTION_4_137(), v7 = *(v6 + 528), v9 = v8, v2 = v7(), v9, v2) && (v10 = [v2 view], v2, v10))
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
    {
      OUTLINED_FUNCTION_244_2();
      OUTLINED_FUNCTION_4_137();
      v12 = *(v11 + 176);
      v14 = v13;
      OUTLINED_FUNCTION_262_2();
      v12(0xD000000000000027);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
  {
    OUTLINED_FUNCTION_244_2();
    OUTLINED_FUNCTION_4_137();
    v16 = *(v15 + 184);
    v18 = v17;
    OUTLINED_FUNCTION_262_2();
    v16(0xD000000000000027);
  }
}

void MultiwayViewController.presentShareCardViewController(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v12);
  v5 = OUTLINED_FUNCTION_46_26(v12);
  if (!v6)
  {
    v7 = *(v4 + 24);
    v8 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
    OUTLINED_FUNCTION_9_67(v5);
    v9 = *&v7[v8];
    if (v9)
    {
      v10 = v9;
      v11 = OUTLINED_FUNCTION_246();
      a2(v11);
    }
  }
}

void closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "MultiwayViewController: did tap on kick from the kick participant alert", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.kick(_:)();
  }
}

void closure #2 in MultiwayViewController.showKickParticipantAlert(toKick:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "MultiwayViewController: did tap on cancel from the kick participant alert", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t MultiwayViewController.inCallControlsViewController(_:didKick:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_223_3();
  v7 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v7, v8, v5);
  if (v9)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_33_0();
  _s15ConversationKit11ParticipantVWObTm_7();
  ConversationController.canKick(_:)();
  if (v11)
  {
    MultiwayViewController.showKickParticipantAlert(toKick:)();
  }

  OUTLINED_FUNCTION_0_220();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t MultiwayViewController.hasConnectedToCall.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v1 + 8);
  swift_getObjectType();
  v3 = *(v2 + 104);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_45_1();
  v3(v4);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v2 & 1;
}

void MultiwayViewController.participantGridViewController(_:didUpdateVisibleParticipantsFrom:to:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v95);
  OUTLINED_FUNCTION_178_1(&v96);
  OUTLINED_FUNCTION_46_26(&v96);
  if (v12)
  {
LABEL_42:
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v13 = *(v3 + 16);
    v81 = v13;
    if (v13)
    {
      v14 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_284_0(v94);
      outlined init with copy of MultiwayViewController.ViewContent(v94, v93);
      v93[0] = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v93[0];
      OUTLINED_FUNCTION_17_17();
      v17 = v3 + v16;
      OUTLINED_FUNCTION_207_1();
      do
      {
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_78();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v18 = OUTLINED_FUNCTION_136_5();
        v19(v18);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        v93[0] = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v20);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v93[0];
        }

        *(v15 + 16) = v21 + 1;
        OUTLINED_FUNCTION_258_1();
        v22();
        v17 += v89;
        --v13;
      }

      while (v13);
    }

    else
    {
      OUTLINED_FUNCTION_284_0(v94);
      outlined init with copy of MultiwayViewController.ViewContent(v94, v93);
      v15 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v1 + 16);
    v24 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    v82 = v23;
    if (v23)
    {
      v94[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v94[0];
      OUTLINED_FUNCTION_17_17();
      v27 = v24 + v26;
      OUTLINED_FUNCTION_207_1();
      do
      {
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_78();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v28 = OUTLINED_FUNCTION_136_5();
        v29(v28);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        v94[0] = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v30);
          v35 = v34;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v32 = v35;
          v25 = v94[0];
        }

        *(v25 + 16) = v32;
        OUTLINED_FUNCTION_258_1();
        v33();
        v27 += v89;
        --v23;
      }

      while (v23);
    }

    v36 = 0;
    v85 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v37 = v81;
    while (v36 != v37)
    {
      OUTLINED_FUNCTION_165_4();
      v90 = v38;
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v39 = 0;
      v40 = *(v25 + 16);
      while (v40 != v39)
      {
        OUTLINED_FUNCTION_257_1();
        OUTLINED_FUNCTION_13_82();
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, v41);
        v42 = OUTLINED_FUNCTION_273_1();
        v39 = v37;
        if (v42)
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
          v36 = v90;
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v43 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_271_3();
        v43 = v94[0];
      }

      v37 = v81;
      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v45);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v94[0];
      }

      *(v43 + 16) = v46 + 1;
      v85 = v43;
      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v36 = v90;
    }

    v47 = 0;
    v93[0] = v85;
    v48 = MEMORY[0x1E69E7CC0];
LABEL_27:
    while (v47 != v82)
    {
      OUTLINED_FUNCTION_165_4();
      v91 = v49;
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v50 = 0;
      v51 = *(v15 + 16);
      while (v51 != v50)
      {
        OUTLINED_FUNCTION_257_1();
        OUTLINED_FUNCTION_13_82();
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, v52);
        v53 = OUTLINED_FUNCTION_273_1();
        v50 = v37;
        if (v53)
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
          v47 = v91;
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v48;
      if ((v54 & 1) == 0)
      {
        OUTLINED_FUNCTION_271_3();
        v48 = v94[0];
      }

      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v55);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v94[0];
      }

      *(v48 + 16) = v56 + 1;
      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v47 = v91;
    }

    specialized Array.append<A>(contentsOf:)(v48);
    v84 = v93[0];
    v83 = *(v93[0] + 16);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v57 = 0;
    while (1)
    {
      if (v83 == v57)
      {

        MultiwayViewController.updateCornerButtonsVisibility()();
        MultiwayViewController.needsUpdatePresentationContexts.setter(1);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        goto LABEL_42;
      }

      if (v57 >= *(v84 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v92 = v57 + 1;
      v58 = v96;
      v59 = OUTLINED_FUNCTION_215_3();
      v60 = v58;
      v87 = v58;
      ParticipantListViewController.update(participant:broadcastingState:)(v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMR);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1BC4BE790;
      v62 = v97;
      v88 = v97;
      v63 = type metadata accessor for ParticipantGridViewController(0);
      *(v61 + 56) = v63;
      *(v61 + 64) = &protocol witness table for ParticipantGridViewController;
      *(v61 + 32) = v62;
      *(v61 + 96) = type metadata accessor for ParticipantListViewController();
      *(v61 + 104) = &protocol witness table for ParticipantListViewController;
      *(v61 + 72) = v60;
      v64 = v98;
      *(v61 + 136) = type metadata accessor for InCallBannerHostViewController();
      *(v61 + 144) = &protocol witness table for InCallBannerHostViewController;
      *(v61 + 112) = v64;
      v65 = v99;
      *(v61 + 176) = type metadata accessor for MostActiveParticipantViewController(0);
      *(v61 + 184) = &protocol witness table for MostActiveParticipantViewController;
      *(v61 + 152) = v65;
      v66 = v100;
      *(v61 + 216) = type metadata accessor for CaptionsViewController(0);
      *(v61 + 224) = &protocol witness table for CaptionsViewController;
      *(v61 + 192) = v66;
      __swift_project_boxed_opaque_existential_1((v61 + 32), v63);
      v86 = off_1F3ADF178[0];
      v67 = v88;
      v68 = v87;
      v69 = v64;
      v70 = v65;
      v71 = v66;
      v72 = OUTLINED_FUNCTION_206();
      (v86)(v72);
      __swift_project_boxed_opaque_existential_1((v61 + 72), *(v61 + 96));
      v73 = OUTLINED_FUNCTION_26_52();
      v74(v73);
      __swift_project_boxed_opaque_existential_1((v61 + 112), *(v61 + 136));
      v75 = OUTLINED_FUNCTION_26_52();
      v76(v75);
      __swift_project_boxed_opaque_existential_1((v61 + 152), *(v61 + 176));
      v77 = OUTLINED_FUNCTION_26_52();
      v78(v77);
      __swift_project_boxed_opaque_existential_1((v61 + 192), *(v61 + 216));
      v79 = OUTLINED_FUNCTION_26_52();
      v80(v79);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v57 = v92;
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    __break(1u);
  }
}

uint64_t MultiwayViewController.participantGridViewController(_:participantDidHideSash:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_150_1(v9);
  result = OUTLINED_FUNCTION_46_26(v9);
  if (!v1)
  {
    v2 = v9[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v3 = v2;
    MultiwayViewController.bringSubviewToFront(_:)(v2);

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_137();
    v5 = *(v4 + 440);
    v7 = v6;
    LOBYTE(v3) = v5();

    if (v3)
    {
      MultiwayViewController.updateZoomControls(for:)(0xFCu);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.participantGridViewController(_:didDodgeMediaPipWithActiveParticipants:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_279_0(v10);
  OUTLINED_FUNCTION_279_0(&v11);
  result = OUTLINED_FUNCTION_46_26(&v11);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_91_2();
    Array<A>.participants(notIn:)();
    v3 = v2;

    ParticipantListViewController.update(with:updateReason:)(v3);

    v4 = ParticipantListViewController.participantCount.getter() > 0;
    MultiwayViewController.setParticipantListState(_:animated:)(v4, 1);
    v5 = v12;
    if (v12)
    {
      v6 = v13;
      ObjectType = swift_getObjectType();
      v8 = v5;
      v9 = ParticipantListViewController.participantCount.getter();
      (*(v6 + 88))(v9, ObjectType, v6);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.participantGridViewController(_:didSetOverlayHidden:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v105);
  OUTLINED_FUNCTION_178_1(v106);
  result = OUTLINED_FUNCTION_46_26(v106);
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_111_8(result, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    OUTLINED_FUNCTION_217_4(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79);
    ParticipantListViewController.setOverlayHidden(_:)(a2 & 1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.configurableRosterCellWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_146_3(v5);
  OUTLINED_FUNCTION_46_26(v5);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 48) + OBJC_IVAR___CNKFaceTimeConstraintsController_configurableRosterCellWidth;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *v3;
}

void MultiwayViewController.cameraViewController(_:didRenderFrame:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v7, v8, v9);
  OUTLINED_FUNCTION_46_26(v26);
  if (!v10)
  {
    v11 = *(v6 + 72);
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v12 = a1;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = [a2 pixelBuffer];
        [a2 timestamp];
        v16 = objc_allocWithZone(MEMORY[0x1E69865E0]);
        OUTLINED_FUNCTION_15_14();
        OUTLINED_FUNCTION_97_0();
        v21 = @nonobjc AVCVideoFrame.init(pixelBuffer:time:imageData:)(v17, v18, v19, v20, 0, 0xF000000000000000);
        if (v21)
        {
          v22 = v21;
          v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v24 = *(v3 + v23);
          if (v24)
          {
            v25 = v24;
            [v25 encodeProcessedVideoFrame_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.cameraViewControllerPresentationRectWasDoubleTapped(_:)(CFXCameraViewController *a1)
{
  OUTLINED_FUNCTION_159_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_12_3();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_9_37();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_191_0(v13);
  OUTLINED_FUNCTION_191_0(v14);
  OUTLINED_FUNCTION_46_26(v14);
  if (!v8)
  {
    v9 = *(v14[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v10 = v9;
    v3 = UIView.tapInteractions(withTapCount:)(2);

    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) == 0)
      {
        v11 = *(v3 + 32);
LABEL_6:
        v12 = v11;

        TapInteraction.triggerInteraction()();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        return;
      }

LABEL_10:
      v11 = MEMORY[0x1BFB22010](0, v3);
      goto LABEL_6;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }
}

void MultiwayViewController.cameraViewController(_:presentationRectWasPinchedWith:scale:velocity:)(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_9_67(a1);
  OUTLINED_FUNCTION_4_137();
  v5 = *(v4 + 512);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_28_0();
  v5(v8, a2);
}

void MultiwayViewController.cameraViewController(_:didChange:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v25 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v0;
  v11[4] = v3;
  OUTLINED_FUNCTION_7_6(v11);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v26[2] = v12;
  v26[3] = &block_descriptor_95_2;
  v13 = _Block_copy(v26);
  v14 = v5;
  v15 = v0;

  static DispatchQoS.unspecified.getter();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_16_71();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v16, v17);
  v18 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v20, v21, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v22);
  _Block_release(v13);

  v23 = OUTLINED_FUNCTION_181();
  v24(v23);
  (*(v8 + 8))(v1, v25);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in MultiwayViewController.cameraViewController(_:didChange:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = MultiwayViewController.effectsViewController.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v12 = a1;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v15 = MultiwayViewController.effectsBrowserContainerViewController.getter(v14);
      if (v15)
      {
        v16 = v15;
        type metadata accessor for EffectsBrowserContainerViewController();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          (*((*MEMORY[0x1E69E7D40] & *v17) + 0x98))(a3 != 0);
          MultiwayViewController.updateLocalParticipantControls()();
        }
      }

      specialized EffectsHandler.updateAVCEffects(with:)(a3);
    }
  }
}

uint64_t MultiwayViewController.shouldAlwaysPresentExpandedApps(for:)()
{
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController])
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 120);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = v2(v5);

  return v6 & 1;
}

void MultiwayViewController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController))
  {
    OUTLINED_FUNCTION_152_3();
    OUTLINED_FUNCTION_4_137();
    v2 = *(v1 + 128);
    v3;
    v4 = OUTLINED_FUNCTION_206();
    v2(v4);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void MultiwayViewController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController))
  {
    OUTLINED_FUNCTION_152_3();
    OUTLINED_FUNCTION_4_137();
    v2 = *(v1 + 136);
    v3;
    v4 = OUTLINED_FUNCTION_206();
    v2(v4);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

double MultiwayViewController.expandedAppViewControllerSize(for:)()
{
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController])
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 144);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = v2(v5);

  return v6;
}

void MultiwayViewController.effectBrowserViewController(_:willChangeDockHeight:)(double a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v89);
  OUTLINED_FUNCTION_150_1(v90);
  OUTLINED_FUNCTION_46_26(v90);
  if (!v4)
  {
    v5 = v90[6];
    v6 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
    OUTLINED_FUNCTION_3_0();
    v7 = swift_beginAccess();
    v15 = *(v5 + v6) - 2;
    if (v15 <= 4 && ((0x1Bu >> v15) & 1) != 0)
    {
      v16 = qword_1BC4E9598[v15];
      v17 = qword_1BC4E95C0[v15];
      v18 = v91;
      if (v91)
      {
        v19 = *((*MEMORY[0x1E69E7D40] & *v91) + 0xB0);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v20 = v18;
        v19(a1);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_157_3(v7, v8, v9, v10, v11, v12, v13, v14, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
        OUTLINED_FUNCTION_278_1(v21, v22, v23, v24, v25, v26, v27, v28, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87);
      }

      if (a1 <= 50.0)
      {
        v29 = v17;
      }

      else
      {
        v29 = v16;
      }

      [v2 setControlsState:v29 animated:1];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }
  }
}

id MultiwayViewController.didCapture(_:)(void *a1)
{
  v4 = v1;
  v6 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  if (!*&v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo])
  {
    v29[0] = 0;
    *&v29[1] = *(v6 + 8);
    *&v29[3] = *(v6 + 24);
    *&v29[5] = *(v6 + 40);
    *&v29[7] = *(v6 + 56);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v7 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v29;
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in MultiwayViewController.didCapture(_:);
    *(v9 + 24) = v8;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_104;
    v2 = _Block_copy(aBlock);
    v3 = aBlock[5];
    v10 = v4;

    dispatch_sync(v7, v2);

    _Block_release(v2);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    memcpy(__dst, v29, sizeof(__dst));
    memcpy(v31, v6, sizeof(v31));
    memcpy(v6, v29, 0x48uLL);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMR);
    memcpy(aBlock, v29, sizeof(aBlock));
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(aBlock, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMR);
  }

  memcpy(aBlock, v6, sizeof(aBlock));
  v12 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  v13 = v12;
  result = outlined bridged method (pb) of @objc CNContact.imageData.getter(a1);
  if (v14 >> 60 == 15)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_80_0();
  v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data?(v2, v3);
  result = [a1 pixelBuffer];
  if (result)
  {
    v16 = result;
    v17 = [a1 depthPixelBuffer];
    v18 = OUTLINED_FUNCTION_35();
    [v19 v20];
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, v22, v23);
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, v25, v26);

LABEL_9:
    v27 = OUTLINED_FUNCTION_38_2();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v27, v28);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #1 in MultiwayViewController.didCapture(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v3, sizeof(__dst));
  result = getEnumTag for TapInteraction.EventType(__dst);
  if (result != 1)
  {
    v5 = v3[9];
    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v6 = result;
        memcpy(v23, v3, sizeof(v23));
        result = getEnumTag for TapInteraction.EventType(v23);
        if (result != 1)
        {
          v7 = v3[7];
          v8 = v5;
          [v7 frame];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          memcpy(v22, a2, sizeof(v22));
          *a2 = v6;
          a2[1] = v10;
          a2[2] = v12;
          a2[3] = v14;
          a2[4] = v16;
          a2[5] = 0;
          a2[6] = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(a2 + 7) = _Q0;
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMR);
        }
      }
    }
  }

  return result;
}

UIView *MultiwayViewController.setupReducedMotionAnimation(forSnapshot:animations:completion:)(void *a1, uint64_t a2, uint64_t *a3)
{
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  [(UIView *)result addSubview:a1];

  result = [v3 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*a3, a3[1]);
  UIView.addConstraintsToFill(_:insets:)(v9, *MEMORY[0x1E69DC5C0]);

  (*a2)();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *a2 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  *(a2 + 8) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *a3 = partial apply for closure #2 in closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  a3[1] = v11;
  v12 = a1;

  return v12;
}

void closure #1 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(void *a1, void (*a2)(void))
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];

    if (a2)
    {
      a2();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(char a1, uint64_t a2, void (*a3)(void, __n128))
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(a2 + 24);

    v6(a1 & 1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }

  if (a3)
  {
    (a3)(a1 & 1);
  }
}

BOOL MultiwayViewController.shouldHideStatusBar.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 0;
  }

  v3 = __dst[6];
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  swift_beginAccess();
  return *(v3 + v4) == 0;
}

void MultiwayViewController.setControlsState(_:animated:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_185_5();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_229_0();
  v12(v11);
  if (v8)
  {
    v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(v40, &v2[v13], sizeof(v40));
    memcpy(v41, &v2[v13], 0xE8uLL);
    OUTLINED_FUNCTION_46_26(v41);
    if (!v14)
    {
      memcpy(v39, v41, sizeof(v39));
      v15 = v6 - 4;
      v16 = (v6 < 7) & (0x6Cu >> v6);
      v17 = v41[6];
      v18 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v19 = *(v17 + v18);
      memcpy(v38, v40, 0xE8uLL);
      v20 = outlined init with copy of MultiwayViewController.ViewContent(v38, &v37);
      if (MultiwayViewController.effectsBrowserIsOpaque.getter(v20, v21, v22, v23, v24, v25, v26, v27))
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      if (!v6)
      {
        if (static Platform.current.getter() == 1)
        {
          if (ConversationController.isOneToOneModeEnabled.getter())
          {
            v6 = 0;
          }

          else
          {
            v6 = v29;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      MultiwayViewConstraintsController.inCallControlsState.setter(v6, v28);
      v30 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
      ObjectType = swift_getObjectType();
      v32 = (*(v30 + 320))(ObjectType, v30);
      v33 = swift_allocObject();
      memcpy((v33 + 16), v39, 0xE8uLL);
      *(v33 + 248) = v15 < 3;
      *(v33 + 249) = v16;
      *(v33 + 256) = v2;
      *(v33 + 264) = v19;
      OUTLINED_FUNCTION_20();
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      v35 = v2;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v36 = v35;
      MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(v4 & 1, v32 & (v15 > 2), partial apply for closure #1 in MultiwayViewController.setControlsState(_:animated:), v33, partial apply for closure #2 in MultiwayViewController.setControlsState(_:animated:), v34);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MultiwayViewController.setControlsState(_:animated:)(uint64_t a1, char a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = *(a1 + 16);
  v11 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  v12 = swift_beginAccess();
  *(v10 + v11) = a2;
  InCallControlsViewController.isExpanded.didset(v12);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = 0.0;
    if (a3)
    {
      v16 = 1.0;
    }

    [v14 setAlpha_];
  }

  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v18 = *(a4 + v17);
  v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x1B8);
  v20 = v18;
  v21 = v19();

  if (v21)
  {
    MultiwayViewController.updateZoomControls(for:)(a5);
  }
}

void closure #2 in MultiwayViewController.setControlsState(_:animated:)(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (!v2)
    {
      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
    }
  }
}

uint64_t closure #1 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9[-v4];
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  InCallBannerHostViewController.hudTransition()();
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  ParticipantView.updateGradientOverlayView(isHidden:alpha:)(2, *&v7, 0);
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  ParticipantGridViewController.update(participant:gradientOverlayAlpha:)();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

void closure #2 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(a2 + 24);
  if (a1)
  {
    InCallBannerHostViewController.hideOrShowRootView()();
  }

  swift_beginAccess();
  if (!*(a3 + 16))
  {
    v6 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
    swift_beginAccess();
    outlined init with copy of ConversationControlsType(v5 + v6, v10);
    *&v9[25] = *&v10[25];
    *v9 = *v10;
    *&v9[16] = *&v10[16];
    if (v10[40])
    {
      if (v10[40] == 2)
      {
        outlined destroy of ConversationControlsType(v9);
      }

      else if (v10[40] != 7 || *v9 != 4 || (v7 = vorrq_s8(*&v9[8], *&v9[24]), *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL))))
      {
        v8 = v9;
LABEL_12:
        outlined destroy of ConversationControlsType(v8);
        return;
      }
    }

    memset(v10, 0, 40);
    v10[40] = 7;
    InCallBannerHostViewController.updateConversationControlsViewController(type:forceUpdate:)(v10, 0);
    v8 = v10;
    goto LABEL_12;
  }
}

void closure #1 in MultiwayViewController.setParticipantListState(_:animated:)(id *a1)
{
  v1 = [*a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];

    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MultiwayViewController.presentAddParticipantSheet()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v38 = v6;
      v10 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(v10 + v11, v44);
      v13 = v45;
      v12 = v46;
      OUTLINED_FUNCTION_179_2(v44, v45);
      v14 = v10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v15 = *(v14 + 8);
      v16 = *(v12 + 104);
      v17 = swift_unknownObjectRetain();
      v16(v39, v17, v15, v13, v12);
      swift_unknownObjectRelease();
      if (v40)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
        if (swift_dynamicCast())
        {
          v18 = v43;
          __swift_destroy_boxed_opaque_existential_1(v44);
          v19 = v9;
          _s15ConversationKit0A24HUDDetailsViewControllerC022generateFTPeoplePickerdE012conversation8delegateSo012UINavigationE0CSo14TUConversationC_AA06PeoplehdE8Delegate_ptFZTf4nen_nAA08MultiwaydE0C_Tt1g5(v18, v19);
          v21 = v20;

          v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          v37 = static OS_dispatch_queue.main.getter();
          OUTLINED_FUNCTION_20();
          v23 = swift_allocObject();
          OUTLINED_FUNCTION_278(v23);
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_24();
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v21;
          v41 = partial apply for closure #1 in closure #1 in MultiwayViewController.presentAddParticipantSheet();
          v42 = v24;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 1107296256;
          OUTLINED_FUNCTION_89_8();
          v39[2] = v25;
          v40 = &block_descriptor_236;
          v26 = _Block_copy(v39);
          v36 = v21;

          static DispatchQoS.unspecified.getter();
          v39[0] = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_16_71();
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v27, v28);
          v29 = OUTLINED_FUNCTION_243();
          __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
          OUTLINED_FUNCTION_9_8();
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v31, v32, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          OUTLINED_FUNCTION_260();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v33 = OUTLINED_FUNCTION_117();
          MEMORY[0x1BFB215C0](v33);
          _Block_release(v26);

          v34 = OUTLINED_FUNCTION_181();
          v35(v34);
          (*(v38 + 8))(v0, v4);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v44);
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v44);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall MultiwayViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v4 + v5, v13);
  v6 = v14;
  v7 = v15;
  OUTLINED_FUNCTION_179_2(v13, v14);
  v8 = v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v7 + 104);
  v11 = swift_unknownObjectRetain();
  v10(v16, v11, v9, v6, v7);
  swift_unknownObjectRelease();
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      swift_unknownObjectRetain();
      addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }
}

void closure #1 in MultiwayViewController.presentContactCard()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = objc_opt_self();
        swift_unknownObjectRetain();
        v48 = [v8 tu:v7 contactStoreConfigurationForCall:?];
        v9 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
        v10 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v7);
        if (!v10)
        {
          goto LABEL_13;
        }

        if (!v10[2])
        {

          goto LABEL_13;
        }

        v11 = v10[4];
        v12 = v10[5];

        v13 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v7);
        if (v13)
        {
          v14 = *(v13 + 16);

          if (v14 == 1)
          {
            v46 = MEMORY[0x1BFB209B0](v11, v12);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            OUTLINED_FUNCTION_37_0();
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_1BC4BAC30;
            v44 = objc_opt_self();
            *(v15 + 32) = [v44 descriptorForRequiredKeys];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v17 = [v9 contactForIdentifier:v46 keysToFetch:isa];

            if (v17)
            {
              v47 = v17;
              v18 = [v44 viewControllerForContact_];
LABEL_15:
              [v18 setContactStore_];
              [v18 setShouldShowSharedProfileBanner_];
              [v18 setDelegate_];
              type metadata accessor for MultiwayViewController(0);
              v23 = objc_allocWithZone(MEMORY[0x1E69DC708]);
              v43 = v5;
              @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
              v25 = v24;
              v45 = v24;
              v26 = [v18 navigationItem];
              [v26 setLeftBarButtonItem_];

              v27 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
              v28 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
              v42 = static OS_dispatch_queue.main.getter();
              OUTLINED_FUNCTION_20();
              v29 = swift_allocObject();
              OUTLINED_FUNCTION_278(v29);
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_24();
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              *(v30 + 24) = v27;
              v49[4] = partial apply for closure #1 in closure #1 in MultiwayViewController.presentContactCard();
              v49[5] = v30;
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 1107296256;
              v49[2] = thunk for @escaping @callee_guaranteed () -> ();
              v49[3] = &block_descriptor_228;
              v31 = _Block_copy(v49);
              v41 = v27;

              static DispatchQoS.unspecified.getter();
              v49[0] = MEMORY[0x1E69E7CC0];
              OUTLINED_FUNCTION_16_71();
              lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v32, v33);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              OUTLINED_FUNCTION_9_8();
              lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v34, v35, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              OUTLINED_FUNCTION_260();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v36 = OUTLINED_FUNCTION_117();
              MEMORY[0x1BFB215C0](v36);
              swift_unknownObjectRelease();
              _Block_release(v31);

              v37 = OUTLINED_FUNCTION_181();
              v38(v37);
              v39 = OUTLINED_FUNCTION_206();
              v40(v39);
              goto LABEL_17;
            }

LABEL_13:
            v19 = [v7 handle];
            if (!v19)
            {

              swift_unknownObjectRelease();
              goto LABEL_17;
            }

            v20 = v19;
            v21 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
            v22 = [objc_opt_self() viewControllerForUnknownContact_];

            v18 = v22;
            [v18 setActions_];

            v47 = 0;
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in closure #1 in MultiwayViewController.presentAddParticipantSheet()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_259(Strong, sel_presentViewController_animated_completion_, a2);
  }
}

void MultiwayViewController.dismissContactCard()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall MultiwayViewController.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
  }
}

void MultiwayViewController.participantViewDragControllerDidStartDrag(_:)()
{
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 1, 0);
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_46_26(v23);
  if (!v11)
  {
    v12 = *(v1 + 56);
    v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
    OUTLINED_FUNCTION_6_0(&v12[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden], v10);
    v12[v13] = 1;
    v14 = v12;
    LocalParticipantView.requiresControlsHidden.didset(v14, v15);
  }
}

void MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:)()
{
  OUTLINED_FUNCTION_81_2();
  v3 = v0;
  OUTLINED_FUNCTION_20_2();
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v5, v6, v7);
  OUTLINED_FUNCTION_46_26(v60);
  if (v8)
  {
    goto LABEL_33;
  }

  v9 = [v4[1] view];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(0, 1, 0);
  MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  [v10 bounds];
  v12 = v11 * 0.5;
  v13 = [v10 bounds];
  v15 = v14 * 0.5;
  v23 = MultiwayViewController.constraintController.getter(v13, v16, v17, v18, v19, v20, v21, v22);
  v24 = v23;
  if (v15 <= v2)
  {
    if (v12 > v1)
    {
      if (v23 && (v28 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState, OUTLINED_FUNCTION_192_3(), OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LOBYTE(v28) = v24[v28], v24, (v28 & 1) != 0))
      {
        v26 = 0;
        v27 = 65;
      }

      else
      {
        v26 = 1;
        v27 = 1;
      }

      goto LABEL_23;
    }

    if (v23)
    {
      v30 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState;
      OUTLINED_FUNCTION_192_3();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      LOBYTE(v30) = v24[v30];

      if (v30)
      {
        v26 = 0;
        v27 = 67;
        goto LABEL_23;
      }
    }

    v27 = 3;
    goto LABEL_22;
  }

  if (v12 <= v1)
  {
    if (v23)
    {
      v29 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState;
      OUTLINED_FUNCTION_192_3();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      LOBYTE(v29) = v24[v29];

      if (v29)
      {
        v26 = 0;
        v27 = 66;
        goto LABEL_23;
      }
    }

    v27 = 2;
LABEL_22:
    v26 = 1;
    goto LABEL_23;
  }

  if (!v23 || (v25 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState, OUTLINED_FUNCTION_192_3(), OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LOBYTE(v25) = v24[v25], v24, (v25 & 1) == 0))
  {
    v27 = 0;
    goto LABEL_22;
  }

  v26 = 0;
  v27 = 64;
LABEL_23:
  OUTLINED_FUNCTION_142_4();
  memcpy(v31, v32, v33);
  OUTLINED_FUNCTION_46_26(v59);
  if (!v8)
  {
    v34 = v4[6];
    v35 = OBJC_IVAR___CNKFaceTimeConstraintsController_shouldForceAllowNextLocalParticipantStateUpdate;
    OUTLINED_FUNCTION_3_5(&v34[OBJC_IVAR___CNKFaceTimeConstraintsController_shouldForceAllowNextLocalParticipantStateUpdate], v58);
    v34[v35] = 1;
  }

  OUTLINED_FUNCTION_142_4();
  memcpy(v36, v37, v38);
  OUTLINED_FUNCTION_46_26(v57);
  if (!v8)
  {
    v39 = v4[7];
    v40 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
    OUTLINED_FUNCTION_3_5(&v39[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden], v56);
    v39[v40] = 0;
    v41 = v39;
    LocalParticipantView.requiresControlsHidden.didset(v41, v42);
  }

  if (v26)
  {
    v43 = v27;
  }

  else
  {
    v43 = v27 & 3;
  }

  v44 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  ObjectType = swift_getObjectType();
  (*(v44 + 584))(v43, ObjectType, v44);
  LOBYTE(aBlock[0]) = 0;
  MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(aBlock, v27, 0);
  v46 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  v47 = swift_getObjectType();
  if (((*(v46 + 320))(v47, v46) & 1) == 0)
  {
    type metadata accessor for ParticipantViewDragController();
    v48 = OUTLINED_FUNCTION_3_109();
    v50 = static ParticipantViewDragController.boingAnimator(usingVelocity:)(v48, v49);
    OUTLINED_FUNCTION_20();
    v51 = swift_allocObject();
    *(v51 + 16) = v3;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:);
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_89_8();
    aBlock[2] = v52;
    aBlock[3] = &block_descriptor_116;
    v53 = _Block_copy(aBlock);
    v54 = v3;

    [v50 addAnimations_];
    _Block_release(v53);
    [v50 startAnimation];
  }

  MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);

LABEL_33:
  OUTLINED_FUNCTION_80();
}

BOOL closure #1 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [Strong setAlpha_];
  }

  return v4 == 0;
}

BOOL closure #2 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    [Strong setEnabled_];
  }

  return v4 == 0;
}

uint64_t MultiwayViewController.captionsViewDragControllerDidStartDrag(_:atPosition:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v107);
  OUTLINED_FUNCTION_150_1(v108);
  result = OUTLINED_FUNCTION_46_26(v108);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(result, v1, v2, v3, v4, v5, v6, v7, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
    v17 = OUTLINED_FUNCTION_3_109();
    MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v18, *&v17), 0);
    OUTLINED_FUNCTION_202_2();
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v19, v20, v21);
    MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 1, 0);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

uint64_t MultiwayViewController.captionsViewDragController(_:didMoveToPosition:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v109);
  OUTLINED_FUNCTION_150_1(v110);
  result = OUTLINED_FUNCTION_46_26(v110);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(result, v1, v2, v3, v4, v5, v6, v7, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
    v17 = OUTLINED_FUNCTION_3_109();
    v19 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v17, v18);
    if (v19 < 0xFCu)
    {
      v20 = v19;
      v21 = v110[19];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if ((*(v21 + 88) & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_3_109();
        MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v23, *&v22), 0);
        MultiwayViewController.setLocalParticipantState(_:animated:)(v20, 1);
      }
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
  }

  return result;
}

void MultiwayViewController.captionsViewDragController(_:didEndDragAtPosition:velocity:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_0_91();
  v8 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v23);
  OUTLINED_FUNCTION_46_26(v23);
  if (!v9)
  {
    v10 = v8[6];
    v11 = OUTLINED_FUNCTION_3_109();
    MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v12, *&v11), 1);
    LOBYTE(v22[0]) = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v22, 0xFCu, 0);
    v13 = *&v5[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
    ObjectType = swift_getObjectType();
    if (((*(v13 + 320))(ObjectType, v13) & 1) == 0)
    {
      type metadata accessor for ParticipantViewDragController();
      v15 = static ParticipantViewDragController.boingAnimator(usingVelocity:)(a3, a4);
      OUTLINED_FUNCTION_20();
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      v22[4] = partial apply for closure #1 in MultiwayViewController.captionsViewDragController(_:didEndDragAtPosition:velocity:);
      v22[5] = v16;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = thunk for @escaping @callee_guaranteed () -> ();
      v22[3] = &block_descriptor_122;
      v17 = _Block_copy(v22);
      v18 = v5;

      [v15 addAnimations_];
      _Block_release(v17);
      [v15 startAnimation];
    }

    v19 = OUTLINED_FUNCTION_3_109();
    v21 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v19, v20);
    if (v21 <= 0xFBu)
    {
      MultiwayViewController.setLocalParticipantState(_:animated:)(v21, 1);
    }
  }
}

void closure #1 in MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void *MultiwayViewController.pipViewController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_33_42(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  OUTLINED_FUNCTION_112_7(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24);
  getEnumTag for TapInteraction.EventType(v25);
  OUTLINED_FUNCTION_204_2();
  if (!v18)
  {
    v9 = *(v8 + 104);
    v19 = v9;
  }

  return v9;
}

__C::CGRect __swiftcall MultiwayViewController.frameForRestoreAnimation()()
{
  OUTLINED_FUNCTION_218_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_246_3();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v36, (v0 + v6), sizeof(v36));
  memcpy(v37, (v0 + v6), sizeof(v37));
  if (getEnumTag for TapInteraction.EventType(v37) != 1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v0, 1, v4);
    if (v7)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_1_184();
    OUTLINED_FUNCTION_208();
    _s15ConversationKit11ParticipantVWObTm_7();
    OUTLINED_FUNCTION_226_3();
    outlined init with copy of MultiwayViewController.ViewContent(&v35, &v34);
    v21 = ConversationController.isOneToOneModeEnabled.getter();
    v22 = *(v1 + *(v4 + 28));
    if (v21)
    {
      if (!v22)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_5;
      }
    }

    else if (!v22)
    {
      [v37[7] frame];
      OUTLINED_FUNCTION_40_1();
LABEL_15:
      v27 = [objc_opt_self() mainScreen];
      [v27 fixedCoordinateSpace];

      v28 = OUTLINED_FUNCTION_280_1();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 coordinateSpace];

        v31 = OUTLINED_FUNCTION_35();
        [v32 v33];
        OUTLINED_FUNCTION_40_1();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMR);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v23 = OUTLINED_FUNCTION_280_1();
    if (!v23)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v24 = v23;
    v25 = OUTLINED_FUNCTION_40_2();
    ParticipantGridViewController.spatialPosition(for:relativeTo:)(v25, v26);
    OUTLINED_FUNCTION_40_1();

    goto LABEL_15;
  }

LABEL_5:
  v8 = [objc_opt_self() mainScreen];
  [v8 fixedCoordinateSpace];

  v9 = OUTLINED_FUNCTION_280_1();
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v9;
  [v9 frame];
  OUTLINED_FUNCTION_40_1();

  v15 = OUTLINED_FUNCTION_280_1();
  if (!v15)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 coordinateSpace];

  v18 = OUTLINED_FUNCTION_35();
  [v19 v20];
  OUTLINED_FUNCTION_40_1();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_17:
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_216_3();
LABEL_22:
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

id MultiwayViewController.underlyingView.getter()
{
  v1 = [v0 view];

  return v1;
}

id MultiwayViewController.senderHandle(videoMessageController:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x138))();
  if (!result)
  {
    v2 = [objc_opt_self() facetimeService];
    v3 = IMPreferredAccountForService();

    if (v3 && (v4 = outlined bridged method (ob) of @objc IMAccount.displayName.getter(v3), v5))
    {
      v6 = v4;
      v7 = v5;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      return TUHandle.__allocating_init(type:value:)(1, v6, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_174();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_159();
  v15 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  (*(v16 + 16))(v1, v8, v15);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  LOBYTE(v63) = 0;
  v20 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel(0));
  VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
  v22 = v21;
  v23 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  specialized Collection.first.getter(*(v23 + v24), v3);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v11);
  v26 = MEMORY[0x1E69E7D40];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_1_184();
    _s15ConversationKit11ParticipantVWObTm_7();
    v27 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v28.super.isa = v27;
    OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC51BD20, v29, v30, v28);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v32 = OUTLINED_FUNCTION_13_12(v31);
    *(v32 + 16) = xmmword_1BC4BA940;
    v33 = (v2 + *(v11 + 36));
    v35 = *v33;
    v34 = v33[1];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      Participant.contactDetails.getter();
      v35 = v64;
      v36 = v65;

      v26 = MEMORY[0x1E69E7D40];
    }

    *(v32 + 32) = v35;
    *(v32 + 40) = v36;

    v37 = String.init(format:_:)();
    v39 = v38;

    (*((*v26 & *v22) + 0x188))(v37, v39);
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_43_25(v40);
  v41 = *((*v26 & *v22) + 0x1C0);

  v42 = OUTLINED_FUNCTION_251_3();
  v43 = v41(v42);
  *v44 = partial apply for closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  v44[1] = v40;

  v45 = OUTLINED_FUNCTION_250_2();
  v43(v45);

  OUTLINED_FUNCTION_20();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_43_25(v46);
  OUTLINED_FUNCTION_24();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v6;

  v48 = v6;
  v49 = OUTLINED_FUNCTION_251_3();
  v50 = v41(v49);
  *(v51 + 16) = partial apply for closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v51 + 24) = v47;

  v52 = OUTLINED_FUNCTION_250_2();
  v50(v52);

  OUTLINED_FUNCTION_20();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_43_25(v53);

  v54 = OUTLINED_FUNCTION_251_3();
  v55 = v41(v54);
  *(v56 + 48) = partial apply for closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v56 + 56) = v53;

  v57 = OUTLINED_FUNCTION_250_2();
  v55(v57);

  OUTLINED_FUNCTION_20();
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_43_25(v58);

  v59 = OUTLINED_FUNCTION_251_3();
  v60 = v41(v59);
  *(v61 + 64) = partial apply for closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v61 + 72) = v58;

  v62 = OUTLINED_FUNCTION_250_2();
  v60(v62);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    type metadata completion function for SyncedScreeningAlphaGradientView();
    ConversationController.resetRecordingVideoMessage(completion:)();
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = a2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for Participant(0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[26] = v9;
  v5[27] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v9, v8);
}

uint64_t closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  v53 = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 224) = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
    *(v0 + 232) = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
    v3 = *(Strong + v2);
    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = MEMORY[0x1E69E7CC0];
    v51 = *(v3 + v4);
    v52 = MEMORY[0x1E69E7CC0];
    v6 = *(v51 + 16);
    if (v6)
    {
      v7 = *(v0 + 184);
      v8 = *(v0 + 192);
      v9 = *(*(v0 + 176) + 28);
      v10 = v51 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v11 = *(v7 + 72);

      do
      {
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v12 = *(v8 + v9);
        if (v12)
        {
          v13 = v12;
          OUTLINED_FUNCTION_0_220();
          v14 = _s15ConversationKit11ParticipantVWOhTm_17();
          MEMORY[0x1BFB20CC0](v14);
          v15 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v15);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v52;
        }

        else
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
        }

        v10 += v11;
        --v6;
      }

      while (v6);
    }

    v16 = MultiwayViewController.senderHandle(videoMessageController:)(*(v0 + 136));
    *(v0 + 240) = v16;
    if (v16)
    {
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      *(v0 + 248) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v5);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
      {
        v19 = *(v0 + 152);
        UUID.init()();
        v20 = OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_115(v20, v21, v19);
        if (!v22)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v0 + 144), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      }

      v37 = swift_task_alloc();
      *(v0 + 256) = v37;
      *v37 = v0;
      v37[1] = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
      OUTLINED_FUNCTION_265_2();

      return VideoMessageController.complete(sendingTo:sendingFrom:in:)();
    }

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_18_0(v25))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v26, v27, "Can't sent a video message with no sender handle");
      OUTLINED_FUNCTION_27();
    }

    lazy protocol witness table accessor for type VideoMessagingError and conformance VideoMessagingError();
    v28 = swift_allocError();
    swift_willThrow();
    *(v0 + 112) = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
      }

      OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_163(v31))
      {
        v32 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v32);
        OUTLINED_FUNCTION_269_2(&dword_1BBC58000, v33, v34, "Video message send called when already sending.");
        OUTLINED_FUNCTION_4_4();
      }

      v35 = *(v0 + 224);

      v36 = *(v0 + 112);
      goto LABEL_35;
    }

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
    v39 = v28;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 224);
    if (!v42)
    {

      v36 = v28;
LABEL_35:

      goto LABEL_36;
    }

    v44 = OUTLINED_FUNCTION_42();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    *(v0 + 120) = v28;
    v46 = v28;
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v52);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1BBC58000, v40, v41, "Unknown error on send: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

LABEL_36:
  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v50();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);

  v3 = v2[27];
  v4 = v2[26];
  if (v0)
  {
    v5 = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  }

  else
  {
    v5 = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 240);

  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 784);
  v5 = v4;
  v3();

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v6, &static Logger.videoMessaging);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v8))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v9, v10, "Video message send complete. Requesting dismissal");
    OUTLINED_FUNCTION_27();
  }

  v11 = *(v0 + 224);

  v12 = [v11 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 popViewControllerAnimated_];
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v0 + 224);
  if (Strong)
  {
    [Strong unansweredCallUIDismissed];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v17();
}

{
  v27 = v0;
  v1 = *(v0 + 240);

  v2 = *(v0 + 264);
  *(v0 + 112) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Logger.videoMessaging);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v7);
      OUTLINED_FUNCTION_269_2(&dword_1BBC58000, v8, v9, "Video message send called when already sending.");
      OUTLINED_FUNCTION_4_4();
    }

    v10 = *(v0 + 224);

    v11 = *(v0 + 112);
  }

  else
  {

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v12, &static Logger.videoMessaging);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 224);
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_42();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      *(v0 + 120) = v2;
      v20 = v2;
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Unknown error on send: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      goto LABEL_13;
    }

    v11 = v2;
  }

LABEL_13:
  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v24();
}

uint64_t closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.saveRecordedVideoMessage()();
  }

  **(v0 + 40) = v2 == 0;
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_100();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_246();

  static MainActor.shared.getter();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_37_0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v4;
  v13[3] = v14;
  v13[4] = a1;
  v15 = type metadata completion function for SyncedScreeningAlphaGradientView();
  a4(v15);
}

uint64_t closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.discardRecordedVideoMessage()();
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

Swift::Void __swiftcall MultiwayViewController.prepareForAppSwitcher()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 240);
  v3 = v2;
  LOBYTE(v1) = v1();

  if (VideoMessageController.State.rawValue.getter(v1) == 0x676E696D726177 && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_137();
      v8 = *(v7 + 240);
      v10 = v9;
      LOBYTE(v8) = v8();

      if (VideoMessageController.State.rawValue.getter(v8) == 0x6552657669746361 && v11 == 0xEF676E6964726F63)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      ConversationController.stopRecordingVideoMessage()();
LABEL_18:
      OUTLINED_FUNCTION_49();
      return;
    }
  }

  OUTLINED_FUNCTION_49();

  MultiwayViewController.pauseVideoMessageRecording()();
}

void MultiwayViewController.showCameraAlert()()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v20._object = 0xE000000000000000;
  v4._object = 0x80000001BC51CBD0;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v20);

  v18 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v7._countAndFlagsBits, v7._object, 0, 0xE000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v8 = [v2 conversationKit];
  v21._object = 0xE000000000000000;
  v9._object = 0x80000001BC51CC00;
  v9._countAndFlagsBits = 0xD000000000000020;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v21);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v18 addAction_];

  v13 = [v2 conversationKit];
  v22._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x80000001BC51CC30;
  v15.value._countAndFlagsBits = 0x61737265766E6F43;
  v15.value._object = 0xEF74694B6E6F6974;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v22);

  v17 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v18 addAction_];

  [v1 presentViewController:v18 animated:1 completion:0];
}

void closure #2 in MultiwayViewController.startRecordingVideoMessage()(char a1, uint64_t a2, uint64_t a3)
{
  LocalParticipantView.endCountdown()();
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

      ConversationController.startRecordingVideoMessage()();
    }
  }
}

void closure #1 in MultiwayViewController.showCameraAlert()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    MultiwayViewController.startRecordingVideoMessage()();
  }
}

void *closure #1 in MultiwayViewController.showUnrecoverableAlertFromError(_:)(uint64_t a1, char a2, uint64_t a3)
{
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.videoMessaging);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Dismissing due to error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;

    MultiwayViewController.cancelVideoRecording(completion:)();
  }

  return result;
}

void closure #1 in closure #1 in MultiwayViewController.showUnrecoverableAlertFromError(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 unansweredCallUIDismissed];
      swift_unknownObjectRelease();
    }
  }
}

void MultiwayViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_239_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  v5 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  if (v0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_170();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      OUTLINED_FUNCTION_257(v7, sel_dismissViewControllerAnimated_completion_);
    }
  }

  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v9 = *(v8 + 528);
  v11 = v10;
  v9();

  v12 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v12, v13, v5);
  if (v14)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_206();
    v16(v15);
    MultiwayViewController.showLocalVideoMessagePreview(usingURL:)(v2);
    v17 = OUTLINED_FUNCTION_33_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_49();
}

void MultiwayViewController.didReject(forInterventionViewController:)(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_235();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      OUTLINED_FUNCTION_257(v1, sel_dismissViewControllerAnimated_completion_);
    }
  }

  ConversationController.discardRecordedVideoMessage()();
}

void @objc MultiwayViewController.didConfirm(forInterventionViewController:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id @nonobjc AVCVideoFrame.init(pixelBuffer:time:imageData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a5, a6);
  }

  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v14 = [v6 initWithPixelBuffer:a1 time:v16 imageData:isa];

  return v14;
}

uint64_t outlined bridged method (ob) of @objc IMAccount.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

void specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24[3] = v14(0);
  v24[4] = v5;
  v24[0] = v13;
  outlined init with copy of IDSLookupManager(v24, &v23);
  v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd, &_s15ConversationKit26ParticipantsViewController_pMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (swift_dynamicCast())
  {
    v21 = v1;
    v15 = v22[0];
    OUTLINED_FUNCTION_25_54();
    v16 = swift_beginAccess();
    v17 = *v9;
    v22[0] = v15;
    MEMORY[0x1EEE9AC00](v16);
    v20[2] = v22;

    v18 = specialized Sequence.contains(where:)(v3, v20, v17);

    if (v18)
    {
    }

    else
    {
      OUTLINED_FUNCTION_30_2(v9, v22);
      v19 = v15;
      MEMORY[0x1BFB20CC0]();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LOWORD(v22[0]) = v7;
      v21(v11, v22);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of IDSLookupManager(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd, &_s15ConversationKit26ParticipantsViewController_pMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (swift_dynamicCast())
  {
    v20 = a2;
    v13 = v21[0];
    v14 = swift_beginAccess();
    v15 = *a3;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = v21;

    v16 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v15);

    if (v16)
    {
    }

    else
    {
      swift_beginAccess();
      v17 = v13;
      MEMORY[0x1BFB20CC0]();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LOWORD(v21[0]) = a4;
      (*(a6 + 72))(v20, v21, a5, a6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void specialized NameAndPhotoUtilities.denyIncomingName(from:)(void *a1)
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.nickname);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = [v3 handle];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, oslog, v4, "Denying incoming name from handle %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  else
  {
  }
}

void *specialized CaptioningStateManager.init(capabilities:call:)(void *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  v39 = type metadata accessor for Locale();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LanguageManager();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  a3[10] = 0;
  swift_unknownObjectWeakInit();
  a3[11] = MEMORY[0x1E69E7CD0];
  v35 = a3 + 11;
  ObservationRegistrar.init()();
  a3[8] = a1;
  v41 = 0;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMR);
  swift_allocObject();
  v17 = a1;
  v18 = CurrentValueSubject.init(_:)();
  v19 = v40;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v16;
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  v20 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v22 = v21;
  v24 = v23;
  (*(v9 + 8))(v11, v39);
  v25 = (*(v13 + 8))(v15, v12);
  a3[5] = v20;
  a3[6] = v22;
  a3[7] = v24;
  v26 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v17) + 0x70))(v25))
  {
    v40 = (*((*v26 & *v17) + 0x68))();
    v41 = v40;
    v27 = [objc_opt_self() mainRunLoop];
    v43 = v27;
    v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v29 = v34;
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
    v30 = v36;
    Publisher.receive<A>(on:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR);
    v31 = v38;
    Publisher<>.sink(receiveValue:)();

    (*(v37 + 8))(v30, v31);
    swift_getKeyPath();
    v41 = a3;
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, type metadata accessor for CaptioningStateManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return a3;
}

uint64_t specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  *(a4 + 48) = &protocol witness table for LocalParticipantView;
  swift_unknownObjectWeakAssign();
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  [*(a4 + 96) addTarget:a4 action:sel_handlePanGestureRecognizer_];
  [*(a4 + 96) setEnabled_];
  [a1 addGestureRecognizer_];

  return a4;
}

char *specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, char *a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v348 = a4;
  v349 = a5;
  v344 = a2;
  v345 = a3;
  v342 = a1;
  ObjectType = swift_getObjectType();
  v352 = type metadata accessor for Participant(0);
  v346 = *(v352 - 8);
  v347 = (v352 - 8);
  v350 = v346;
  MEMORY[0x1EEE9AC00](v352 - 8);
  v351 = &v337 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v338 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v339 = &v337 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v12 = &v337 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
  v14 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&a6[v13], 1, 1, v14);
  *&a6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager] = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView, 0x1E6993838);
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v16 = a6;
  v340 = v8;
  *&a6[v15] = Dictionary.init(dictionaryLiteral:)();
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow] = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *&v16[v17] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *&v16[v18] = swift_allocObject();
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible] = 2;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  swift_allocObject();
  *&v16[v20] = SidebarStateStream.init(initial:)(0);
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask] = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTip;
  v22 = type metadata accessor for VideoReactionPickerTip();
  __swift_storeEnumTagSinglePayload(&v16[v21], 1, 1, v22);
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects] = 0;
  v23 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 8) = 0;
  v24 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner] = 2;
  v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v356);
  memcpy(&v16[v25], v356, 0xE8uLL);
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller] = 0;
  v26 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
  *v27 = 0;
  *(v27 + 1) = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState] = 4;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations] = 2;
  v28 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  v355 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(&v16[v28], v12, v341);
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner] = 0;
  v29 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen] = 2;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView] = 1;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews] = 0;
  v35 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen] = 0;
  v37 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  *v37 = 4;
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill] = v31;
  v38 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *&v16[v38] = [objc_allocWithZone(type metadata accessor for TonePlayer(0)) init];
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions] = MEMORY[0x1E69E7CD0];
  v39 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets];
  v40 = *(MEMORY[0x1E69DDCE0] + 16);
  *v39 = *MEMORY[0x1E69DDCE0];
  *(v39 + 1) = v40;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView] = 0;
  v41 = v344;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] = v344;
  v42 = objc_allocWithZone(CNKBannerPresentationManager);
  v43 = v41;
  v44 = [v42 init];
  v45 = OBJC_IVAR___CNKBannerPresentationManager_value;
  swift_beginAccess();
  v46 = *&v44[v45];
  v47 = v345;
  *&v44[v45] = v345;
  v345 = v47;

  swift_beginAccess();
  v48 = *&v16[v19];
  *&v16[v19] = v44;
  v344 = v44;

  v49 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults];
  v50 = v349;
  *v49 = v348;
  v49[1] = &protocol witness table for Defaults;
  v341 = v16;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
  v51 = (*(v350 + 80) + 32) & ~*(v350 + 80);
  v350 = v346[9];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  swift_beginAccess();
  v347 = v43;
  v354[0] = v52;

  v346 = v50;

  specialized Array.append<A>(contentsOf:)(v53);
  v54 = v354[0];
  v55 = *(v354[0] + 16);
  if (v55)
  {
    v354[0] = v31;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v56 = v354[0];
    v337 = v54;
    v57 = v54 + v51;
    v59 = v338;
    v58 = v339;
    v60 = (v338 + 16);
    v349 = (v338 + 32);
    v61 = v340;
    do
    {
      v62 = v351;
      _s15ConversationKit11ParticipantVWOcTm_16();
      (*v60)(v58, &v62[*(v352 + 20)], v61);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v354[0] = v56;
      v63 = *(v56 + 16);
      if (v63 >= *(v56 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v354[0];
      }

      *(v56 + 16) = v63 + 1;
      (*(v59 + 32))(v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v63, v58, v61);
      v57 += v350;
      --v55;
    }

    while (v55);
    v64 = v56;
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
  }

  v65 = ObjectType;
  swift_beginAccess();
  v66 = v341;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v67 = Features.isICUIRedesignEnabled.getter();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v68 = Features.isICUIRedesignEnabled.getter();
    if (v68)
    {
      v67 = *(v64 + 16) > 4uLL;
    }

    else
    {
      v67 = (*(*v348 + 528))(v68);
    }
  }

  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle] = v67 & 1;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] = 0;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] = 0;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {

    v70 = v342;
    goto LABEL_23;
  }

  v69 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LOBYTE(v69) = v66[v69];

  v70 = v342;
  if ((v69 & 1) == 0)
  {
LABEL_23:
    v71 = Features.isICUIRedesignEnabled.getter();
    if ((v71 & 1) != 0 || ((*(*v348 + 528))(v71) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  if (!v73 && static AmbientState.isPresented == 1)
  {
    Features.isICUIRedesignEnabled.getter();
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMd, &_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMR);
  swift_allocObject();
  specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController] = v74;
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl] = [objc_allocWithZone(type metadata accessor for PipZoomControl()) init];
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController] = [objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController()) init];
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation] = 1;
  v75 = one-time initialization token for shared;
  v76 = v70;
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = static ConversationCapabilities.shared;
  type metadata accessor for CaptioningStateManager(0);
  v78 = swift_allocObject();
  v79 = v77;
  v352 = v76;
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captioningStateManager] = specialized CaptioningStateManager.init(capabilities:call:)(v79, v76, v78);
  v353.receiver = v66;
  v353.super_class = v65;
  v80 = objc_msgSendSuper2(&v353, sel_initWithNibName_bundle_, 0, 0);
  v81 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  swift_beginAccess();
  v82 = *&v80[v81];
  v83 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x148);
  v84 = v80;
  v85 = v82;
  v83(v80);

  v86 = objc_allocWithZone(type metadata accessor for EffectsLayoutController());
  v87 = EffectsLayoutController.init(containingViewController:)(v84);
  v88 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController];
  *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = v87;

  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v347;
  v91 = &v347[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant];
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  *v91 = closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v91[1] = v89;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v92, v93);

  v94 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant];
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  *v95 = closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v95[1] = v94;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v96, v97);

  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  *v99 = closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v99[1] = v98;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v100, v101);

  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant];
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];
  *v103 = closure #5 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v103[1] = v102;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v104, v105);

  v106 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  *v107 = closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v107[1] = v106;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v108, v109);

  v110 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant];
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  *v111 = closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v111[1] = v110;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v112, v113);

  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange];
  swift_beginAccess();
  v116 = *v115;
  v117 = v115[1];
  *v115 = closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v115[1] = v114;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v116, v117);

  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange];
  swift_beginAccess();
  v120 = *v119;
  v121 = v119[1];
  *v119 = closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v119[1] = v118;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v120, v121);

  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant];
  swift_beginAccess();
  v124 = *v123;
  v125 = v123[1];
  *v123 = closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v123[1] = v122;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v124, v125);

  v126 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v127 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis];
  swift_beginAccess();
  v128 = *v127;
  v129 = v127[1];
  *v127 = closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v127[1] = v126;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v128, v129);

  v130 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v131 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition];
  swift_beginAccess();
  v132 = *v131;
  v133 = v131[1];
  *v131 = closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v131[1] = v130;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v132, v133);

  v134 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v135 = swift_allocObject();
  v136 = v348;
  v135[2] = v134;
  v135[3] = v136;
  v135[4] = &protocol witness table for Defaults;
  v137 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo];
  swift_beginAccess();
  v138 = *v137;
  v139 = v137[1];
  *v137 = closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v137[1] = v135;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v138, v139);

  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing];
  swift_beginAccess();
  v142 = *v141;
  v143 = v141[1];
  *v141 = closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v141[1] = v140;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v142, v143);

  v144 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v145 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive];
  swift_beginAccess();
  v146 = *v145;
  v147 = v145[1];
  *v145 = closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v145[1] = v144;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v146, v147);

  v148 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v149 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode];
  swift_beginAccess();
  v150 = *v149;
  v151 = v149[1];
  *v149 = closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v149[1] = v148;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v150, v151);

  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v153 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive];
  swift_beginAccess();
  v154 = *v153;
  v155 = v153[1];
  *v153 = closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v153[1] = v152;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v154, v155);

  v156 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v157 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  *v157 = closure #18 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v157[1] = v156;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v158, v159);

  v160 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v161 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
  swift_beginAccess();
  v162 = *v161;
  v163 = v161[1];
  *v161 = closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v161[1] = v160;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v162, v163);

  v164 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v165 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange];
  swift_beginAccess();
  v166 = *v165;
  v167 = v165[1];
  *v165 = closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v165[1] = v164;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v166, v167);

  v168 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v169 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact];
  swift_beginAccess();
  v170 = *v169;
  v171 = v169[1];
  *v169 = closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v169[1] = v168;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v170, v171);

  v172 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting];
  swift_beginAccess();
  v174 = *v173;
  v175 = v173[1];
  *v173 = closure #22 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v173[1] = v172;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v174, v175);

  v176 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v177 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange];
  swift_beginAccess();
  v178 = *v177;
  v179 = v177[1];
  *v177 = closure #23 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v177[1] = v176;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v178, v179);

  v180 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange];
  swift_beginAccess();
  v182 = *v181;
  v183 = v181[1];
  *v181 = closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v181[1] = v180;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v182, v183);

  v184 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v185 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
  swift_beginAccess();
  v186 = *v185;
  v187 = v185[1];
  *v185 = closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v185[1] = v184;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v186, v187);

  v188 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v189 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange];
  swift_beginAccess();
  v190 = *v189;
  v191 = v189[1];
  *v189 = closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v189[1] = v188;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v190, v191);

  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v193 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange];
  swift_beginAccess();
  v194 = *v193;
  v195 = v193[1];
  *v193 = closure #27 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v193[1] = v192;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v194, v195);

  v196 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v197 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange];
  swift_beginAccess();
  v198 = *v197;
  v199 = v197[1];
  *v197 = closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v197[1] = v196;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v198, v199);

  v200 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v201 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange];
  swift_beginAccess();
  v202 = *v201;
  v203 = v201[1];
  *v201 = closure #29 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v201[1] = v200;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v202, v203);

  v204 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v205 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange];
  swift_beginAccess();
  v206 = *v205;
  v207 = v205[1];
  *v205 = closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v205[1] = v204;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v206, v207);

  v208 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v209 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange];
  swift_beginAccess();
  v210 = *v209;
  v211 = v209[1];
  *v209 = closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v209[1] = v208;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v210, v211);

  v212 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v213 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange];
  swift_beginAccess();
  v214 = *v213;
  v215 = v213[1];
  *v213 = closure #32 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v213[1] = v212;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v214, v215);

  v216 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v217 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange];
  swift_beginAccess();
  v218 = *v217;
  v219 = v217[1];
  *v217 = closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v217[1] = v216;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v218, v219);

  v220 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v221 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange];
  swift_beginAccess();
  v222 = *v221;
  v223 = v221[1];
  *v221 = closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v221[1] = v220;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v222, v223);

  v224 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v225 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange];
  swift_beginAccess();
  v226 = *v225;
  v227 = v225[1];
  *v225 = closure #35 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v225[1] = v224;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v226, v227);

  v228 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v229 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize];
  swift_beginAccess();
  v230 = *v229;
  v231 = v229[1];
  *v229 = closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v229[1] = v228;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v230, v231);

  v232 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v233 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  swift_beginAccess();
  v234 = *v233;
  v235 = v233[1];
  *v233 = closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v233[1] = v232;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v234, v235);

  v236 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v237 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v238 = *v237;
  v239 = v237[1];
  *v237 = closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v237[1] = v236;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v238, v239);

  v240 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v241 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange];
  swift_beginAccess();
  v242 = *v241;
  v243 = v241[1];
  *v241 = closure #39 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v241[1] = v240;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v242, v243);

  v244 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v245 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
  swift_beginAccess();
  v246 = *v245;
  v247 = v245[1];
  *v245 = closure #40 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v245[1] = v244;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v246, v247);

  v248 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v249 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic];
  swift_beginAccess();
  v250 = *v249;
  v251 = v249[1];
  *v249 = closure #41 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v249[1] = v248;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v250, v251);

  v252 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v253 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants];
  swift_beginAccess();
  v254 = *v253;
  v255 = v253[1];
  *v253 = closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v253[1] = v252;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v254, v255);

  v256 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v257 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations];
  swift_beginAccess();
  v258 = *v257;
  v259 = v257[1];
  *v257 = closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v257[1] = v256;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v258, v259);

  v260 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v261 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange];
  swift_beginAccess();
  v262 = *v261;
  v263 = v261[1];
  *v261 = closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v261[1] = v260;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v262, v263);

  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v265 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame];
  swift_beginAccess();
  v266 = *v265;
  v267 = v265[1];
  *v265 = closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v265[1] = v264;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v266, v267);

  v268 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v269 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange];
  swift_beginAccess();
  v270 = *v269;
  v271 = v269[1];
  *v269 = closure #46 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v269[1] = v268;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v270, v271);

  v272 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v273 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange];
  swift_beginAccess();
  v274 = *v273;
  v275 = v273[1];
  *v273 = closure #47 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v273[1] = v272;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v274, v275);

  v276 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v277 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants];
  swift_beginAccess();
  v278 = *v277;
  v279 = v277[1];
  *v277 = closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v277[1] = v276;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v278, v279);

  v280 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v281 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange];
  swift_beginAccess();
  v282 = *v281;
  v283 = v281[1];
  *v281 = closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v281[1] = v280;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v282, v283);

  v284 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v285 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment];
  swift_beginAccess();
  v286 = *v285;
  v287 = v285[1];
  *v285 = closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v285[1] = v284;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v286, v287);

  v288 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v289 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions];
  swift_beginAccess();
  v290 = *v289;
  v291 = v289[1];
  *v289 = closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v289[1] = v288;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v290, v291);

  v292 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v293 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange];
  swift_beginAccess();
  v294 = *v293;
  v295 = v293[1];
  *v293 = closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v293[1] = v292;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v294, v295);

  v296 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v297 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities];
  swift_beginAccess();
  v298 = *v297;
  v299 = v297[1];
  *v297 = closure #53 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v297[1] = v296;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v298, v299);

  v300 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v301 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured];
  swift_beginAccess();
  v302 = *v301;
  v303 = v301[1];
  *v301 = closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v301[1] = v300;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v302, v303);

  v304 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController;
  v305 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController];
  v306 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v307 = *(v305 + 16);
  v308 = *(v305 + 24);
  *(v305 + 16) = closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  *(v305 + 24) = v306;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v307, v308);

  v310 = (*(*v136 + 384))(v309);
  if (v310)
  {
    v311 = *&v84[v304];
    v312 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v313 = *(v311 + 32);
    v314 = *(v311 + 40);
    *(v311 + 32) = closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
    *(v311 + 40) = v312;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v313, v314);
  }

  v315 = (*(*v348 + 136))(v310);
  v316 = v352;
  if (v315)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v317 = static OS_os_log.conversationKit;
    v318 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Muting call because default to mute is set", 42, 2, &dword_1BBC58000, v317, v318, MEMORY[0x1E69E7CC0]);
    [v316 setUplinkMuted_];
  }

  MultiwayViewController.testing_callStatusDidChange(_:)([v316 status]);
  v319 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);

  v320 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000027, 0x80000001BC4F78A0, v320, closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply, v319);

  v321 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v322 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000028, 0x80000001BC4F78D0, v322, closure #58 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply, v321);

  type metadata accessor for DockKitAccessoryManager(0);
  swift_allocObject();
  v323 = DockKitAccessoryManager.init()();
  v324 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
  swift_beginAccess();
  *&v84[v324] = v323;

  if (Features.buttonRemoteControlEnabled.getter())
  {
    v326 = v344;
    v325 = v345;
    v327 = MEMORY[0x1E69E7D40];
    if (*&v84[v324])
    {

      DockKitAccessoryManager.start()();

      v328 = *&v84[v324];
      if (v328)
      {
        swift_beginAccess();
        *(v328 + 56) = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else
  {
    v326 = v344;
    v325 = v345;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v329 = type metadata accessor for Logger();
    __swift_project_value_buffer(v329, static Logger.conversationKit);
    v330 = Logger.logObject.getter();
    v331 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      *v332 = 0;
      _os_log_impl(&dword_1BBC58000, v330, v331, "DockKit system events control feature not enabled", v332, 2u);
      MEMORY[0x1BFB23DF0](v332, -1, -1);
    }

    v327 = MEMORY[0x1E69E7D40];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v333 = *((*v327 & *static ScreenSharingInteractionController.shared) + 0x1C8);
  v334 = v84;
  v333();
  v335 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  [v335 addObserver:v334 selector:sel_handleCameraFlipAnimationDidFinish_ name:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];

  return v334;
}