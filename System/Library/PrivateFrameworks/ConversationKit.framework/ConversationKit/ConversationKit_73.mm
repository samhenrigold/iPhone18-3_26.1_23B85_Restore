char *specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, char *a2, void *a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t (**a8)(void))
{
  v348 = a7;
  v349 = a8;
  v350 = a4;
  v351 = a5;
  v345 = a2;
  v346 = a3;
  v342 = a1;
  ObjectType = swift_getObjectType();
  v354 = type metadata accessor for Participant(0);
  v344 = *(v354 - 8);
  v347 = (v354 - 8);
  v352 = v344;
  MEMORY[0x1EEE9AC00](v354 - 8);
  v353 = &v337 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v338 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v339 = &v337 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v12 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v14 = &v337 - v13;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
  v16 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&a6[v15], 1, 1, v16);
  *&a6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager] = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView, 0x1E6993838);
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = a6;
  v340 = v10;
  *&a6[v17] = Dictionary.init(dictionaryLiteral:)();
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow] = 0;
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *&v18[v19] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *&v18[v20] = swift_allocObject();
  v21 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible] = 2;
  v22 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  swift_allocObject();
  *&v18[v22] = SidebarStateStream.init(initial:)(0);
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask] = 0;
  v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTip;
  v24 = type metadata accessor for VideoReactionPickerTip();
  __swift_storeEnumTagSinglePayload(&v18[v23], 1, 1, v24);
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects] = 0;
  v25 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *(v25 + 8) = 0;
  v26 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner] = 2;
  v27 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v358);
  memcpy(&v18[v27], v358, 0xE8uLL);
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller] = 0;
  v28 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState] = 4;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations] = 2;
  v30 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  v357 = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(&v18[v30], v14, v341);
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner] = 0;
  v31 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen] = 2;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler];
  *v36 = 0;
  *(v36 + 1) = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView] = 1;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews] = 0;
  v37 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen] = 0;
  v39 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  *v39 = 4;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill] = v33;
  v40 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *&v18[v40] = [objc_allocWithZone(type metadata accessor for TonePlayer(0)) init];
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions] = MEMORY[0x1E69E7CD0];
  v41 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets];
  v42 = *(MEMORY[0x1E69DDCE0] + 16);
  *v41 = *MEMORY[0x1E69DDCE0];
  *(v41 + 1) = v42;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView] = 0;
  v43 = v345;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] = v345;
  v44 = objc_allocWithZone(CNKBannerPresentationManager);
  v45 = v43;
  v46 = [v44 init];
  v47 = OBJC_IVAR___CNKBannerPresentationManager_value;
  swift_beginAccess();
  v48 = *&v46[v47];
  v49 = v346;
  *&v46[v47] = v346;
  v346 = v49;

  swift_beginAccess();
  v50 = *&v18[v21];
  *&v18[v21] = v46;
  v345 = v46;

  v51 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults];
  v52 = v349;
  *v51 = v350;
  v51[1] = v52;
  v341 = v18;
  v53 = v351;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features] = v351;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
  v54 = (*(v352 + 80) + 32) & ~*(v352 + 80);
  v352 = v344[9];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  swift_beginAccess();
  v347 = v45;
  v356[0] = v55;
  swift_unknownObjectRetain();
  v344 = v53;

  specialized Array.append<A>(contentsOf:)(v56);
  v57 = v356[0];
  v58 = *(v356[0] + 16);
  if (v58)
  {
    v356[0] = v33;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v59 = v356[0];
    v337 = v57;
    v60 = v57 + v54;
    v62 = v338;
    v61 = v339;
    v63 = (v338 + 16);
    v351 = (v338 + 32);
    v64 = v340;
    do
    {
      v65 = v353;
      _s15ConversationKit11ParticipantVWOcTm_16();
      (*v63)(v61, &v65[*(v354 + 20)], v64);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v356[0] = v59;
      v66 = *(v59 + 16);
      if (v66 >= *(v59 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v356[0];
      }

      *(v59 + 16) = v66 + 1;
      (*(v62 + 32))(v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v66, v61, v64);
      v60 += v352;
      --v58;
    }

    while (v58);
    v67 = v59;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v68 = v341;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v69 = Features.isICUIRedesignEnabled.getter();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v69 = *(v67 + 16) > 4uLL;
    }

    else
    {
      v69 = v349[31](v348);
    }
  }

  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle] = v69 & 1;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] = 0;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] = 0;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {

    v71 = ObjectType;
    goto LABEL_23;
  }

  v70 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LOBYTE(v70) = v68[v70];

  v71 = ObjectType;
  if ((v70 & 1) == 0)
  {
LABEL_23:
    if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 || (v349[31](v348) & 1) == 0)
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
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController] = v74;
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl] = [objc_allocWithZone(type metadata accessor for PipZoomControl()) init];
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController] = [objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController()) init];
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation] = 1;
  v75 = one-time initialization token for shared;
  v76 = v342;
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = static ConversationCapabilities.shared;
  type metadata accessor for CaptioningStateManager(0);
  v78 = swift_allocObject();
  v79 = v77;
  v354 = v76;
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captioningStateManager] = specialized CaptioningStateManager.init(capabilities:call:)(v79, v76, v78);
  v355.receiver = v68;
  v355.super_class = v71;
  v80 = objc_msgSendSuper2(&v355, sel_initWithNibName_bundle_, 0, 0);
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
  *v91 = partial apply for closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v91[1] = v89;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v92, v93);

  v94 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant];
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  *v95 = partial apply for closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v95[1] = v94;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v96, v97);

  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  *v99 = partial apply for closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v99[1] = v98;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v100, v101);

  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant];
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];
  *v103 = partial apply for closure #5 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v103[1] = v102;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v104, v105);

  v106 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  *v107 = partial apply for closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v107[1] = v106;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v108, v109);

  v110 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant];
  swift_beginAccess();
  v112 = *v111;
  v113 = v111[1];
  *v111 = partial apply for closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v111[1] = v110;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v112, v113);

  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange];
  swift_beginAccess();
  v116 = *v115;
  v117 = v115[1];
  *v115 = partial apply for closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v115[1] = v114;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v116, v117);

  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange];
  swift_beginAccess();
  v120 = *v119;
  v121 = v119[1];
  *v119 = partial apply for closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v119[1] = v118;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v120, v121);

  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant];
  swift_beginAccess();
  v124 = *v123;
  v125 = v123[1];
  *v123 = partial apply for closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v123[1] = v122;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v124, v125);

  v126 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v127 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis];
  swift_beginAccess();
  v128 = *v127;
  v129 = v127[1];
  *v127 = partial apply for closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v127[1] = v126;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v128, v129);

  v130 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v131 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition];
  swift_beginAccess();
  v132 = *v131;
  v133 = v131[1];
  *v131 = partial apply for closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v131[1] = v130;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v132, v133);

  v134 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v135 = swift_allocObject();
  v136 = v349;
  v137 = v350;
  v135[2] = v134;
  v135[3] = v137;
  v135[4] = v136;
  v138 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo];
  swift_beginAccess();
  v139 = *v138;
  v140 = v138[1];
  *v138 = partial apply for closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v138[1] = v135;
  swift_unknownObjectRetain();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v139, v140);

  v141 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v142 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing];
  swift_beginAccess();
  v143 = *v142;
  v144 = v142[1];
  *v142 = partial apply for closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v142[1] = v141;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v143, v144);

  v145 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v146 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive];
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  *v146 = partial apply for closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v146[1] = v145;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v147, v148);

  v149 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v150 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode];
  swift_beginAccess();
  v151 = *v150;
  v152 = v150[1];
  *v150 = partial apply for closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v150[1] = v149;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v151, v152);

  v153 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v154 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive];
  swift_beginAccess();
  v155 = *v154;
  v156 = v154[1];
  *v154 = partial apply for closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v154[1] = v153;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v155, v156);

  v157 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v158 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
  swift_beginAccess();
  v159 = *v158;
  v160 = v158[1];
  *v158 = partial apply for closure #18 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v158[1] = v157;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v159, v160);

  v161 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v162 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
  swift_beginAccess();
  v163 = *v162;
  v164 = v162[1];
  *v162 = partial apply for closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v162[1] = v161;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v163, v164);

  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v166 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange];
  swift_beginAccess();
  v167 = *v166;
  v168 = v166[1];
  *v166 = partial apply for closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v166[1] = v165;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v167, v168);

  v169 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v170 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact];
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[1];
  *v170 = partial apply for closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v170[1] = v169;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v171, v172);

  v173 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v174 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting];
  swift_beginAccess();
  v175 = *v174;
  v176 = v174[1];
  *v174 = partial apply for closure #22 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v174[1] = v173;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v175, v176);

  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v178 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange];
  swift_beginAccess();
  v179 = *v178;
  v180 = v178[1];
  *v178 = partial apply for closure #23 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v178[1] = v177;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v179, v180);

  v181 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v182 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange];
  swift_beginAccess();
  v183 = *v182;
  v184 = v182[1];
  *v182 = partial apply for closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v182[1] = v181;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v183, v184);

  v185 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
  swift_beginAccess();
  v187 = *v186;
  v188 = v186[1];
  *v186 = partial apply for closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v186[1] = v185;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v187, v188);

  v189 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v190 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange];
  swift_beginAccess();
  v191 = *v190;
  v192 = v190[1];
  *v190 = partial apply for closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v190[1] = v189;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v191, v192);

  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v194 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange];
  swift_beginAccess();
  v195 = *v194;
  v196 = v194[1];
  *v194 = partial apply for closure #27 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v194[1] = v193;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v195, v196);

  v197 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v198 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange];
  swift_beginAccess();
  v199 = *v198;
  v200 = v198[1];
  *v198 = partial apply for closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v198[1] = v197;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v199, v200);

  v201 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v202 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange];
  swift_beginAccess();
  v203 = *v202;
  v204 = v202[1];
  *v202 = partial apply for closure #29 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v202[1] = v201;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v203, v204);

  v205 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v206 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange];
  swift_beginAccess();
  v207 = *v206;
  v208 = v206[1];
  *v206 = partial apply for closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v206[1] = v205;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v207, v208);

  v209 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v210 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange];
  swift_beginAccess();
  v211 = *v210;
  v212 = v210[1];
  *v210 = partial apply for closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v210[1] = v209;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v211, v212);

  v213 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v214 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange];
  swift_beginAccess();
  v215 = *v214;
  v216 = v214[1];
  *v214 = partial apply for closure #32 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v214[1] = v213;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v215, v216);

  v217 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v218 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange];
  swift_beginAccess();
  v219 = *v218;
  v220 = v218[1];
  *v218 = partial apply for closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v218[1] = v217;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v219, v220);

  v221 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v222 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange];
  swift_beginAccess();
  v223 = *v222;
  v224 = v222[1];
  *v222 = partial apply for closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v222[1] = v221;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v223, v224);

  v225 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v226 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange];
  swift_beginAccess();
  v227 = *v226;
  v228 = v226[1];
  *v226 = partial apply for closure #35 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v226[1] = v225;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v227, v228);

  v229 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v230 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize];
  swift_beginAccess();
  v231 = *v230;
  v232 = v230[1];
  *v230 = partial apply for closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v230[1] = v229;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v231, v232);

  v233 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v234 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  swift_beginAccess();
  v235 = *v234;
  v236 = v234[1];
  *v234 = partial apply for closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v234[1] = v233;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v235, v236);

  v237 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v238 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v239 = *v238;
  v240 = v238[1];
  *v238 = partial apply for closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v238[1] = v237;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v239, v240);

  v241 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v242 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange];
  swift_beginAccess();
  v243 = *v242;
  v244 = v242[1];
  *v242 = partial apply for closure #39 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v242[1] = v241;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v243, v244);

  v245 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v246 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
  swift_beginAccess();
  v247 = *v246;
  v248 = v246[1];
  *v246 = partial apply for closure #40 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v246[1] = v245;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v247, v248);

  v249 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v250 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic];
  swift_beginAccess();
  v251 = *v250;
  v252 = v250[1];
  *v250 = partial apply for closure #41 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v250[1] = v249;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v251, v252);

  v253 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v254 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants];
  swift_beginAccess();
  v255 = *v254;
  v256 = v254[1];
  *v254 = partial apply for closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v254[1] = v253;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v255, v256);

  v257 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v258 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations];
  swift_beginAccess();
  v259 = *v258;
  v260 = v258[1];
  *v258 = partial apply for closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v258[1] = v257;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v259, v260);

  v261 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v262 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange];
  swift_beginAccess();
  v263 = *v262;
  v264 = v262[1];
  *v262 = partial apply for closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v262[1] = v261;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v263, v264);

  v265 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v266 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame];
  swift_beginAccess();
  v267 = *v266;
  v268 = v266[1];
  *v266 = partial apply for closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v266[1] = v265;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v267, v268);

  v269 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v270 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange];
  swift_beginAccess();
  v271 = *v270;
  v272 = v270[1];
  *v270 = partial apply for closure #46 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v270[1] = v269;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v271, v272);

  v273 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v274 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange];
  swift_beginAccess();
  v275 = *v274;
  v276 = v274[1];
  *v274 = partial apply for closure #47 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v274[1] = v273;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v275, v276);

  v277 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v278 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants];
  swift_beginAccess();
  v279 = *v278;
  v280 = v278[1];
  *v278 = partial apply for closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v278[1] = v277;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v279, v280);

  v281 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v282 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange];
  swift_beginAccess();
  v283 = *v282;
  v284 = v282[1];
  *v282 = partial apply for closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v282[1] = v281;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v283, v284);

  v285 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v286 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment];
  swift_beginAccess();
  v287 = *v286;
  v288 = v286[1];
  *v286 = partial apply for closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v286[1] = v285;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v287, v288);

  v289 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v290 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions];
  swift_beginAccess();
  v291 = *v290;
  v292 = v290[1];
  *v290 = partial apply for closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v290[1] = v289;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v291, v292);

  v293 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v294 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange];
  swift_beginAccess();
  v295 = *v294;
  v296 = v294[1];
  *v294 = partial apply for closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v294[1] = v293;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v295, v296);

  v297 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v298 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities];
  swift_beginAccess();
  v299 = *v298;
  v300 = v298[1];
  *v298 = partial apply for closure #53 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v298[1] = v297;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v299, v300);

  v301 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v302 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured];
  swift_beginAccess();
  v303 = *v302;
  v304 = v302[1];
  *v302 = partial apply for closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v302[1] = v301;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v303, v304);

  v305 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController;
  v306 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController];
  v307 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v308 = *(v306 + 16);
  v309 = *(v306 + 24);
  *(v306 + 16) = partial apply for closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  *(v306 + 24) = v307;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v308, v309);

  if (v349[16](v348))
  {
    v310 = *&v84[v305];
    v311 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v312 = *(v310 + 32);
    v313 = *(v310 + 40);
    *(v310 + 32) = partial apply for closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    *(v310 + 40) = v311;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v312, v313);
  }

  v314 = v349[6](v348);
  v315 = v344;
  v316 = v354;
  if (v314)
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
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000027, 0x80000001BC4F78A0, v320, partial apply for closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:), v319);

  v321 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v322 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000028, 0x80000001BC4F78D0, v322, partial apply for closure #58 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:), v321);

  type metadata accessor for DockKitAccessoryManager(0);
  swift_allocObject();
  v323 = DockKitAccessoryManager.init()();
  v324 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
  swift_beginAccess();
  *&v84[v324] = v323;

  if (Features.buttonRemoteControlEnabled.getter())
  {
    v326 = v345;
    v325 = v346;
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
    v326 = v345;
    v325 = v346;
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

  swift_unknownObjectRelease();
  return v334;
}

char *specialized EffectsBrowserContainerViewController.init(delegate:)(void *a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController] = 0;
  a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight] = 0x404D000000000000;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_constraintsToUpdate] = MEMORY[0x1E69E7CC0];
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = a2;
  v7.super_class = type metadata accessor for EffectsBrowserContainerViewController();
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  *&v4[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  v5 = v4;
  EffectsBrowserContainerViewController.setupViews()();

  return v5;
}

char *specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(void *a1, void *a2, void *a3, _BYTE *a4)
{
  swift_getObjectType();
  a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  *&a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController] = static CallDetailsCoordinator.makeDetailsNavigationController(using:)(a2);
  v14.receiver = a4;
  v14.super_class = type metadata accessor for CallDetailsCoordinator();
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = *&v8[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController];
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x78);
  v11 = v8;
  v12 = v9;
  v10(v8);

  return v11;
}

id specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, _BYTE *a6)
{
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState] = 1;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount] = 0;
  v12 = &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController];
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider];
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dymanicStateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *&a6[v14] = PassthroughSubject.init()();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded] = 0;
  *(v12 + 1) = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager] = a2;
  *(v13 + 1) = &protocol witness table for ParticipantListViewController;
  swift_unknownObjectWeakAssign();
  v15 = a2;

  outlined init with copy of IDSLookupManager(a4, &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service]);
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_sidebarStateStream] = a5;
  v19.receiver = a6;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

unint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for Participant(v2);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)(v0, v5, v6);
}

unint64_t lazy protocol witness table accessor for type VideoMessagingError and conformance VideoMessagingError()
{
  result = lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError;
  if (!lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError;
  if (!lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle()
{
  result = lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle;
  if (!lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom()
{
  result = lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom;
  if (!lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoMessagingError(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for MultiwayViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultiwayViewController;
  if (!type metadata singleton initialization cache for MultiwayViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MultiwayViewController(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for VideoReactionPickerTip?, MEMORY[0x1E69D8938]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MultiwayViewController.LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MultiwayViewController.ViewContent(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiwayViewController.ViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MultiwayViewController.ConversationSnapshot(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiwayViewController.ConversationSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiwayViewController.VideoVisibility(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiwayViewController.VideoVisibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in AsyncCancellableTimer.wait(with:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v6, v7, v8, v2, v1);
}

uint64_t objectdestroy_276Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t objectdestroy_40Tm()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t objectdestroy_106Tm()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_196_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()(v5, v6, v7, v8, v0);
}

uint64_t objectdestroy_430Tm()
{
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_196_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()(v5, v6, v7, v8, v0);
}

double partial apply for specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()()
{
  return specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v0, MultiwayViewController.nameForPhotoIndicator.getter, MultiwayViewController.insulatingView.getter);
}

{
  return specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v0, MostActiveParticipantViewController.nameForPhotoIndicator.getter, MostActiveParticipantViewController.insulatingView.getter);
}

uint64_t objectdestroy_75Tm_0()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Participant(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v17 + 8))(v0 + v2);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v19 = (v3 + *(v18 + 48));

      if (v19[15] >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v19 + 12);
      }

      if (v19[39])
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v18 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = v1[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v3 + v5);
  v7 = (v3 + v1[7]);
  if (*v7)
  {
  }

  v8 = v3 + v1[14];
  v9 = type metadata accessor for Date();
  v10 = OUTLINED_FUNCTION_60_16();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    v12 = OUTLINED_FUNCTION_40_2();
    v13(v12);
  }

  v14 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v14, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8 + v14, v9);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t objectdestroy_459Tm()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_342Tm()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t objectdestroy_391Tm()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in MultiwayViewController.reactionPickerTipState.didset()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

id partial apply for closure #2 in MultiwayViewController.reactionPickerTipState.didset()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t (*OUTLINED_FUNCTION_70_8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 264) = a2;
  *(v2 + 272) = a1;
  return closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
}

uint64_t OUTLINED_FUNCTION_108_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 8) = a1;

  return swift_unknownObjectWeakAssign();
}

void *OUTLINED_FUNCTION_146_3(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void *OUTLINED_FUNCTION_190_1(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void OUTLINED_FUNCTION_207_1()
{
  v3 = *(v0 + 72);
  v1[13] = v2 + 16;
  v1[14] = v3;
  v1[12] = v2 + 32;
}

uint64_t OUTLINED_FUNCTION_217_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  return outlined init with copy of MultiwayViewController.ViewContent(va, &a10);
}

void OUTLINED_FUNCTION_223_3()
{

  ConversationController.participant(with:)();
}

id OUTLINED_FUNCTION_224_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_268_2()
{
  v2 = *(v0 + 3080);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 3056, v2);
}

id OUTLINED_FUNCTION_270_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return [v3 numberOfTapsRequired];
}

void OUTLINED_FUNCTION_271_3()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_272_1(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return os_log(_:dso:log:type:_:)(a1, 35, 2, a4, v6, a6, v7);
}

uint64_t OUTLINED_FUNCTION_273_1()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_278_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return outlined init with copy of MultiwayViewController.ViewContent(va, &a9);
}

id OUTLINED_FUNCTION_280_1()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_282_1()
{

  return [v1 (v0 + 2808)];
}

id OUTLINED_FUNCTION_283_1()
{

  return [v0 (v1 + 3986)];
}

void *OUTLINED_FUNCTION_284_0(void *a1)
{

  return memcpy(a1, (v1 + 648), 0xE8uLL);
}

void *OUTLINED_FUNCTION_286_1(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void static RequestsHandler.localHandle(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v4 = [v1 localParticipantUUID];
  if (!v4)
  {
LABEL_10:
    v26 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(v1);
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v28)
    {
      if (v26 == v29 && v28 == v30)
      {

LABEL_21:
        v36 = static RequestsHandler.fetchLocalFaceTimeHandles()();
        v37 = specialized Collection.first.getter(v36);
        v39 = v38;

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.conversationKit);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_42();
          v44 = OUTLINED_FUNCTION_23();
          *&v55 = v44;
          *v43 = 136315138;
          if (v39)
          {
            *&v57[0] = v37;
            *(&v57[0] + 1) = v39;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = OUTLINED_FUNCTION_12_96();
          }

          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v55);

          *(v43 + 4) = v52;
          _os_log_impl(&dword_1BBC58000, v41, v42, "[RequestsHandler] Found local FaceTime handle: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        goto LABEL_37;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v33 = [v3 telephonyProvider];
    v34 = [v33 prioritizedSenderIdentities];

    v35 = [v34 firstObject];
    if (v35)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (!*(&v56 + 1))
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_sypSgMd, &_sypSgMR);
      goto LABEL_38;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity, 0x1E69D8CD8);
    if ((swift_dynamicCast() & 1) == 0 || (v50 = [v54 handle], v54, !v50))
    {

      goto LABEL_38;
    }

    v51 = [v50 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_37:

    goto LABEL_38;
  }

  v5 = v4;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 telephonyProvider];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = [v6 senderIdentityForAccountUUID_];

  if (!v8)
  {
    v24 = OUTLINED_FUNCTION_10_90();
    v25(v24);
    goto LABEL_10;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationKit);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_42();
    v53 = OUTLINED_FUNCTION_23();
    *&v57[0] = v53;
    *v13 = 136315138;
    *&v55 = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity, 0x1E69D8CD8);
    v14 = v10;
    v15 = String.init<A>(reflecting:)();
    v17 = v3;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v57);

    *(v13 + 4) = v18;
    v3 = v17;
    _os_log_impl(&dword_1BBC58000, v11, v12, "[RequestsHandler] Found senderIdentity: %s for recent call", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v19 = [v10 handle];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = OUTLINED_FUNCTION_10_90();
    v23(v22);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_10_90();
    v49(v48);
  }

LABEL_38:
  OUTLINED_FUNCTION_30_0();
}

uint64_t static RequestsHandler.sourceBundleID(for:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(a1);
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v1 != v4 || v3 != v5)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void RequestsHandler.updateCache(with:shouldRequeryCached:_:)()
{
  OUTLINED_FUNCTION_29();
  v90 = v1;
  v89 = v2;
  v94 = v3;
  v5 = v4;
  v93 = v0;
  v106 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v87 - v7;
  v111 = type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v91 = (v11 - v12);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v87 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v100 = specialized Array.count.getter();
  v18 = 0;
  v98 = v5 & 0xC000000000000001;
  v97 = v5 & 0xFFFFFFFFFFFFFF8;
  v87 = v5;
  v95 = v5 + 32;
  v96 = *MEMORY[0x1E69935C0];
  v110 = v9;
  v107 = (v9 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v103 = v19;
    if (v18 == v100)
    {
      v64 = 0;
      v65 = *(v19 + 16);
      v66 = (v110 + 8);
      v67 = MEMORY[0x1E69E7CC0];
      for (i = v99; ; i = v71)
      {
        while (1)
        {
          if (v65 == v64)
          {

            _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_SayAFGTt0g5();
            v80 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_ShyAFGTt0g5(v79);
            if (*(v80 + 16))
            {
              v81 = type metadata accessor for TaskPriority();
              __swift_storeEnumTagSinglePayload(v88, 1, 1, v81);
              v82 = swift_allocObject();
              swift_weakInit();
              type metadata accessor for MainActor();

              v83 = v90;

              v84 = static MainActor.shared.getter();
              v85 = swift_allocObject();
              v86 = MEMORY[0x1E69E85E0];
              v85[2] = v84;
              v85[3] = v86;
              v85[4] = v80;
              v85[5] = v82;
              v85[6] = v89;
              v85[7] = v83;

              _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
            }

            else
            {
              v89();
            }

            OUTLINED_FUNCTION_30_0();
            return;
          }

          if (v64 >= *(v103 + 16))
          {
            goto LABEL_83;
          }

          v69 = (*(v110 + 80) + 32) & ~*(v110 + 80);
          v70 = *(v110 + 72);
          (*(v110 + 16))(i, v103 + v69 + v70 * v64, v111);
          v71 = i;
          if ((v94 & 1) == 0)
          {
            break;
          }

LABEL_65:
          v75 = *v107;
          (*v107)(v91, v71, v111);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v67;
          if (isUniquelyReferenced_nonNull_native)
          {
            i = v71;
          }

          else
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            i = v99;
            v67 = v113;
          }

          v77 = *(v67 + 16);
          v78 = v77 + 1;
          if (v77 >= *(v67 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v78 = v77 + 1;
            i = v99;
            v67 = v113;
          }

          ++v64;
          *(v67 + 16) = v78;
          v75(v67 + v69 + v77 * v70, v91, v111);
        }

        v72 = v93;
        swift_beginAccess();
        if (!*(v72[2] + 16))
        {
          swift_endAccess();
          v71 = v99;
          goto LABEL_65;
        }

        v71 = v99;
        specialized __RawDictionaryStorage.find<A>(_:)();
        v74 = v73;
        swift_endAccess();
        if ((v74 & 1) == 0)
        {
          goto LABEL_65;
        }

        (*v66)(v71, v111);
        ++v64;
      }
    }

    if (v98)
    {
      v20 = MEMORY[0x1BFB22010](v18, v87);
    }

    else
    {
      if (v18 >= *(v97 + 16))
      {
        goto LABEL_80;
      }

      v20 = *(v95 + 8 * v18);
    }

    v21 = v20;
    v22 = __OFADD__(v18, 1);
    v23 = v18 + 1;
    if (v22)
    {
      goto LABEL_79;
    }

    v24 = [v20 callStatus];
    v102 = v23;
    if ((v24 & v96) != 0)
    {
      break;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v59 = *(v28 + 16);
    v60 = *(v19 + 16);
    if (__OFADD__(v60, v59))
    {
      goto LABEL_81;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v60 + v59 > *(v19 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v61;
    }

    if (*(v28 + 16))
    {
      if ((*(v19 + 24) >> 1) - *(v19 + 16) < v59)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      v18 = v102;
      if (v59)
      {
        v62 = *(v19 + 16);
        v22 = __OFADD__(v62, v59);
        v63 = v62 + v59;
        if (v22)
        {
          goto LABEL_85;
        }

        *(v19 + 16) = v63;
      }
    }

    else
    {

      v18 = v102;
      if (v59)
      {
        goto LABEL_82;
      }
    }
  }

  v25 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v21);
  if (!v25)
  {

    goto LABEL_43;
  }

  v26 = v25;
  v109 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_42:

LABEL_43:
    v28 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v19 = v103;
    goto LABEL_45;
  }

  v27 = *(v25 + 16);
  if (!v27)
  {
    goto LABEL_42;
  }

LABEL_11:
  v116 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v28 = v116;
  v113 = specialized Set.startIndex.getter();
  v114 = v29;
  v115 = v30 & 1;
  if ((v27 & 0x8000000000000000) == 0)
  {
    v92 = v21;
    v31 = 0;
    if (v26 >= 0)
    {
      v32 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v32 = v26;
    }

    v104 = v26 + 56;
    v105 = v32;
    v101 = v26 + 64;
    v108 = v27;
    while (1)
    {
      v22 = __OFADD__(v31++, 1);
      if (v22)
      {
        break;
      }

      v33 = v113;
      v34 = v114;
      v35 = v115;
      v36 = OUTLINED_FUNCTION_153_2();
      v37 = v26;
      specialized Set.subscript.getter(v36, v38, v35, v26);
      v40 = v39;
      static RequestsHandler.lckHandle(from:)(v39);

      v116 = v28;
      v41 = v17;
      v42 = *(v28 + 16);
      if (v42 >= *(v28 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v116;
      }

      *(v28 + 16) = v42 + 1;
      (*(v110 + 32))(v28 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v42, v41, v111);
      v17 = v41;
      if (v109)
      {
        if (!v35)
        {
          goto LABEL_87;
        }

        v26 = v37;
        OUTLINED_FUNCTION_153_2();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v47 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8CHHandleC_GMd, &_sSh5IndexVySo8CHHandleC_GMR);
        v48 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v48(&v112, 0);
      }

      else
      {
        if (v35)
        {
          goto LABEL_88;
        }

        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v26 = v37;
        v43 = 1 << *(v37 + 32);
        if (v33 >= v43)
        {
          goto LABEL_76;
        }

        v44 = v33 >> 6;
        v45 = *(v104 + 8 * (v33 >> 6));
        if (((v45 >> v33) & 1) == 0)
        {
          goto LABEL_77;
        }

        if (*(v37 + 36) != v34)
        {
          goto LABEL_78;
        }

        v46 = v45 & (-2 << (v33 & 0x3F));
        if (v46)
        {
          v43 = __clz(__rbit64(v46)) | v33 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v49 = v44 << 6;
          v50 = v44 + 1;
          v51 = (v101 + 8 * v44);
          while (v50 < (v43 + 63) >> 6)
          {
            v53 = *v51++;
            v52 = v53;
            v49 += 64;
            ++v50;
            if (v53)
            {
              v54 = OUTLINED_FUNCTION_153_2();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v54, v55, 0);
              v43 = __clz(__rbit64(v52)) + v49;
              goto LABEL_36;
            }
          }

          v56 = OUTLINED_FUNCTION_153_2();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v56, v57, 0);
        }

LABEL_36:
        v58 = *(v37 + 36);
        v113 = v43;
        v114 = v58;
        v115 = 0;
        v47 = v108;
      }

      if (v31 == v47)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v113, v114, v115);
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void RequestsHandler.isRequestItem(_:)()
{
  OUTLINED_FUNCTION_29();
  v47 = v0;
  v2 = v1;
  v51 = type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v52 = v4 - v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44 - v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v49 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v46 = v12 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v44 - v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v44 - v17;
  v18 = *(type metadata accessor for RecentsCallItem(0) + 48);
  v50 = v2;
  v19 = *(v2 + v18);
  v53 = MEMORY[0x1E69E7CC0];
  v20 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v20 == i)
    {
      v24 = specialized Array.count.getter();

      if (!v24)
      {
        v25 = v50;
        outlined init with copy of RecentsCallItemType(v50, v10);
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v10, v26);
          v27 = 0;
          v28 = v52;
          v29 = v49;
        }

        else
        {
          v30 = v44;
          outlined init with take of RecentCallRecentItemMetadata(v10, v44);
          v29 = v49;
          v27 = *(v30 + *(v49 + 24));
          v31 = v27;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v30, v32);
          v28 = v52;
        }

        v33 = v48;
        outlined init with copy of RecentsCallItemType(v25, v48);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v34 = v45;
          outlined init with take of RecentCallRecentItemMetadata(v33, v45);
          v35 = *(v34 + *(v29 + 24));
          v36 = v35;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v34, v37);
          if (v35)
          {

            v27 = v35;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v33, v38);
        }

        outlined init with copy of RecentsCallItemType(v25, v28);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v39 = v46;
          outlined init with take of RecentCallRecentItemMetadata(v28, v46);
          v40 = *(v39 + *(v29 + 24));
          v41 = v40;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v39, v42);
          if (v40)
          {

LABEL_26:
            RequestsHandler.callShouldShowInRequests(_:)(v41);

            goto LABEL_27;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v28, v43);
        }

        if (v27)
        {
          v41 = v27;
          goto LABEL_26;
        }
      }

LABEL_27:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFB22010](i, v19);
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v22 = *(v19 + 8 * i + 32);
    }

    v23 = v22;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v22 hasBeenPersisted])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t *RequestsHandler.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_140(&one-time initialization token for shared);
  }

  return &static RequestsHandler.shared;
}

uint64_t RequestsHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  RequestsHandler.init()();
  return v0;
}

uint64_t static RequestsHandler.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_140(&one-time initialization token for shared);
  }
}

uint64_t static RequestsHandler.lckHandle(from:)(void *a1)
{
  v2 = type metadata accessor for Handle.Kind();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = [a1 type];
  if (v10 > 3)
  {
    v11 = MEMORY[0x1E696ED80];
  }

  else
  {
    v11 = qword_1E7FE78E0[v10];
  }

  (*(v3 + 104))(v9, *v11, v2);
  (*(v3 + 16))(v5, v9, v2);
  v12 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Handle.init(type:value:displayName:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMd, &_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMR);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CommunicationTrust7ServiceOSgMd, &_s18CommunicationTrust7ServiceOSgMR);
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CommunicationTrust0aB12ScoreOptionsVSgMd, &_s18CommunicationTrust0aB12ScoreOptionsVSgMR);
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[18] = v9;
  v7[19] = v8;

  return MEMORY[0x1EEE6DFA0](closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:), v9, v8);
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)()
{
  v2 = v0[15];
  v1 = v0[16];
  type metadata accessor for CommunicationTrustManager();
  v0[20] = static CommunicationTrustManager.shared.getter();
  v3 = type metadata accessor for CommunicationTrustScoreOptions();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = type metadata accessor for Service();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[9];

  return MEMORY[0x1EEDF61E8](v8, v6, v7);
}

{
  v18 = v0;

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v17 = v9;
    *v8 = 136315138;
    *(v0 + 64) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to batch fetch trust scores with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  (*(v0 + 88))(v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 120);
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s18CommunicationTrust7ServiceOSgMd, &_s18CommunicationTrust7ServiceOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s18CommunicationTrust0aB12ScoreOptionsVSgMd, &_s18CommunicationTrust0aB12ScoreOptionsVSgMR);
  v8 = *(v3 + 152);
  v9 = *(v3 + 144);
  if (v1)
  {
    v10 = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  }

  else
  {
    v10 = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

void closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);

  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v36 = v7;
  v37 = v1 + 64;
  v34 = v2;
  v35 = v1;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v10 = *(v0 + 112);
      v11 = __clz(__rbit64(v6)) | (v8 << 6);
      v12 = *(v1 + 48);
      type metadata accessor for Handle();
      OUTLINED_FUNCTION_7_0();
      v40 = *(v13 + 72);
      v41 = *(v13 + 16);
      v42 = v14;
      v41(v10, v12 + v40 * v11);
      *(v10 + *(v2 + 48)) = *(*(v1 + 56) + 8 * v11);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        v39 = CommunicationTrustScore.rawValue.getter();
        v38 = CommunicationTrustScore.rawValue.getter();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v16 + 16);
        *(v16 + 16) = 0x8000000000000000;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)();
        v21 = v18[2];
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v24 = v19;
        v25 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy20LiveCommunicationKit6HandleVSbGMd, &_ss17_NativeDictionaryVy20LiveCommunicationKit6HandleVSbGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
        {
          v26 = specialized __RawDictionaryStorage.find<A>(_:)();
          if ((v25 & 1) != (v27 & 1))
          {

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v24 = v26;
        }

        if (v25)
        {
          *(v18[7] + v24) = v39 == v38;
        }

        else
        {
          v28 = *(v0 + 112);
          v18[(v24 >> 6) + 8] |= 1 << v24;
          (v41)(v18[6] + v24 * v40, v28, v42);
          *(v18[7] + v24) = v39 == v38;
          v29 = v18[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_28;
          }

          v18[2] = v31;
        }

        *(v16 + 16) = v18;

        swift_endAccess();

        v2 = v34;
        v1 = v35;
      }

      v6 &= v6 - 1;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v0 + 112), &_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMd, &_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMR);
      v7 = v36;
      v3 = v37;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  (*(v0 + 88))(v32);

  v33 = *(v0 + 8);

  v33();
}

id RequestsHandler.contactStore.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = closure #1 in RequestsHandler.contactStore.getter();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id closure #1 in RequestsHandler.contactStore.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeLocalContacts_];
  [v0 setIncludeAcceptedIntroductions_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

uint64_t RequestsHandler.isCallUnknownParticipant(_:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = specialized Collection.first.getter(v1);

  if (!v2)
  {
    return 1;
  }

  v3 = RequestsHandler.contactStore.getter();
  v4 = [v2 value];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x1BFB209B0](v5);
  }

  v6 = [v3 contactForDestinationId_];

  if (!v6)
  {
    return 1;
  }

  return 0;
}

void static RequestsHandler.accept(recentCall:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v1);
  if (!v9)
  {
    goto LABEL_43;
  }

  v10 = specialized Collection.first.getter(v9);

  if (!v10)
  {
    goto LABEL_43;
  }

  v90 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationKit);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_23();
    v92 = v16;
    *v15 = 136315138;
    v98 = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    v17 = v12;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v92);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v13, v14, "[RequestsHandler] acceptRecentCall %s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (_TUIsInternalInstall())
  {
    v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v22 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001CLL, 0x80000001BC51D6B0);
    if (v22)
    {
      v23 = v22;
      v24 = [v12 value];
      if (!v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = MEMORY[0x1BFB209B0](v25);
      }

      v26 = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC51D6D0);
      [v23 setValue:v24 forKey:v26];
    }
  }

  v27 = [v12 type];
  if (v27 == 2)
  {
    v28 = [v12 value];
    v29 = MEMORY[0x1E6998F60];
    if (v28)
    {
LABEL_15:
      v30 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    if (v27 != 3)
    {
      goto LABEL_25;
    }

    v28 = [v12 value];
    v29 = MEMORY[0x1E6998F48];
    if (v28)
    {
      goto LABEL_15;
    }
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = MEMORY[0x1BFB209B0](v31);

LABEL_18:
  v32 = objc_opt_self();
  v33 = *v29;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v2);
  Dictionary.init(dictionaryLiteral:)();
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v32 recentEventForAddress:v30 displayName:0 kind:v33 date:isa weight:0 metadata:v35 options:1];

  if (!v36)
  {
LABEL_25:
    v66 = v12;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v69 = 136315394;
      v70 = OUTLINED_FUNCTION_12_96();
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, 0xE300000000000000, v71);
      *(v69 + 12) = 2080;
      v98 = v66;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
      v72 = v66;
      v73 = String.init<A>(reflecting:)();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v92);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_1BBC58000, v67, v68, "[RequestsHandler] Could not create event for name: %s handle %s", v69, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    goto LABEL_43;
  }

  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_42();
    v41 = OUTLINED_FUNCTION_23();
    v92 = v41;
    *v40 = 136315138;
    v98 = v37;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v42 = v37;
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v92);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1BBC58000, v38, v39, "[RequestsHandler] Generated event: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v46 = [objc_opt_self() defaultInstance];
  if (v46)
  {
    v47 = v46;
    static RequestsHandler.localHandle(for:)();
    v88 = v48;
    v50 = v49;
    v89 = static RequestsHandler.sourceBundleID(for:)(v90);
    v52 = v51;

    v53 = v12;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    v91 = v53;
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v56 = 136315906;
      v57 = 0xE300000000000000;
      v58 = OUTLINED_FUNCTION_12_96();
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, 0xE300000000000000, v59);
      *(v56 + 12) = 2080;
      v92 = v53;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
      v60 = v53;
      v61 = String.init<A>(reflecting:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v98);

      *(v56 + 14) = v63;
      *(v56 + 22) = 2080;
      if (v50)
      {
        v92 = v88;
        v93 = v50;

        v64 = String.init<A>(reflecting:)();
        v57 = v65;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_12_96();
      }

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v57, &v98);

      *(v56 + 24) = v76;
      *(v56 + 32) = 2080;
      v53 = v91;
      if (v52)
      {
        v92 = v89;
        v93 = v52;

        v77 = String.init<A>(reflecting:)();
        v79 = v78;
      }

      else
      {
        v79 = 0xE300000000000000;
        v77 = OUTLINED_FUNCTION_12_96();
      }

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v98);

      *(v56 + 34) = v80;
      _os_log_impl(&dword_1BBC58000, v54, v55, "[RequestsHandler] Calling into CoreRecents to accept name: %s handle %s from localHandle: %s source: %s", v56, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    if ([v47 respondsToSelector_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1BC4BAC30;
      *(v81 + 32) = v37;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v82 = v37;
      v83 = v47;
      v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
      if (v50)
      {
        v85 = MEMORY[0x1BFB209B0](v88, v50);
        if (v52)
        {
LABEL_37:
          v86 = MEMORY[0x1BFB209B0](v89, v52);
LABEL_42:
          v96 = closure #1 in static RequestsHandler.accept(recentCall:);
          v97 = 0;
          v92 = MEMORY[0x1E69E9820];
          v93 = 1107296256;
          v94 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
          v95 = &block_descriptor_115;
          v87 = _Block_copy(&v92);

          [v83 recordAcceptedContactEvents:v84.super.isa sendingAddress:v85 source:v86 completion:v87];
          _Block_release(v87);

          goto LABEL_43;
        }
      }

      else
      {
        v85 = 0;
        if (v52)
        {
          goto LABEL_37;
        }
      }

      v86 = 0;
      goto LABEL_42;
    }
  }

  else
  {
  }

LABEL_43:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in static RequestsHandler.accept(recentCall:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationKit);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[RequestsHandler] Failed to accept request, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
      MEMORY[0x1BFB23DF0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v14, "[RequestsHandler] Finished accepting request", v15, 2u);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    v16 = oslog;
  }
}

id static RequestsHandler.fetchLocalFaceTimeHandles()()
{
  v0 = [objc_opt_self() sharedController];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [v0 blockUntilConnected];
    v3 = [objc_opt_self() facetimeService];
    v4 = [v2 accountsForService_];

    if (v4)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount, 0x1E69A5A78);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for conversationKit != -1)
      {
LABEL_41:
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationKit);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      v31 = v2;
      v32 = v0;
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v33 = v10;
        *v9 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IMAccountCGMd, &_sSaySo9IMAccountCGMR);
        v11 = String.init<A>(reflecting:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v33);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_1BBC58000, v7, v8, "[RequestsHandler] Found FaceTime accounts: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      v14 = MEMORY[0x1E69E7CC0];
      v33 = MEMORY[0x1E69E7CC0];
      v15 = specialized Array.count.getter();
      v2 = 0;
      v0 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (v15 != v2)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB22010](v2, v5);
        }

        else
        {
          if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v16 = *(v5 + 8 * v2 + 32);
        }

        v17 = v16;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v16 registrationStatus] == 5)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v2;
      }

      v5 = v33;
      v18 = specialized Array.count.getter();
      if (!v18)
      {

        v20 = MEMORY[0x1E69E7CC0];
LABEL_35:
        v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v20);

        return v30;
      }

      v19 = v18;
      v33 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if ((v19 & 0x8000000000000000) == 0)
      {
        v2 = 0;
        v20 = v33;
        while (1)
        {
          v0 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            goto LABEL_39;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1BFB22010](v2, v5);
          }

          else
          {
            if (v2 >= *(v5 + 16))
            {
              goto LABEL_40;
            }

            v21 = *(v5 + 8 * v2 + 32);
          }

          v22 = v21;
          result = outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v21);
          if (!v23)
          {
            __break(1u);
            goto LABEL_45;
          }

          v24 = String.lowercased()();

          v33 = v20;
          v25 = *(v20 + 16);
          if (v25 >= *(v20 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v33;
          }

          *(v20 + 16) = v25 + 1;
          *(v20 + 16 * v25 + 32) = v24;
          ++v2;
          if (v0 == v19)
          {

            goto LABEL_35;
          }
        }
      }

      __break(1u);
    }

    else if (one-time initialization token for conversationKit == -1)
    {
LABEL_31:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationKit);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BBC58000, v27, v28, "[RequestsHandler] Could not find any facetime service IMAccount in IMAccountController", v29, 2u);
        MEMORY[0x1BFB23DF0](v29, -1, -1);
      }

      return MEMORY[0x1E69E7CD0];
    }

    swift_once();
    goto LABEL_31;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t RequestsHandler.deinit()
{

  return v0;
}

uint64_t RequestsHandler.__deallocating_deinit()
{
  RequestsHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t RequestsHandler.init()()
{
  type metadata accessor for Handle();
  lazy protocol witness table accessor for type Handle and conformance Handle();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0;
  return v0;
}

void RequestsHandler.isItemUnknownParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v20 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v21 = v8 - v7;
  v22 = v1;
  v9 = *(v1 + *(type metadata accessor for RecentsCallItem(0) + 48));
  v10 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
      v14 = specialized Array.count.getter();

      if (!v14)
      {
        outlined init with copy of RecentsCallItemType(v22, v5);
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_1_185();
          v16 = v5;
        }

        else
        {
          outlined init with take of RecentCallRecentItemMetadata(v5, v21);
          v17 = *(v21 + *(v20 + 24));
          if (v17)
          {
            v18 = v17;
            RequestsHandler.isCallUnknownParticipant(_:)(v18);

            OUTLINED_FUNCTION_0_221();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v21, v19);
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_0_221();
          v16 = v21;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v16, v15);
      }

LABEL_16:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v12 hasBeenPersisted])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(void *a1)
{
  v1 = [a1 serviceProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with take of RecentCallRecentItemMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCallRecentItemMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Handle and conformance Handle()
{
  result = lazy protocol witness table cache variable for type Handle and conformance Handle;
  if (!lazy protocol witness table cache variable for type Handle and conformance Handle)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Handle and conformance Handle);
  }

  return result;
}

id one-time initialization function for systemGreenWithUserInterfaceStyleLight()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = @nonobjc UIColor.init(dynamicProvider:)(closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight, 0);
  static UIColor.systemGreenWithUserInterfaceStyleLight = result;
  return result;
}

id one-time initialization function for systemFillDark()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = @nonobjc UIColor.init(dynamicProvider:)(closure #1 in variable initialization expression of static UIColor.systemFillDark, 0);
  static UIColor.systemFillDark = result;
  return result;
}

id closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight(uint64_t a1, SEL *a2, uint64_t a3)
{
  v3 = [objc_opt_self() *a2];
  v4 = UITraitCollection.modifyingTraits(_:)();
  v5 = [v3 resolvedColorWithTraitCollection_];

  return v5;
}

uint64_t *UIColor.systemFillDark.unsafeMutableAddressor()
{
  if (one-time initialization token for systemFillDark != -1)
  {
    swift_once();
  }

  return &static UIColor.systemFillDark;
}

id @nonobjc UIColor.init(dynamicProvider:)(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView);
  v6[3] = &block_descriptor_116;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, 0x41uLL);
      v8 = a1(&v10, __dst);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1BFB20CC0](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v12;
      }

      v7 += 72;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo25TUConversationParticipantCG_15ConversationKit0E15MediaPrioritiesVs5NeverOTg504_s15f44Kit0A10ControllerC10callCenter_36participanthi66ChangedForyAA04CallE8Provider_p_AA0A0_ptFAA011ParticipantgH0VSo014D8M0CXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v3 = v48;
    v45 = specialized Set.startIndex.getter();
    v46 = v4;
    v47 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (1)
      {
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          break;
        }

        v9 = v45;
        v10 = v47;
        v40 = v8;
        v41 = v46;
        specialized Set.subscript.getter(v45, v46, v47, v1);
        v12 = v11;
        v43 = [v12 handle];
        v42 = [v12 identifier];
        v13 = [v12 avcIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v12 audioPriority];
        v18 = [v12 videoPriority];

        v48 = v3;
        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        v21 = v3;
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v21 = v48;
        }

        *(v21 + 16) = v20 + 1;
        v22 = v21 + 48 * v20;
        *(v22 + 32) = v43;
        *(v22 + 40) = v42;
        *(v22 + 48) = 0;
        *(v22 + 56) = v14;
        *(v22 + 64) = v16;
        *(v22 + 72) = v17;
        *(v22 + 76) = v18;
        v3 = v21;
        if (v39)
        {
          v1 = v38;
          if (!v10)
          {
            goto LABEL_36;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v27 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd, &_sSh5IndexVySo25TUConversationParticipantC_GMR);
          v28 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v28(v44, 0);
        }

        else
        {
          v1 = v38;
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v23 = 1 << *(v38 + 32);
          if (v9 >= v23)
          {
            goto LABEL_32;
          }

          v24 = v9 >> 6;
          v25 = *(v36 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v38 + 36) != v41)
          {
            goto LABEL_34;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v27 = v37;
          }

          else
          {
            v29 = v24 << 6;
            v30 = v24 + 1;
            v31 = (v35 + 8 * v24);
            v27 = v37;
            while (v30 < (v23 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v41, 0);
                v23 = __clz(__rbit64(v32)) + v29;
                goto LABEL_27;
              }
            }

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v41, 0);
          }

LABEL_27:
          v34 = *(v38 + 36);
          v45 = v23;
          v46 = v34;
          v47 = 0;
        }

        v6 = v40;
        if (v40 == v27)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v45, v46, v47);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void specialized EnumeratedSequence.Iterator.next()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_140_0();
  v4 = v0[1];
  v5 = *(*v0 + 16);
  if (v4 == v5)
  {
    OUTLINED_FUNCTION_7_7();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    if (v4 >= v5)
    {
      __break(1u);
    }

    else
    {
      v10 = type metadata accessor for Participant(0);
      OUTLINED_FUNCTION_9_0(v10);
      v0[1] = v4 + 1;
      v11 = v0[2];
      *v1 = v11;
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v13, v1 + v12);
      if (!__OFADD__(v11, 1))
      {
        v0[2] = v11 + 1;
        v14 = OUTLINED_FUNCTION_309();
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v14, v15, v16, v17);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [v15 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = static UUID.== infix(_:_:)();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      break;
    }

    ++v8;
  }

  v12 = v8;
LABEL_7:

  return v12;
}

Swift::Void __swiftcall ConversationController.swapLocalParticipantCamera()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_23_6();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_3_7();
  v11(v10);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v12 = *(v7 + 16);
  if ((v12 & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1BC4BA940;
      v14 = *(v7 + 16);
      v45 = *v7;
      LOBYTE(v46) = v14;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_87();
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v7;
      *(v13 + 40) = v5;
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)(v15);

      goto LABEL_12;
    }

LABEL_14:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_4;
  }

  v16 = *v7;
  if (BYTE1(*v7))
  {
    if (BYTE1(*v7) != 1)
    {
      goto LABEL_12;
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v44 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_194();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_254();
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 64) = v20;
  *(v18 + 32) = v2;
  *(v18 + 40) = v3;
  LOBYTE(v45) = v17;
  v21 = String.init<A>(reflecting:)();
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Swapping local camera from %@ to %@", 35, 2, &dword_1BBC58000, v44, v23, v18);

  v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ConversationController.broadcastingState.setter(v16 & 1 | (v17 << 8), *(v0 + v24), v12 & 0xFFFFFF81, v25, v26, v27, v28, v29, v43, v44, v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, v52, v53);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v30 = OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_202_3(v30, v31);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_58_9();
  v33 = OUTLINED_FUNCTION_153_4();
  v34(v33);
  v35 = OUTLINED_FUNCTION_40_2();
  v36(v35);
  v37 = OUTLINED_FUNCTION_208();
  v38(v37);
  v39 = v47;
  v40 = v48;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  v41 = *(v0 + v24);
  v42 = ConversationController.isOneToOneModeEnabled.getter();
  (*(v40 + 32))(v17, v41, (v42 & 1) == 0, v39, v40);
  __swift_destroy_boxed_opaque_existential_1(&v45);
LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

void ConversationController.leaveConversation(reason:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v0;
  v5 = v4;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_12_3();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_162_4();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  v15 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v25 = *v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
  OUTLINED_FUNCTION_437();
  OUTLINED_FUNCTION_254();
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v7;
  *(v14 + 40) = v2;
  v16 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_299_0("Leaving conversation for call %@", 32, v17, &dword_1BBC58000, v18, v16, v25);

  v19 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v3 + v19, &v25);
  v20 = v26;
  v21 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  v22 = *(v15 + 1);
  v23 = *(v21 + 88);
  v24 = swift_unknownObjectRetain();
  v23(v24, v22, v5, v20, v21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  OUTLINED_FUNCTION_49();
}

void ConversationController.updateParticipant(for:withAnalysis:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v1;
  v4 = OUTLINED_FUNCTION_46_4();
  v5 = type metadata accessor for Participant(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  v7 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {

    v9 = OUTLINED_FUNCTION_91_2();
    v8(v9);
    v10 = OUTLINED_FUNCTION_43_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v11);
  }

  if (*(v2 + *(v5 + 28)))
  {
    ConversationController.didUpdateVisibleParticipant(_:)(v2);
  }

  else
  {
    v12 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v13 = *v12;
    if (*v12)
    {
      v14 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v3 + v14, v0);
      OUTLINED_FUNCTION_276_2();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();

      v15 = OUTLINED_FUNCTION_76();
      v13(v15);
      v16 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v18);
    }
  }

  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.stopLocalVideo()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if ((v4 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_6;
  }

  v9 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v1 = *(v9 + 16);
  if ((v1 & 0x80000000) == 0)
  {
    return;
  }

  v2 = *v9;
  if (dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter())
  {
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
    OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable, v30);
    *(v0 + v10) = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v11);
  ConversationController.broadcastingState.setter(v2 & 1 | ((v1 & 1) << 8), 0, 0, v12, v13, v14, v15, v16, v29, v30[0], v30[1], v30[2], v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7]);
  v17 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_5(v17);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_58_9();
  v19 = OUTLINED_FUNCTION_74_10();
  v20(v19);
  OUTLINED_FUNCTION_260_4();
  v21 = OUTLINED_FUNCTION_62_0();
  v22(v21);
  v23 = OUTLINED_FUNCTION_15_14();
  v24(v23);
  OUTLINED_FUNCTION_82_0(v31);
  v25 = OUTLINED_FUNCTION_2_14();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v27 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_382_0();
  v28 = *(v27 + 336);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_9_51();
  v28();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationController.startLocalVideo(allowVideoUpgrade:)(Swift::Bool allowVideoUpgrade)
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  LODWORD(v9) = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_5();
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v12();
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v13 = OUTLINED_FUNCTION_48_0();
  v14(v13);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v15 = (v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (v15[2] < 0)
  {
    goto LABEL_25;
  }

  v9 = *v15;
  v7 = v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v16 = *(v7 + 8);
  swift_getObjectType();
  v17 = *(v16 + 136);
  swift_unknownObjectRetain();
  v18 = OUTLINED_FUNCTION_157();
  LOBYTE(v16) = v17(v18);
  swift_unknownObjectRelease();
  if ((v16 & 1) != 0 || (v19 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v4 + v19) == 3))
  {
    v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v4 + v20) == 3)
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v21 = OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_202_3(v21, v22);
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v23);
      OUTLINED_FUNCTION_58_9();
      v24 = OUTLINED_FUNCTION_153_4();
      v25(v24);
      OUTLINED_FUNCTION_361_0();
      v26 = OUTLINED_FUNCTION_43_0();
      v27(v26);
      v28 = OUTLINED_FUNCTION_139();
      v29(v28);
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v30 = OUTLINED_FUNCTION_0_95();
      LOBYTE(v2) = v31(v30);
      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    v32 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v3 = *(v4 + v32);
    ConversationController.cameraStartPolicy.getter();
    if (v33)
    {
      HIDWORD(v94) = v6;
      v34 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable, &v107);
      *(v4 + v34) = 0;
      v35 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable, &v106);
      *(v4 + v35) = 0;
      v36 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable, &v105);
      *(v4 + v36) = 0;
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1BC4BA940;
        LOBYTE(v102[0]) = v2;
        v38 = String.init<A>(reflecting:)();
        v40 = v39;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v41);

        ConversationController.broadcastingState.setter(v9 & 1 | (v2 << 8), v3, (v9 >> 8) & 1 | 0xFFFFFF80, v42, v43, v44, v45, v46, v93, v94, v96, v97, v98, v99, v100, v101, v102[0], v102[1], v102[2], v103);
        if (ConversationController.shouldDeferStartCameraAction.getter())
        {
          ConversationController.didDeferStartCameraAction.setter(1);
        }

        else
        {
          v65 = v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v66 = *(v65 + 24);
          v67 = *(v65 + 32);
          v68 = OUTLINED_FUNCTION_243();
          OUTLINED_FUNCTION_202_3(v68, v69);
          OUTLINED_FUNCTION_2_7();
          OUTLINED_FUNCTION_21();
          MEMORY[0x1EEE9AC00](v70);
          OUTLINED_FUNCTION_58_9();
          v71 = OUTLINED_FUNCTION_153_4();
          v72(v71);
          (*(v67 + 32))(v102, v66, v67);
          v73 = OUTLINED_FUNCTION_243();
          v74(v73);
          OUTLINED_FUNCTION_179_2(v102, v103);
          OUTLINED_FUNCTION_494();
          v75();
          __swift_destroy_boxed_opaque_existential_1(v102);
        }

        if (v95)
        {
          v76 = *(v7 + 8);
          swift_getObjectType();
          v77 = *(v76 + 528);
          swift_unknownObjectRetain();
          v78 = OUTLINED_FUNCTION_7_8();
          LOBYTE(v76) = v77(v78);
          swift_unknownObjectRelease();
          if (v76)
          {
            v79 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            outlined init with copy of CallCenterProvider(v4 + v79, v102);
            v80 = v104;
            OUTLINED_FUNCTION_179_2(v102, v103);
            v81 = *(v80 + 216);
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_205_0();
            v81();
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v102);
            v82 = (v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v83 = *v82;
            if (*v82)
            {
              v84 = *(v7 + 8);
              v85 = OUTLINED_FUNCTION_4_31();
              outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v85, v86);
              v87 = swift_unknownObjectRetain();
              v83(v87, v84);
              v88 = OUTLINED_FUNCTION_4_31();
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v88, v89);
              swift_unknownObjectRelease();
            }
          }
        }

        v90 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        v92 = *(v90 + 336);
        swift_unknownObjectRetain();
        v92(1, ObjectType, v90);
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

LABEL_27:
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      goto LABEL_10;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_194();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BC4BAA20;
    v48 = *(v7 + 8);
    swift_getObjectType();
    v49 = *(v48 + 352);
    swift_unknownObjectRetain();
    v50 = OUTLINED_FUNCTION_20_36();
    v49(v50);
    OUTLINED_FUNCTION_448();
    LOBYTE(v102[0]) = v48 & 1;
    v51 = String.init<A>(reflecting:)();
    v53 = v52;
    v54 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v55 = lazy protocol witness table accessor for type String and conformance String();
    *(v47 + 64) = v55;
    *(v47 + 32) = v51;
    *(v47 + 40) = v53;
    LOBYTE(v102[0]) = [objc_opt_self() allowsScreenSharingWithVideo];
    v56 = String.init<A>(reflecting:)();
    *(v47 + 96) = v54;
    *(v47 + 104) = v55;
    *(v47 + 72) = v56;
    *(v47 + 80) = v57;
    OUTLINED_FUNCTION_355_0("startLocalVideo failed due to cameraStartPolicy (isSharingScreen: %@, allowsScreenSharingWithVideo: %@)", 103, v58, &dword_1BBC58000);

    v59 = (v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v60 = *v59;
    if (*v59)
    {
      v61 = OUTLINED_FUNCTION_363_0();
      v60(v61);
      v62 = OUTLINED_FUNCTION_4_31();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v62, v63);
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)(v64);
  }

LABEL_25:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.setLocalAudio(muted:bluetoothAudioFormat:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  LOWORD(v11) = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v14(v1);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v15 = OUTLINED_FUNCTION_157();
  v16(v15);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v11 = *v17;
  v18 = *(v17 + 16);
  HIDWORD(v48) = v5;
  if ((v18 & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BC4BA940;
      LOBYTE(v56) = v9 & 1;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_80_0();
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 32) = v1;
      *(v19 + 40) = v2;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)(v20);

      ConversationController.broadcastingState.setter(v11 & 0x100 | v9 & 1, 0, 0, v21, v22, v23, v24, v25, v43, v44, v46, v48, v50, v51, v52, v53, v54, v55, v56, v57);
      v26 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      goto LABEL_8;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_4;
  }

  v47 = v7;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v45 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_194();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_80_0();
  v28 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v29 = lazy protocol witness table accessor for type String and conformance String();
  *(v27 + 64) = v29;
  *(v27 + 32) = v1;
  *(v27 + 40) = v2;
  LOBYTE(v56) = BYTE1(v11);
  v30 = String.init<A>(reflecting:)();
  *(v27 + 96) = v28;
  *(v27 + 104) = v29;
  *(v27 + 72) = v30;
  *(v27 + 80) = v31;
  v32 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting audio mute to %@, leaving camera position as %@", 55, 2, &dword_1BBC58000, v45, v32, v27);

  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ConversationController.broadcastingState.setter(v11 & 0xFF00 | (v9 & 1), *(v3 + v33), v18 & 0xFFFFFF81, v34, v35, v36, v37, v38, v43, v45, v47, v48, v50, v51, v52, v53, v54, v55, v56, v57);
  v26 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
LABEL_8:
  v39 = *(v26 + 8);
  ObjectType = swift_getObjectType();
  v41 = *(v39 + 384);
  swift_unknownObjectRetain();
  (v41)(v9 & 1, ObjectType, v39);
  swift_unknownObjectRelease();
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_447();
    v42 = *(v41 + 304);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_142();
    v42();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.setDownlinkMuted(_:)(Swift::Bool a1)
{
  v3 = v1;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_12_3();
  v6(v5);
  v7 = _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_162_4();
  v9(v8);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_5;
  }

  ConversationController.lookupActiveConversation()();
  if (v14)
  {
    outlined init with take of TapInteractionHandler(&v13, v15);
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v3 + v10, &v13);
    OUTLINED_FUNCTION_113_5(&v13);
    OUTLINED_FUNCTION_123_2();
    v11();
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    return;
  }

  outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v12);
}

void ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HIDWORD(v21) = a8;
  ObjectType = swift_getObjectType();
  v16 = OUTLINED_FUNCTION_316_1();
  specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v16, v17, a4, a5, a6, a7, HIDWORD(v21), a9, a10, a11, v11, ObjectType, a2, v19, a7, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t ConversationController.lookupActiveParticipant(correspondingTo:)(uint64_t a1)
{
  ConversationController.lookupActiveConversation()();
  if (v15)
  {
    OUTLINED_FUNCTION_384_0(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16);
    ConversationController.activeParticipant(correspondingTo:in:)(a1, v17);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }

  return v11;
}

uint64_t ConversationController.lookupActiveParticipant(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  ConversationController.lookupActiveConversation()();
  if (v20)
  {
    OUTLINED_FUNCTION_384_0(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19, v20, v21);
    if (a1)
    {
      v12 = a1;
      ConversationController.activeParticipant(from:in:)(v12, a2);

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of CallControlsService?(&v18, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

BOOL ConversationController.isLinkCall.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v15)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16);
    OUTLINED_FUNCTION_97_8(v17);
    v8 = OUTLINED_FUNCTION_4_38();
    v10 = v9(v8);
    v11 = v10 != 0;
    if (v10)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }

  return v11;
}

Swift::Void __swiftcall ConversationController.cancelJoinCountdown()()
{
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for Participant(v2);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_149();
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v9, v7);
  Participant.asCanceledJoinCountdown()();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v7, v10);
  OUTLINED_FUNCTION_30_2(v0 + v9, v11);
  OUTLINED_FUNCTION_85_8();
  _s15ConversationKit11ParticipantVWOdTm_0(v1, v0 + v9);
  swift_endAccess();
}

void ConversationController.activeOneToOneConversationBackedByGroupSession.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (!v27[3])
  {
    outlined destroy of CallControlsService?(v27, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_7:
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_202_3(v3, v4);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_58_9();
  v6 = OUTLINED_FUNCTION_153_4();
  v7(v6);
  v8 = OUTLINED_FUNCTION_33_0();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_209();
  v12(v11);
  OUTLINED_FUNCTION_184_2(v28);
  v13 = OUTLINED_FUNCTION_84_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_166_4();
  type metadata accessor for NSObject(v15, v16, 0x1E69D8B80);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v17, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  OUTLINED_FUNCTION_325_1();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v19 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_401_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  swift_getObjectType();
  v22 = *(v21 + 136);
  swift_unknownObjectRetain();
  v23 = OUTLINED_FUNCTION_157();
  v22(v23);
  OUTLINED_FUNCTION_530();
  v24 = [v10 activeConversationWithRemoteMembers:isa andLink:0 matchingVideo:v20 & 1 backedByGroupSession:1];

  if (!v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_7;
  }

  if ([v24 isOneToOneModeEnabled])
  {
    v25 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v26 = &protocol witness table for TUConversation;
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v24 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  *(v2 + 24) = v25;
  *(v2 + 32) = v26;
  *v2 = v24;
  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.participant(with:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_83_1();
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v2);
  v11 = *(v2 + *(v7 + 28));
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v13);
    v14 = [v12 isEqualToHandle_];

    if (v14)
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v6);
LABEL_14:
      v23 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v15);
  }

  v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *(v0 + v16);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_12:
    v23 = 1;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v6, v23, 1, v7);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_40_3();

  v19 = 0;
  while (v19 < *(v17 + 16))
  {
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v20, v1);
    v21 = *(v1 + *(v7 + 28));
    if (v21 && [v21 isEqualToHandle_])
    {

      OUTLINED_FUNCTION_4_150();
      v24 = OUTLINED_FUNCTION_249();
      _s15ConversationKit11ParticipantVWObTm_8(v24, v25);
      goto LABEL_14;
    }

    ++v19;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v1, v22);
    if (v18 == v19)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v40 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_78_4();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v38 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v39 = v13;
  OUTLINED_FUNCTION_4_24();
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_10();
  v18 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v16 + 16))(v0, v18 + *(v9 + 20), v14);
  v19 = static UUID.== infix(_:_:)();
  (*(v16 + 8))(v0, v14);
  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    v20 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v20);

    OUTLINED_FUNCTION_9_51();
    specialized Sequence.first(where:)(v21, v22, v23);

    v24 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v24, v25, v9);
    if (v26)
    {
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      OUTLINED_FUNCTION_3_0();
      v27 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v27);

      OUTLINED_FUNCTION_487(v28);
      specialized Sequence.first(where:)(v29, v30, v31);

      OUTLINED_FUNCTION_115(v40, 1, v9);
      if (v26)
      {
        outlined destroy of CallControlsService?(v40, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        goto LABEL_9;
      }

      v32 = v40;
      v33 = v38;
    }

    else
    {
      v32 = v2;
      v33 = v39;
    }

    _s15ConversationKit11ParticipantVWObTm_8(v32, v33);
    _s15ConversationKit11ParticipantVWObTm_8(v33, v41);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v18, v41);
LABEL_9:
  OUTLINED_FUNCTION_350_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v169 = v4;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_17();
  v11 = *v3;
  v178 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v175 = *(v3 + 24);
  v168 = v0;
  v14 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v177 = v1;
  v15 = v14 + *(v1 + 28);
  v16 = *v15;
  v17 = *(v15 + 8);
  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  v20 = *(v15 + 32);
  v176 = v13;
  if (*v15)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_460();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v21 = v18;
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_142();
      outlined copy of Participant.RemoteIdentifiers?(v22, v23, v24, v18, v20);
      OUTLINED_FUNCTION_433();
      v25 = v11;
      v26 = v20;
      OUTLINED_FUNCTION_142();
      outlined copy of Participant.RemoteIdentifiers?(v27, v28, v29, v18, v20);
      OUTLINED_FUNCTION_45_1();
      v30 = static NSObject.== infix(_:_:)();
      v18 = v178;
      OUTLINED_FUNCTION_485();
      outlined consume of Participant.RemoteIdentifiers?(v31, v32, v33, v34, v35);
      if (v30)
      {
        if (v19)
        {
          v36 = v12;
        }

        else
        {
          v36 = (v17 == v178) & ~v12;
        }

        OUTLINED_FUNCTION_142();
        outlined consume of Participant.RemoteIdentifiers?(v37, v38, v39, v21, v26);
        OUTLINED_FUNCTION_492();
        if (v36)
        {
          goto LABEL_52;
        }
      }

      else
      {

        OUTLINED_FUNCTION_142();
        outlined consume of Participant.RemoteIdentifiers?(v56, v57, v58, v21, v26);
        OUTLINED_FUNCTION_492();
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_433();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v51, v52, v53, v54, v55);
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v40, v41, v42, v43, v44);

    if (!v11)
    {
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_451();
      outlined consume of Participant.RemoteIdentifiers?(v131, v132, v133, v134, v135);
LABEL_52:
      OUTLINED_FUNCTION_1_186();
      OUTLINED_FUNCTION_309_0();
      _s15ConversationKit11ParticipantVWOcTm_17(v136, v18);
      goto LABEL_61;
    }

    v45 = v11;
  }

  v179 = v16;
  v180 = v17;
  v181 = v19;
  v182 = v18;
  v183 = v20;
  v184 = v11;
  v185 = v178;
  v186 = v12;
  v187 = v175;
  v188 = v13;
  outlined destroy of CallControlsService?(&v179, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMR);
LABEL_14:
  v59 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v60 = v168;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = v169;
  if (!*(*(v168 + v59) + 16))
  {
LABEL_32:
    v98 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v99 = *(v60 + v98);
    v173 = *(v99 + 16);
    if (!v173)
    {
      v130 = 1;
      goto LABEL_62;
    }

    v174 = v12;
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_40_3();

    v100 = 0;
    v101 = v170;
    v171 = v99;
    while (1)
    {
      if (v100 >= *(v99 + 16))
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v102, v101);
      v103 = (v101 + *(v177 + 28));
      v104 = v103[1];
      v106 = v103[2];
      v105 = v103[3];
      v107 = v103[4];
      if (!*v103)
      {
        if (!v11)
        {

          OUTLINED_FUNCTION_79_16();
          outlined copy of Participant.RemoteIdentifiers?(v145, v146, v147, v148, v107);

LABEL_58:
          OUTLINED_FUNCTION_79_16();
          outlined consume of Participant.RemoteIdentifiers?(v156, v157, v158, v159, v107);
          goto LABEL_59;
        }

LABEL_42:
        v179 = *v103;
        v180 = v104;
        v181 = v106;
        v182 = v105;
        v183 = v107;
        v184 = v11;
        OUTLINED_FUNCTION_91_11();
        v185 = v119;
        v186 = v118;
        v18 = v176;
        v187 = v175;
        v188 = v176;
        v120 = v11;

        v121 = OUTLINED_FUNCTION_52_20();
        outlined copy of Participant.RemoteIdentifiers?(v121, v122, v123, v124, v107);
        outlined destroy of CallControlsService?(&v179, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMR);
        goto LABEL_43;
      }

      if (!v11)
      {
        goto LABEL_42;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v108 = v11;

      v109 = OUTLINED_FUNCTION_52_20();
      outlined copy of Participant.RemoteIdentifiers?(v109, v110, v111, v112, v107);
      OUTLINED_FUNCTION_246_0();
      v101 = v170;
      v18 = static NSObject.== infix(_:_:)();
      v99 = v171;
      outlined consume of Participant.RemoteIdentifiers?(v11, v178, v174, v175, v176);
      if ((v18 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v106)
      {
        break;
      }

      if (v104 == v178)
      {
        v18 = v174;
      }

      else
      {
        v18 = 1;
      }

      v126 = OUTLINED_FUNCTION_52_20();
      outlined consume of Participant.RemoteIdentifiers?(v126, v127, v128, v129, v107);
      OUTLINED_FUNCTION_497();
      if ((v18 & 1) == 0)
      {

LABEL_59:
        v18 = v165;
        OUTLINED_FUNCTION_22_53();
        _s15ConversationKit11ParticipantVWObTm_8(v101, v165);
        v160 = OUTLINED_FUNCTION_15_14();
        _s15ConversationKit11ParticipantVWObTm_8(v160, v161);
        goto LABEL_60;
      }

LABEL_43:
      ++v100;
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v101, v125);
      if (v173 == v100)
      {

        OUTLINED_FUNCTION_309_0();
        goto LABEL_62;
      }
    }

    OUTLINED_FUNCTION_91_11();
    if (v113)
    {

      goto LABEL_58;
    }

LABEL_40:
    v114 = OUTLINED_FUNCTION_52_20();
    outlined consume of Participant.RemoteIdentifiers?(v114, v115, v116, v117, v107);
    OUTLINED_FUNCTION_497();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_460();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_40_3();

  v61 = 0;
  OUTLINED_FUNCTION_456();
  v63 = v62;
  OUTLINED_FUNCTION_39_22(v62);
  while (1)
  {
    if (v61 >= *(v63 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v64, v60);
    v65 = (v60 + *(v177 + 28));
    v66 = v65[1];
    v68 = v65[2];
    v67 = v65[3];
    v69 = v65[4];
    if (!*v65)
    {
      if (!v11)
      {

        OUTLINED_FUNCTION_79_16();
        outlined copy of Participant.RemoteIdentifiers?(v137, v138, v139, v140, v69);

        OUTLINED_FUNCTION_79_16();
        outlined consume of Participant.RemoteIdentifiers?(v141, v142, v143, v144, v69);
        goto LABEL_56;
      }

LABEL_24:
      v179 = *v65;
      v180 = v66;
      v181 = v68;
      v182 = v67;
      v183 = v69;
      v184 = v11;
      v185 = v178;
      v186 = v12;
      v84 = v12;
      v85 = v69;
      v18 = v176;
      v187 = v175;
      v188 = v176;
      v86 = v11;

      v87 = OUTLINED_FUNCTION_52_20();
      v88 = v85;
      v12 = v84;
      v63 = v172;
      outlined copy of Participant.RemoteIdentifiers?(v87, v89, v90, v91, v88);
      outlined destroy of CallControlsService?(&v179, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMR);
      goto LABEL_25;
    }

    if (!v11)
    {
      goto LABEL_24;
    }

    v60 = v65[4];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v70 = v11;
    OUTLINED_FUNCTION_433();
    v71 = OUTLINED_FUNCTION_52_20();
    outlined copy of Participant.RemoteIdentifiers?(v71, v72, v73, v74, v69);
    OUTLINED_FUNCTION_46();
    v18 = static NSObject.== infix(_:_:)();
    v11 = v12;
    OUTLINED_FUNCTION_485();
    v63 = v172;
    outlined consume of Participant.RemoteIdentifiers?(v75, v76, v77, v78, v79);
    if (v18)
    {
      break;
    }

LABEL_22:
    v80 = OUTLINED_FUNCTION_52_20();
    outlined consume of Participant.RemoteIdentifiers?(v80, v81, v82, v83, v60);
    OUTLINED_FUNCTION_497();
    OUTLINED_FUNCTION_456();
LABEL_25:
    ++v61;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v60, v92);
    OUTLINED_FUNCTION_91_11();
    if (v93 == v61)
    {

      OUTLINED_FUNCTION_309_0();
      v60 = v168;
      goto LABEL_32;
    }
  }

  if (v68)
  {
    if (v12)
    {

      v149 = OUTLINED_FUNCTION_52_20();
      outlined consume of Participant.RemoteIdentifiers?(v149, v150, v151, v152, v60);
      OUTLINED_FUNCTION_456();
      goto LABEL_56;
    }

    goto LABEL_22;
  }

  if (v66 == v178)
  {
    v18 = v12;
  }

  else
  {
    v18 = 1;
  }

  v94 = OUTLINED_FUNCTION_52_20();
  outlined consume of Participant.RemoteIdentifiers?(v94, v95, v96, v97, v60);
  OUTLINED_FUNCTION_497();
  OUTLINED_FUNCTION_456();
  if (v18)
  {
    goto LABEL_25;
  }

LABEL_56:
  OUTLINED_FUNCTION_22_53();
  _s15ConversationKit11ParticipantVWObTm_8(v60, v167);
  v18 = v166;
  OUTLINED_FUNCTION_487(v153);
  _s15ConversationKit11ParticipantVWObTm_8(v154, v155);
LABEL_60:
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_487(v162);
  _s15ConversationKit11ParticipantVWObTm_8(v163, v164);
LABEL_61:
  v130 = 0;
LABEL_62:
  __swift_storeEnumTagSinglePayload(v18, v130, 1, v177);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.update()()
{
  ConversationController.lookupActiveConversation()();
  ConversationController.update(with:)();
  outlined destroy of CallControlsService?(v0, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
}

void ConversationController.updateCallForAVModeChange(_:)()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call, v21);
  *v3 = v2;
  v3[1] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v1 + v4, v20);
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v1 + v5);
  ObjectType = swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  v9 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v8, v20, v6, 0, ObjectType, v0);
  ConversationController.broadcastingState.setter(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v21[0]);
}

Swift::Void __swiftcall ConversationController.joinConversation()()
{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_129();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_149();
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v3, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  v13 = OUTLINED_FUNCTION_7_8();
  v14(v13);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_5;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v0 + v15) == 1)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    v16 = _s15ConversationKit11ParticipantVWOcTm_17(v0 + v8, v2);
    Participant.asRequestedApproval()(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34, v35, v36, v37, *(&v37 + 1), v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v24);
    OUTLINED_FUNCTION_30_2(v0 + v8, &v37);
    OUTLINED_FUNCTION_85_8();
    _s15ConversationKit11ParticipantVWOdTm_0(v1, v0 + v8);
    swift_endAccess();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BA940;
  v26 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v37 = *v26;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_43_7();
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v25 + 32) = v8;
  *(v25 + 40) = v3;
  v27 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94("Joining conversation for call %@", 32, v28, &dword_1BBC58000, v29, v27);

  v30 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v0 + v30, &v37);
  v31 = v40;
  __swift_project_boxed_opaque_existential_1(&v37, v39);
  v32 = *(v31 + 96);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_98_1();
  v32();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.downgradeToAVLess()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
LABEL_3:
  OUTLINED_FUNCTION_0_1();
  if ((*(v8 + 904))())
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v9, v12);
    v10 = v12[4];
    OUTLINED_FUNCTION_113_5(v12);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v11 = *(v10 + 128);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_2();
    v11();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_49();
}

void ConversationController.openMessagesConversation(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  v193 = v23;
  v25 = v24;
  v207[5] = *MEMORY[0x1E69E9840];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v32);
  v194 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v191 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v35);
  v36 = type metadata accessor for URLComponents();
  OUTLINED_FUNCTION_49_0(v36);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40();
  v198 = v40;
  v41 = OUTLINED_FUNCTION_4_24();
  v202 = type metadata accessor for Participant.State(v41);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_1();
  *&v204 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  v197 = v46;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v201 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v184 - v50;
  v196 = type metadata accessor for URLQueryItem();
  OUTLINED_FUNCTION_1();
  v195 = v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_32();
  v203 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v56);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_363();
  v58 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_40();
  v63 = v62;
  ConversationController.lookupActiveConversation()();
  if (v206)
  {
    v187 = v38;
    v200 = v20;
    v184 = v25;
    outlined init with take of TapInteractionHandler(&v205, v207);
    v64 = v207[4];
    __swift_project_boxed_opaque_existential_1(v207, v207[3]);
    OUTLINED_FUNCTION_361_0();
    v65 = OUTLINED_FUNCTION_182();
    v66(v65, v64);
    OUTLINED_FUNCTION_115(v22, 1, v58);
    if (v67)
    {
      outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v199 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*(v60 + 32))(v63, v22, v58);
      UUID.uuidString.getter();
      v69 = v203;
      URLQueryItem.init(name:value:)();

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v72 = *(v70 + 16);
      v71 = *(v70 + 24);
      v199 = v70;
      if (v72 >= v71 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v71);
        OUTLINED_FUNCTION_494();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v199 = v183;
      }

      v60 += 8;
      v73 = OUTLINED_FUNCTION_406_0();
      v74(v73);
      v75 = v199;
      *(v199 + 16) = v72 + 1;
      (*(v195 + 32))(v75 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v72, v69, v196);
    }

    ConversationController.remoteAndAssociatedParticipants.getter();
    v77 = v76;
    v78 = 0;
    v203 = *(v76 + 16);
    v200 = MEMORY[0x1E69E7CC0];
    while (v203 != v78)
    {
      if (v78 >= *(v77 + 16))
      {
        __break(1u);
LABEL_72:
        OUTLINED_FUNCTION_362_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v199 = v181;
        goto LABEL_46;
      }

      v60 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v63 = *(v44 + 72);
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v79, v51);
      v80 = *(v204 + 28);
      v81 = *&v51[v80];
      if (!v81)
      {
        goto LABEL_75;
      }

      v82 = [v81 value];
      if (!v82)
      {
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = MEMORY[0x1BFB209B0](v83);
      }

      v84 = [v82 destinationIdIsTemporary];

      if (v84)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v51, v92);
        ++v78;
      }

      else
      {
LABEL_75:
        OUTLINED_FUNCTION_12_97();
        v85 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v85, v86);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v93 + 8))(v21);
            goto LABEL_25;
          case 4u:
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
            v95 = *(v94 + 48);
            OUTLINED_FUNCTION_37((v21 + *(v94 + 64)));
            outlined destroy of Participant.MediaInfo(v21 + v95);
            goto LABEL_20;
          case 6u:
            goto LABEL_21;
          default:
LABEL_20:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v87 + 8))(v21);
LABEL_21:
            v88 = *&v51[v80];
            if (v88)
            {
              v89 = [v88 value];
              if (!v89)
              {
                v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v89 = MEMORY[0x1BFB209B0](v90);
              }

              v91 = [v89 destinationIdIsPseudonym];

              if (v91)
              {
                goto LABEL_25;
              }
            }

            OUTLINED_FUNCTION_4_150();
            _s15ConversationKit11ParticipantVWObTm_8(v51, v197);
            v96 = v200;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v205 = v96;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_362_0();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v96 = v205;
            }

            v99 = *(v96 + 16);
            v98 = *(v96 + 24);
            if (v99 >= v98 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v98);
              OUTLINED_FUNCTION_494();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v96 = v205;
            }

            ++v78;
            *(v96 + 16) = v99 + 1;
            v200 = v96;
            OUTLINED_FUNCTION_4_150();
            _s15ConversationKit11ParticipantVWObTm_8(v197, v100);
            break;
        }
      }
    }

    v101 = *(v200 + 16);
    if (v101)
    {
      v102 = *(v204 + 28);
      OUTLINED_FUNCTION_40_3();
      v105 = v103 + v104;
      v106 = *(v44 + 72);
      v107 = MEMORY[0x1E69E7CC0];
      v108 = v201;
      do
      {
        OUTLINED_FUNCTION_1_186();
        v109 = OUTLINED_FUNCTION_4_31();
        _s15ConversationKit11ParticipantVWOcTm_17(v109, v110);
        v111 = *(v108 + v102);
        if (v111)
        {
          v112 = [v111 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_43_7();

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v108, v113);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_362_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v107 = v118;
          }

          v115 = *(v107 + 16);
          v114 = *(v107 + 24);
          if (v115 >= v114 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v114);
            OUTLINED_FUNCTION_494();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v107 = v119;
          }

          *(v107 + 16) = v115 + 1;
          v116 = v107 + 16 * v115;
          *(v116 + 32) = v77;
          *(v116 + 40) = v63;
          v108 = v201;
        }

        else
        {
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v108, v117);
        }

        v105 += v106;
        --v101;
      }

      while (v101);
    }

    else
    {

      v107 = MEMORY[0x1E69E7CC0];
    }

    *&v205 = v107;
    v120 = OUTLINED_FUNCTION_15_14();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v120, v121);
    OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
    BidirectionalCollection<>.joined(separator:)();
    OUTLINED_FUNCTION_18_8();

    OUTLINED_FUNCTION_502();
    URLQueryItem.init(name:value:)();

    v122 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v192;
    if ((v122 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_46:
    v123 = v194;
    v125 = *(v199 + 16);
    v124 = *(v199 + 24);
    v126 = v125 + 1;
    if (v125 >= v124 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v124);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v199 = v182;
    }

    v127 = v199;
    *(v199 + 16) = v126;
    (*(v195 + 32))(v127 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v125, v60, v196);
    URLComponents.init()();
    URLComponents.scheme.setter();
    MEMORY[0x1BFB19BE0](1852141679, 0xE400000000000000);
    URLComponents.queryItems.setter();
    OUTLINED_FUNCTION_417_0();
    URLComponents.url.getter();
    v128 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v128, v129, v123);
    if (v67)
    {
      outlined destroy of CallControlsService?(v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_1BC4BA940;
      v131 = v186;
      (*(v187 + 16))(v186, v198, v44);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v44);
      specialized >> prefix<A>(_:)(v131, v135, v136, v137, v138, v139, v140, v141, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      OUTLINED_FUNCTION_213();
      outlined destroy of CallControlsService?(v131, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
      *(v130 + 56) = MEMORY[0x1E69E6158];
      v142 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_416(v142);
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v143);

      if (v184)
      {
        v184(0);
      }

      OUTLINED_FUNCTION_23_26();
      v144(v198, v44);
    }

    else
    {
      v145 = v191;
      v146 = OUTLINED_FUNCTION_308_1();
      v147(v146);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v148 = swift_allocObject();
      v204 = xmmword_1BC4BA940;
      *(v148 + 16) = xmmword_1BC4BA940;
      v149 = v185;
      OUTLINED_FUNCTION_452();
      v150();
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v123);
      specialized >> prefix<A>(_:)(v149, v154, v155, v156, v157, v158, v159, v160, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
      OUTLINED_FUNCTION_43_7();
      outlined destroy of CallControlsService?(v149, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v161 = MEMORY[0x1E69E6158];
      *(v148 + 56) = MEMORY[0x1E69E6158];
      v162 = lazy protocol witness table accessor for type String and conformance String();
      *(v148 + 64) = v162;
      *(v148 + 32) = v145;
      *(v148 + 40) = v63;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)(v163);

      URL._bridgeToObjectiveC()(v164);
      v166 = v165;
      *&v205 = 0;
      OUTLINED_FUNCTION_12();
      v167 = TUOpenURLWithError();

      v168 = v205;
      if (v167)
      {
        v169 = v184;
        if (v184)
        {
          v170 = v205;
          v169(1);
        }

        else
        {
          v175 = v205;
        }

        (*(v191 + 8))(v188, v194);
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v171 = swift_allocObject();
        *(v171 + 16) = v204;
        if (v168)
        {
          *&v205 = v168;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
          v172 = v168;
          v173 = String.init<A>(reflecting:)();
        }

        else
        {
          v173 = OUTLINED_FUNCTION_12_96();
        }

        v176 = v184;
        *(v171 + 56) = v161;
        *(v171 + 64) = v162;
        *(v171 + 32) = v173;
        *(v171 + 40) = v174;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)(v177);

        if (v176)
        {
          v176(0);
        }

        v178 = OUTLINED_FUNCTION_20_38();
        v179(v178, v194);
      }

      OUTLINED_FUNCTION_23_26();
      v180(v198, v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v207);
  }

  else
  {
    outlined destroy of CallControlsService?(&v205, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v68);
    if (v25)
    {
      v25(0);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(Swift::Bool shouldPauseIfStopped)
{
  v3 = v1;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_162_4();
  v10(v9);
  if (v8)
  {
    v11 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v11 + 16) < 0)
    {
      ConversationController.stopLocalVideo()();
    }

    else if (shouldPauseIfStopped)
    {
      ConversationController.pauseLocalVideoIfStopped()();
    }

    else
    {
      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.startScreenSharingSession()()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_149();
  v7 = type metadata accessor for ScreenSharingSessionConfiguration(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v9, &static Log.screenSharing);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_33();
    *v12 = 0;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Starting screen sharing session", v12, 2u);
    OUTLINED_FUNCTION_27();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v13 + v1, &v47, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
  if (v48)
  {
    outlined init with take of TapInteractionHandler(&v47, v49);
    OUTLINED_FUNCTION_401_0();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_528();
    v14 = v1[25];
    swift_unknownObjectRetain();
    v15 = ObjectType;
    v16 = OUTLINED_FUNCTION_157();
    v14(v16);
    OUTLINED_FUNCTION_182();
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      v17 = [ObjectType windowUUID];

      if (v17)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      type metadata accessor for UUID();
      v33 = OUTLINED_FUNCTION_246();
      __swift_storeEnumTagSinglePayload(v33, v18, 1, v15);
      v34 = OUTLINED_FUNCTION_1_5();
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v34, v35, v36, v37);
      v38 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v38, v39, v15);
      if (!v40)
      {
        OUTLINED_FUNCTION_2_3();
        v41 = OUTLINED_FUNCTION_44_0();
        v42(v41);
        v43 = v0;
        v44 = 0;
LABEL_17:
        __swift_storeEnumTagSinglePayload(v43, v44, 1, v15);
        OUTLINED_FUNCTION_113_5(v49);
        v45 = OUTLINED_FUNCTION_44_0();
        v46(v45);
        _s15ConversationKit11ParticipantVWOhTm_18(v0, type metadata accessor for ScreenSharingSessionConfiguration);
        __swift_destroy_boxed_opaque_existential_1(v49);
        goto LABEL_18;
      }
    }

    else
    {
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, 0);
    }

    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    type metadata accessor for UUID();
    v43 = OUTLINED_FUNCTION_18_12();
    goto LABEL_17;
  }

  outlined destroy of CallControlsService?(&v47, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
  v19 = v1;
  v20 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  if (OUTLINED_FUNCTION_64_14())
  {
    OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_21_4();
    v49[0] = v21;
    *v2 = 136315138;
    *&v47 = v19;
    v22 = v19;
    v23 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v49);
    OUTLINED_FUNCTION_366();

    *(v2 + 4) = ObjectType;
    OUTLINED_FUNCTION_132();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_26();
  }

LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.requestScreenSharingPicker(with:)(uint64_t a1)
{
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (v31[3])
  {
    OUTLINED_FUNCTION_525(v4, v5, v6, v7, v8, v9, v10, v11);
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v12, &static Log.screenSharing);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v14))
    {
      v15 = OUTLINED_FUNCTION_42();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v16, v17, v18, v19, v15, 0xCu);
      OUTLINED_FUNCTION_4_4();
    }

    v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v2 + v20, v31);
    OUTLINED_FUNCTION_113_5(v31);
    OUTLINED_FUNCTION_123_2();
    v21();
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    outlined destroy of CallControlsService?(v31, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v22, &static Log.screenSharing);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v24))
    {
      v25 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v25);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

void ConversationController.requestScreenSharingSession(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  ConversationController.lookupActiveConversation()();
  if (v26[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (OUTLINED_FUNCTION_287_1(v2))
    {
      v3 = [v25 activeRemoteParticipants];
      v4 = OUTLINED_FUNCTION_166_4();
      type metadata accessor for NSObject(v4, v5, 0x1E69D8B90);
      OUTLINED_FUNCTION_1_65();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v6, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x1EEE9AC00](v8);
      OUTLINED_FUNCTION_313();
      *(v9 - 16) = v1;
      specialized Sequence.first(where:)(partial apply for closure #1 in ConversationController.requestScreenSharingSession(for:), v10, v7);
      v12 = v11;

      if (v12)
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v13 = OUTLINED_FUNCTION_208();
        OUTLINED_FUNCTION_202_3(v13, v14);
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_21();
        MEMORY[0x1EEE9AC00](v15);
        OUTLINED_FUNCTION_58_9();
        v16 = OUTLINED_FUNCTION_153_4();
        v17(v16);
        v18 = OUTLINED_FUNCTION_40_2();
        v20 = v19(v18);
        v21 = OUTLINED_FUNCTION_208();
        v22(v21);
        [v20 requestParticipantToShareScreen:v12 forConversation:v25];
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v24);
      }

      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v26, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v23);
LABEL_9:
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.stopScreenSharingSession()()
{
  swift_getObjectType();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.screenSharing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_383();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v9[v0], &v24, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
  if (v25)
  {
    outlined init with take of TapInteractionHandler(&v24, v26);
    OUTLINED_FUNCTION_97_8(v26);
    v10 = OUTLINED_FUNCTION_4_38();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    outlined destroy of CallControlsService?(&v24, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    v12 = v0;
    v13 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();

    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_42();
      v14 = OUTLINED_FUNCTION_13_80();
      v26[0] = v14;
      *v9 = 136315138;
      *&v24 = v12;
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v26);

      *(v9 + 4) = v18;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18();
    }
  }
}

void ConversationController.declineOrCancelScreenShareRequest(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  ConversationController.lookupActiveConversation()();
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (OUTLINED_FUNCTION_287_1(v4))
    {
      v5 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);
      if (v5)
      {
        v6 = v5;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
        v7 = v3;
        OUTLINED_FUNCTION_33_0();
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          v9 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_103_5(v9);
          OUTLINED_FUNCTION_31_1();
          OUTLINED_FUNCTION_21();
          MEMORY[0x1EEE9AC00](v10);
          OUTLINED_FUNCTION_58_9();
          v11 = OUTLINED_FUNCTION_74_10();
          v12(v11);
          v13 = OUTLINED_FUNCTION_316();
          v15 = v14(v13);
          v16 = OUTLINED_FUNCTION_15_14();
          v17(v16);
          [v15 cancelOrDenyScreenShareRequest:v7 forConversation:v19];

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v20, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v18);
LABEL_11:
  OUTLINED_FUNCTION_49();
}

void ConversationController.approve(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_82();
  type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  ConversationController.lookupActiveConversation()();
  if (v63)
  {
    OUTLINED_FUNCTION_335();
    ConversationController.participant(with:)();
    OUTLINED_FUNCTION_22_5(v4);
    if (v11)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_424_0(v12, xmmword_1BC4BAA20);
      OUTLINED_FUNCTION_7_0();
      v14 = OUTLINED_FUNCTION_44_0();
      v15(v14);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
      specialized >> prefix<A>(_:)(v0, v19, v20, v21, v22, v23, v24, v25, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
      outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26 = MEMORY[0x1E69E6158];
      v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v27 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_513(v27);
      v28 = String.init<A>(reflecting:)();
      v12[6].n128_u64[0] = v26;
      v12[6].n128_u64[1] = v0;
      v12[4].n128_u64[1] = v28;
      v12[5].n128_u64[0] = v29;
      OUTLINED_FUNCTION_355_0("Could not find participant to approve %@, %@", 44, v30, &dword_1BBC58000);

      v55 = v65;
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v50 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWObTm_8(v50, v51);
      v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v1 + v52, &v60);
      OUTLINED_FUNCTION_179_2(&v60, v63);
      OUTLINED_FUNCTION_98_1();
      v53();
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v3, v54);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v55 = &v60;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    outlined destroy of CallControlsService?(&v60, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v31 = swift_allocObject();
    v32 = OUTLINED_FUNCTION_424_0(v31, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    v33 = OUTLINED_FUNCTION_44_0();
    v34(v33);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
    specialized >> prefix<A>(_:)(v0, v38, v39, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
    OUTLINED_FUNCTION_508();
    outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v31[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v31[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v31[2].n128_u64[0] = v2;
    v31[2].n128_u64[1] = v32;
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_521(v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.dismiss(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_82();
  type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  ConversationController.lookupActiveConversation()();
  if (v63)
  {
    OUTLINED_FUNCTION_335();
    ConversationController.participant(with:)();
    OUTLINED_FUNCTION_22_5(v4);
    if (v11)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_424_0(v12, xmmword_1BC4BAA20);
      OUTLINED_FUNCTION_7_0();
      v14 = OUTLINED_FUNCTION_44_0();
      v15(v14);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
      specialized >> prefix<A>(_:)(v0, v19, v20, v21, v22, v23, v24, v25, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
      outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26 = MEMORY[0x1E69E6158];
      v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v27 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_513(v27);
      v28 = String.init<A>(reflecting:)();
      v12[6].n128_u64[0] = v26;
      v12[6].n128_u64[1] = v0;
      v12[4].n128_u64[1] = v28;
      v12[5].n128_u64[0] = v29;
      OUTLINED_FUNCTION_355_0("Could not find participant to dismiss %@, %@", 44, v30, &dword_1BBC58000);

      v55 = v65;
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v50 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWObTm_8(v50, v51);
      v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v1 + v52, &v60);
      OUTLINED_FUNCTION_179_2(&v60, v63);
      OUTLINED_FUNCTION_98_1();
      v53();
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v3, v54);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v55 = &v60;
    }

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    outlined destroy of CallControlsService?(&v60, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v31 = swift_allocObject();
    v32 = OUTLINED_FUNCTION_424_0(v31, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    v33 = OUTLINED_FUNCTION_44_0();
    v34(v33);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
    specialized >> prefix<A>(_:)(v0, v38, v39, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
    OUTLINED_FUNCTION_508();
    outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v31[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v31[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v31[2].n128_u64[0] = v2;
    v31[2].n128_u64[1] = v32;
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_521(v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.pttLeaveChannel()()
{
  OUTLINED_FUNCTION_512();
  v21 = v1;
  v22 = v2;
  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v4 + 8);
  swift_getObjectType();
  v6 = *(v5 + 464);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_33_0();
  v6(v7);
  OUTLINED_FUNCTION_448();
  if (v5)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      *v11 = 0;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v12, v13, v14, v15, v11, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v3 + v16, &v19);
    v17 = v20;
    OUTLINED_FUNCTION_113_5(&v19);
    v18 = *(v17 + 264);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_2();
    v18();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.pttStopTransmit()()
{
  OUTLINED_FUNCTION_512();
  v24 = v2;
  v25 = v3;
  v4 = v0;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v5 + 8);
  swift_getObjectType();
  OUTLINED_FUNCTION_490();
  v7 = *(v1 + 208);
  swift_unknownObjectRetain();
  v8 = OUTLINED_FUNCTION_33_0();
  v7(v8);
  OUTLINED_FUNCTION_448();
  if (v6 == 1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v9, &static Logger.conversationControls);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v11))
    {
      v12 = OUTLINED_FUNCTION_33();
      *v12 = 0;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v13, v14, v15, v16, v12, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v17 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v4 + v17, &v21);
    v18 = v23;
    OUTLINED_FUNCTION_179_2(&v21, v22);
    v19 = *(v18 + 256);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_97_0();
    v19();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  *(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = v20;
  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.pttStartTransmit()()
{
  OUTLINED_FUNCTION_512();
  v18 = v1;
  v19 = v2;
  v3 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v6))
  {
    v7 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v7);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_18();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v3 + v13, &v16);
  v14 = v17;
  OUTLINED_FUNCTION_113_5(&v16);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v15 = *(v14 + 248);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_123_2();
  v15();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  *(v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.callBack()()
{
  OUTLINED_FUNCTION_512();
  v17 = v1;
  v18 = v2;
  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v4 + 8);
  swift_getObjectType();
  v6 = *(v5 + 544);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_33_0();
  v6(v7);
  OUTLINED_FUNCTION_448();
  if (v5)
  {
    v8 = *(v4 + 8);
    swift_getObjectType();
    v9 = v8[69];
    swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_1_5();
    v9(v10);
    OUTLINED_FUNCTION_173();
    swift_unknownObjectRelease();
    if (v8)
    {
      v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v3 + v11, &v14);
      v12 = v15;
      v13 = v16;
      OUTLINED_FUNCTION_179_2(&v14, v15);
      (*(v13 + 232))(v8, 0, 0, v12, v13);

      __swift_destroy_boxed_opaque_existential_1(&v14);
    }
  }

  OUTLINED_FUNCTION_511();
}

void ConversationController.buzz(_:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_28_6();
  v70 = type metadata accessor for Participant(v13);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v17 = OUTLINED_FUNCTION_171_3();
  v18(v17);
  _dispatchPreconditionTest(_:)();
  v19 = OUTLINED_FUNCTION_173_2();
  v20(v19);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_8;
  }

  ConversationController.lookupActiveConversation()();
  if (v78)
  {
    OUTLINED_FUNCTION_335();
    v21 = ConversationController.indexOfRemoteParticipant(with:)(v6);
    if (v22)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v23 = swift_allocObject();
      v24 = OUTLINED_FUNCTION_424_0(v23, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_7_0();
      v25 = OUTLINED_FUNCTION_43_0();
      v26(v25);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
      specialized >> prefix<A>(_:)(v10, v30, v31, v32, v33, v34, v35, v36, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1]);
      OUTLINED_FUNCTION_213();
      outlined destroy of CallControlsService?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v23[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v37 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_416(v37);
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v38);

      goto LABEL_18;
    }

    v40 = v21;
    v41 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v40 < *(*(v4 + v41) + 16))
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v42, v0);
      Participant.isBuzzable.getter();
      if ((v43 & 1) == 0)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_1_186();
        v58 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v58, v59);
        v60 = OUTLINED_FUNCTION_54_15();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v70);
        specialized >> prefix<A>(_:)();
        v64 = v63;
        v66 = v65;
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v57 + 32) = v64;
        *(v57 + 40) = v66;
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v67);
        goto LABEL_17;
      }

      v44 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v4 + v44, v77);
      OUTLINED_FUNCTION_179_2(v77, v78);
      OUTLINED_FUNCTION_205_0();
      v45();
      __swift_destroy_boxed_opaque_existential_1(v77);
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_1_186();
        v47 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v47, v48);
        v49 = OUTLINED_FUNCTION_54_15();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v70);
        specialized >> prefix<A>(_:)();
        v53 = v52;
        v55 = v54;
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v46 + 32) = v53;
        *(v46 + 40) = v55;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v56);
LABEL_17:

        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v0, v68);
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(&v79);
        goto LABEL_19;
      }

LABEL_24:
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_24;
  }

  outlined destroy of CallControlsService?(v77, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_21;
  }

LABEL_8:
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v39);
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.canKick(_:)()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_101_4();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_149();
  v12 = ConversationController.indexOfRemoteParticipant(with:)(v4);
  if ((v13 & 1) == 0)
  {
    v28 = v12;
    v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *(*(v0 + v29) + 16))
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v30, v1);
      if (Participant.isKickingAvailableWithLeeway.getter())
      {
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v1, v31);
        goto LABEL_19;
      }

      Participant.broadcastStartDate.getter();
      v34 = type metadata accessor for Date();
      OUTLINED_FUNCTION_115(v3, 1, v34);
      if (v35)
      {
        outlined destroy of CallControlsService?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v3 = 0xEE0064656E696F6ALL;
        v29 = 0x2074657920746F6ELL;
      }

      else
      {
        Date.timeIntervalSinceNow.getter();
        OUTLINED_FUNCTION_2_3();
        v36 = OUTLINED_FUNCTION_157();
        v37(v36);
        v55[0] = 0;
        v55[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(21);
        Double.write<A>(to:)();
        MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC51DD70);
        v29 = 0;
        v3 = 0xE000000000000000;
      }

      if (one-time initialization token for conversationKit == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
LABEL_15:
    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v38, static Logger.conversationKit);
    OUTLINED_FUNCTION_1_186();
    v39 = OUTLINED_FUNCTION_62_0();
    _s15ConversationKit11ParticipantVWOcTm_17(v39, v40);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_30_1();
      v55[0] = OUTLINED_FUNCTION_29_7();
      *v43 = 136315394;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v3, v55);

      *(v43 + 4) = v44;
      *(v43 + 12) = 2080;
      v45 = *(v9 + 20);
      OUTLINED_FUNCTION_13_83();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v46, v47);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v48);
      v49 = OUTLINED_FUNCTION_209();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v51);
      OUTLINED_FUNCTION_182();

      *(v43 + 14) = v2 + v45;
      _os_log_impl(&dword_1BBC58000, v41, v42, "Requested to kick out a participant that cannot be kicked out %s: %s", v43, 0x16u);
      OUTLINED_FUNCTION_399_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v52);
    }

    v53 = OUTLINED_FUNCTION_45_1();
    _s15ConversationKit11ParticipantVWOhTm_18(v53, v54);
    goto LABEL_19;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v14, static Logger.conversationKit);
  v15 = OUTLINED_FUNCTION_406_0();
  v16(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_13_80();
    v55[2] = v19;
    *v2 = 136315138;
    OUTLINED_FUNCTION_13_83();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v20, v21);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_347_0();
    v22 = OUTLINED_FUNCTION_408_0();
    v23(v22);
    v24 = OUTLINED_FUNCTION_243();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

    *(v2 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Could not find participant with identifier %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_18();
  }

  else
  {

    v32 = OUTLINED_FUNCTION_408_0();
    v33(v32);
  }

LABEL_19:
  OUTLINED_FUNCTION_20_6();
}

uint64_t ConversationController.kick(_:)()
{
  ConversationController.lookupActiveConversation()();
  if (!v12[3])
  {
    return outlined destroy of CallControlsService?(v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  OUTLINED_FUNCTION_525(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v0 + v9, v12);
  OUTLINED_FUNCTION_113_5(v12);
  OUTLINED_FUNCTION_123_2();
  v10();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t *ConversationController.DidChangeIsWaitingOnFirstFrameNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    OUTLINED_FUNCTION_293_1(&one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification);
  }

  return &static ConversationController.DidChangeIsWaitingOnFirstFrameNotification;
}

uint64_t ConversationController.shareableLink(completionHandler:)(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  ConversationController.lookupActiveConversation()();
  if (v21)
  {
    outlined init with take of TapInteractionHandler(&v20, v23);
    OUTLINED_FUNCTION_184_2(v23);
    v6 = OUTLINED_FUNCTION_84_9();
    v8 = v7(v6);
    if (v8)
    {
      v9 = v8;
      if (a1)
      {
        a1(v8, 0);
      }
    }

    else
    {
      v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v3 + v12, &v20);
      v13 = v21;
      v14 = v22;
      OUTLINED_FUNCTION_179_2(&v20, v21);
      outlined init with copy of CallCenterProvider(v23, v19);
      OUTLINED_FUNCTION_37_22();
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      outlined init with take of TapInteractionHandler(v19, v15 + 32);
      v16 = *(v14 + 184);
      v17 = OUTLINED_FUNCTION_44_0();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v17, v18);
      v16(v23, partial apply for closure #1 in ConversationController.shareableLink(completionHandler:), v15, v13, v14);

      __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    outlined destroy of CallControlsService?(&v20, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_156();
    result = os_log(_:dso:log:type:_:)(v10);
    if (a1)
    {
      return (a1)(0, 0);
    }
  }

  return result;
}

BOOL ConversationController.joinedConversation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_19_1(a1);
  return (*(v1 + v2) & 0xFFFFFFFFFFFFFFFELL) == 2;
}

void ConversationController.cameraStartPolicy.getter()
{
  OUTLINED_FUNCTION_11_97();
  OUTLINED_FUNCTION_6_11(v2);
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_517();
  v3 = OUTLINED_FUNCTION_45_1();
  v1(v3);
  OUTLINED_FUNCTION_524();
  if (v0)
  {
    [objc_opt_self() allowsScreenSharingWithVideo];
  }

  OUTLINED_FUNCTION_10_84();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

void specialized MutableCollection.swapAt(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v11);
  if (v7 == v5)
  {
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = *v1;
  v3 = *(*v1 + 16);
  if (v3 <= v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = &v21 - v12;
  v22 = v1;
  v24 = v9;
  v14 = *(v9 + 16);
  OUTLINED_FUNCTION_40_3();
  v23 = v15;
  v16 = v13 + v15;
  v17 = *(v9 + 72);
  v7 *= v17;
  v14();
  if (v3 > v5)
  {
    v3 = v17 * v5;
    (v14)(v2, v16 + v17 * v5, v0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v13 = v20;
LABEL_6:
  v18 = v13 + v23;
  v19 = *(v24 + 40);
  v19(v13 + v23 + v7, v2, v0);
  if (*(v13 + 16) > v5)
  {
    v19(v18 + v3, v21, v0);
    *v22 = v13;
LABEL_8:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
}

uint64_t ConversationController.hasAvailableDeskViewCameras.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 320))())
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v1);
    v3 = OUTLINED_FUNCTION_37_34(v2, v13);
    v4(v3);
    OUTLINED_FUNCTION_260_4();
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    v7 = OUTLINED_FUNCTION_15_14();
    v8(v7);
    OUTLINED_FUNCTION_97_8(v14);
    v9 = OUTLINED_FUNCTION_4_38();
    v11 = v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void ConversationController.participants(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v6 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v9 = *(v3 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_40_3();
    v11 = v3 + v10;
    v29 = *(v12 + 56);
    v30 = v13;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v6;
    v28 = v6;
    do
    {
      v16 = OUTLINED_FUNCTION_179_0();
      v30(v16);
      ConversationController.participant(with:)();
      v17 = OUTLINED_FUNCTION_281();
      v18(v17);
      v19 = OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_115(v19, v20, v15);
      if (v21)
      {
        outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_4_150();
        _s15ConversationKit11ParticipantVWObTm_8(v0, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_350_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v26;
        }

        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v23);
          OUTLINED_FUNCTION_350_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v27;
        }

        *(v14 + 16) = v24 + 1;
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_4_150();
        _s15ConversationKit11ParticipantVWObTm_8(v1, v25);
        v15 = v28;
      }

      v11 += v29;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.updateLayoutStyle(_:)(ConversationKit::MultiwayViewController::LayoutStyle a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = *v1;
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v6 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_278(v7);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_61();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v22[4] = partial apply for closure #1 in ConversationController.updateLayoutStyle(_:);
  v22[5] = v8;
  OUTLINED_FUNCTION_5_73();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v22[2] = v9;
  v22[3] = &block_descriptor_117;
  v10 = _Block_copy(v22);

  static DispatchQoS.unspecified.getter();
  v22[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v11, v12);
  v13 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v15, v16, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v17);
  _Block_release(v10);

  v18 = OUTLINED_FUNCTION_181();
  v19(v18);
  v20 = OUTLINED_FUNCTION_491();
  v21(v20);
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.activeCallHasPreviouslyReceivedFirstRemoteFrame.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_515();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_157();
  v0(v2);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_62_0();
  specialized Set.contains(_:)(v3, v4);

  v5 = OUTLINED_FUNCTION_45_1();
  v6(v5);
  OUTLINED_FUNCTION_30_0();
}

BOOL ConversationController.hasRingingCalls.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    return 1;
  }

  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_507();
  v5 = *(v1 + 208);
  swift_unknownObjectRetain();
  v6 = OUTLINED_FUNCTION_45_1();
  v5(v6);
  OUTLINED_FUNCTION_524();
  return v4 == 4;
}

uint64_t ConversationController.isTrackingActiveConversation.getter()
{
  v0 = OUTLINED_FUNCTION_44_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v4, v5, v6, v7);
  type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_309();
  outlined destroy of CallControlsService?(v13, v14, &_s10Foundation4UUIDVSgMR);
  return v12;
}

void ConversationController.isWaitingOnFirstRemoteFrame.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_515();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_157();
  v0(v2);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_62_0();
  specialized Set.contains(_:)(v3, v4);

  v5 = OUTLINED_FUNCTION_45_1();
  v6(v5);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.isLocallyCreated.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v14)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13, v14, v15);
    OUTLINED_FUNCTION_97_8(v16);
    v8 = OUTLINED_FUNCTION_4_38();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    outlined destroy of CallControlsService?(&v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t ConversationController.supportsCameraBlur.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 152))())
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v1);
    v3 = OUTLINED_FUNCTION_37_34(v2, v13);
    v4(v3);
    OUTLINED_FUNCTION_260_4();
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    v7 = OUTLINED_FUNCTION_15_14();
    v8(v7);
    OUTLINED_FUNCTION_97_8(v14);
    v9 = OUTLINED_FUNCTION_4_38();
    v11 = v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ConversationController.supportsReactionGestures.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

uint64_t ConversationController.supportsStudioLight.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

void ConversationController.remoteOneToOneParticipant.getter()
{
  OUTLINED_FUNCTION_29();
  v66 = v3;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v68 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_149();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v67 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v70 = v11;
  v12 = OUTLINED_FUNCTION_4_24();
  v69 = type metadata accessor for Participant(v12);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v73 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v61 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v63 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v65 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_17();
  v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v64 = v0;
  v62 = v22;
  v23 = *(v0 + v22);
  v24 = *(v23 + 16);

  v25 = 0;
  v71 = MEMORY[0x1E69E7CC0];
  while (v24 != v25)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v26, v2);
    OUTLINED_FUNCTION_12_97();
    v27 = OUTLINED_FUNCTION_77_1();
    _s15ConversationKit11ParticipantVWOcTm_17(v27, v28);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v30 = *(v29 + 48);
      OUTLINED_FUNCTION_37((v1 + *(v29 + 64)));
      memcpy(v74, v1 + v30, sizeof(v74));
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v31 + 8))(v1);
      LOBYTE(v30) = v74[0];
      outlined destroy of Participant.MediaInfo(v74);
      if (v30)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v2, v65);
      v32 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_362_0();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v75;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v34);
        v72 = v40;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v72;
        v32 = v75;
      }

      ++v25;
      *(v32 + 16) = v36;
      v71 = v32;
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v65, v37);
    }

    else
    {
      OUTLINED_FUNCTION_86_7();
      _s15ConversationKit11ParticipantVWOhTm_18(v1, v38);
LABEL_12:
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v39);
      ++v25;
    }
  }

  v74[0] = v71;

  specialized MutableCollection<>.sort(by:)(v74);

  specialized Collection.first.getter(v74[0], v70);

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v67, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v41 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v41, v42, v69);
  if (!v43)
  {
    outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v54 = v67;
    v55 = v63;
    goto LABEL_22;
  }

  outlined destroy of CallControlsService?(v67, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v44 = *(v64 + v62);
  v45 = *(v44 + 16);

  v46 = 0;
  v1 = &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd;
  while (2)
  {
    if (v45 == v46)
    {
      outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);

      goto LABEL_23;
    }

    if (v46 < *(v44 + 16))
    {
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v47, v73);
      OUTLINED_FUNCTION_12_97();
      _s15ConversationKit11ParticipantVWOcTm_17(v73, v68);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          ++v46;
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v73, v48);
          v49 = OUTLINED_FUNCTION_316();
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
          v52 = *(v51 + 48);
          OUTLINED_FUNCTION_37((v68 + *(v51 + 64)));
          outlined destroy of Participant.MediaInfo(v68 + v52);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v53 + 8))(v68);
          continue;
        case 6u:
          outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);

          break;
        default:
          outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);

          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v56 + 8))(v68);
          break;
      }

      v54 = v73;
      v55 = v61;
LABEL_22:
      _s15ConversationKit11ParticipantVWObTm_8(v54, v55);
      _s15ConversationKit11ParticipantVWObTm_8(v55, v66);
LABEL_23:
      OUTLINED_FUNCTION_350_0();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    break;
  }

LABEL_27:
  __break(1u);

  __break(1u);
}

uint64_t ConversationController.shouldPlayToneForAVModeChange(for:)(uint64_t a1)
{
  ConversationController.lookupActiveConversation()();
  if (v17)
  {
    OUTLINED_FUNCTION_384_0(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16, v17, v18);
    v10 = ConversationController.lookupActiveParticipant(correspondingTo:)(a1);
    if (v10)
    {
      v11 = v10;
      ConversationController.identityClaimingAssociationRelationship(for:in:)(v10, v19);
      v13 = ~v12;

      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v13)
      {
        return 0;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(&v15, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return 1;
}

uint64_t ConversationController.conversationDisplayName.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v13)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14);
    OUTLINED_FUNCTION_97_8(v15);
    v8 = OUTLINED_FUNCTION_4_38();
    v9(v8);
    OUTLINED_FUNCTION_305();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    outlined destroy of CallControlsService?(&v11, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t ConversationController.isLinkSharingSupported.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v3;
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_46();
    v0 = Conversation.isLinkSharingSupported.getter();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of CallControlsService?(v2, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return v0 & 1;
}

void ConversationController.supportsMemojiPicker.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_26_53(v1, v38);
  v3(v2);
  OUTLINED_FUNCTION_260_4();
  v4 = OUTLINED_FUNCTION_62_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_82_0(v40);
  v8 = OUTLINED_FUNCTION_2_14();
  v10 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (!v10)
  {
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_8();
    v12 = OUTLINED_FUNCTION_74_10();
    v13(v12);
    OUTLINED_FUNCTION_260_4();
    v14 = OUTLINED_FUNCTION_62_0();
    v15(v14);
    v16 = OUTLINED_FUNCTION_15_14();
    v17(v16);
    OUTLINED_FUNCTION_82_0(v40);
    v18 = OUTLINED_FUNCTION_2_14();
    if ((v19(v18) & 1) == 0)
    {
      v20 = objc_opt_self();
      v21 = [v20 currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (!v22)
      {
        v23 = OUTLINED_FUNCTION_101_5();
        OUTLINED_FUNCTION_202_3(v23, v24);
        OUTLINED_FUNCTION_2_7();
        MEMORY[0x1EEE9AC00](v25);
        OUTLINED_FUNCTION_8();
        v26 = OUTLINED_FUNCTION_153_4();
        v27(v26);
        v28 = OUTLINED_FUNCTION_40_2();
        v29(v28);
        v30 = OUTLINED_FUNCTION_208();
        v31(v30);
        v32 = v39[4];
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v33 = OUTLINED_FUNCTION_28_0();
        v35 = v34(v33, v32);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v35)
        {
          v36 = [v20 currentDevice];
          v37 = [v36 userInterfaceIdiom];

          if (!v37)
          {
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            if (static AmbientState.isPresented == 1)
            {
              if (one-time initialization token for shared != -1)
              {
                OUTLINED_FUNCTION_0(&one-time initialization token for shared);
              }

              Features.isICUIRedesignEnabled.getter();
            }
          }
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.messagesGroupName.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v3[3])
  {
    OUTLINED_FUNCTION_97_8(v3);
    v0 = OUTLINED_FUNCTION_4_38();
    v1(v0);
    OUTLINED_FUNCTION_305();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of CallControlsService?(v3, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return OUTLINED_FUNCTION_46();
}

void ConversationController.broadcastingState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_97();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_15_25();
  v27 = v20 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_5(v20 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState, &a10);
  v28 = *v27;
  v29 = *(v27 + 8);
  *v27 = v22;
  *(v27 + 8) = v21;
  v30 = *(v27 + 16);
  *(v27 + 16) = v26;
  ConversationController.broadcastingState.didset(v28, v29, v30);
  OUTLINED_FUNCTION_10_84();
}

uint64_t ConversationController.isCameraBlurEnabled.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

uint64_t ConversationController.isBackgroundReplacementEnabled.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

Swift::Void __swiftcall ConversationController.update(presentationContexts:forceUpdate:)(Swift::OpaquePointer presentationContexts, Swift::Bool forceUpdate)
{
  v3 = v2;
  v54 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v6);
  v7 = *(presentationContexts._rawValue + 2);
  rawValue = presentationContexts._rawValue;
  if (v7)
  {
    v57 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
    v8 = presentationContexts._rawValue + 48;
    v9 = MEMORY[0x1E69E7CC0];
    v58 = v2;
    while (1)
    {
      v10 = *(v8 - 2);
      v61 = *(v8 - 1);
      v60 = *v8;
      v59 = *(v8 + 1);
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v13 = *(v8 + 4);
      v14 = *(v8 + 5);
      v15 = v8[48];
      swift_beginAccess();
      v16 = *(v3 + v57);
      v17 = 0.0;
      if (*(v16 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v19 & 1) != 0))
      {
        v20 = *(v16 + 56) + 72 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v17 = *(v20 + 32);
        v25 = *(v20 + 40);
        v26 = *(v20 + 48);
        v27 = *(v20 + 56);
        v28 = *(v20 + 64);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        v26 = 0.0;
        v28 = 2;
        v27 = 0.0;
      }

      swift_endAccess();
      if (v15 == 2)
      {
        v3 = v58;
        if (v28 != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = v28 != 2 && v10 == v21 && v61 == v22 && v60 == v23 && v59 == v24;
        v3 = v58;
        if (!v32 || (v65.origin.x = v11, v65.origin.y = v12, v65.size.width = v13, v65.size.height = v14, v66.origin.x = v17, v66.origin.y = v25, v66.size.width = v26, v66.size.height = v27, !CGRectEqualToRect(v65, v66)) || ((v15 ^ v28) & 1) != 0)
        {
LABEL_23:
          *&v62 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = OUTLINED_FUNCTION_362_0();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, v35);
            v9 = v62;
          }

          v37 = *(v9 + 16);
          v36 = *(v9 + 24);
          if (v37 >= v36 >> 1)
          {
            v39 = OUTLINED_FUNCTION_59_3(v36);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v37 + 1, 1);
            v9 = v62;
          }

          *(v9 + 16) = v37 + 1;
          v38 = v9 + 72 * v37;
          *(v38 + 32) = v10;
          *(v38 + 40) = v61;
          *(v38 + 48) = v60;
          *(v38 + 56) = v59;
          *(v38 + 64) = v11;
          *(v38 + 72) = v12;
          *(v38 + 80) = v13;
          *(v38 + 88) = v14;
          *(v38 + 96) = v15;
        }
      }

      v8 += 72;
      if (!--v7)
      {
        goto LABEL_34;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v40 = *(v9 + 16);

  if (v40 || forceUpdate)
  {
    ConversationController.lookupActiveConversation()();
    if (v63)
    {
      v41 = outlined init with take of TapInteractionHandler(&v62, v64);
      MEMORY[0x1EEE9AC00](v41);
      OUTLINED_FUNCTION_313();
      *(v42 - 16) = v64;
      *(v42 - 8) = v3;
      v44 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in ConversationController.update(presentationContexts:forceUpdate:), v43, rawValue);
      if (specialized Array.count.getter())
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1BC4BA940;
        v46 = OUTLINED_FUNCTION_179_0();
        *(v45 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
        *(v45 + 64) = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [TUConversationParticipantPresentationContext] and conformance [A], &_sSaySo44TUConversationParticipantPresentationContextCGMd, &_sSaySo44TUConversationParticipantPresentationContextCGMR);
        *(v45 + 32) = v44;

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v48);

        v49 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of CallCenterProvider(v3 + v49, &v62);
        __swift_project_boxed_opaque_existential_1(&v62, v63);
        OUTLINED_FUNCTION_183_4(v64, v64[3]);
        OUTLINED_FUNCTION_417_0();
        v50 = OUTLINED_FUNCTION_9_40();
        v51(v50);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_205_0();
        v52();

        OUTLINED_FUNCTION_23_26();
        v53(v49, v54);
        __swift_destroy_boxed_opaque_existential_1(&v62);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    else
    {
      outlined destroy of CallControlsService?(&v62, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }
  }
}

Swift::Void __swiftcall ConversationController.toggleCameraBlur()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_58_9();
    v10 = OUTLINED_FUNCTION_153_4();
    v11(v10);
    OUTLINED_FUNCTION_403_0();
    v12 = OUTLINED_FUNCTION_44_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_280_2();
    v15(v14);
    OUTLINED_FUNCTION_115_6(v30);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_26_53(v17, v28);
    v19(v18);
    OUTLINED_FUNCTION_361_0();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_139();
    v23(v22);
    OUTLINED_FUNCTION_184_2(v29);
    v24 = OUTLINED_FUNCTION_84_9();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v26 = OUTLINED_FUNCTION_111_9();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.toggleBackgroundReplacement()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    v11 = OUTLINED_FUNCTION_26_53(v10, v30);
    v12(v11);
    v13 = OUTLINED_FUNCTION_309();
    v15 = v14(v13);
    v16 = OUTLINED_FUNCTION_208();
    v17(v16);
    v18 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_202_3(v18, v19);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_58_9();
    v21 = OUTLINED_FUNCTION_153_4();
    v22(v21);
    v23 = OUTLINED_FUNCTION_40_2();
    v24(v23);
    v25 = OUTLINED_FUNCTION_208();
    v26(v25);
    OUTLINED_FUNCTION_82_0(v31);
    v27 = OUTLINED_FUNCTION_2_14();
    v29 = v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    TUVideoDeviceController.setBackgroundReplacementEnabled(_:)((v29 & 1) == 0);

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.toggleCinematicFraming()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_58_9();
    v10 = OUTLINED_FUNCTION_153_4();
    v11(v10);
    OUTLINED_FUNCTION_403_0();
    v12 = OUTLINED_FUNCTION_44_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_280_2();
    v15(v14);
    OUTLINED_FUNCTION_115_6(v30);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_26_53(v17, v28);
    v19(v18);
    OUTLINED_FUNCTION_361_0();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_139();
    v23(v22);
    OUTLINED_FUNCTION_184_2(v29);
    v24 = OUTLINED_FUNCTION_84_9();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v26 = OUTLINED_FUNCTION_111_9();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.stopLocalVideoForMiniWindow()()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isGreenTea];

    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
    OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable, v5);
    *(v0 + v4) = v3;
    ConversationController.stopLocalVideo()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.effectsEnabledForLocalParticipant(with:)(Swift::Bool with)
{
  v3 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
  OUTLINED_FUNCTION_3_5(v3, v4);
  *(v1 + *(type metadata accessor for Participant(0) + 40)) = with;
}

Swift::Void __swiftcall ConversationController.updateVideoStateForExternalFactors(isShowingInMiniWindow:)(Swift::Bool isShowingInMiniWindow)
{
  v2 = v1;
  v4 = 1;
  if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0 && !isShowingInMiniWindow)
  {
    ConversationController.cameraStartPolicy.getter();
    v4 = v5 ^ 1;
  }

  if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) != 0 || (v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v2 + v6) & 1) == 0)) && ((ConversationController.isLocallySharingScreen.getter(), (v7) || (v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v2 + v8) & 1) == 0)) && (isShowingInMiniWindow || (v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v2 + v9) != 1)))
  {
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else if ((v4 & 1) == 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    *(swift_allocObject() + 16) = xmmword_1BC4BB980;
    v10 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
    OUTLINED_FUNCTION_510(v10);
    v12 = OUTLINED_FUNCTION_386_0(v11);
    OUTLINED_FUNCTION_509("Starting local video because: car play is connected (%{BOOL}d), we are locally screen sharing (%{BOOL}d), we are showing in mini window (%{BOOL}d)", v13, v14, &dword_1BBC58000, v15, v12);

    ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  *(swift_allocObject() + 16) = xmmword_1BC4BB980;
  v16 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
  OUTLINED_FUNCTION_510(v16);
  v18 = OUTLINED_FUNCTION_386_0(v17);
  OUTLINED_FUNCTION_509("Stopping local video because: car play is connected (%{BOOL}d), we are locally screen sharing (%{BOOL}d), we are showing in mini window (%{BOOL}d)", v19, v20, &dword_1BBC58000, v21, v18);

  ConversationController.stopLocalVideo()();
}

BOOL ConversationController.conversationHasActiveRemoteParticipants.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v16)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15, v16, v17);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v8 = OUTLINED_FUNCTION_46();
    v10 = v9;
    Conversation.displayableActiveParticipants.getter(v8, v11);
    specialized Set.count.getter();
    OUTLINED_FUNCTION_28_0();

    v12 = v10 > 0;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of CallControlsService?(&v14, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }

  return v12;
}

uint64_t ConversationController.shouldDeferStartCameraAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v1 + 624))(ObjectType, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [objc_opt_self() systemPreferredCamera];
  if (v5)
  {

    return 0;
  }

  return 1;
}

uint64_t ConversationController.captionsRecognizerShouldBeRunning.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ConversationController.captionsRecognizerShouldBeRunning.setter()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v40 = v5;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_101_4();
  v8 = type metadata accessor for Participant(v7);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v38 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v39 = v13;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_7();
  v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v16 = OUTLINED_FUNCTION_23_6();
  v17(v16);
  _dispatchPreconditionTest(_:)();
  v18 = OUTLINED_FUNCTION_3_7();
  v19(v18);
  if ((v15 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (*(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    goto LABEL_17;
  }

  v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v21 = *(v4 + v20);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_17;
  }

  v37 = v4;
  OUTLINED_FUNCTION_40_3();

  v23 = 0;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v24, v3);
    OUTLINED_FUNCTION_12_97();
    v25 = OUTLINED_FUNCTION_2_125();
    _s15ConversationKit11ParticipantVWOcTm_17(v25, v26);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_86_7();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v31);
      goto LABEL_10;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v28 = *(v27 + 48);
    OUTLINED_FUNCTION_37((v2 + *(v27 + 64)));
    memcpy(v41, (v2 + v28), 0x150uLL);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v29 + 8))(v2);
    v30 = v41[39];
    outlined copy of Participant.CaptionInfo?(v41[39], v41[40], v41[41]);
    outlined destroy of Participant.MediaInfo(v41);
    if (v30)
    {
      break;
    }

LABEL_10:
    ++v23;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v3, v32);
    if (v22 == v23)
    {

      goto LABEL_17;
    }
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43_30();
  _s15ConversationKit11ParticipantVWObTm_8(v3, v38);
  _s15ConversationKit11ParticipantVWObTm_8(v38, v39);
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_3_5(v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning, v41);
  if (*(v37 + v33) == (v40 & 1))
  {
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v39, v36);
  }

  else
  {
    if (Participant.captionsProvider.getter())
    {
      OUTLINED_FUNCTION_18_8();
      ObjectType = swift_getObjectType();
      (*(v38 + 40))(v40 & 1, ObjectType, v38);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v39, v35);
    *(v37 + v33) = v40 & 1;
  }

LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

id ConversationController.momentsController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  }

  else
  {
    v3 = [objc_opt_self() sharedInstance];
    [v3 addDelegate_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

void ConversationController.resetAssociatedDateForInactiveParticipant(with:)()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_77_2();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_9_0(v5);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v45 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v46 = v11;
  v12 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_3();
  v18 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v19 = *(v0 + v18);
  v48 = v1;

  v20 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.participant(with:), &v47, v19);
  v22 = v21;

  if (v22)
  {
    goto LABEL_16;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_483();
  if (v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v8 = *(v8 + 72) * v20;
  _s15ConversationKit11ParticipantVWOcTm_17(v23 + v19 + v8, v2);
  v25 = OUTLINED_FUNCTION_43_0();
  _s15ConversationKit11ParticipantVWOcTm_17(v25, v26);
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      goto LABEL_6;
    case 4u:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v28 = *(v27 + 48);
      OUTLINED_FUNCTION_37((v3 + *(v27 + 64)));
      outlined destroy of Participant.MediaInfo(v3 + v28);
LABEL_6:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v29 + 8))(v3);
      goto LABEL_7;
    case 6u:
LABEL_7:
      OUTLINED_FUNCTION_12_97();
      v30 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWOcTm_17(v30, v31);
      break;
    default:
      Date.init()();
      OUTLINED_FUNCTION_299();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v32 + 8))(v3);
      break;
  }

  OUTLINED_FUNCTION_32_2();
  static Participant.State.== infix(_:_:)();
  if (v33)
  {
    goto LABEL_15;
  }

  v34 = *(v0 + v18);
  if (v20 < *(v34 + 16))
  {
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v35 + v8, v46);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v34 = v44;
LABEL_12:
  if (v20 >= *(v34 + 16))
  {
    __break(1u);
  }

  else
  {
    outlined assign with copy of Participant.State(v16, v34 + v19 + v8);
    ConversationController.remoteParticipants.setter(v34, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v36);
    OUTLINED_FUNCTION_483();
    if (!v24)
    {
      OUTLINED_FUNCTION_1_186();
      v38 = v45;
      _s15ConversationKit11ParticipantVWOcTm_17(v37 + v8, v45);
      ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v38, v46);
      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v38, v39);
      v40 = OUTLINED_FUNCTION_309();
      _s15ConversationKit11ParticipantVWOhTm_18(v40, v41);
LABEL_15:
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant.State);
      v42 = OUTLINED_FUNCTION_312();
      _s15ConversationKit11ParticipantVWOhTm_18(v42, v43);
LABEL_16:
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ConversationController.toggleReactionEffectGesture()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_202_3(v0, v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_58_9();
  v3 = OUTLINED_FUNCTION_153_4();
  v4(v3);
  OUTLINED_FUNCTION_403_0();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_280_2();
  v8(v7);
  OUTLINED_FUNCTION_115_6(v23);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_26_53(v10, v21);
  v12(v11);
  OUTLINED_FUNCTION_361_0();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_139();
  v16(v15);
  OUTLINED_FUNCTION_184_2(v22);
  v17 = OUTLINED_FUNCTION_84_9();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v19 = OUTLINED_FUNCTION_111_9();
  v20(v19);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.toggleStudioLight()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_202_3(v0, v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_58_9();
  v3 = OUTLINED_FUNCTION_153_4();
  v4(v3);
  OUTLINED_FUNCTION_403_0();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_280_2();
  v8(v7);
  OUTLINED_FUNCTION_115_6(v23);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_26_53(v10, v21);
  v12(v11);
  OUTLINED_FUNCTION_361_0();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_139();
  v16(v15);
  OUTLINED_FUNCTION_184_2(v22);
  v17 = OUTLINED_FUNCTION_84_9();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v19 = OUTLINED_FUNCTION_111_9();
  v20(v19);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.startRecordingLocalVideo()()
{
  OUTLINED_FUNCTION_287();
  if (!v0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    os_log(_:dso:log:type:_:)(v9);
    return;
  }

  ConversationController.lookupActiveConversation()();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (swift_dynamicCast())
    {
      v1 = v15;
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_0_1();
      if ((*(v2 + 592))())
      {
        v3 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v4);
        v5 = ConversationController.momentsController.getter();
        OUTLINED_FUNCTION_20();
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = partial apply for closure #1 in ConversationController.startRecordingLocalVideo();
        v14 = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_257_2();
        aBlock[2] = v7;
        v12 = &block_descriptor_10_2;
        v8 = _Block_copy(aBlock);

        [v5 startRequestWithMediaType:2 forProvider:v3 requesteeID:0 completion:v8];
        _Block_release(v8);

        return;
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(aBlock, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v10);
}

Swift::Void __swiftcall ConversationController.stopRecordingLocalVideo()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  OUTLINED_FUNCTION_3_5(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID, v7);
  if (v1[1])
  {

    v2._countAndFlagsBits = OUTLINED_FUNCTION_1_5();
    ConversationController.endRequest(for:)(v2);

    *v1 = 0;
    v1[1] = 0;

    v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      OUTLINED_FUNCTION_363_0();
      v4(0);
      v5 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
    }
  }
}

Swift::Void __swiftcall ConversationController.toggleFRSV()()
{
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, static Logger.conversationController);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    *v2 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "toggle FRSV", v2, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

void ConversationController.captureMoment(for:)()
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_140_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_78_4();
  v13 = type metadata accessor for Participant(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_287();
  if (v15)
  {
    ConversationController.participant(with:)();
    v16 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v16, v17, v13);
    if (v15)
    {
      outlined destroy of CallControlsService?(v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v20 = OUTLINED_FUNCTION_249();
      _s15ConversationKit11ParticipantVWObTm_8(v20, v21);
      v22 = (v0 + *(v13 + 28));
      if (*v22)
      {
        v23 = v22[4];
        if (v23)
        {
          v24 = v22[3];

          ConversationController.lookupActiveConversation()();
          if (v66)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
            if (swift_dynamicCast())
            {
              v58 = v24;
              v62 = v69;
              v60 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              OUTLINED_FUNCTION_37_22();
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_1BC4BA940;
              OUTLINED_FUNCTION_1_186();
              _s15ConversationKit11ParticipantVWOcTm_17(v0, v4);
              v26 = OUTLINED_FUNCTION_127_2();
              __swift_storeEnumTagSinglePayload(v26, v27, v28, v13);
              specialized >> prefix<A>(_:)();
              v30 = v29;
              v32 = v31;
              outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              *(v25 + 56) = MEMORY[0x1E69E6158];
              *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v25 + 32) = v30;
              *(v25 + 40) = v32;
              static os_log_type_t.default.getter();
              OUTLINED_FUNCTION_156();
              os_log(_:dso:log:type:_:)(v33);

              v34 = ConversationController.momentsController.getter();
              v35 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v36 = *(v35 + 8);
              swift_getObjectType();
              v37 = *(v36 + 120);
              swift_unknownObjectRetain();
              v38 = OUTLINED_FUNCTION_455();
              LOBYTE(v30) = v37(v38);
              swift_unknownObjectRelease();
              v39 = 0;
              if (v30)
              {
                v39 = MEMORY[0x1BFB209B0](v58, v23);
              }

              OUTLINED_FUNCTION_20();
              v40 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v67 = partial apply for closure #1 in ConversationController.captureMoment(for:);
              v68 = v40;
              OUTLINED_FUNCTION_177_0();
              v64 = 1107296256;
              OUTLINED_FUNCTION_257_2();
              v65 = v41;
              v66 = &block_descriptor_14_1;
              v42 = _Block_copy(&v63);

              [v34 startRequestWithMediaType:3 forProvider:v60 requesteeID:v39 completion:v42];

              _Block_release(v42);
LABEL_29:
              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v0, v56);
LABEL_30:
              OUTLINED_FUNCTION_30_0();
              return;
            }
          }

          else
          {

            outlined destroy of CallControlsService?(&v63, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          }

          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_156();
          os_log(_:dso:log:type:_:)(v55);
          goto LABEL_29;
        }
      }

      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v43);
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v44 = swift_allocObject();
    v45 = OUTLINED_FUNCTION_424_0(v44, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    (*(v46 + 16))(v2, v6, v45);
    v47 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v47, v48, v49, v45, v50, v51, v52, v53, v57, v59, v61, v63, v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_43_7();
    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v44[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v44[2].n128_u64[0] = v45;
    v44[2].n128_u64[1] = v6;
    OUTLINED_FUNCTION_94_11();
    os_log(_:dso:log:type:_:)(v54);

    goto LABEL_30;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_30_0();

  os_log(_:dso:log:type:_:)(v18);
}