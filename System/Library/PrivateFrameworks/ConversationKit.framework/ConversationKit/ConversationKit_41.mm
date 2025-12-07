void *specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v186 = a6;
  v180 = a5;
  v181 = a4;
  v185 = a3;
  v179 = a1;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMR);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v149 - v12;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd, &_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMR);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v149 - v13;
  v175 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v149 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd, &_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMR);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v149 - v17;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd, &_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMR);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v149 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22TUCallTransmissionModeVGMd, &_s7Combine9PublishedVySo22TUCallTransmissionModeVGMR);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v149 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMd, &_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMR);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v149 - v20;
  v160 = type metadata accessor for PushToTalkChannelState();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v149 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMd, &_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMR);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v149 - v24;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7TURouteCSgGMd, &_s7Combine9PublishedVySo7TURouteCSgGMR);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v152 = &v149 - v25;
  v157 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v151 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v150 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v27);
  v149.super_class = (&v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v197[3] = a8;
  v197[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v197);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a2, a8);
  v31 = MEMORY[0x1E69E7CC0];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_ignoredScreenSharingRequestUUIDs] = MEMORY[0x1E69E7CC0];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_initiallyActiveParticipantIdentifiers] = MEMORY[0x1E69E7CD0];
  v32 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter;
  *&a7[v32] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v33 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator;
  *&a7[v33] = [objc_allocWithZone(type metadata accessor for ConversationControlsNoticeCoordinator(0)) init];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor] = 0;
  v34 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentContactCard];
  *v34 = TPNumberPadCharacter.rawValue.getter;
  v34[1] = 0;
  v35 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentAddParticipantSheet];
  *v35 = TPNumberPadCharacter.rawValue.getter;
  v35[1] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription] = 0;
  v36 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v37 = static Features.shared;
  *&a7[v36] = static Features.shared;
  v38 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_notificationCenter;
  v39 = objc_opt_self();
  v40 = v37;
  *&a7[v38] = [v39 defaultCenter];
  v41 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_observation];
  *v41 = 0u;
  v41[1] = 0u;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice] = 1;
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice] = 0;
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService] = 0;
  v42 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService];
  *(v42 + 1) = 0;
  *(v42 + 2) = 0;
  *v42 = 0;
  *(v42 + 24) = xmmword_1BC4C9460;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemBannerPresenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemAudioConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallDetailsViewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_handoffCompletedDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager] = 0;
  v43 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v194 = v31;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v151 + 104))(v150, *MEMORY[0x1E69E8090], v157);
  *&a7[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v44 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *&a7[v44] = PassthroughSubject.init()();
  v45 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v46 = static HUDActivityManager.shared;
  *&a7[v45] = static HUDActivityManager.shared;
  v47 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_bannerActivityManager;
  v48 = one-time initialization token for shared;
  v49 = v46;
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = static BannerActivityManager.shared;
  *&a7[v47] = static BannerActivityManager.shared;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingScreenSharingRequestActivity] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_podcastRecordingConsentRequestActivity] = 0;
  v51 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__audioRoute;
  v194 = 0;
  v52 = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7TURouteCSgMd, &_sSo7TURouteCSgMR);
  v54 = v152;
  v157 = v53;
  Published.init(initialValue:)();
  (*(v187 + 32))(&a7[v51], v54, v188);
  v55 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__bluetoothAudioFormat;
  v194 = 0;
  LOBYTE(v195) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26TUCallBluetoothAudioFormatVSgMd, &_sSo26TUCallBluetoothAudioFormatVSgMR);
  v56 = v153;
  Published.init(initialValue:)();
  (*(v154 + 32))(&a7[v55], v56, v155);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_cancellables] = MEMORY[0x1E69E7CC0];
  v57 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__pttChannelState;
  v58 = v159;
  v59 = v156;
  v60 = v160;
  (*(v159 + 104))(v156, *MEMORY[0x1E6995F20], v160);
  (*(v58 + 16))(v158, v59, v60);
  v61 = v161;
  Published.init(initialValue:)();
  (*(v58 + 8))(v59, v60);
  (*(v162 + 32))(&a7[v57], v61, v163);
  v62 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__pttChannelTransmissionMode;
  v194 = 1;
  type metadata accessor for TUCallTransmissionMode(0);
  v63 = v164;
  Published.init(initialValue:)();
  (*(v165 + 32))(&a7[v62], v63, v166);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject] = 0;
  v64 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject;
  LOBYTE(v194) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();
  *&a7[v64] = CurrentValueSubject.init(_:)();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallIncomingTransmissionReceivedCancellable] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert] = 0;
  v65 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__foregroundApp;
  v194 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13ForegroundAppCSgMd, &_s15ConversationKit13ForegroundAppCSgMR);
  v66 = v167;
  Published.init(initialValue:)();
  (*(v168 + 32))(&a7[v65], v66, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd, &_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMR);
  Cache.init(countLimit:)();
  type metadata accessor for ForegroundCollaborationState(0);
  swift_storeEnumTagMultiPayload();
  v67 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__ephemeralAlert;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14EphemeralAlertVSgMd, &_s15ConversationKit14EphemeralAlertVSgMR);
  v68 = v170;
  Published.init(initialValue:)();
  (*(v171 + 32))(&a7[v67], v68, v172);
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityLaunchTimer] = 0;
  v69 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_tccServer;
  *&a7[v69] = tcc_server_create();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState] = 0;
  v70 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__secondaryPillButtonType;
  swift_storeEnumTagMultiPayload();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v71 = v176;
  Published.init(initialValue:)();
  _s15ConversationKit11ParticipantVWOhTm_10();
  (*(v177 + 32))(&a7[v70], v71, v178);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_updateForegroundCollaborationStateTask] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer] = 0;
  v72 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_participantStateDidChangeSubject;
  swift_allocObject();
  *&a7[v72] = PassthroughSubject.init()();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, &static Logger.conversationControls);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1BBC58000, v74, v75, "CCM init", v76, 2u);
    MEMORY[0x1BFB23DF0](v76, -1, -1);
  }

  v77 = v179;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController] = v179;
  type metadata accessor for ConversationControlsJoinCountdownActionController();
  swift_allocObject();
  v78 = v77;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_countdownController] = ConversationControlsJoinCountdownActionController.init()();
  v79 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v80 = [v79 gameControllerSystemButton];

  v81 = 0;
  if ((v80 & 1) == 0)
  {
    type metadata accessor for CallGameController();
    swift_allocObject();
    v81 = CallGameController.init()();
  }

  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController] = v81;
  v82 = [objc_allocWithZone(MEMORY[0x1E69D8BF0]) init];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] = v82;
  v83 = v180;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] = v180;
  v84 = v83;
  v85 = [v84 conversationManager];
  type metadata accessor for CollaborationInitiationManager();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_collaborationInitiationManager] = v86;
  ConversationController.hasMessageCapableRemoteParticipants.getter();
  LOBYTE(v85) = v87;
  swift_beginAccess();
  v193[0] = v85 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v88 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  v89 = *&v78[v88];
  v90 = 1;
  if (v89 != 3)
  {
    v91 = &v78[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v92 = *(v91 + 1);
    ObjectType = swift_getObjectType();
    v180 = v78;
    v94 = v84;
    v95 = v51;
    v96 = ObjectType;
    v97 = *(v92 + 152);
    swift_unknownObjectRetain();
    v98 = v96;
    v51 = v95;
    v84 = v94;
    v78 = v180;
    v90 = v97(v98, v92);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  LOBYTE(v192) = v90 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v99 = ConversationController.audioRoute.getter();
  swift_beginAccess();
  (*(v187 + 8))(&a7[v51], v188);
  v192 = v99;
  Published.init(initialValue:)();
  swift_endAccess();
  v100 = &v78[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v101 = *(v100 + 1);
  v102 = swift_getObjectType();
  v103 = *(v101 + 376);
  swift_unknownObjectRetain();
  LOBYTE(v101) = v103(v102, v101);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v190 = (v101 & 1) == 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v104 = ConversationController.localVideoSupported.getter();
  v105 = *(v100 + 1);
  v106 = swift_getObjectType();
  v107 = *(v105 + 328);
  swift_unknownObjectRetain();
  LOBYTE(v105) = v107(v106, v105);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v190 = v104 & 1;
  v191 = v105 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  outlined init with copy of IDSLookupManager(v197, &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_entitlementsChecker]);
  v108 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults];
  v109 = v181;
  *v108 = v185;
  v108[1] = v109;
  v110 = v186;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags] = v186;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory] = MEMORY[0x1E69E7CC0];
  v111 = type metadata accessor for ConversationControlsManager(0);
  v189.receiver = a7;
  v189.super_class = v111;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v112 = objc_msgSendSuper2(&v189, sel_init);
  v113 = objc_allocWithZone(type metadata accessor for ConduitApprovalDelegate());
  v114 = v112;
  v115 = ConduitApprovalDelegate.init(_:)();
  v116 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate;
  v117 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate);
  *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate) = v115;

  v118 = [v84 neighborhoodActivityConduit];
  [v118 setApprovalDelegate_];

  if ([v110 lagunaEnabled])
  {
    v119 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
    v120 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue);
    v121 = objc_opt_self();
    v122 = v114;
    v123 = v120;
    v124 = [v121 sharedInstance];
    v125 = objc_allocWithZone(type metadata accessor for ConduitLagunaNoticeManager(0));
    ConduitLagunaNoticeManager.init(_:queue:callCenter:)(v122, v123, v124, v125, v126, v127, v128, v129, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
    v131 = v130;
    v132 = [v84 neighborhoodActivityConduit];
    [v132 addDelegate:v131 queue:*(v114 + v119)];

    v133 = [v84 conversationManager];
    [v133 addDelegate:v131 queue:*(v114 + v119)];

    v134 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager;
    swift_beginAccess();
    v135 = *(v122 + v134);
    *(v122 + v134) = v131;
  }

  v136 = ConversationControlsManager.updateShareButtonState()();
  v137 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v114) + 0xA30))(v136);
  ConversationControlsManager.setupConversationControllerObservers()();
  v138 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);
  v139 = *((*v137 & *v138) + 0xA0);
  v140 = v138;
  v141 = v182;
  v139();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<Notice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMR);
  v142 = v184;
  v143 = Publisher<>.sink(receiveValue:)();

  (*(v183 + 8))(v141, v142);
  *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable) = v143;

  v144 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController);
  if (v144)
  {
    v145 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v146 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v147 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #2 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v145, partial apply for closure #3 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v146);
    specialized CallGameController.addEvent(_:)(v147, v144);
  }

  [*(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController) setDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v197);
  return v114;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_385();
  v10 = [objc_opt_self() sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_217_0(&one-time initialization token for shared);
  }

  v11 = static PlaceholderCallCenter.shared;
  objc_allocWithZone(type metadata accessor for CallCenter());
  v12 = v11;
  v13 = OUTLINED_FUNCTION_170();
  CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v13, v14, 0, 0);
  OUTLINED_FUNCTION_49();

  return specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(v15, v16, v17, v18, v19);
}

char *_s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5()
{
  OUTLINED_FUNCTION_6_7();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  swift_unknownObjectWeakInit();
  v30 = 0;
  swift_unknownObjectWeakInit();
  v0 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v1 = swift_allocObject();
  v28[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
  v28[4] = &protocol witness table for TUIDSLookupManager;
  v28[0] = v0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_67();
  lazy protocol witness table accessor for type URL and conformance URL(v2, v3);
  v4 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_8();
  v1[2] = Dictionary.init(dictionaryLiteral:)();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[6] = v4;
  outlined init with copy of IDSLookupManager(v28, (v1 + 7));
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v1 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v0];

  __swift_destroy_boxed_opaque_existential_1(v28);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v6 = static Defaults.shared;
  v7 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(v31, v27);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(v29, v28);
  swift_retain_n();
  v8 = OUTLINED_FUNCTION_38_2();
  v13 = specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v8, v9, v10, v11, 0, v12, 0, v1, v6, v7);
  outlined destroy of DefaultParticipantCaptionsProviderCreator(v29);
  outlined destroy of DefaultParticipantMediaProviderCreator(v31);
  type metadata accessor for EntitlementsChecker();
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v16 = v13;
  *(v14 + 16) = [v15 init];
  v17 = [objc_opt_self() sharedInstance];
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  OUTLINED_FUNCTION_46();
  specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)();
  v20 = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v22 = v20;
  v23 = [v21 init];

  v24 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  OUTLINED_FUNCTION_3_5(&v22[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor], v32);
  v25 = *&v22[v24];
  *&v22[v24] = v23;

  return v22;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(char *a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_unknownObjectWeakInit();
  v28 = 0;
  swift_unknownObjectWeakInit();
  v6 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v7 = swift_allocObject();
  v26[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
  v26[4] = &protocol witness table for TUIDSLookupManager;
  v26[0] = v6;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = Dictionary.init(dictionaryLiteral:)();
  v7[3] = Dictionary.init(dictionaryLiteral:)();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = v8;
  outlined init with copy of IDSLookupManager(v26, (v7 + 7));
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v7 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v6];

  __swift_destroy_boxed_opaque_existential_1(v26);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static Defaults.shared;
  v11 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(v29, v25);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(v27, v26);
  swift_retain_n();
  v12 = specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a2, v25, v26, 0, &v30, 0, v7, v10, v11);
  outlined destroy of DefaultParticipantCaptionsProviderCreator(v27);
  outlined destroy of DefaultParticipantMediaProviderCreator(v29);
  v13 = type metadata accessor for EntitlementsChecker();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v16 = v12;
  *(v14 + 16) = [v15 init];
  *(&v31 + 1) = v13;
  v32 = &protocol witness table for EntitlementsChecker;
  *&v30 = v14;
  v17 = [objc_opt_self() sharedInstance];
  v18 = (*(a3 + 2624))(v16, &v30, v10, &protocol witness table for Defaults, v17, [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init]);
  v19 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v20 = v18;
  v21 = [v19 init];

  v22 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakInit();
  v10 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v11 = swift_allocObject();
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
  v34 = &protocol witness table for TUIDSLookupManager;
  v32[0] = v10;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v12 = MEMORY[0x1E69E7CC0];
  v11[2] = Dictionary.init(dictionaryLiteral:)();
  v11[3] = Dictionary.init(dictionaryLiteral:)();
  v11[5] = 0;
  swift_unknownObjectWeakInit();
  v11[6] = v12;
  outlined init with copy of IDSLookupManager(v32, (v11 + 7));
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v11 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v10];

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static Defaults.shared;
  v15 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v37, &v31);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v35, v32);
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a2, &v31, v32, 0, &v38, 0, v11, v14, v15, a4, a5, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, v38, *(&v38 + 1));
  v17 = v16;
  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v35);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v37);
  v18 = type metadata accessor for EntitlementsChecker();
  v19 = swift_allocObject();
  v20 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v21 = v17;
  *(v19 + 16) = [v20 init];
  *(&v39 + 1) = v18;
  v40 = &protocol witness table for EntitlementsChecker;
  *&v38 = v19;
  v22 = [objc_opt_self() sharedInstance];
  v23 = (*(a3 + 2624))(v21, &v38, v14, &protocol witness table for Defaults, v22, [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init]);
  v24 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v25 = v23;
  v26 = [v24 init];

  v27 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v28 = *&v25[v27];
  *&v25[v27] = v26;

  return v25;
}

void specialized ConversationControlsManager.post(notice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_385();
  a13 = v29(0);
  a14 = v28;
  v30 = __swift_allocate_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v26(v30, *(v22 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator));
  OUTLINED_FUNCTION_23_0();
  if ((*((*MEMORY[0x1E69E7D40] & v31) + 0x4E8))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_394();
    (*(v32 + 136))(&a10);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_52_5();
}

uint64_t specialized ConversationControlsManager.post(notice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))();
  specialized ConversationControlsNoticeCoordinator.post(notice:)();
  if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8))())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 136))(v10, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t specialized ConversationControlsManager.presentActivity(activity:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v77 = a2;
  v78 = a3;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v82[4] = &protocol witness table for TUConversationActivitySession;
  v82[0] = a1;
  v8 = one-time initialization token for conversationControls;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v82, aBlock);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v81 = v14;
    *v13 = 136315138;
    outlined init with copy of IDSLookupManager(aBlock, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v81);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Launching activity: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  v19 = [v9 activity];
  v20 = [v19 isSupported];

  if (v20)
  {
    outlined init with copy of IDSLookupManager(v82, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
    if (swift_dynamicCast())
    {
      v21 = *&v80[0];
      v22 = [*&v80[0] activity];
      v23 = [v22 isScreenSharingActivity];

      if ((v23 & 1) != 0 && [v21 isLocallyInitiated])
      {
        outlined init with copy of IDSLookupManager(v82, aBlock);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v81 = v27;
          *v26 = 136315138;
          outlined init with copy of IDSLookupManager(aBlock, v80);
          v28 = String.init<A>(describing:)();
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v81);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_1BBC58000, v24, v25, "Unsupported activity: %s, cannot open screenshare for host", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x1BFB23DF0](v27, -1, -1);
          MEMORY[0x1BFB23DF0](v26, -1, -1);

          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      if (![*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
      {
        goto LABEL_31;
      }

      v51 = MEMORY[0x1E69E7D40];
      v52 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x2A0);
      v52();
      v54 = v53;
      ObjectType = swift_getObjectType();
      LOBYTE(v54) = (*(v54 + 152))(ObjectType, v54);
      v56 = swift_unknownObjectRelease();
      if ((v54 & 1) == 0)
      {
        goto LABEL_31;
      }

      v57 = (*((*v51 & *a4) + 0x2C0))(v56);
      if (!v57)
      {
        goto LABEL_31;
      }

      v58 = v57;
      if ([v57 state] == 3)
      {

LABEL_31:
        v43 = [*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
        outlined init with copy of IDSLookupManager(v82, v80);
        v68 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v80, v68 + 16);
        v70 = v77;
        v69 = v78;
        *(v68 + 56) = v77;
        *(v68 + 64) = v69;
        aBlock[4] = partial apply for closure #1 in ConversationControlsManager.presentActivity(activity:completion:);
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_613;
        v71 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v70, v69);

        [v43 launchApplicationForActivitySession:v21 completionHandler:v71];
        _Block_release(v71);

        goto LABEL_32;
      }

      v52();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      v60 = v59;
      v61 = [objc_opt_self() remoteMembersForCall_];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest, 0x1E69D8C10);
      v62 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
      v63 = [v60 uniqueProxyIdentifierUUID];
      v64 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v75 + 8))(v64, v76);
      [v62 setUUID_];

      v66 = [v21 activity];
      [v62 setActivity_];

      v67 = [v58 provider];
      [v62 setProvider_];

      v43 = [*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v43 joinConversationWithRequest:v62];

      swift_unknownObjectRelease();
    }

    else
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v43, v44))
      {

        goto LABEL_24;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81 = v46;
      *v45 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v80);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v81);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1BBC58000, v43, v44, "Activity: %s, is not a valid activity session", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFB23DF0](v46, -1, -1);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

LABEL_32:

    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v32 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v9 activity]);
  if (v33)
  {
    v34 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x898))(v32);

    if ((v34 & 1) == 0)
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v81 = v38;
        *v37 = 136315138;
        outlined init with copy of IDSLookupManager(aBlock, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
        v39 = String.init<A>(describing:)();
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v81);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1BBC58000, v35, v36, "Unsupported activity: %s, presenting App Store", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1BFB23DF0](v38, -1, -1);
        MEMORY[0x1BFB23DF0](v37, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      ConversationControlsManager.presentAppStore()();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t specialized ConversationControlsManager.presentActivity(activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v77 = a3;
  v78 = a4;
  v76 = a2;
  v75 = type metadata accessor for UUID();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = a5;
  v82[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v82, aBlock);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v81 = v15;
    *v14 = 136315138;
    outlined init with copy of IDSLookupManager(aBlock, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v81);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Launching activity: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  if ((*(a6 + 40))(a5, a6))
  {
    outlined init with copy of IDSLookupManager(v82, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    if (swift_dynamicCast())
    {
      v20 = *&v80[0];
      v21 = [*&v80[0] activity];
      v22 = [v21 isScreenSharingActivity];

      if ((v22 & 1) != 0 && [v20 isLocallyInitiated])
      {
        outlined init with copy of IDSLookupManager(v82, aBlock);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v81 = v26;
          *v25 = 136315138;
          outlined init with copy of IDSLookupManager(aBlock, v80);
          v27 = String.init<A>(describing:)();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v81);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_1BBC58000, v23, v24, "Unsupported activity: %s, cannot open screenshare for host", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          MEMORY[0x1BFB23DF0](v26, -1, -1);
          MEMORY[0x1BFB23DF0](v25, -1, -1);

          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      v50 = v78;
      if (![*(v78 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
      {
        goto LABEL_31;
      }

      v51 = MEMORY[0x1E69E7D40];
      v52 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x2A0);
      v52();
      v54 = v53;
      ObjectType = swift_getObjectType();
      LOBYTE(v54) = (*(v54 + 152))(ObjectType, v54);
      v56 = swift_unknownObjectRelease();
      if ((v54 & 1) == 0)
      {
        goto LABEL_31;
      }

      v57 = (*((*v51 & *v50) + 0x2C0))(v56);
      if (!v57)
      {
        goto LABEL_31;
      }

      v58 = v57;
      if ([v57 state] == 3)
      {

LABEL_31:
        v42 = [*(v50 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
        outlined init with copy of IDSLookupManager(v82, v80);
        v68 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v80, v68 + 16);
        v70 = v76;
        v69 = v77;
        *(v68 + 56) = v76;
        *(v68 + 64) = v69;
        aBlock[4] = closure #1 in ConversationControlsManager.presentActivity(activity:completion:)partial apply;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_660;
        v71 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v70, v69);

        [v42 launchApplicationForActivitySession:v20 completionHandler:v71];
        _Block_release(v71);

        goto LABEL_32;
      }

      v52();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      v60 = v59;
      v61 = [objc_opt_self() remoteMembersForCall_];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest, 0x1E69D8C10);
      v62 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
      v63 = [v60 uniqueProxyIdentifierUUID];
      v64 = v73;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v74 + 8))(v64, v75);
      [v62 setUUID_];

      v66 = [v20 activity];
      [v62 setActivity_];

      v67 = [v58 provider];
      [v62 setProvider_];

      v42 = [*(v50 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v42 joinConversationWithRequest:v62];

      swift_unknownObjectRelease();
    }

    else
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v42, v43))
      {

        goto LABEL_24;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81 = v45;
      *v44 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v80);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v81);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1BBC58000, v42, v43, "Activity: %s, is not a valid activity session", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
      MEMORY[0x1BFB23DF0](v44, -1, -1);
    }

LABEL_32:

    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v31 = (*(a6 + 32))(a5, a6);
  if (v32)
  {
    v33 = (*((*MEMORY[0x1E69E7D40] & *v78) + 0x898))(v31);

    if ((v33 & 1) == 0)
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v81 = v37;
        *v36 = 136315138;
        outlined init with copy of IDSLookupManager(aBlock, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
        v38 = String.init<A>(describing:)();
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v81);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1BBC58000, v34, v35, "Unsupported activity: %s, presenting App Store", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      ConversationControlsManager.presentAppStore()();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t outlined assign with copy of ForegroundCollaborationState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForegroundCollaborationState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized CoalescingNoticeQueue.push(notice:)(uint64_t a1, uint64_t *a2)
{
  v52[3] = type metadata accessor for ReactionNotice(0);
  v52[4] = &protocol witness table for ReactionNotice;
  __swift_allocate_boxed_opaque_existential_1(v52);
  _s15ConversationKit11ParticipantVWOcTm_8();
  v3 = 0;
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *a2 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {

      *a2 = v7;
      specialized BidirectionalCollection.last.getter(v7, &v46);
      if (v47)
      {
        outlined init with take of TapInteractionHandler(&v46, &v49);
        v12 = v50;
        v13 = v51;
        __swift_mutable_project_boxed_opaque_existential_1(&v49, v50);
        if ((*(v13 + 208))(v52, v12, v13))
        {
          if (one-time initialization token for conversationControls != -1)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      else
      {
        outlined destroy of CallControlsService?(&v46, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
      }

      outlined init with copy of IDSLookupManager(v52, &v49);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = *(*a2 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v28);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v50);
      v30 = MEMORY[0x1EEE9AC00](v29);
      v32 = &v44[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v33 + 16))(v32, v30);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v32, a2);
      __swift_destroy_boxed_opaque_existential_1(&v49);
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v6, &v49);
    v8 = v50;
    v9 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    if ((*(v9 + 40))(v8, v9))
    {
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v49, &v46);
      v45[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
        v7 = v45[0];
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1);
        v7 = v45[0];
      }

      *(v7 + 16) = v11 + 1;
      outlined init with take of TapInteractionHandler(&v46, v7 + 40 * v11 + 32);
    }

    v6 += 40;
    ++v3;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_15:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v52, &v46);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45[0] = v18;
    *v17 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    v19 = ReactionNotice.description.getter();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v45);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v23 = v50;
    v24 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v25 = (*(v24 + 120))(v23, v24);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v45);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Coalesced notice:%s into existingNotice:%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  specialized RangeReplaceableCollection<>.removeLast()(&v46);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(&v49, &v46);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v34 = *(*a2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
  v35 = v47;
  v36 = v48;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v44[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v41 + 16))(v40, v38);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v34, v40, a2, v35, v36);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v42 = *a2;
  __swift_destroy_boxed_opaque_existential_1(&v49);
  *a2 = v42;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15ConversationKit11ParticipantVWOcTm_8();
  v7 = v5[16];
  if (v7 == 2 || v7 == 3)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    return 0;
  }

  if (v5[*(v3 + 48)] == 1 && (v9 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0))(v6)) != 0)
  {
    v10 = v9;
    v11 = [v9 resolvedAudioVideoMode];

    _s15ConversationKit11ParticipantVWOhTm_10();
    if (v11 == 1)
    {
      return 0;
    }
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  return 1;
}

uint64_t specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a3, v16);
  (*(a4 + 112))(a3, a4);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    goto LABEL_3;
  }

  v20 = outlined init with take of Collaboration();
  v21 = v13[16];
  if (v21 == 2 || v21 == 3)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_7;
  }

  if (v13[*(v11 + 48)] != 1 || (v23 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0))(v20)) == 0)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_3;
  }

  v24 = v23;
  v25 = [v23 resolvedAudioVideoMode];

  _s15ConversationKit11ParticipantVWOhTm_10();
  if (v25 == 1)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

LABEL_3:
  v19 = 1;
LABEL_8:
  (*(v14 + 8))(v18, a3);
  return v19;
}

void specialized ConversationControlsManager.updatePTTChannelState(call:)(void *a1)
{
  v2 = type metadata accessor for PushToTalkChannelState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.conversationControls);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Update PTT Channel state for call called", v9, 2u);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v10 = a1;
  if (![v10 isPTT])
  {

    (*(v3 + 104))(v5, *MEMORY[0x1E6995F20], v2);
    ConversationControlsManager.pttChannelState.setter();
    return;
  }

  if (![v10 serviceStatus])
  {
    v11 = [v10 provider];
    v12 = [v11 audioSessionID];

    if (v12)
    {
      v13 = [v10 status];
      if (v13)
      {
        if (v13 == 1)
        {
          if ([v10 isReceivingTransmission] & 1) != 0 && (objc_msgSend(v10, sel_isSendingTransmission))
          {
            v14 = MEMORY[0x1E6995F30];
          }

          else if ([v10 isReceivingTransmission])
          {
            v14 = MEMORY[0x1E6995F40];
          }

          else
          {
            if (([v10 isSendingTransmission] & 1) == 0)
            {
LABEL_23:
              v15 = [v10 transmissionMode];
              ConversationControlsManager.pttChannelTransmissionMode.setter(v15, v16);
              goto LABEL_24;
            }

            v14 = MEMORY[0x1E6995F28];
          }

LABEL_22:
          (*(v3 + 104))(v5, *v14, v2);
          ConversationControlsManager.pttChannelState.setter();
          goto LABEL_23;
        }

        if (v13 != 2)
        {
          v14 = MEMORY[0x1E6995F20];
          goto LABEL_22;
        }
      }

      v14 = MEMORY[0x1E6995F38];
      goto LABEL_22;
    }
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E6995F20], v2);
  ConversationControlsManager.pttChannelState.setter();
LABEL_24:
}

SEL *specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v351 = a8;
  v352 = a6;
  LODWORD(v354) = a7;
  HIDWORD(v341) = a5;
  v365 = a1;
  ObjectType = swift_getObjectType();
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v371);
  v374 = (&v337 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v370 = &v337 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v369 = &v337 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v373 = &v337 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v344 = &v337 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v338 = &v337 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v337 = &v337 - v25;
  v368 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v368);
  v358 = (&v337 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  *&v367 = &v337 - v28;
  v372 = type metadata accessor for UUID();
  v350 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372);
  v362 = &v337 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v361 = &v337 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v360 = &v337 - v33;
  v349 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v349);
  v359 = &v337 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for Participant(0);
  v343 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v366 = &v337 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v356 = &v337 - v37;
  v355 = type metadata accessor for Date();
  v353 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v357 = &v337 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v348 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v347 = &v337 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v40);
  v346 = &v337 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v363 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v395 = type metadata accessor for CallCenter();
  v396 = &protocol witness table for CallCenter;
  v394[0] = a2;
  v393[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v393[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  v393[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(a3, v393[0] + 16);
  v392[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v392[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  v392[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(a4, v392[0] + 16);
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v345 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  *&v388 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v348)[13](v347, *MEMORY[0x1E69E8090], v364);
  *(v345 + a10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = v372;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  v44 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  v397 = 1;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 96) = 1;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v45 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v46 = MEMORY[0x1E69E7CC0];
  *(a10 + v45) = Dictionary.init(dictionaryLiteral:)();
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  v47 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  __swift_storeEnumTagSinglePayload(a10 + v47, 1, 1, v48);
  v49 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
  *(v49 + 48) = 0;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  v50 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v51 = v355;
  *(a10 + v50) = Dictionary.init(dictionaryLiteral:)();
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v346 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = 1;
  v52 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v52 = 0;
  *(v52 + 8) = 1;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v53 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a10 + v53) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  v54 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  *v54 = 0;
  v54[1] = 0;
  v55 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  *v55 = 0;
  v55[1] = 0;
  v56 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  *v56 = 0;
  v56[1] = 0;
  v57 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  *v57 = 0;
  v57[1] = 0;
  v58 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  *v58 = 0;
  v58[1] = 0;
  v59 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  *v59 = 0;
  v59[1] = 0;
  v60 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  *v60 = 0;
  v60[1] = 0;
  v61 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  *v61 = 0;
  v61[1] = 0;
  v62 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  *v62 = 0;
  v62[1] = 0;
  v63 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  *v63 = 0;
  v63[1] = 0;
  v64 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  *v64 = 0;
  v64[1] = 0;
  v65 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  *v65 = 0;
  v65[1] = 0;
  v66 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  *v66 = 0;
  v66[1] = 0;
  v67 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  *v67 = 0;
  v67[1] = 0;
  v68 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  *v68 = 0;
  v68[1] = 0;
  v69 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  *v69 = 0;
  v69[1] = 0;
  v70 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  *v70 = 0;
  v70[1] = 0;
  v71 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  *v71 = 0;
  v71[1] = 0;
  v72 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  *v72 = 0;
  v72[1] = 0;
  v73 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  *v73 = 0;
  v73[1] = 0;
  v74 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  *v74 = 0;
  v74[1] = 0;
  v75 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  *v75 = 0;
  v75[1] = 0;
  v76 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  *v76 = 0;
  v76[1] = 0;
  v77 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  *v77 = 0;
  v77[1] = 0;
  v78 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  *v78 = 0;
  v78[1] = 0;
  v79 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  *v79 = 0;
  v79[1] = 0;
  v80 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  *v80 = 0;
  v80[1] = 0;
  v81 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  *v81 = 0;
  v81[1] = 0;
  v82 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  *v82 = 0;
  v82[1] = 0;
  v83 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  *v83 = 0;
  v83[1] = 0;
  v84 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  *v84 = 0;
  v84[1] = 0;
  v85 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  *v85 = 0;
  v85[1] = 0;
  v86 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  *v86 = 0;
  v86[1] = 0;
  v87 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  *v87 = 0;
  v87[1] = 0;
  v88 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  *v88 = 0;
  v88[1] = 0;
  v89 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  *v89 = 0;
  v89[1] = 0;
  v90 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  *v90 = 0;
  v90[1] = 0;
  v91 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  *v91 = 0;
  v91[1] = 0;
  v92 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  *v92 = 0;
  v92[1] = 0;
  v93 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  *v93 = 0;
  v93[1] = 0;
  v94 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  *v94 = 0;
  v94[1] = 0;
  v95 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  *v95 = 0;
  v95[1] = 0;
  v96 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  *v96 = 0;
  v96[1] = 0;
  v97 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  *v97 = 0;
  v97[1] = 0;
  v98 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  *v98 = 0;
  v98[1] = 0;
  v99 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  *v99 = 0;
  v99[1] = 0;
  v100 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  *v100 = 0;
  v100[1] = 0;
  v101 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  *v101 = 0;
  v101[1] = 0;
  v102 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  *v102 = 0;
  v102[1] = 0;
  v103 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  *v103 = 0;
  v103[1] = 0;
  v104 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  *v104 = 0;
  v104[1] = 0;
  v105 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  *v105 = 0;
  v105[1] = 0;
  v106 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  *v106 = 0;
  v106[1] = 0;
  v107 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  *v107 = 0;
  v107[1] = 0;
  v108 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  *v108 = 0;
  v108[1] = 0;
  v109 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  *v109 = 0;
  v109[1] = 0;
  v110 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  *v110 = 0;
  v110[1] = 0;
  v111 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  *v111 = 0;
  v111[1] = 0;
  v112 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  *v112 = 0;
  v112[1] = 0;
  v113 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  *v113 = 0;
  v113[1] = 0;
  v114 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  *v114 = 0;
  v114[1] = 0;
  v115 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  *v115 = 0;
  v115[1] = 0;
  v116 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  *v116 = 0;
  v116[1] = 0;
  v117 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  *v117 = 0;
  v117[1] = 0;
  v118 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  *v118 = 0;
  v118[1] = 0;
  v119 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  *v119 = 0;
  v119[1] = 0;
  v120 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  *v120 = 0;
  v120[1] = 0;
  v121 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  *v121 = 0;
  v121[1] = 0;
  v122 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  *v122 = 0;
  v122[1] = 0;
  v123 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  *v123 = 0;
  v123[1] = 0;
  v124 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  *v124 = 0;
  v124[1] = 0;
  v125 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  *v125 = 0;
  v125[1] = 0;
  v126 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  *v126 = 0;
  v126[1] = 0;
  v127 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  *v127 = 0;
  v127[1] = 0;
  v128 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  *v128 = 0;
  v128[1] = 0;
  v129 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  *v129 = 0;
  v129[1] = 0;
  v130 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  *v130 = 0;
  v130[1] = 0;
  v131 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  *v131 = 0;
  v131[1] = 0;
  v132 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  *v132 = 0;
  v132[1] = 0;
  v133 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *v133 = 0;
  v133[1] = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID, 1, 1, v43);
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v46;
  v134 = MEMORY[0x1E69E7CD0];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v134;
  v135 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  *(a10 + v135) = Dictionary.init(dictionaryLiteral:)();
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio, 1, 1, v43);
  v136 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  *v136 = 0;
  v136[1] = 0;
  v137 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a10;
  *(v137 + 4) = 0;
  *v137 = 0u;
  *(v137 + 1) = 0u;
  v340 = v137;
  v138 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  v139 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *(a10 + v138) = CPCarPlayObserver.init(queue:)();
  v140 = v357;
  Date.init()();
  v141 = [v365 remoteParticipantHandles];
  v142 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v348 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v143 = specialized Set.count.getter();

  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v143 == 1;
  v364 = a10;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v354;
  (*(v353 + 16))(v359, v140, v51);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v349 = v142;
    v144 = static Defaults.shared;
    LODWORD(v347) = (*(*static Defaults.shared + 592))();
    v145 = (*(*v144 + 168))();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v146 = static Colors.ParticipantGradients.default;
    __swift_storeEnumTagSinglePayload(v367, 1, 1, v368);
    v147 = v395;
    v148 = v396;
    __swift_project_boxed_opaque_existential_1(v394, v395);
    v149 = v148[13];

    v149(&v388, v365, v363, v147, v148);
    if (v390)
    {
      __swift_project_boxed_opaque_existential_1(&v388, v390);
      v150 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v388);
    }

    else
    {
      outlined destroy of CallControlsService?(&v388, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v150 = 0;
    }

    v151 = v372;
    v152 = type metadata accessor for ParticipantContactDetailsCache();
    v153 = v152;
    if (one-time initialization token for queue != -1)
    {
      v152 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v152);
    v154 = v365;
    *(&v337 - 4) = v153;
    *(&v337 - 3) = v154;
    *(&v337 - 2) = v363;
    v345 = v153;
    OS_dispatch_queue.sync<A>(execute:)();
    v339 = 0;
    v155 = v388;
    v156 = v375;
    v157 = v366;
    v158 = &v366[*(v375 + 28)];
    *(v158 + 4) = 0;
    *v158 = 0u;
    *(v158 + 1) = 0u;
    v159 = &v157[v156[9]];
    v157[v156[10]] = 0;
    *&v157[v156[11]] = MEMORY[0x1E69E7CD0];
    *&v157[v156[12]] = 0;
    outlined init with take of Collaboration();
    v160 = &v157[v156[5]];
    v161 = v360;
    v359 = *(v350 + 32);
    v360 = (v350 + 32);
    (v359)(v160, v161, v151);
    v162 = &v157[v156[6]];
    *v162 = v347 & 1;
    *(v162 + 1) = 257;
    v162[3] = 0;
    v162[4] = v145 & 1;
    outlined consume of Participant.RemoteIdentifiers?(*v158, *(v158 + 1), *(v158 + 2), *(v158 + 3), *(v158 + 4));
    *(v158 + 4) = 0;
    *v158 = 0u;
    *(v158 + 1) = 0u;
    *&v157[v156[8]] = v146;
    *v159 = 0;
    *(v159 + 1) = 0;
    v157[v156[15]] = v150;
    v157[v156[13]] = 0;
    v163 = v367;
    v164 = v368;
    if (__swift_getEnumTagSinglePayload(v367, 1, v368) == 1)
    {
      v165 = v355;
      __swift_storeEnumTagSinglePayload(v337, 1, 1, v355);
      __swift_storeEnumTagSinglePayload(v338, 1, 1, v165);
      v166 = v358;
      __swift_storeEnumTagSinglePayload(v358, 1, 1, v165);
      __swift_storeEnumTagSinglePayload(&v166[*(v164 + 20)], 1, 1, v165);
      outlined assign with take of RecentsCallItem?();
      outlined assign with take of RecentsCallItem?();
      v166[*(v164 + 24)] = 0;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v163, 1, v164);
      v168 = &selRef_isRecordingAllowed;
      v142 = v348;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of CallControlsService?(v163, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
      }
    }

    else
    {
      v166 = v358;
      outlined init with take of Collaboration();
      v168 = &selRef_isRecordingAllowed;
      v142 = v348;
    }

    v169 = v375;
    v170 = v366;
    outlined init with take of Collaboration();
    *&v170[*(v169 + 64)] = v155;
    outlined init with take of Collaboration();
    outlined init with take of Collaboration();
    v171 = [v365 v168[86]];
    v172 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v173 = specialized Set.count.getter();
    if (v173)
    {
      break;
    }

    v199 = MEMORY[0x1E69E7CC0];
LABEL_43:
    MEMORY[0x1EEE9AC00](v198);
    v200 = v357;
    *(&v337 - 4) = v357;
    *(&v337 - 3) = v394;
    v201 = v365;
    v202 = v363;
    *(&v337 - 2) = v365;
    *(&v337 - 1) = v202;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), (&v337 - 6), v199);
    v204 = v203;

    *(v364 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v204;
    v205 = v395;
    v206 = v396;
    __swift_project_boxed_opaque_existential_1(v394, v395);
    (v206[13])(&v388, v201, v202, v205, v206);
    v207 = v390;
    if (v390)
    {
      v208 = v391;
      __swift_project_boxed_opaque_existential_1(&v388, v390);
      v209 = (v208[19])(v207, v208);
      MEMORY[0x1EEE9AC00](v209);
      *(&v337 - 4) = v200;
      *(&v337 - 3) = v394;
      *(&v337 - 2) = v201;
      *(&v337 - 1) = v202;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), (&v337 - 6), v209);
      v211 = v210;

      __swift_destroy_boxed_opaque_existential_1(&v388);
    }

    else
    {
      outlined destroy of CallControlsService?(&v388, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v211 = MEMORY[0x1E69E7CC0];
    }

    v212 = v364;
    *(v364 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v211;
    outlined init with copy of IDSLookupManager(v394, v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v213 = (v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v213 = v201;
    v213[1] = v202;
    outlined init with copy of IDSLookupManager(v393, v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of IDSLookupManager(v392, v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v341) & 1;
    outlined init with copy of IDSLookupManager(v394, &v388);
    v214 = v346;
    swift_beginAccess();
    v215 = *(v212 + v214);
    v356 = v201;
    v216 = _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v356, &v388, v215, 0);
    v217 = v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v217 = v216;
    *(v217 + 8) = v218;
    *(v217 + 16) = v219;
    *(v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v351;
    v220 = (v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v220 = a9;
    v220[1] = &protocol witness table for Defaults;
    outlined init with copy of IDSLookupManager(v394, &v388);
    v221 = objc_opt_self();

    *&v367 = v221;
    v222 = [v221 defaultCenter];
    v223 = objc_allocWithZone(type metadata accessor for VideoMessageController(0));
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v212 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v224;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v349 = a9;
    if (v386)
    {
      outlined init with take of TapInteractionHandler(&v384, &v388);
    }

    else
    {
      v390 = &type metadata for SingleDisplaySharingSession;
      v391 = &protocol witness table for SingleDisplaySharingSession;
      v225 = swift_allocObject();
      *&v388 = v225;
      v225[1] = 0u;
      v225[2] = 0u;
      v225[3] = 0u;
      v225[4] = 0u;
      v225[5] = 0u;
      v225[6] = 0u;
    }

    LODWORD(v142) = v354;
    swift_beginAccess();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
    swift_beginAccess();
    v226 = 0;
    if (*(v217 + 16) < 0 && v142 == 1)
    {
      v227 = v395;
      v228 = v396;
      __swift_project_boxed_opaque_existential_1(v394, v395);
      v229 = (v228[10])(v227, v228);
      v226 = [v229 isPreviewRunning];
    }

    v230 = v364;
    *(v364 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v226;
    v383.receiver = v230;
    v383.super_class = ObjectType;
    v231 = objc_msgSendSuper2(&v383, sel_init);
    v232 = *&v231[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ConversationController and conformance ConversationController, type metadata accessor for ConversationController);
    v233 = v231;
    v234 = v232;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v235 = v395;
    v236 = v396;
    __swift_project_boxed_opaque_existential_1(v394, v395);
    (v236[13])(&v384, v356, v202, v235, v236);
    if (v386)
    {
      outlined init with take of TapInteractionHandler(&v384, &v388);
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v388);
    }

    else
    {
      outlined destroy of CallControlsService?(&v384, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v237 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v238 = &v233[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    swift_beginAccess();
    v239 = *v238;
    v240 = v238[1];
    *v238 = partial apply for closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:);
    v238[1] = v237;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v239, v240);

    if ((v142 - 1) <= 1)
    {
      v241 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(&v233[v241], &v388);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd, &_s15ConversationKit31ParticipantMediaProviderCreator_pMR);
      if (swift_dynamicCast())
      {
        v382 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v381, &v380);
        swift_unknownObjectWeakAssign();
        v390 = &type metadata for DefaultParticipantMediaProviderCreator;
        v391 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        *&v388 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v380, v388 + 16);
        swift_beginAccess();
        __swift_destroy_boxed_opaque_existential_1(&v233[v241]);
        outlined init with take of TapInteractionHandler(&v388, &v233[v241]);
        swift_endAccess();
      }

      else
      {
        v381 = 0;
        v382 = 1;
        outlined destroy of CallControlsService?(&v381, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMR);
      }
    }

    v242 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(&v233[v242], &v388);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd, &_s15ConversationKit34ParticipantCaptionsProviderCreator_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v380, v379);
      v379[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v390 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v391 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      *&v388 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v379, v388 + 16);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(&v233[v242]);
      outlined init with take of TapInteractionHandler(&v388, &v233[v242]);
      swift_endAccess();
    }

    else
    {
      v380 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v380, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMR);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v243 = &v233[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    v244 = *v243;
    v245 = *(v243 + 8);
    v368 = v243;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v244, v245, *(v243 + 16), 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v388, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v246 = &v233[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v247 = *(v246 + 24);
    v248 = *(v246 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v246, v247);
    v249 = *(v248 + 56);
    v250 = v233;
    v249(v231, &protocol witness table for ConversationController, v247, v248);
    swift_endAccess();
    v251 = *(**&v250[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 176);
    v168 = v250;

    v251(v231, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    v252 = [v356 screenShareAttributes];
    ConversationController.updateScreenSharingSession(with:)(v252);

    LOBYTE(v246) = ConversationController.updateIsUsingIPadExternalCamera()();
    v253 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    *(v168 + v253) = v246 & 1;
    v166 = [v367 defaultCenter];
    v174 = &off_1E7FE9000;
    [v166 addObserver:v168 selector:sel_handleLocalVideoPreviewFirstFrameArrived_ name:*MEMORY[0x1E69D90D8] object:0];

    [v166 addObserver:v168 selector:sel_handleLocalVideoAttributesChanged_ name:*MEMORY[0x1E69D90C8] object:0];
    [v166 addObserver:v168 selector:sel_handleSendingVideoChanged_ name:*MEMORY[0x1E69D8E98] object:0];
    [v166 addObserver:v168 selector:sel_handleAudioUplinkChange_ name:*MEMORY[0x1E69D8EB0] object:0];
    [v166 addObserver:v168 selector:sel_handleCallSharePlayCapabilityDidChange_ name:*MEMORY[0x1E69D8EA0] object:0];
    [v166 addObserver:v168 selector:sel_handleAnyRemoteSupportsRequestToScreenShareDidChange_ name:*MEMORY[0x1E69D8DE0] object:0];
    if (v142 == 1)
    {
      [v166 addObserver:v168 selector:sel_handleCameraZoomBecameAvailable_ name:*MEMORY[0x1E69D90F0] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraZoomBecameUnavailable_ name:*MEMORY[0x1E69D90F8] object:0];
      [v166 addObserver:v168 selector:sel_handlelocalCameraUIDDidChange_ name:*MEMORY[0x1E69D9078] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraCinematicFramingAvailabilityChanged_ name:*MEMORY[0x1E69D9058] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraCinematicFramingEnabledChanged_ name:*MEMORY[0x1E69D9060] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraReactionEffectsEnabledChanged_ name:*MEMORY[0x1E69D90D0] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraStudioLightEnabledChanged_ name:*MEMORY[0x1E69D90E0] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraBlurEnabledChanged_ name:*MEMORY[0x1E69D9050] object:0];
      [v166 addObserver:v168 selector:sel_handleCameraListDidChange_ name:*MEMORY[0x1E69D9098] object:0];
      [v166 addObserver:v168 selector:sel_handleSystemPreferredCameraChanged_ name:*MEMORY[0x1E69D90E8] object:0];
    }

    [v166 addObserver:v168 selector:sel_handleScreenSharingDidChange_ name:*MEMORY[0x1E69D8EA8] object:0];
    [v166 addObserver:v168 selector:sel_handleVideoCallStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];
    [v166 addObserver:v168 selector:sel_handleCallStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];
    [v166 addObserver:v168 selector:sel_handleCallConnected_ name:*MEMORY[0x1E69D8DF0] object:0];
    [v166 addObserver:v168 selector:sel_handleCallStartedConnecting_ name:*MEMORY[0x1E69D8E00] object:0];
    if (!v142)
    {
      [v166 addObserver:v168 selector:sel_handleBluetoothAudioFormatChanged_ name:*MEMORY[0x1E69D8DE8] object:0];
    }

    [v166 addObserver:v168 selector:sel_handleCallConversationChanged_ name:*MEMORY[0x1E69D8E68] object:0];
    [v166 addObserver:v168 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9088] object:0];
    [v166 addObserver:v168 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9080] object:0];
    [v166 addObserver:v168 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9090] object:0];
    if (Features.nudityDetectionEnabled.getter())
    {
      v254 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC509370);
      [v166 addObserver:v168 selector:sel_handleLocalSensitiveContentAnalysisChanged_ name:v254 object:0];
    }

    [v166 addObserver:v168 selector:sel_handleHoldMusicDidChange_ name:*MEMORY[0x1E69D8E18] object:0];
    [v166 addObserver:v168 selector:sel_handleScreenSharingAttributesChanged_ name:*MEMORY[0x1E69D8ED8] object:0];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_75;
    }

    v175 = sel_handleWindowDidFinishResize_;
    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_104;
    }

LABEL_74:
    [v166 *(v174 + 3712)];
    v255 = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC509350);
    [v166 *(v174 + 3712)];

LABEL_75:
    LODWORD(v367) = v142;
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    [v166 *(v174 + 3712)];
    v256 = *MEMORY[0x1E69D8D68];
    v257 = *(v174 + 3712);
    v348 = v166;
    [v166 v257];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v258 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v259 = swift_allocObject();
    *(v259 + 16) = xmmword_1BC4BB990;
    swift_beginAccess();
    v354 = v168;
    v260 = v344;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    specialized >> prefix<A>(_:)(v260, v261, v262, v263, v264, v265, v266, v267, v337, v338, v339, v340, v341, ObjectType, v343, v344, v345, v346);
    v269 = v268;
    v271 = v270;
    v272 = v260;
    v273 = v354;
    outlined destroy of CallControlsService?(v272, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v274 = MEMORY[0x1E69E6158];
    *(v259 + 56) = MEMORY[0x1E69E6158];
    v275 = lazy protocol witness table accessor for type String and conformance String();
    *(v259 + 64) = v275;
    *(v259 + 32) = v269;
    *(v259 + 40) = v271;
    v276 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    *&v388 = *(v273 + v276);
    type metadata accessor for TUConversationState(0);
    v277 = String.init<A>(reflecting:)();
    *(v259 + 96) = v274;
    *(v259 + 104) = v275;
    *(v259 + 72) = v277;
    *(v259 + 80) = v278;
    v279 = *(v368 + 16);
    v388 = *v368;
    v389 = v279;
    v280 = String.init<A>(reflecting:)();
    *(v259 + 136) = v274;
    *(v259 + 144) = v275;
    *(v259 + 112) = v280;
    *(v259 + 120) = v281;
    LOBYTE(v388) = v367;
    v282 = String.init<A>(reflecting:)();
    *(v259 + 176) = v274;
    *(v259 + 184) = v275;
    v346 = v275;
    *(v259 + 152) = v282;
    *(v259 + 160) = v283;
    v284 = static os_log_type_t.default.getter();
    v347 = v258;
    os_log(_:dso:log:type:_:)("Created ConversationController conversationUUID=%@ state=%@ broadcastingState=%@ mode=%@", 88, 2, &dword_1BBC58000, v258, v284, v259);

    v285 = swift_allocObject();
    v367 = xmmword_1BC4BA940;
    v345 = v285;
    *(v285 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v286 = (*(v343 + 80) + 32) & ~*(v343 + 80);
    v368 = *(v343 + 72);
    v287 = swift_allocObject();
    *(v287 + 16) = v367;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_8();
    swift_beginAccess();
    *&v388 = v287;

    specialized Array.append<A>(contentsOf:)(v288);
    v289 = v388;
    v290 = *(v388 + 16);
    if (!v290)
    {

      v294 = MEMORY[0x1E69E7CC0];
LABEL_92:
      *&v388 = v294;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v324 = BidirectionalCollection<>.joined(separator:)();
      v326 = v325;

      *&v388 = v324;
      *(&v388 + 1) = v326;
      v327 = MEMORY[0x1E69E6158];
      v328 = String.init<A>(reflecting:)();
      v330 = v345;
      v329 = v346;
      v345[7] = v327;
      v330[8] = v329;
      v330[4] = v328;
      v330[5] = v331;
      v332 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Initial participant identifiers: %@", 35, 2, &dword_1BBC58000, v347, v332, v330);

      ConversationController.fetchExistingScreenSharingAttributes()();
      if (*(v273 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) == 1)
      {
        v333 = v395;
        v334 = v396;
        __swift_project_boxed_opaque_existential_1(v394, v395);
        v335 = (v334[10])(v333, v334);
        [v335 startPreview];

        outlined destroy of CallControlsService?(v352, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
      }

      else
      {
        outlined destroy of CallControlsService?(v352, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
      }

      v336 = v357;
      __swift_destroy_boxed_opaque_existential_1(v392);
      __swift_destroy_boxed_opaque_existential_1(v393);
      (*(v353 + 8))(v336, v355);
      __swift_destroy_boxed_opaque_existential_1(v394);
      return v273;
    }

    v378 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v291 = 0;
    v292 = *(v289 + 2);
    v366 = v289;
    *&v367 = v292;
    v293 = &v289[v286];
    v294 = v378;
    v295 = (v350 + 16);
    v358 = (v350 + 8);
    v364 = v350 + 16;
    v365 = v290;
    v142 = &_s10Foundation4UUIDVSgMR;
    while (v367 != v291)
    {
      if (v291 >= *(v289 + 2))
      {
        goto LABEL_98;
      }

      v296 = v371;
      _s15ConversationKit11ParticipantVWOcTm_8();
      v297 = v374;
      *v374 = v291;
      v298 = v297 + *(v296 + 48);
      outlined init with take of Collaboration();
      *&v388 = v291;
      v376 = dispatch thunk of CustomStringConvertible.description.getter();
      v377 = v299;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v300 = *v295;
      v302 = v372;
      v301 = v373;
      (*v295)(v373, &v298[*(v375 + 20)], v372);
      __swift_storeEnumTagSinglePayload(v301, 0, 1, v302);
      v303 = v369;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (__swift_getEnumTagSinglePayload(v303, 1, v302) == 1)
      {
        outlined destroy of CallControlsService?(v303, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v304 = 0xE300000000000000;
        v305 = 7104878;
      }

      else
      {
        v363 = v294;
        v306 = v361;
        (v359)(v361, v303, v302);
        v300(v362, v306, v302);
        v305 = String.init<A>(reflecting:)();
        v307 = v302;
        v304 = v308;
        v309 = v306;
        v294 = v363;
        (*v358)(v309, v307);
      }

      outlined destroy of CallControlsService?(v373, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      MEMORY[0x1BFB20B10](v305, v304);

      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      v310 = &v298[*(v375 + 28)];
      v311 = *v310;
      if (*v310)
      {
        v313 = *(v310 + 3);
        v312 = *(v310 + 4);
        v314 = *(v310 + 4);
        v315 = *(v310 + 1);
        *&v388 = v311;
        *(&v388 + 1) = v315;
        v389 = v314 & 1;
        v390 = v313;
        v391 = v312;

        v316 = v311;
        v317 = String.init<A>(reflecting:)();
        v319 = v318;
      }

      else
      {
        v319 = 0xE300000000000000;
        v317 = 7104878;
      }

      MEMORY[0x1BFB20B10](v317, v319);

      v320 = v376;
      v321 = v377;
      outlined destroy of CallControlsService?(v374, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v378 = v294;
      v322 = *(v294 + 16);
      if (v322 >= *(v294 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v294 = v378;
      }

      *(v294 + 16) = v322 + 1;
      v323 = v294 + 16 * v322;
      *(v323 + 32) = v320;
      *(v323 + 40) = v321;
      ++v291;
      v293 += v368;
      v289 = v366;
      v295 = v364;
      if (v365 == v291)
      {

        v273 = v354;
        goto LABEL_92;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

  v174 = v173;
  v387 = MEMORY[0x1E69E7CC0];
  v175 = &v387;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v384 = specialized Set.startIndex.getter();
  *(&v384 + 1) = v176;
  v385 = v177 & 1;
  if (v174 < 0)
  {
    __break(1u);
LABEL_104:
    swift_once();
    goto LABEL_74;
  }

  v178 = 0;
  v368 = v172 & 0xC000000000000001;
  if (v172 < 0)
  {
    v179 = v172;
  }

  else
  {
    v179 = v172 & 0xFFFFFFFFFFFFFF8;
  }

  v366 = (v172 + 56);
  *&v367 = v179;
  v358 = (v172 + 64);
  while (1)
  {
    v180 = __OFADD__(v178, 1);
    v178 = (v178 + 1);
    if (v180)
    {
      __break(1u);
      goto LABEL_97;
    }

    v181 = v384;
    v182 = v385;
    specialized Set.subscript.getter(v384, *(&v384 + 1), v385, v172);
    v142 = v183;
    v184 = TUNormalizedHandleForTUHandle();
    if (v184)
    {
      v185 = v184;

      v142 = v185;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v368)
    {
      break;
    }

    if (v182)
    {
      goto LABEL_106;
    }

    if ((v181 & 0x8000000000000000) != 0)
    {
      goto LABEL_99;
    }

    v187 = 1 << *(v172 + 32);
    if (v181 >= v187)
    {
      goto LABEL_99;
    }

    v188 = v181 >> 6;
    v189 = *&v366[8 * (v181 >> 6)];
    if (((v189 >> v181) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (*(v172 + 36) != DWORD2(v181))
    {
      goto LABEL_101;
    }

    v190 = v189 & (-2 << (v181 & 0x3F));
    if (v190)
    {
      v187 = __clz(__rbit64(v190)) | v181 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v192 = v188 << 6;
      v193 = v188 + 1;
      v194 = &v358[v188];
      while (v193 < (v187 + 63) >> 6)
      {
        v196 = *v194++;
        v195 = v196;
        v192 += 64;
        ++v193;
        if (v196)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, *(&v181 + 1), 0);
          v187 = __clz(__rbit64(v195)) + v192;
          goto LABEL_39;
        }
      }

      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, *(&v181 + 1), 0);
    }

LABEL_39:
    v197 = *(v172 + 36);
    *&v384 = v187;
    *(&v384 + 1) = v197;
    v385 = 0;
LABEL_40:
    if (v178 == v174)
    {

      v198 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v384, *(&v384 + 1), v385);
      v199 = v387;
      goto LABEL_43;
    }
  }

  if (v182)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
    v191 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v191(&v388, 0);
    goto LABEL_40;
  }

  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

void *specialized ConversationControlsManager.__allocating_init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(void *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a5;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  (*(v15 + 16))(v17, a2, a9);
  v19 = specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(a1, v17, a3, a10, a4, v22, v18, a9, a11);
  (*(v15 + 8))(a2, a9);
  return v19;
}

uint64_t partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ConversationControlsManager.updateForegroundCollaborationState()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #2 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2(1);
    }
  }

  return result;
}

void partial apply for closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)()
{
  v1 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + v5);
  v7 = v0[4];

  closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(v3, v4, v7, v0 + v2, v6);
}

uint64_t partial apply for closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(uint64_t a1)
{
  v3 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();

  return closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(a1, v14, v13, v7, v8, v9, v1 + v5, v10);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(v5, v6, v7, v0, v8);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  OUTLINED_FUNCTION_369();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(v5, v6, v7, v0, v8);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.rejectCallButtonTapped()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.rejectCallButtonTapped()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.acceptPodcastRecording()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ConversationControlsManager.acceptPodcastRecording()(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.declinePodcastRecording()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.declinePodcastRecording()(v3, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ControlsHUDUpdate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 41);
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

uint64_t storeEnumTagSinglePayload for ControlsHUDUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for ConversationControlsManager(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<TURoute?>, &_sSo7TURouteCSgMd);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<TUCallBluetoothAudioFormat?>, &_sSo26TUCallBluetoothAudioFormatVSgMd);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<ControlsActionState>, &type metadata for ControlsActionState);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<PushToTalkChannelState>, MEMORY[0x1E6995F48], MEMORY[0x1E695C070]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<TUCallTransmissionMode>, type metadata accessor for TUCallTransmissionMode, MEMORY[0x1E695C070]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<ForegroundApp?>, &_s15ConversationKit13ForegroundAppCSgMd);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Cache<String, [ConversationControlsManager.CollaborationPrompt]>(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ForegroundCollaborationState(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<EphemeralAlert?>, &_s15ConversationKit14EphemeralAlertVSgMd);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<ConversationControlsSecondaryPillButtonType>, type metadata accessor for ConversationControlsSecondaryPillButtonType, MEMORY[0x1E695C070]);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<PushToTalkChannelState>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_108_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for Cache<String, [ConversationControlsManager.CollaborationPrompt]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Cache<String, [ConversationControlsManager.CollaborationPrompt]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd, &_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMR);
    v1 = type metadata accessor for Cache();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Cache<String, [ConversationControlsManager.CollaborationPrompt]>);
    }
  }
}

void type metadata accessor for Published<TURoute?>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_314(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_170();
    v6 = type metadata accessor for Published();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata completion function for ConduitLagunaNoticeManager(uint64_t a1)
{
  type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for ConduitLagunaNoticeManager.PushBannerInfo?, type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata completion function for ConduitLagunaNoticeManager.PushBannerInfo(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUNearbySuggestion, 0x1E69D8C88);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationControlsManager.CollaborationPrompt(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConversationControlsManager.CollaborationPrompt(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for ConversationControlsManager.CollaborationPrompt(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ConversationControlsManager.CollaborationPrompt(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt()
{
  result = lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt;
  if (!lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt);
  }

  return result;
}

uint64_t outlined assign with copy of ConduitLagunaNoticeManager.PushBannerInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TranscriptionViewModel.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(int a1, void *a2)
{
  v5 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_9_0(v5);
  OUTLINED_FUNCTION_11_7();
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(a1, a2, v2 + v6, v8, v9);
}

void *partial apply for closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)()
{
  v1 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v6 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(v3, v0 + v2, v5, v7, v8);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()(v3, v4, v5, v6);
}

void partial apply for closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  v1 = type metadata accessor for URL();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);

  closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v0 + v2, v5);
}

double outlined consume of SessionActionNotice.NoticeType?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 2 != 0xFFFFFFFF)
  {
    return outlined consume of SessionActionNotice.NoticeType(a1, a2, a3);
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v4, v5, v6);
}

void partial apply for closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  v1 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v4);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v0 + 16);
  v9 = (v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)));

  return closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(v8, v0 + v3, v9);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(v3, v4, v5, v6);
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(v3, v4, v5, v6);
}

uint64_t objectdestroy_118Tm(void (*a1)(void))
{
  if (*(v1 + 16))
  {
  }

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in ConversationControlsManager.presentActivity(activity:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(*(v0 + 32) == 0);
  }
}

uint64_t partial apply for closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)()
{
  OUTLINED_FUNCTION_44();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(v7, v8, v9, v1, v2, v3);
}

void partial apply for closure #1 in ConversationControlsManager.presentCollaboration(_:completion:)(char a1)
{
  v3 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_9_0(v3);
  OUTLINED_FUNCTION_11_7();
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v9 = *&v1[v8];

  closure #1 in ConversationControlsManager.presentCollaboration(_:completion:)(a1, v5, v6, v7, &v1[v4], v9);
}

uint64_t objectdestroy_609Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();

  return closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession()();
}

double OUTLINED_FUNCTION_67_7@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

double OUTLINED_FUNCTION_139_1(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_217_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_266()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t OUTLINED_FUNCTION_280_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_286_0(uint64_t result, __n128 a2)
{
  *(result + 120) = v2;
  *(result + 128) = 18;
  *(result + 136) = a2;
  *(result + 152) = a2;
  *(result + 168) = v2;
  return result;
}

double OUTLINED_FUNCTION_303()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_316_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v14 = v12[4];
  a9 = v12[3];
  a10 = v14;
  *(&a10 + 9) = *(v12 + 73);

  return static ConversationControlsType.== infix(_:_:)(va, &a9);
}

uint64_t OUTLINED_FUNCTION_340()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_343(uint64_t a1)
{

  return UUID.init()();
}

uint64_t OUTLINED_FUNCTION_346()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 2080;
  *(v0 + 120) = v2;

  return type metadata accessor for HUDActivity(0);
}

uint64_t OUTLINED_FUNCTION_348()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_350(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_351()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_355()
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_356()
{
  *v2 = v0;
  v2[1] = v1;
}

double OUTLINED_FUNCTION_359()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void OUTLINED_FUNCTION_361(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_365(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v2;
  result[3] = a2;
  result[4] = v3;
  return result;
}

double OUTLINED_FUNCTION_387()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_410(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_412(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_413()
{

  return swift_unknownObjectWeakAssign();
}

uint64_t OUTLINED_FUNCTION_417()
{

  return swift_getObjectType();
}

id static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v7 = objc_opt_self();
  [v6 pointSize];
  v8 = [v7 systemFontOfSize_weight_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v10 = v9;
  if (a3)
  {
    v11 = [v9 scaledFontForFont_];
  }

  else
  {
    v11 = [v9 scaledFontForFont:v8 maximumPointSize:*&a2];
  }

  v12 = v11;

  return v12;
}

UIFont __swiftcall UIFont.withTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = *&a1;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

id ParticipantVideoCameraView.__allocating_init(style:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = a1 & 1;
  v11.receiver = v3;
  v11.super_class = v1;
  return OUTLINED_FUNCTION_0_131(v3, sel_initWithFrame_, v4, v5, v6, v7, v8, v9, v11);
}

id ParticipantVideoCameraView.videoLayer.getter()
{
  v1 = [v0 layer];

  return v1;
}

Swift::Int ParticipantVideoCameraView.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoCameraView.Style(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ParticipantVideoCameraView.Style.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

id ParticipantVideoCameraView.init(style:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = a1 & 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return OUTLINED_FUNCTION_0_131(ObjectType, sel_initWithFrame_, v4, v5, v6, v7, v8, v9, v11);
}

id ParticipantVideoCameraView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ParticipantVideoCameraView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantVideoCameraView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style;
  if (!lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoCameraView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

void ParticipantBorderView.borderWidth.didset()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    [v3 setBorderWidth_];
  }
}

double ParticipantBorderView.borderWidth.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth, a2);
  return *(v2 + v3);
}

uint64_t (*ParticipantBorderView.borderWidth.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.borderWidth.modify;
}

BOOL ParticipantBorderView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_localParticipant) & 1) != 0;
}

void ParticipantBorderView.customCornerRadius.didset()
{
  if (!ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
    if (v1)
    {
      v2 = v1;
      v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
      swift_beginAccess();
      [v2 _setContinuousCornerRadius_];
    }
  }
}

double ParticipantBorderView.customCornerRadius.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius, a2);
  return *(v2 + v3);
}

uint64_t ParticipantBorderView.borderWidth.setter(uint64_t *a1, uint64_t (*a2)(uint64_t), double a3)
{
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v3 + v6) = a3;
  return a2(v7);
}

uint64_t (*ParticipantBorderView.customCornerRadius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.customCornerRadius.modify;
}

uint64_t key path setter for ParticipantBorderView.concentricCornerStyle : ParticipantBorderView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xB8))(v7);
}

void ParticipantBorderView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
    if (v4)
    {
      v5 = v4;
      v6 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
      swift_beginAccess();
      v7 = type metadata accessor for _UICornerMaskingConfiguration();
      (*(*(v7 - 8) + 16))(v3, v0 + v6, v7);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
      UIView.cornerMaskingConfiguration.setter();
    }
  }
}

uint64_t ParticipantBorderView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle, a1);
  type metadata accessor for _UICornerMaskingConfiguration();
  OUTLINED_FUNCTION_7_0();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t ParticipantBorderView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantBorderView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*ParticipantBorderView.concentricCornerStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.concentricCornerStyle.modify;
}

uint64_t ParticipantBorderView.borderWidth.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *ParticipantBorderView.__allocating_init(localParticipant:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return ParticipantBorderView.init(localParticipant:)(v2);
}

char *ParticipantBorderView.init(localParticipant:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  *&v1[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth] = 0x4008000000000000;
  v7 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  *&v1[v7] = (*(*static Defaults.shared + 400))();
  static _UICornerMaskingConfiguration.unspecified.getter();
  v8 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v9 = [objc_opt_self() effectWithStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v2[v8] = v10;
  v2[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_localParticipant] = a1 & 1;
  v11 = type metadata accessor for ParticipantBorderView(0);
  v35.receiver = v2;
  v35.super_class = v11;
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  v16 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v17 = *&v14[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView];
  [v14 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v17 setFrame_];
  [v14 addSubview_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v27 = [v26 layer];
  closure #1 in ParticipantBorderView.init(localParticipant:)(v27, v14);

  v28 = [v13 clearColor];
  [v26 setBackgroundColor_];

  if (ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v29 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
    swift_beginAccess();
    v30 = type metadata accessor for _UICornerMaskingConfiguration();
    OUTLINED_FUNCTION_7_0();
    (*(v31 + 16))(v6, &v14[v29], v30);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v30);
    UIView.cornerMaskingConfiguration.setter();
  }

  else
  {
    v32 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
    swift_beginAccess();
    [v26 _setContinuousCornerRadius_];
  }

  [*&v14[v16] setMaskView_];

  return v14;
}

id closure #1 in ParticipantBorderView.init(localParticipant:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [a1 setBorderColor_];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x78))();

  return [a1 setBorderWidth_];
}

id ParticipantBorderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantBorderView.init(coder:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth) = 0x4008000000000000;
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    a1 = swift_once();
  }

  *(v1 + v3) = (*(*static Defaults.shared + 400))(a1);
  static _UICornerMaskingConfiguration.unspecified.getter();
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v2 + v4) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantBorderView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ParticipantBorderView(0);
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantBorderView._layout()();
}

void ParticipantBorderView._layout()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v1 maskView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

id ParticipantBorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantBorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantBorderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParticipantBorderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantBorderView;
  if (!type metadata singleton initialization cache for ParticipantBorderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantBorderView(uint64_t a1)
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
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

uint64_t Collaboration.title.getter()
{
  if (*(v0 + 56) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 64);

  return v1;
}

uint64_t static StagedCollaboration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for StagedCollaboration(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_42();
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7 == *v8 && v5 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_42();
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = *v12 == *v13 && v10 == v11;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v15 = *(v4 + 36);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (v17)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v18 = v17;
      v19 = v16;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        return static NSObject.== infix(_:_:)() & 1;
      }
    }
  }

  else if (!v17)
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

id UIImage.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  outlined consume of Data._Representation(a1, a2);
  return v6;
}

uint64_t StagedCollaboration.init(foregroundApp:shareableContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 2;
  v6 = type metadata accessor for StagedCollaboration(0);
  UUID.init()();
  *a3 = a1;
  *(a3 + v6[10]) = a2;
  v7 = a1;
  v8 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter([a2 metadata], &selRef_title);
  v9 = (a3 + v6[7]);
  *v9 = v8;
  v9[1] = v10;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x68))();
  v13 = v12;

  v14 = (a3 + v6[8]);
  *v14 = v11;
  v14[1] = v13;
  result = ActivityType.placeholderImage.getter();
  *(a3 + v6[9]) = result;
  return result;
}

uint64_t Collaboration.State.init(highlightState:)(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 3;
  }

  else
  {
    return 0x201u >> (8 * a1);
  }
}

Swift::Int Collaboration.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Collaboration.State.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void *Collaboration.Metadata.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id Collaboration.Metadata.init(localizedApplicationName:title:imageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  if (a6 >> 60 == 15)
  {
    result = 0;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    result = UIImage.__allocating_init(data:)(a5, a6);
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = result;
  return result;
}

uint64_t static Collaboration.Metadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v12 = v11;
      v13 = v10;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

void Collaboration.Metadata.hash(into:)(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v1[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v1[4];
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    OUTLINED_FUNCTION_19_33();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Collaboration.Metadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  Collaboration.Metadata.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.Metadata(uint64_t a1)
{
  Hasher.init(_seed:)();
  Collaboration.Metadata.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Collaboration.highlightURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Collaboration(0) + 44);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void Collaboration.init(highlight:state:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 17) = 2;
  *(a3 + 24) = 0;
  v6 = [a1 collaborationIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = a2;
  SWCollaborationHighlight.applicationRecord.getter();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v12, &selRef_bundleIdentifier);
    v15 = v14;
    v16 = [v12 localizedName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v13 = 0;
    v15 = 0;
  }

  *(a3 + 32) = v13;
  *(a3 + 40) = v15;
  v20 = outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(a1);
  *(a3 + 48) = v17;
  *(a3 + 56) = v19;
  *(a3 + 64) = v20;
  *(a3 + 72) = v21;
  *(a3 + 80) = 0;
  *(a3 + 88) = SWCollaborationHighlight.messagesIdentifier.getter();
  *(a3 + 96) = v22;
  v23 = [a1 URL];
  v24 = type metadata accessor for Collaboration(0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = objc_opt_self();
  v26 = [v25 sharedInstance];
  v27 = [v26 frontmostAudioOrVideoCall];

  if (v27)
  {
    v28 = [v25 sharedInstance];
    v29 = [v28 activeConversationForCall_];

    if (v29)
    {
      v30 = [v25 sharedInstance];
      v31 = [v30 conversationManager];

      v32 = [v31 collaborationManager];
      if (v32)
      {
        v33 = [v32 isCollaborationLocallyInitiatedForConversation_];

        *(a3 + *(v24 + 48)) = v33;
        return;
      }
    }

    else
    {
      v29 = v27;
    }
  }

  *(a3 + *(v24 + 48)) = 0;
}

void SWCollaborationHighlight.applicationRecord.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedManager];
  v7 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = [v6 lsAppRecordForURL_];

  if (v11)
  {
    v12 = v11;
    v13 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v12, &selRef_bundleIdentifier);
    if (v14)
    {
      if (v13 == 0xD00000000000001CLL && v14 == 0x80000001BC509AB0)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      v17 = [objc_opt_self() sharedInstance];
      v18 = [v17 conversationManager];

      v19 = [v1 collaborationIdentifier];
      if (!v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = MEMORY[0x1BFB209B0](v20);
      }

      v21 = [v18 ckBundleIDForCollaborationIdentifier_];

      if (v21)
      {
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = 0;
          v25 = (v22 + 40);
          while (v24 < *(v22 + 16))
          {
            v27 = *(v25 - 1);
            v26 = *v25;
            objc_allocWithZone(MEMORY[0x1E69635F8]);

            if (!@nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v27, v26, 1))
            {
              ++v24;
              v25 += 2;
              if (v23 != v24)
              {
                continue;
              }
            }

            goto LABEL_18;
          }

          __break(1u);
        }

        else
        {
LABEL_18:
        }
      }

      else
      {
      }
    }
  }
}

uint64_t SWCollaborationHighlight.messagesIdentifier.getter()
{
  v1 = [v0 attributions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SLAttribution, 0x1E69D37B0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB22010](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 uniqueIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t Collaboration.subtitle.getter()
{
  if (*(v0 + 56) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 48);

  return v1;
}

void *Collaboration.image.getter()
{
  v1 = *(v0 + 80);
  if (*(v0 + 56) == 1 || v1 == 0)
  {
    return ActivityType.placeholderImage.getter();
  }

  v3 = v1;
  return v1;
}

uint64_t Collaboration.icon.getter()
{
  v1 = 0;
  switch(*(v0 + 17))
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        OUTLINED_FUNCTION_12_54(&one-time initialization token for collaboration);
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        OUTLINED_FUNCTION_6_77(&one-time initialization token for listenTogether);
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        OUTLINED_FUNCTION_4_98(&one-time initialization token for watchTogether);
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        OUTLINED_FUNCTION_7_72(&one-time initialization token for workoutTogether);
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        OUTLINED_FUNCTION_2_114(&one-time initialization token for playTogether);
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        OUTLINED_FUNCTION_8_70(&one-time initialization token for shopTogether);
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        OUTLINED_FUNCTION_3_107(&one-time initialization token for readTogether);
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        OUTLINED_FUNCTION_11_68(&one-time initialization token for exploreTogether);
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        OUTLINED_FUNCTION_10_57(&one-time initialization token for learnTogether);
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        OUTLINED_FUNCTION_5_92(&one-time initialization token for createTogether);
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        OUTLINED_FUNCTION_9_65(&one-time initialization token for other);
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t Collaboration.concatenatedDescription.getter()
{
  if (v0[7] == 1 || v0[9] == 0)
  {
    v2 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_4();
    v3.super.isa = v2;
    v6 = OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC5099F0, v4, v5, v3);
  }

  else
  {
    v6 = v0[8];
  }

  return v6;
}

uint64_t Collaboration.ongoingDescription.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1.super.isa = v0;
  v4 = OUTLINED_FUNCTION_17_0(0xD00000000000002BLL, 0x80000001BC509A10, v2, v3, v1);

  return v4;
}

uint64_t Collaboration.metadataHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationV8MetadataVSgMd, &_s15ConversationKit13CollaborationV8MetadataVSgMR);
  lazy protocol witness table accessor for type Collaboration.Metadata and conformance Collaboration.Metadata();
  return Optional<A>.hashValue.getter();
}

uint64_t protocol witness for Activity.uniqueIdentifier.getter in conformance Collaboration()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for Activity.bundleIdentifier.getter in conformance Collaboration()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StagedCollaboration.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StagedCollaboration(0) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StagedCollaboration.title.getter()
{
  type metadata accessor for StagedCollaboration(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t StagedCollaboration.subtitle.getter()
{
  type metadata accessor for StagedCollaboration(0);

  return OUTLINED_FUNCTION_46();
}

void *StagedCollaboration.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for StagedCollaboration(0) + 36));
  v2 = v1;
  return v1;
}

id StagedCollaboration.shareableContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for StagedCollaboration(0) + 40));

  return v1;
}

uint64_t StagedCollaboration.description.getter()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(80);
  MEMORY[0x1BFB20B10](0xD00000000000002CLL, 0x80000001BC509A40);
  v11 = *v0;
  type metadata accessor for ForegroundApp();
  v2 = v11;
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](0x6974202020200A2CLL, 0xED0000203A656C74);
  v4 = type metadata accessor for StagedCollaboration(0);
  if (*(v0 + *(v4 + 28) + 8))
  {

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1BFB20B10](v5, v7);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC509A70);
  if (*(v0 + *(v4 + 32) + 8))
  {

    v1 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x1BFB20B10](v1, v9);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  return 0;
}

void StagedCollaboration.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for StagedCollaboration(0);
  if (*(v1 + v2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = *(v1 + v2[9]);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = v3;
    OUTLINED_FUNCTION_19_33();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StagedCollaboration(uint64_t a1)
{
  Hasher.init(_seed:)();
  StagedCollaboration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t StagedCollaboration.icon.getter()
{
  v1 = 0;
  switch(*(v0 + 8))
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        OUTLINED_FUNCTION_12_54(&one-time initialization token for collaboration);
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        OUTLINED_FUNCTION_6_77(&one-time initialization token for listenTogether);
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        OUTLINED_FUNCTION_4_98(&one-time initialization token for watchTogether);
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        OUTLINED_FUNCTION_7_72(&one-time initialization token for workoutTogether);
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        OUTLINED_FUNCTION_2_114(&one-time initialization token for playTogether);
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        OUTLINED_FUNCTION_8_70(&one-time initialization token for shopTogether);
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        OUTLINED_FUNCTION_3_107(&one-time initialization token for readTogether);
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        OUTLINED_FUNCTION_11_68(&one-time initialization token for exploreTogether);
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        OUTLINED_FUNCTION_10_57(&one-time initialization token for learnTogether);
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        OUTLINED_FUNCTION_5_92(&one-time initialization token for createTogether);
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        OUTLINED_FUNCTION_9_65(&one-time initialization token for other);
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t StagedCollaboration.concatenatedDescription.getter()
{
  if (!*(v0 + *(type metadata accessor for StagedCollaboration(0) + 28) + 8))
  {
    v1 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_4();
    v2.super.isa = v1;
    OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC509A90, v3, v4, v2);
  }

  return OUTLINED_FUNCTION_46();
}

Swift::Int StagedCollaboration.hashValue.getter()
{
  Hasher.init(_seed:)();
  StagedCollaboration.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Collaboration.collaboration.getter@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  outlined init with copy of Collaboration(v6, a3, a1);
  v8 = a2(0);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v8);
}

uint64_t protocol witness for Activity.title.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t protocol witness for Activity.subtitle.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

void *protocol witness for Activity.image.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of Collaboration.Metadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationV8MetadataVSgMd, &_s15ConversationKit13CollaborationV8MetadataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Metadata and conformance Collaboration.Metadata()
{
  result = lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata;
  if (!lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata;
  if (!lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata);
  }

  return result;
}

uint64_t outlined init with copy of Collaboration(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Collaboration.State and conformance Collaboration.State()
{
  result = lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State;
  if (!lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StagedCollaboration and conformance StagedCollaboration()
{
  result = lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration;
  if (!lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration)
  {
    type metadata accessor for StagedCollaboration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration);
  }

  return result;
}

uint64_t type metadata completion function for Collaboration(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Collaboration.Metadata?);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for URL();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for Collaboration.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Collaboration.Metadata(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for Collaboration.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for StagedCollaboration(uint64_t a1)
{
  type metadata accessor for ForegroundApp();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIImage?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NSObject(319, &lazy cache variable for type metadata for SWShareableContent, 0x1E697B6C0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for UIImage?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIImage?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIImage?);
    }
  }
}

void specialized Array.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    OUTLINED_FUNCTION_22(v7);
    OUTLINED_FUNCTION_30_23();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v6)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = v4(0);
    OUTLINED_FUNCTION_22(v8);
    OUTLINED_FUNCTION_30_23();
    return;
  }

LABEL_10:
  __break(1u);
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, a2, a3);
  *a1 = v6;
}

Swift::String __swiftcall RecentsCollectionViewSection.title()()
{
  object = 0xE000000000000000;
  countAndFlagsBits = 0;
  switch(*v1)
  {
    case 3:
      v4 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE600000000000000;
      goto LABEL_10;
    case 4:
      v11 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE800000000000000;
      goto LABEL_10;
    case 5:
      v10 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE500000000000000;
      goto LABEL_10;
    case 6:
      v13 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_12_55();
      OUTLINED_FUNCTION_5_5();
      v8 = v14 + 14;
      goto LABEL_10;
    case 7:
    case 8:
      v12 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE90000000000006BLL;
      goto LABEL_10;
    case 9:
    case 0xA:
      v17 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xEA00000000006874;
      goto LABEL_10;
    case 0xB:
    case 0xC:
      v15 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_12_55();
      OUTLINED_FUNCTION_5_5();
      v8 = v16 + 7;
      goto LABEL_10;
    case 0xD:
      v9 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
LABEL_10:
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = 0;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v6, v0, v18, *(&v24 - 1));
      countAndFlagsBits = v20._countAndFlagsBits;
      object = v20._object;

      break;
    default:
      break;
  }

  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

ConversationKit::RecentsCollectionViewSection_optional __swiftcall RecentsCollectionViewSection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RecentsCollectionViewSection@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsCollectionViewSection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t RecentsCollectionViewModel.init(with:now:upcomingSectionItemLimit:suggestedContact:)@<X0>(uint64_t a1@<X1>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v7 = v6;

  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  result = (*(v8 + 8))(a1);
  *a3 = v7;
  return result;
}

void static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)()
{
  OUTLINED_FUNCTION_29();
  v202 = v1;
  v215 = v2;
  v217 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v11);
  v12 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v214 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_32_18();
  v207 = type metadata accessor for RecentsCallItemType(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v216 = v20;
  v206 = type metadata accessor for RecentsCallItemStyle();
  OUTLINED_FUNCTION_1();
  v201 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v205 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v208 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  v32 = OUTLINED_FUNCTION_16(v31);
  v209 = type metadata accessor for RecentsCallItem(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  v200 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_32();
  v218 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMd, &_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMR);
  v38 = lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
  v204 = v37;
  v203 = v38;
  v39 = Dictionary.init(dictionaryLiteral:)();
  v225 = v39;
  if (!*(v5 + 16))
  {
    goto LABEL_133;
  }

  v197 = v29;
  v210 = v12;
  v213 = v9;
  v40 = static RecentsCollectionViewSection.callItemCases.getter();
  v41 = v40;
  v42 = *(v40 + 16);
  if (v42)
  {
    v198 = v14;
    v199 = v5;
    v14 = 0;
    v219 = (v40 + 32);
    while (v14 < v41[2])
    {
      v5 = *(v219 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v222 = v39;
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v46 = *(v39 + 16);
      v47 = (v45 & 1) == 0;
      v39 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_145;
      }

      v48 = v44;
      v49 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
      OUTLINED_FUNCTION_34_24();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if ((v49 & 1) != (v51 & 1))
        {
LABEL_160:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }

        v48 = v50;
      }

      v39 = v222;
      if (v49)
      {
        *(*(v222 + 56) + 8 * v48) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *(v222 + 8 * (v48 >> 6) + 64) |= 1 << v48;
        *(*(v39 + 48) + v48) = v5;
        *(*(v39 + 56) + 8 * v48) = MEMORY[0x1E69E7CC0];
        v52 = *(v39 + 16);
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_146;
        }

        *(v39 + 16) = v54;
      }

      if (v42 == ++v14)
      {
        v225 = v39;
        v5 = v199;
        v14 = v198;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
  }

  else
  {
LABEL_15:

    v42 = v210;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  if ((Features.isFaceTimeLaunchPageEnabled.getter() & 1) == 0)
  {
    *&v222 = v5;

    specialized MutableCollection<>.sort(by:)(&v222, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    v202 = 0;
    v103 = v222;
    v104 = *(v222 + 16);
    v105 = static RecentsCollectionViewSection.callItemCases.getter();
    v106 = 0;
    v107 = 0;
    v208 = *(v105 + 16);
    v209 = v105;
    v206 = v105 + 32;
    v219 = (v14 + 8);
    v205 = v103 + 32;
    v108 = v215;
    v216 = v104;
    v207 = v103;
    while (1)
    {
      if (v107 == v208)
      {
LABEL_113:

        v152 = static RecentsCollectionViewSection.callItemCases.getter();
        v153 = *(v152 + 16);
        if (v153)
        {
          v154 = v225;
          v155 = 32;
          do
          {
            if (v154[2])
            {
              v156 = *(v152 + v155);
              v157 = specialized __RawDictionaryStorage.find<A>(_:)(v156);
              if ((v158 & 1) != 0 && !*(*(v154[7] + 8 * v157) + 16))
              {
                v159 = specialized __RawDictionaryStorage.find<A>(_:)(v156);
                if (v160)
                {
                  v161 = v159;
                  v162 = swift_isUniquelyReferenced_nonNull_native();
                  *&v222 = v154;
                  v163 = v154[3];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
                  OUTLINED_FUNCTION_34_24();
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v162, v163);
                  v154 = v222;

                  OUTLINED_FUNCTION_42_19(v161);
                }
              }
            }

            ++v155;
            --v153;
          }

          while (v153);
        }

        goto LABEL_132;
      }

      if (v107 >= *(v209 + 16))
      {
        goto LABEL_148;
      }

      if (v104 < v106)
      {
        goto LABEL_149;
      }

      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_150;
      }

      v109 = *(v103 + 16);
      if (v109 < v106 || v109 < v104)
      {
        goto LABEL_151;
      }

      if (v104 <= v106)
      {
        goto LABEL_113;
      }

      LODWORD(v5) = *(v206 + v107);
      v211 = v107 + 1;

      v39 = v205 + 40 * v106;
      LODWORD(v218) = v5;
      while (1)
      {
        outlined init with copy of IDSLookupManager(v39, &v222);
        LOBYTE(v220[0]) = v5;
        static Calendar.current.getter();
        static RecentsCollectionViewModel.section(_:includes:now:calendar:)();
        v112 = v111;
        v14 = *v219;
        (*v219)(v0, v42);
        if ((v112 & 1) != 0 && v5 == 4)
        {
          OUTLINED_FUNCTION_28_32();
          specialized Dictionary.subscript.modify();
          OUTLINED_FUNCTION_29_23();
          if (v114)
          {
            v115 = v113;
            outlined init with copy of IDSLookupManager(&v222, v220);
            v116 = *v115;
            v117 = *(*v115 + 16);
            v118 = swift_isUniquelyReferenced_nonNull_native();
            *v115 = v116;
            if (!v118 || v117 >= v116[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v116 = v119;
              *v115 = v119;
            }

            v104 = v216;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
            swift_arrayDestroy();
            v120 = v116[2];
            memmove(v116 + 9, v116 + 4, 40 * v120);
            v116[2] = v120 + 1;
            outlined init with copy of IDSLookupManager(v220, (v116 + 4));
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v220, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMd, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMR);
          }

          goto LABEL_83;
        }

        v122 = v223;
        v123 = v224;
        __swift_project_boxed_opaque_existential_1(&v222, v223);
        (v123[5])(v220, v122, v123);
        if (LOBYTE(v220[0]) != 15)
        {
          if (LOBYTE(v220[0]) != 4)
          {
            OUTLINED_FUNCTION_28_32();
            specialized Dictionary.subscript.modify();
            OUTLINED_FUNCTION_29_23();
            if (v130)
            {
              goto LABEL_100;
            }

            goto LABEL_106;
          }

          if (v108 >= 1)
          {
            OUTLINED_FUNCTION_28_32();
            specialized Dictionary.subscript.modify();
            OUTLINED_FUNCTION_29_23();
            v104 = v216;
            if (v125)
            {
              v126 = v124;
              --v108;
              goto LABEL_101;
            }

            v149 = OUTLINED_FUNCTION_16_46();
            (v112)(v149);
            --v108;
            goto LABEL_107;
          }
        }

        if ((v112 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_28_32();
        v5 = v218;
        specialized Dictionary.subscript.modify();
        OUTLINED_FUNCTION_29_23();
        if (v128)
        {
          goto LABEL_100;
        }

        v129 = OUTLINED_FUNCTION_16_46();
        (v112)(v129);
        v104 = v216;
LABEL_108:
        ++v106;
        __swift_destroy_boxed_opaque_existential_1(&v222);
        v39 += 40;
        if (v104 == v106)
        {
          v103 = v207;

          v106 = v104;
          goto LABEL_111;
        }
      }

      v215 = v108;
      static Calendar.current.getter();
      v131 = v224;
      __swift_project_boxed_opaque_existential_1(&v222, v223);
      v132 = v213;
      v133 = OUTLINED_FUNCTION_28_0();
      v134(v133, v131);
      v135 = type metadata accessor for Date();
      OUTLINED_FUNCTION_57(v132);
      if (v97)
      {
        v136 = v223;
        v137 = v224;
        __swift_project_boxed_opaque_existential_1(&v222, v223);
        OUTLINED_FUNCTION_132_0();
        v138(v136, v137);
        v139 = v42;
        v42 = v210;
        OUTLINED_FUNCTION_57(v132);
        v104 = v216;
        if (!v97)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }
      }

      else
      {
        v139 = v212;
        (*(*(v135 - 8) + 32))(v212, v132, v135);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v135);
        v104 = v216;
      }

      __swift_getEnumTagSinglePayload(v139, 1, v135);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v5 = v224;
      __swift_project_boxed_opaque_existential_1(&v222, v223);
      v143 = OUTLINED_FUNCTION_28_0();
      v112 = v144(v143, v5);
      (v14)(v214, v42);
      v108 = v215;
      if (v112)
      {
        OUTLINED_FUNCTION_28_32();
        specialized Dictionary.subscript.modify();
        OUTLINED_FUNCTION_29_23();
        if (v145)
        {
LABEL_100:
          v126 = v127;
LABEL_101:
          outlined init with copy of IDSLookupManager(&v222, v220);
          v146 = *v126;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *v126 = v146;
          if ((v147 & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v146 = v150;
            *v126 = v150;
          }

          v14 = *(v146 + 16);
          if (v14 >= *(v146 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v146 = v151;
            *v126 = v151;
          }

          *(v146 + 16) = v14 + 1;
          outlined init with take of ImageName(v220, v146 + 40 * v14 + 32);
LABEL_106:
          v148 = OUTLINED_FUNCTION_16_46();
          (v112)(v148);
          v104 = v216;
LABEL_107:
          v5 = v218;
          goto LABEL_108;
        }

LABEL_83:
        v121 = OUTLINED_FUNCTION_16_46();
        (v112)(v121);
        goto LABEL_107;
      }

      v103 = v207;

      __swift_destroy_boxed_opaque_existential_1(&v222);
LABEL_111:
      v107 = v211;
    }
  }

  *&v222 = v5;

  specialized MutableCollection<>.sort(by:)(&v222, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v42 = v222;

  swift_isUniquelyReferenced_nonNull_native();
  *&v222 = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v55 = v222;
  v225 = v222;
  v56 = static RecentsCollectionViewSection.callItemCases.getter();
  v41 = v56;
  v57 = *(v56 + 16);
  v212 = v42;
  if (v57)
  {
    v39 = 0;
    v42 = (v56 + 32);
    do
    {
      if (v39 >= v41[2])
      {
        goto LABEL_147;
      }

      v5 = *(v42 + v39);
      if (v5 != 4)
      {
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&v222 = v55;
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        v61 = v55[2];
        v62 = (v60 & 1) == 0;
        v0 = (v61 + v62);
        if (__OFADD__(v61, v62))
        {
          goto LABEL_153;
        }

        v63 = v59;
        v14 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
        OUTLINED_FUNCTION_34_24();
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v0))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
          if ((v14 & 1) != (v65 & 1))
          {
            goto LABEL_160;
          }

          v63 = v64;
        }

        v55 = v222;
        if (v14)
        {
          *(*(v222 + 56) + 8 * v63) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          *(v222 + 8 * (v63 >> 6) + 64) |= 1 << v63;
          *(v55[6] + v63) = v5;
          *(v55[7] + 8 * v63) = MEMORY[0x1E69E7CC0];
          v66 = v55[2];
          v53 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v53)
          {
            goto LABEL_154;
          }

          v55[2] = v67;
        }
      }

      ++v39;
    }

    while (v57 != v39);
    v225 = v55;
    OUTLINED_FUNCTION_132_0();
  }

  if (!v202)
  {
    goto LABEL_123;
  }

  v219 = v42[2];
  if (!v219)
  {
    goto LABEL_123;
  }

  LODWORD(v199) = *MEMORY[0x1E69D8918];
  v68 = v201 + 104;
  LODWORD(v198) = *MEMORY[0x1E69D8928];
  v69 = *MEMORY[0x1E69D8920];
  v215 = (v201 + 8);
  v210 = v202;
  v70 = 0;
  v5 = 72;
  v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
  v217 = v68;
  v71 = v68 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v214 = v71;
  OUTLINED_FUNCTION_9_66();
  while (1)
  {
    if (v70 >= v42[2])
    {
      goto LABEL_152;
    }

    outlined init with copy of IDSLookupManager(v42 + v5 - 40, &v222);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
    v39 = v211;
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v71);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
    OUTLINED_FUNCTION_0_132();
    v75 = v218;
    _s15ConversationKit15RecentsCallItemVWObTm_2(v39, v218, v76);
    OUTLINED_FUNCTION_15_43();
    v77 = v75;
    v78 = v216;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v77, v216, v79);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = v206;
    v213 = v14;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v100 = OUTLINED_FUNCTION_23_35();
        v78(v100, v198, v39);
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v216, v101);
        break;
      case 2:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v216, v87);
        v82 = OUTLINED_FUNCTION_23_35();
        v83 = v199;
        goto LABEL_40;
      default:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v216, v81);
        v82 = OUTLINED_FUNCTION_23_35();
        v83 = v69;
LABEL_40:
        v78(v82, v83, v39);
        break;
    }

    v14 = v205;
    v88 = v69;
    v78(v205, v69, v39);
    v71 = static RecentsCallItemStyle.== infix(_:_:)();
    v89 = v41;
    v41 = *v215;
    v90 = OUTLINED_FUNCTION_20_36();
    (v41)(v90);
    (v41)(v89, v39);
    if ((v71 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_123();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v218, v99);
      OUTLINED_FUNCTION_9_66();
      v69 = v88;
      v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
      goto LABEL_61;
    }

    v71 = *(v218 + *(v209 + 48));
    v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
    if (v71 >> 62)
    {
      if (v71 < 0)
      {
        v41 = *(v218 + *(v209 + 48));
      }

      else
      {
        v41 = (v71 & 0xFFFFFFFFFFFFFF8);
      }

      v69 = v88;
      if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
      {
LABEL_60:
        OUTLINED_FUNCTION_0_123();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v218, v102);
        OUTLINED_FUNCTION_9_66();
        goto LABEL_61;
      }
    }

    else
    {
      v69 = v88;
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_60;
      }
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x1BFB22010](0, v71);
    }

    else
    {
      if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_157:
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v42 = v195;
        goto LABEL_136;
      }

      v91 = *(v71 + 32);
    }

    v71 = v91;
    v92 = [v91 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v93;

    v94 = [v210 identifier];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v96;

    v97 = v14 == v95 && v42 == v41;
    if (v97)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    OUTLINED_FUNCTION_0_123();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v218, v98);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_9_66();
    v69 = v88;
    if (v39)
    {
      goto LABEL_135;
    }

LABEL_61:
    ++v70;
    v5 += 40;
    if (v219 == v70)
    {

      goto LABEL_123;
    }
  }

  OUTLINED_FUNCTION_0_123();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v218, v178);
  OUTLINED_FUNCTION_132_0();
LABEL_135:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_136:
  v179 = v42[2];
  if (v179 <= v70)
  {
    __break(1u);
LABEL_159:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v221 = v196;
LABEL_142:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();

    OUTLINED_FUNCTION_0_123();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v179, v191);
    goto LABEL_123;
  }

  outlined init with take of ImageName((v42 + v5 - 40), &v222);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v42 + v5, ~v70 + v179, v42 + v5 - 40);
  v42[2] = (v179 - 1);
  v180 = v197;
  v181 = v209;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v182, v183, v184, v181);
    OUTLINED_FUNCTION_0_132();
    v185 = v180;
    v179 = v200;
    _s15ConversationKit15RecentsCallItemVWObTm_2(v185, v200, v186);
    RecentsCallItem.hasAudioMessage.getter();
    if ((v187 & 1) == 0)
    {
      RecentsCallItem.hasVideoMessage.getter();
      if ((v188 & 1) == 0)
      {
        *(v179 + *(v181 + 60)) = 1;
      }
    }

    v223 = v181;
    v224 = &protocol witness table for RecentsCallItem;
    __swift_allocate_boxed_opaque_existential_1(&v222);
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v179, v189, v190);
    outlined init with take of ImageName(&v222, v220);
    v221 = v42;
    if (v42[2] < v42[3] >> 1)
    {
      goto LABEL_142;
    }

    goto LABEL_159;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v181);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v180, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
LABEL_123:

  v164 = v225;
  swift_isUniquelyReferenced_nonNull_native();
  *&v222 = v164;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v165 = v222;
  v225 = v222;
  v166 = static RecentsCollectionViewSection.callItemCases.getter();
  v167 = *(v166 + 16);
  if (v167)
  {
    v168 = (v166 + 32);
    do
    {
      v170 = *v168++;
      v169 = v170;
      if (v165[2])
      {
        v171 = specialized __RawDictionaryStorage.find<A>(_:)(v169);
        if ((v172 & 1) != 0 && !*(*(v165[7] + 8 * v171) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v169);
          if (v173)
          {
            v174 = v225;
            v175 = swift_isUniquelyReferenced_nonNull_native();
            *&v222 = v174;
            v176 = v174[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
            OUTLINED_FUNCTION_34_24();
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v175, v176);
            v165 = v222;

            v177 = OUTLINED_FUNCTION_20_36();
            OUTLINED_FUNCTION_42_19(v177);
            v225 = v165;
          }
        }
      }

      --v167;
    }

    while (v167);
  }

LABEL_132:

LABEL_133:
  OUTLINED_FUNCTION_30_0();
}

void RecentsCollectionViewModel.sectionable(for:identifier:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  if (*(v6 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 8 * v9);
    v12 = *(v11 + 16);
    v13 = v11 + 32;

    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        goto LABEL_13;
      }

      if (i >= *(v11 + 16))
      {
        break;
      }

      outlined init with copy of IDSLookupManager(v13, &v20);
      v15 = v21;
      v16 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      if ((*(v16 + 24))(v15, v16) == a2 && v17 == a3)
      {

LABEL_15:

        outlined init with take of ImageName(&v20, a4);
        return;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1(&v20);
      v13 += 40;
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

void RecentsCollectionViewModel.sectionable(with:)()
{
  OUTLINED_FUNCTION_29();
  v75 = v1;
  v81 = v2;
  v74 = v3;
  v79 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v78 = v5;
  v77 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v8 = OUTLINED_FUNCTION_16(v7);
  v84 = type metadata accessor for RecentsCallItemType(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v87 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v85 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v86 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v22 = *v0 + 64;
  OUTLINED_FUNCTION_2_55();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v82 = v28;

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v83 = v15;
  v80 = v21;
  do
  {
    while (1)
    {
      if (v25)
      {
        goto LABEL_7;
      }

      do
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return;
        }

        if (v31 >= v27)
        {
          goto LABEL_18;
        }

        v25 = *(v22 + 8 * v31);
        ++v29;
      }

      while (!v25);
      v29 = v31;
LABEL_7:
      v32 = *(*(v82 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v25)))));
      v33 = *(v32 + 16);
      v34 = v30[2];
      if (__OFADD__(v34, v33))
      {
        goto LABEL_53;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v34 + v33 > v30[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v30 = v35;
      }

      v21 = v80;
      v25 &= v25 - 1;
      v15 = v83;
      if (!*(v32 + 16))
      {
        break;
      }

      if ((v30[3] >> 1) - v30[2] < v33)
      {
        goto LABEL_54;
      }

      v36 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
      v21 = v36;
      v15 = v83;
      swift_arrayInitWithCopy();

      if (v33)
      {
        v37 = v30[2];
        v38 = __OFADD__(v37, v33);
        v39 = v37 + v33;
        if (v38)
        {
          goto LABEL_55;
        }

        v30[2] = v39;
      }
    }
  }

  while (!v33);
  __break(1u);
LABEL_18:

  v40 = v30[2];
  if (v40)
  {
    v41 = (v30 + 4);
    v42 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of IDSLookupManager(v41, v89);
      outlined init with take of ImageName(v89, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
      v43 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v43 ^ 1u, 1, v15);
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v14, v21, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v48;
        }

        v45 = *(v42 + 16);
        if (v45 >= *(v42 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v49;
        }

        *(v42 + 16) = v45 + 1;
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v21, v46, v47);
      }

      v41 += 40;
      --v40;
    }

    while (v40);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v42 + 16);
  v51 = v75;
  if (!v50)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v15);

    goto LABEL_50;
  }

  v52 = 0;
  while (2)
  {
    if (v52 >= *(v42 + 16))
    {
      goto LABEL_52;
    }

    ++v52;
    v53 = v86;
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v54, v53, v55);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v53, v87, v56);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v58 = v78;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v87, v78, type metadata accessor for RecentOngoingConversationMetadata);
        OUTLINED_FUNCTION_26_31(*(v79 + 28));
        v59 = type metadata accessor for RecentOngoingConversationMetadata;
        goto LABEL_38;
      case 2u:
        v30 = *v87;
        goto LABEL_39;
      case 3u:
      case 4u:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v87, v57);
        goto LABEL_44;
      default:
        v58 = v76;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v87, v76, type metadata accessor for RecentCallRecentItemMetadata);
        OUTLINED_FUNCTION_26_31(*(v77 + 44));
        v59 = type metadata accessor for RecentCallRecentItemMetadata;
LABEL_38:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v58, v59);
        if (!v30)
        {
          goto LABEL_44;
        }

LABEL_39:

        v60 = [v30 pseudonym];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v62;

        if (v61 != v81 || v30 != v51)
        {
          OUTLINED_FUNCTION_46();
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v64)
          {
            goto LABEL_48;
          }

LABEL_44:
          OUTLINED_FUNCTION_0_123();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v86, v65);
          if (v50 == v52)
          {

            v66 = v74;
            v67 = 1;
            goto LABEL_49;
          }

          continue;
        }

LABEL_48:

        OUTLINED_FUNCTION_0_132();
        v71 = v74;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v86, v74, v72);
        v66 = v71;
        v67 = 0;
LABEL_49:
        __swift_storeEnumTagSinglePayload(v66, v67, 1, v15);
LABEL_50:
        OUTLINED_FUNCTION_30_0();
        return;
    }
  }
}

void RecentsCollectionViewModel.videoMessageCallItem(withUUID:)()
{
  OUTLINED_FUNCTION_29();
  v45 = v1;
  v47 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v46 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0 + 64;
  OUTLINED_FUNCTION_2_55();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v49 = v18;

  v19 = 0;
  v44 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v50 = v11;
  v48 = v8;
  do
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v17)
          {
            goto LABEL_18;
          }

          v15 = *(v12 + 8 * v21);
          ++v19;
          if (v15)
          {
            v19 = v21;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_7:
      v22 = *(*(v49 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v15)))));
      v23 = *(v22 + 16);
      v24 = *(v20 + 2);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v20 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v25;
      }

      v11 = v50;
      v15 &= v15 - 1;
      if (!*(v22 + 16))
      {
        break;
      }

      if ((*(v20 + 3) >> 1) - *(v20 + 2) < v23)
      {
        goto LABEL_36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
      v11 = v50;
      swift_arrayInitWithCopy();

      if (v23)
      {
        v26 = *(v20 + 2);
        v27 = __OFADD__(v26, v23);
        v28 = v26 + v23;
        if (v27)
        {
          goto LABEL_37;
        }

        *(v20 + 2) = v28;
      }
    }
  }

  while (!v23);
  __break(1u);
LABEL_18:
  v50 = v20;

  v29 = *(v50 + 2);
  if (v29)
  {
    v30 = (v50 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v46;
    do
    {
      outlined init with copy of IDSLookupManager(v30, v52);
      outlined init with take of ImageName(v52, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
      v33 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v6, v33 ^ 1u, 1, v32);
      if (__swift_getEnumTagSinglePayload(v6, 1, v32) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v6, v11, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v31 = v38;
        }

        v35 = *(v31 + 16);
        if (v35 >= *(v31 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v31 = v39;
        }

        *(v31 + 16) = v35 + 1;
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v11, v36, v37);
      }

      v30 += 40;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
    v32 = v46;
  }

  if (*(v31 + 16))
  {
    MEMORY[0x1EEE9AC00](v40);
    *(&v44 - 2) = v45;
    specialized Sequence.first(where:)(partial apply for closure #3 in RecentsCollectionViewModel.videoMessageCallItem(withUUID:), v31, v47);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #3 in RecentsCollectionViewModel.videoMessageCallItem(withUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v20)
  {
    v21 = v20;
    v33 = v10;
    v22 = a2;
    v23 = [v20 messageUUID];

    if (v23)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v24, 1, v3);
    outlined init with take of UUID?(v16, v19);
    a2 = v22;
    v10 = v33;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v3);
  }

  v25 = v35;
  (*(v35 + 16))(v13, a2, v3);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v26 = *(v5 + 48);
  outlined init with copy of UUID?(v19, v7);
  outlined init with copy of UUID?(v13, &v7[v26]);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) != 1)
  {
    outlined init with copy of UUID?(v7, v10);
    if (__swift_getEnumTagSinglePayload(&v7[v26], 1, v3) != 1)
    {
      v28 = &v7[v26];
      v29 = v34;
      (*(v25 + 32))(v34, v28, v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v25 + 8);
      v30(v29, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v30(v10, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v27 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v25 + 8))(v10, v3);
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(&v7[v26], 1, v3) != 1)
  {
LABEL_12:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v27 = 0;
    return v27 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = 1;
  return v27 & 1;
}

uint64_t closure #1 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v41 = (&v34 - v9);
  v40 = type metadata accessor for Date();
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = a1;
  v43 = &v34 - v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v39 = *(v14 + 32);
  v15 = v39(v13, v14) & 1;
  v16 = a2[3];
  v17 = a2[4];
  v35 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  if (v15 != ((*(v17 + 32))(v16, v17) & 1))
  {
    return v39(v13, v14) & 1;
  }

  v19 = v42;
  v20 = v42[3];
  v21 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v20);
  v22 = v41;
  (*(v21 + 8))(v20, v21);
  v23 = v40;
  if (__swift_getEnumTagSinglePayload(v22, 1, v40) != 1)
  {
    v24 = v36;
    v41 = *(v36 + 32);
    v41(v43, v22, v23);
    v25 = v35[3];
    v26 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v25);
    v22 = v37;
    (*(v26 + 8))(v25, v26);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      v31 = v34;
      v41(v34, v22, v23);
      v32 = v43;
      v30 = static Date.> infix(_:_:)();
      v33 = *(v24 + 8);
      v33(v31, v23);
      v33(v32, v23);
      return v30 & 1;
    }

    (*(v24 + 8))(v43, v23);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = v19[3];
  v28 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v27);
  v29 = v38;
  (*(v28 + 8))(v27, v28);
  v30 = __swift_getEnumTagSinglePayload(v29, 1, v23) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v30 & 1;
}

uint64_t closure #2 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(void *a1, void *a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v29 - v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(v17 + 8);
  v34 = v19;
  v35 = v20;
  v20(v18, v17);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v8 = v11;
  }

  else
  {
    v30 = v13;
    v31 = v2;
    v29 = *(v13 + 32);
    v29(v37, v11, v12);
    v22 = v33[3];
    v21 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v22);
    (*(v21 + 8))(v22, v21);
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
    {
      v25 = v32;
      v29(v32, v8, v12);
      v26 = v37;
      v24 = static Date.> infix(_:_:)();
      v27 = *(v30 + 8);
      v27(v25, v12);
      v27(v26, v12);
      return v24 & 1;
    }

    (*(v30 + 8))(v37, v12);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = v36;
  v35(v18, v17);
  v24 = __swift_getEnumTagSinglePayload(v23, 1, v12) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v24 & 1;
}

void closure #1 in static RecentsCollectionViewModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v71 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v63 - v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  if (v15 == (*(v19 + 24))(v18, v19) && v17 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  outlined init with copy of IDSLookupManager(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
  v23 = v71;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v23);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    return;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
  v24 = v70;
  _s15ConversationKit15RecentsCallItemVWObTm_2(v9, v70, type metadata accessor for RecentsCallItem);
  outlined init with copy of IDSLookupManager(a2, v72);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    v32 = v24;
    goto LABEL_64;
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
  v25 = v69;
  _s15ConversationKit15RecentsCallItemVWObTm_2(v6, v69, type metadata accessor for RecentsCallItem);
  v26 = v23[8];
  v27 = (v24 + v26);
  v28 = *(v24 + v26 + 8);
  v29 = (v25 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_63;
    }

    v31 = *v27 == *v29 && v28 == v30;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (v30)
  {
    goto LABEL_63;
  }

  v33 = RecentsCallItem.isRead.getter();
  if (((v33 ^ RecentsCallItem.isRead.getter()) & 1) != 0 || *(v24 + v23[15]) != *(v25 + v23[15]))
  {
    goto LABEL_63;
  }

  v34 = v23[12];
  v35 = *(v24 + v34);
  v36 = *(v25 + v34);
  v37 = specialized Array.count.getter();
  v38 = specialized Array.count.getter();
  v39 = 0;
  v40 = 0;
  v67 = v35 & 0xC000000000000001;
  v68 = v38;
  v64 = v35;
  v65 = v35 + 32;
  v66 = v35 & 0xFFFFFFFFFFFFFF8;
  while (v40 == v37)
  {
    if (v68 == v39)
    {
      goto LABEL_47;
    }

    v41 = 0;
    v40 = v37;
LABEL_33:
    if ((v36 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1BFB22010](v39, v36);
    }

    else
    {
      if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v44 = *(v36 + 8 * v39 + 32);
    }

    v45 = v44;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return;
    }

    if (!v41)
    {
      if (v44)
      {

        goto LABEL_63;
      }

      goto LABEL_47;
    }

    if (!v44)
    {
      goto LABEL_46;
    }

    v46 = [v41 isEqualIgnoringIdentifiers_];

    ++v39;
    if ((v46 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  if (v67)
  {
    v42 = MEMORY[0x1BFB22010](v40, v64);
  }

  else
  {
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if (v40 >= *(v66 + 16))
    {
      goto LABEL_70;
    }

    v42 = *(v65 + 8 * v40);
  }

  v41 = v42;
  if (__OFADD__(v40++, 1))
  {
    goto LABEL_69;
  }

  if (v68 != v39)
  {
    goto LABEL_33;
  }

  if (v42)
  {
LABEL_46:

    goto LABEL_63;
  }

LABEL_47:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(v64, v36);
  if ((v47 & 1) == 0)
  {
    goto LABEL_63;
  }

  v48 = v70;
  v49 = v71;
  v50 = *(v71 + 20);
  v51 = (v70 + v50);
  v52 = *(v70 + v50 + 8);
  v53 = v69;
  v54 = (v69 + v50);
  v55 = v54[1];
  if (v52)
  {
    if (v55)
    {
      v56 = *v51 == *v54 && v52 == v55;
      if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (v55)
    {
      goto LABEL_63;
    }

LABEL_55:
    v57 = *(v49 + 24);
    v58 = (v48 + v57);
    v59 = *(v48 + v57 + 8);
    v60 = (v53 + v57);
    v61 = v60[1];
    if (v59 && v61 && (*v58 != *v60 || v59 != v61))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_63:
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v69, type metadata accessor for RecentsCallItem);
  v32 = v70;
LABEL_64:
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v32, type metadata accessor for RecentsCallItem);
}

unint64_t lazy protocol witness table accessor for type [RecentsCollectionViewSection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit28RecentsCollectionViewSectionOGMd, &_sSay15ConversationKit28RecentsCollectionViewSectionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecentsCollectionViewSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pMR);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

{
  v6 = *(a1 + 8);
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      type metadata accessor for Participant(0);
      OUTLINED_FUNCTION_40_3();
      v12[0] = v10 + v11;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v148 = a4;
  v149 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v170 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v147 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v147 - v18;
  v174 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v174);
  v161 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v147 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v160 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_102;
  }

  v153 = &v147 - v25;
  v164 = v26;
  v28 = 0;
  v171 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v165 = (v24 + 8);
  v166 = v12;
  v173 = v9;
  while (1)
  {
    v30 = v28++;
    v152 = v30;
    if (v28 < v27)
    {
      break;
    }

LABEL_27:
    v64 = v160[1];
    if (v28 >= v64)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v28, v152))
    {
      goto LABEL_134;
    }

    if (v28 - v152 >= v148)
    {
      goto LABEL_35;
    }

    v65 = v152 + v148;
    if (__OFADD__(v152, v148))
    {
      goto LABEL_135;
    }

    if (v65 >= v64)
    {
      v65 = v160[1];
    }

    if (v65 < v152)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v28 == v65)
    {
LABEL_35:
      v66 = v162;
      goto LABEL_36;
    }

    v155 = v29;
    v172 = *v160;
    v112 = v172 + 40 * v28;
    v113 = (v152 - v28);
    v151 = v65;
    do
    {
      v163 = v28;
      v157 = v113;
      v114 = v113;
      v158 = v112;
      do
      {
        v182 = v114;
        outlined init with copy of IDSLookupManager(v112, &v179);
        v175 = (v112 - 40);
        outlined init with copy of IDSLookupManager(v112 - 40, v176);
        v115 = v180;
        v116 = v181;
        v117 = __swift_project_boxed_opaque_existential_1(&v179, v180);
        v118 = *(v116 + 8);
        v118(v115, v116);
        v119 = v174;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v174);
        v121 = v12;
        if (EnumTagSinglePayload == 1)
        {
          goto LABEL_92;
        }

        v168 = v117;
        v169 = v118;
        v122 = v164;
        v167 = *v171;
        v167(v164, v12, v119);
        v123 = v177;
        v124 = v178;
        __swift_project_boxed_opaque_existential_1(v176, v177);
        v125 = v123;
        v126 = v173;
        (*(v124 + 8))(v125, v124);
        if (__swift_getEnumTagSinglePayload(v126, 1, v119) == 1)
        {
          (*v165)(v122, v119);
          v121 = v126;
          v12 = v166;
          v118 = v169;
LABEL_92:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v127 = v12;
          v128 = v170;
          v118(v115, v116);
          v129 = __swift_getEnumTagSinglePayload(v128, 1, v119);
          v130 = v128;
          v12 = v127;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          __swift_destroy_boxed_opaque_existential_1(v176);
          __swift_destroy_boxed_opaque_existential_1(&v179);
          if (v129 == 1)
          {
            break;
          }

          goto LABEL_95;
        }

        v131 = v161;
        v167(v161, v126, v119);
        v132 = static Date.> infix(_:_:)();
        v133 = *v165;
        (*v165)(v131, v119);
        v133(v122, v119);
        __swift_destroy_boxed_opaque_existential_1(v176);
        __swift_destroy_boxed_opaque_existential_1(&v179);
        v12 = v166;
        if ((v132 & 1) == 0)
        {
          break;
        }

LABEL_95:
        v134 = v182;
        if (!v172)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          return;
        }

        outlined init with take of ImageName(v112, &v179);
        v135 = v175;
        v136 = v175[1];
        *v112 = *v175;
        *(v112 + 16) = v136;
        *(v112 + 32) = *(v135 + 32);
        outlined init with take of ImageName(&v179, v135);
        v112 = v135;
        v137 = __CFADD__(v134, 1);
        v114 = v134 + 1;
      }

      while (!v137);
      v28 = v163 + 1;
      v112 = v158 + 40;
      v113 = (v157 - 1);
    }

    while (v163 + 1 != v151);
    v28 = v151;
    v66 = v162;
    v29 = v155;
LABEL_36:
    if (v28 < v152)
    {
      goto LABEL_133;
    }

    v162 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
      v29 = v138;
    }

    v68 = *(v29 + 16);
    v67 = *(v29 + 24);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1, v29);
      v29 = v139;
    }

    *(v29 + 16) = v69;
    v70 = v29 + 32;
    v71 = (v29 + 32 + 16 * v68);
    *v71 = v152;
    v71[1] = v28;
    v182 = *v149;
    if (!v182)
    {
      goto LABEL_143;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        v73 = (v70 + 16 * (v69 - 1));
        v74 = (v29 + 16 * v69);
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v75 = *(v29 + 32);
          v76 = *(v29 + 40);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_56:
          if (v78)
          {
            goto LABEL_120;
          }

          v90 = *v74;
          v89 = v74[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_123;
          }

          v94 = v73[1];
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_128;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v69 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v69 < 2)
        {
          goto LABEL_122;
        }

        v97 = *v74;
        v96 = v74[1];
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_71:
        if (v93)
        {
          goto LABEL_125;
        }

        v99 = *v73;
        v98 = v73[1];
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_127;
        }

        if (v100 < v92)
        {
          goto LABEL_85;
        }

LABEL_78:
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_115:
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
          goto LABEL_136;
        }

        if (!*v160)
        {
          goto LABEL_140;
        }

        v104 = v28;
        v105 = (v70 + 16 * (v72 - 1));
        v106 = *v105;
        v107 = v70 + 16 * v72;
        v108 = *(v107 + 8);
        v109 = v162;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v160 + 40 * *v105), (*v160 + 40 * *v107), (*v160 + 40 * v108), v182);
        if (v109)
        {
          goto LABEL_112;
        }

        if (v108 < v106)
        {
          goto LABEL_115;
        }

        v110 = *(v29 + 16);
        if (v72 > v110)
        {
          goto LABEL_116;
        }

        *v105 = v106;
        v105[1] = v108;
        if (v72 >= v110)
        {
          goto LABEL_117;
        }

        v162 = 0;
        v69 = v110 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v107 + 16), v110 - 1 - v72, (v70 + 16 * v72));
        *(v29 + 16) = v110 - 1;
        v111 = v110 > 2;
        v12 = v166;
        v28 = v104;
        if (!v111)
        {
          goto LABEL_85;
        }
      }

      v79 = v70 + 16 * v69;
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_118;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_119;
      }

      v86 = v74[1];
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_121;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_124;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = v73[1];
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_132;
        }

        if (v77 < v103)
        {
          v72 = v69 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_56;
    }

LABEL_85:
    v27 = v160[1];
    if (v28 >= v27)
    {
LABEL_102:
      v182 = *v149;
      if (v182)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_104;
      }

      goto LABEL_144;
    }
  }

  v31 = *v160;
  outlined init with copy of IDSLookupManager(*v160 + 40 * v28, &v179);
  outlined init with copy of IDSLookupManager(v31 + 40 * v30, v176);
  v32 = v162;
  LODWORD(v172) = closure #2 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(&v179, v176);
  v162 = v32;
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v176);
    __swift_destroy_boxed_opaque_existential_1(&v179);

    return;
  }

  v155 = v29;
  __swift_destroy_boxed_opaque_existential_1(v176);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v157 = 40 * v30;
  v33 = v31 + 40 * v30 + 80;
  v34 = (v30 + 2);
  v169 = v27;
  while (1)
  {
    v35 = v34;
    if (v28 + 1 >= v27)
    {
      break;
    }

    v182 = v34;
    v163 = v28;
    outlined init with copy of IDSLookupManager(v33, &v179);
    v175 = v33;
    outlined init with copy of IDSLookupManager(v33 - 40, v176);
    v29 = v180;
    v36 = v181;
    v37 = __swift_project_boxed_opaque_existential_1(&v179, v180);
    v38 = *(v36 + 8);
    v39 = v159;
    v38(v29, v36);
    v40 = v174;
    if (__swift_getEnumTagSinglePayload(v39, 1, v174) != 1)
    {
      v167 = v37;
      v158 = v36;
      v168 = v38;
      v41 = v153;
      v42 = *v171;
      (*v171)(v153, v159, v40);
      v44 = v177;
      v43 = v178;
      __swift_project_boxed_opaque_existential_1(v176, v177);
      v45 = v44;
      v46 = v154;
      (*(v43 + 8))(v45, v43);
      if (__swift_getEnumTagSinglePayload(v46, 1, v40) != 1)
      {
        v49 = v41;
        v50 = v150;
        v42(v150, v46, v40);
        v48 = static Date.> infix(_:_:)();
        v51 = *v165;
        (*v165)(v50, v40);
        v51(v49, v40);
        goto LABEL_12;
      }

      (*v165)(v41, v40);
      v39 = v46;
      v38 = v168;
      v36 = v158;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v47 = v156;
    v38(v29, v36);
    v48 = __swift_getEnumTagSinglePayload(v47, 1, v40) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v176);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    v52 = v172 ^ v48;
    v33 = v175 + 40;
    v28 = v163 + 1;
    v35 = v182;
    v34 = v182 + 1;
    v12 = v166;
    v27 = v169;
    if (v52)
    {
      goto LABEL_15;
    }
  }

  v28 = v27;
LABEL_15:
  if ((v172 & 1) == 0)
  {
LABEL_26:
    v29 = v155;
    goto LABEL_27;
  }

  v53 = v152;
  if (v28 >= v152)
  {
    if (v152 < v28)
    {
      if (v27 >= v35)
      {
        v54 = v35;
      }

      else
      {
        v54 = v27;
      }

      v55 = 40 * v54 - 40;
      v56 = v28;
      v57 = v157;
      do
      {
        if (v53 != --v56)
        {
          v58 = *v160;
          if (!*v160)
          {
            goto LABEL_142;
          }

          v59 = v58 + v57;
          v60 = v58 + v55;
          v61 = v57;
          outlined init with take of ImageName((v58 + v57), &v179);
          v62 = *(v60 + 32);
          v63 = *(v60 + 16);
          *v59 = *v60;
          *(v59 + 16) = v63;
          *(v59 + 32) = v62;
          outlined init with take of ImageName(&v179, v60);
          v57 = v61;
        }

        ++v53;
        v55 -= 40;
        v57 += 40;
      }

      while (v53 < v56);
    }

    goto LABEL_26;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
LABEL_104:
  v155 = v29;
  v140 = (v29 + 16);
  v141 = *(v29 + 16);
  v142 = v162;
  while (v141 >= 2)
  {
    if (!*v160)
    {
      goto LABEL_141;
    }

    v143 = (v155 + 16 * v141);
    v144 = *v143;
    v145 = &v140[2 * v141];
    v29 = *(v145 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)((*v160 + 40 * *v143), (*v160 + 40 * *v145), (*v160 + 40 * v29), v182);
    if (v142)
    {
      break;
    }

    if (v29 < v144)
    {
      goto LABEL_129;
    }

    if (v141 - 2 >= *v140)
    {
      goto LABEL_130;
    }

    *v143 = v144;
    v143[1] = v29;
    v146 = *v140 - v141;
    if (*v140 < v141)
    {
      goto LABEL_131;
    }

    v141 = *v140 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v145 + 16, v146, v145);
    *v140 = v141;
  }

LABEL_112:
}

{
  v160 = a4;
  v162 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v179 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v159 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v159 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v159 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v159 - v16;
  v17 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v173 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v192 = *v162;
    if (!v192)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_111;
  }

  v163 = &v159 - v25;
  v181 = v23;
  v28 = 0;
  v177 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v176 = (v24 + 8);
  v174 = v26;
  while (1)
  {
    v30 = v28 + 1;
    v167 = v28;
    if (v28 + 1 >= v27)
    {
      goto LABEL_30;
    }

    v31 = v28;
    v32 = *v173;
    v33 = v28 + 1;
    outlined init with copy of IDSLookupManager(*v173 + 40 * (v28 + 1), &v189);
    outlined init with copy of IDSLookupManager(v32 + 40 * v31, v186);
    v34 = v178;
    LODWORD(v184) = closure #1 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(&v189, v186);
    v178 = v34;
    if (v34)
    {
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      goto LABEL_121;
    }

    __swift_destroy_boxed_opaque_existential_1(v186);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    v170 = 40 * v31;
    v35 = v32 + 40 * v31 + 80;
    v36 = (v31 + 2);
    v30 = v33;
    v171 = v29;
    v183 = v27;
    while (1)
    {
      v37 = v36;
      if (v30 + 1 >= v27)
      {
        break;
      }

      v192 = v36;
      v180 = v30;
      outlined init with copy of IDSLookupManager(v35, &v189);
      v185 = v35;
      outlined init with copy of IDSLookupManager(v35 - 40, v186);
      v38 = v190;
      v39 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v40 = *(v39 + 32);
      v41 = v40(v38, v39);
      v42 = v187;
      v43 = v188;
      __swift_project_boxed_opaque_existential_1(v186, v187);
      if ((v41 ^ (*(v43 + 32))(v42, v43)))
      {
        v44 = v40(v38, v39);
        v29 = v171;
        v27 = v183;
      }

      else
      {
        v45 = v190;
        v46 = v191;
        __swift_project_boxed_opaque_existential_1(&v189, v190);
        v47 = v168;
        (*(v46 + 8))(v45, v46);
        v48 = v181;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v181);
        v29 = v171;
        v27 = v183;
        if (EnumTagSinglePayload != 1)
        {
          v50 = *v177;
          v51 = v163;
          (*v177)(v163, v168, v48);
          v52 = v187;
          v53 = v188;
          __swift_project_boxed_opaque_existential_1(v186, v187);
          v54 = v52;
          v55 = v164;
          (*(v53 + 8))(v54, v53);
          if (__swift_getEnumTagSinglePayload(v55, 1, v48) != 1)
          {
            v59 = v161;
            v50(v161, v55, v48);
            v44 = static Date.> infix(_:_:)();
            v60 = *v176;
            (*v176)(v59, v48);
            v60(v51, v48);
            goto LABEL_14;
          }

          (*v176)(v51, v48);
          v47 = v55;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v56 = v190;
        v57 = v191;
        __swift_project_boxed_opaque_existential_1(&v189, v190);
        v58 = v165;
        (*(v57 + 8))(v56, v57);
        v44 = __swift_getEnumTagSinglePayload(v58, 1, v48) != 1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v35 = v185 + 40;
      v30 = v180 + 1;
      v37 = v192;
      v36 = v192 + 1;
      if ((v184 ^ v44))
      {
        goto LABEL_17;
      }
    }

    v30 = v27;
LABEL_17:
    if ((v184 & 1) == 0)
    {
      v28 = v167;
      goto LABEL_30;
    }

    v28 = v167;
    if (v30 < v167)
    {
      goto LABEL_145;
    }

    if (v167 < v30)
    {
      if (v27 >= v37)
      {
        v61 = v37;
      }

      else
      {
        v61 = v27;
      }

      v62 = 40 * v61 - 40;
      v28 = v167;
      v63 = v30;
      v64 = v167;
      v65 = v170;
      do
      {
        if (v64 != --v63)
        {
          v66 = *v173;
          if (!*v173)
          {
            goto LABEL_150;
          }

          v67 = v30;
          v68 = v66 + v65;
          v69 = v66 + v62;
          outlined init with take of ImageName((v66 + v65), &v189);
          v70 = *(v69 + 32);
          v71 = *(v69 + 16);
          *v68 = *v69;
          *(v68 + 16) = v71;
          *(v68 + 32) = v70;
          outlined init with take of ImageName(&v189, v69);
          v30 = v67;
          v28 = v167;
        }

        ++v64;
        v62 -= 40;
        v65 += 40;
      }

      while (v64 < v63);
    }

LABEL_30:
    v72 = v173[1];
    if (v30 < v72)
    {
      v124 = __OFSUB__(v30, v28);
      v73 = v30 - v28;
      if (v124)
      {
        goto LABEL_142;
      }

      if (v73 >= v160)
      {
LABEL_56:
        v28 = v167;
        goto LABEL_57;
      }

      if (__OFADD__(v167, v160))
      {
        goto LABEL_143;
      }

      if (v167 + v160 >= v72)
      {
        v74 = v173[1];
      }

      else
      {
        v74 = v167 + v160;
      }

      if (v74 < v167)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
LABEL_111:
        v151 = (v29 + 16);
        v152 = *(v29 + 16);
        while (v152 >= 2)
        {
          if (!*v173)
          {
            goto LABEL_149;
          }

          v153 = v29;
          v154 = (v29 + 16 * v152);
          v155 = *v154;
          v156 = &v151[2 * v152];
          v29 = *(v156 + 1);
          v157 = v178;
          specialized _merge<A>(low:mid:high:buffer:by:)((*v173 + 40 * *v154), (*v173 + 40 * *v156), *v173 + 40 * v29, v192);
          v178 = v157;
          if (v157)
          {
            break;
          }

          if (v29 < v155)
          {
            goto LABEL_137;
          }

          if (v152 - 2 >= *v151)
          {
            goto LABEL_138;
          }

          *v154 = v155;
          v154[1] = v29;
          v158 = *v151 - v152;
          if (*v151 < v152)
          {
            goto LABEL_139;
          }

          v152 = *v151 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v156 + 16, v158, v156);
          *v151 = v152;
          v29 = v153;
        }

LABEL_121:

        return;
      }

      v28 = v167;
      if (v30 != v74)
      {
        break;
      }
    }

LABEL_57:
    if (v30 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
      v29 = v149;
    }

    v105 = *(v29 + 16);
    v104 = *(v29 + 24);
    v106 = v105 + 1;
    v107 = v167;
    v180 = v30;
    if (v105 >= v104 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v29);
      v107 = v167;
      v29 = v150;
    }

    *(v29 + 16) = v106;
    v108 = v29 + 32;
    v109 = (v29 + 32 + 16 * v105);
    *v109 = v107;
    v109[1] = v180;
    v110 = *v162;
    if (!*v162)
    {
      goto LABEL_151;
    }

    if (v105)
    {
      while (1)
      {
        v111 = v106 - 1;
        v112 = (v108 + 16 * (v106 - 1));
        v113 = (v29 + 16 * v106);
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v114 = *(v29 + 32);
          v115 = *(v29 + 40);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_77:
          if (v117)
          {
            goto LABEL_128;
          }

          v129 = *v113;
          v128 = v113[1];
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_131;
          }

          v133 = v112[1];
          v134 = v133 - *v112;
          if (__OFSUB__(v133, *v112))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v131, v134))
          {
            goto LABEL_136;
          }

          if (v131 + v134 >= v116)
          {
            if (v116 < v134)
            {
              v111 = v106 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v106 < 2)
        {
          goto LABEL_130;
        }

        v136 = *v113;
        v135 = v113[1];
        v124 = __OFSUB__(v135, v136);
        v131 = v135 - v136;
        v132 = v124;
LABEL_92:
        if (v132)
        {
          goto LABEL_133;
        }

        v138 = *v112;
        v137 = v112[1];
        v124 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v124)
        {
          goto LABEL_135;
        }

        if (v139 < v131)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v111 - 1 >= v106)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v173)
        {
          goto LABEL_148;
        }

        v143 = (v108 + 16 * (v111 - 1));
        v144 = *v143;
        v145 = v108 + 16 * v111;
        v146 = *(v145 + 8);
        v147 = v178;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v173 + 40 * *v143), (*v173 + 40 * *v145), *v173 + 40 * v146, v110);
        v178 = v147;
        if (v147)
        {
          goto LABEL_121;
        }

        if (v146 < v144)
        {
          goto LABEL_123;
        }

        v148 = *(v29 + 16);
        if (v111 > v148)
        {
          goto LABEL_124;
        }

        *v143 = v144;
        v143[1] = v146;
        if (v111 >= v148)
        {
          goto LABEL_125;
        }

        v106 = v148 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v145 + 16), v148 - 1 - v111, (v108 + 16 * v111));
        *(v29 + 16) = v148 - 1;
        if (v148 <= 2)
        {
          goto LABEL_106;
        }
      }

      v118 = v108 + 16 * v106;
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_126;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_127;
      }

      v125 = v113[1];
      v126 = v125 - *v113;
      if (__OFSUB__(v125, *v113))
      {
        goto LABEL_129;
      }

      v124 = __OFADD__(v116, v126);
      v127 = v116 + v126;
      if (v124)
      {
        goto LABEL_132;
      }

      if (v127 >= v121)
      {
        v141 = *v112;
        v140 = v112[1];
        v124 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v124)
        {
          goto LABEL_140;
        }

        if (v116 < v142)
        {
          v111 = v106 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v27 = v173[1];
    v28 = v180;
    if (v180 >= v27)
    {
      goto LABEL_109;
    }
  }

  v171 = v29;
  v183 = *v173;
  v75 = v183 + 40 * v30;
  v76 = v167 - v30;
  v166 = v74;
  while (2)
  {
    v180 = v30;
    v169 = v76;
    v77 = v76;
    v170 = v75;
LABEL_41:
    v185 = v77;
    outlined init with copy of IDSLookupManager(v75, &v189);
    v192 = v75;
    v184 = (v75 - 40);
    outlined init with copy of IDSLookupManager(v75 - 40, v186);
    v78 = v190;
    v79 = v191;
    __swift_project_boxed_opaque_existential_1(&v189, v190);
    v80 = *(v79 + 32);
    v81 = v80(v78, v79);
    v83 = v187;
    v82 = v188;
    __swift_project_boxed_opaque_existential_1(v186, v187);
    if ((v81 ^ (*(v82 + 32))(v83, v82)))
    {
      v84 = v80(v78, v79);
LABEL_43:
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v85 = v192;
      if ((v84 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v86 = v190;
      v87 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v88 = v182;
      (*(v87 + 8))(v86, v87);
      v89 = v181;
      if (__swift_getEnumTagSinglePayload(v88, 1, v181) != 1)
      {
        v90 = *v177;
        v91 = v174;
        (*v177)(v174, v182, v89);
        v92 = v187;
        v93 = v188;
        __swift_project_boxed_opaque_existential_1(v186, v187);
        v94 = v92;
        v95 = v175;
        (*(v93 + 8))(v94, v93);
        if (__swift_getEnumTagSinglePayload(v95, 1, v89) != 1)
        {
          v102 = v172;
          v90(v172, v95, v89);
          v84 = static Date.> infix(_:_:)();
          v103 = *v176;
          (*v176)(v102, v89);
          v103(v91, v89);
          goto LABEL_43;
        }

        (*v176)(v91, v89);
        v88 = v95;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v96 = v190;
      v97 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v98 = v179;
      (*(v97 + 8))(v96, v97);
      LODWORD(v96) = __swift_getEnumTagSinglePayload(v98, 1, v89);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v85 = v192;
      if (v96 == 1)
      {
        goto LABEL_54;
      }
    }

    v99 = v185;
    if (v183)
    {
      outlined init with take of ImageName(v85, &v189);
      v75 = v184;
      v100 = v184[1];
      *v85 = *v184;
      *(v85 + 1) = v100;
      *(v85 + 4) = *(v75 + 32);
      outlined init with take of ImageName(&v189, v75);
      v101 = __CFADD__(v99, 1);
      v77 = v99 + 1;
      if (v101)
      {
LABEL_54:
        v30 = v180 + 1;
        v75 = v170 + 40;
        v76 = v169 - 1;
        if (v180 + 1 == v166)
        {
          v30 = v166;
          v29 = v171;
          goto LABEL_56;
        }

        continue;
      }

      goto LABEL_41;
    }

    break;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v98 = v7;
        v9 = (*a3 + 16 * v6);
        v11 = *v9;
        v10 = v9[1];
        v12 = *a3 + 16 * v8;
        v13 = 16 * v8;
        v105 = v11;
        v106 = v10;
        lazy protocol witness table accessor for type String and conformance String();
        v4 = &v105;
        v14 = StringProtocol.localizedStandardCompare<A>(_:)();
        v15 = v12 + 24;
        v99 = v8;
        v16 = v8 + 2;
        while (1)
        {
          v17 = v16;
          if (++v6 >= v5)
          {
            break;
          }

          v19 = v15 + 16;
          v18 = *(v15 + 16);
          v105 = *(v15 + 8);
          v106 = v18;
          v4 = &v105;
          v20 = (v14 == -1) ^ (StringProtocol.localizedStandardCompare<A>(_:)() != -1);
          v16 = v17 + 1;
          v15 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v14 == -1)
        {
          if (v6 < v99)
          {
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
            return;
          }

          if (v99 >= v6)
          {
            v7 = v98;
            v8 = v99;
          }

          else
          {
            if (v5 >= v17)
            {
              v21 = v17;
            }

            else
            {
              v21 = v5;
            }

            v22 = 16 * v21;
            v23 = v6;
            v24 = v99;
            v7 = v98;
            v8 = v99;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v26 = (v25 + v13);
                v27 = v25 + v22;
                v28 = *v26;
                v29 = v26[1];
                *v26 = *(v27 - 16);
                *(v27 - 16) = v28;
                *(v27 - 8) = v29;
              }

              ++v24;
              v22 -= 16;
              v13 += 16;
            }

            while (v24 < v23);
          }
        }

        else
        {
          v7 = v98;
          v8 = v99;
        }
      }

      v30 = a3[1];
      if (v6 < v30)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_123;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_124;
          }

          if (v8 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v8 + a4;
          }

          if (v31 < v8)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v6 != v31)
          {
            v32 = *a3;
            lazy protocol witness table accessor for type String and conformance String();
            v33 = (v32 + 16 * v6);
            v100 = v8;
            v34 = v8 - v6;
            v102 = v31;
            do
            {
              v35 = (v32 + 16 * v6);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v105 = v36;
                v106 = v37;
                v4 = &v105;
                if (StringProtocol.localizedStandardCompare<A>(_:)() != -1)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_128;
                }

                v36 = *v39;
                v37 = v39[1];
                *v39 = *(v39 - 1);
                *(v39 - 1) = v37;
                *(v39 - 2) = v36;
                v39 -= 2;
              }

              while (!__CFADD__(v38++, 1));
              ++v6;
              v33 += 2;
              --v34;
            }

            while (v6 != v102);
            v6 = v102;
            v8 = v100;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = v87;
      }

      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v7);
        v7 = v88;
      }

      *(v7 + 2) = v43;
      v4 = v7 + 32;
      v44 = &v7[16 * v42 + 32];
      *v44 = v8;
      *(v44 + 1) = v6;
      v103 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v42)
      {
        while (1)
        {
          v45 = v43 - 1;
          v46 = &v4[16 * v43 - 16];
          v47 = &v7[16 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v48 = *(v7 + 4);
            v49 = *(v7 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_60:
            if (v51)
            {
              goto LABEL_109;
            }

            v63 = *v47;
            v62 = *(v47 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_112;
            }

            v67 = *(v46 + 1);
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_117;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v43 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v43 < 2)
          {
            goto LABEL_111;
          }

          v70 = *v47;
          v69 = *(v47 + 1);
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_75:
          if (v66)
          {
            goto LABEL_114;
          }

          v72 = *v46;
          v71 = *(v46 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (v73 < v65)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v45 - 1 >= v43)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v77 = v7;
          v78 = &v4[16 * v45 - 16];
          v79 = *v78;
          v80 = v45;
          v7 = &v4[16 * v45];
          v81 = *(v7 + 1);
          v82 = v107;
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v78), (*a3 + 16 * *v7), (*a3 + 16 * v81), v103);
          v107 = v82;
          if (v82)
          {
            goto LABEL_91;
          }

          if (v81 < v79)
          {
            goto LABEL_104;
          }

          v83 = v6;
          v84 = v4;
          v4 = *(v77 + 2);
          if (v80 > v4)
          {
            goto LABEL_105;
          }

          *v78 = v79;
          *(v78 + 1) = v81;
          if (v80 >= v4)
          {
            goto LABEL_106;
          }

          v85 = v80;
          v43 = (v4 - 1);
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7 + 16, &v4[-v85 - 1], v7);
          v7 = v77;
          *(v77 + 2) = v4 - 1;
          v86 = v4 > 2;
          v4 = v84;
          v6 = v83;
          if (!v86)
          {
            goto LABEL_89;
          }
        }

        v52 = &v4[16 * v43];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_107;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_108;
        }

        v59 = *(v47 + 1);
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_110;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = *(v46 + 1);
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_121;
          }

          if (v50 < v76)
          {
            v45 = v43 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_93;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v89 = (v7 + 16);
  for (i = *(v7 + 2); i >= 2; *v89 = i)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v91 = &v7[16 * i];
    v92 = *v91;
    v93 = &v89[2 * i];
    v94 = *(v93 + 1);
    v95 = v107;
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v91), (*a3 + 16 * *v93), (*a3 + 16 * v94), v4);
    v107 = v95;
    if (v95)
    {
      break;
    }

    if (v94 < v92)
    {
      goto LABEL_118;
    }

    if (i - 2 >= *v89)
    {
      goto LABEL_119;
    }

    *v91 = v92;
    *(v91 + 1) = v94;
    v96 = *v89 - i;
    if (*v89 < i)
    {
      goto LABEL_120;
    }

    i = *v89 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v93 + 16, v96, v93);
  }

LABEL_91:
}

{
  v5 = v4;
  v110 = a1;
  v122 = type metadata accessor for Participant.Caption(0);
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v124 = (&v106 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v106 - v14;
  v119 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v124 = *v110;
    if (!v124)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v98 = v17 + 16;
      v99 = *(v17 + 2);
      while (v99 >= 2)
      {
        if (!*v119)
        {
          goto LABEL_138;
        }

        v100 = v5;
        v101 = v17;
        v5 = &v17[16 * v99];
        v102 = *v5;
        v103 = &v98[2 * v99];
        v104 = *(v103 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v119 + *(v117 + 72) * *v5, *v119 + *(v117 + 72) * *v103, *v119 + *(v117 + 72) * v104, v124);
        v17 = v100;
        if (v100)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_126;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v5 = v102;
        *(v5 + 1) = v104;
        v105 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_128;
        }

        v99 = *v98 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v103 + 16, v105, v103);
        *v98 = v99;
        v5 = 0;
        v17 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    goto LABEL_102;
  }

  v106 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v107 = v17;
      v108 = v5;
      v5 = (v16 + 1);
      v19 = *v119;
      v20 = *(v117 + 72);
      v21 = *v119 + v20 * (v16 + 1);
      v22 = v123;
      v116 = v15;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v23 = v124;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v24 = *v22;
      v114 = *v23;
      v115 = v24;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v25 = v116;
      v109 = v16;
      v26 = (v16 + 2);
      v118 = v20;
      v27 = v19 + v20 * (v16 + 2);
      v18 = v5;
      while (1)
      {
        v17 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        LODWORD(v120) = v115 < v114;
        v28 = v123;
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v5 = v124;
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v29 = *v28;
        v30 = *v5;
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        v25 = v116;
        v27 += v118;
        v21 += v118;
        v26 = v17 + 1;
        if (((v120 ^ (v29 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v115 >= v114)
      {
        v17 = v107;
        v5 = v108;
      }

      else
      {
        v16 = v109;
        if (v18 < v109)
        {
          goto LABEL_132;
        }

        if (v109 >= v18)
        {
          v17 = v107;
          v5 = v108;
          goto LABEL_32;
        }

        if (v25 >= v17)
        {
          v31 = v17;
        }

        else
        {
          v31 = v25;
        }

        v32 = v118 * (v31 - 1);
        v33 = v118 * v31;
        v34 = v109 * v118;
        v35 = v109;
        v36 = v18;
        v5 = v108;
        do
        {
          if (v35 != --v36)
          {
            v37 = v18;
            v38 = *v119;
            if (!*v119)
            {
              goto LABEL_139;
            }

            _s15ConversationKit11ParticipantVWObTm_6();
            v39 = v34 < v32 || v38 + v34 >= (v38 + v33);
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_6();
            v18 = v37;
          }

          ++v35;
          v32 -= v118;
          v33 -= v118;
          v34 += v118;
        }

        while (v35 < v36);
        v17 = v107;
      }

      v16 = v109;
    }

LABEL_32:
    v40 = v119[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v16))
      {
        goto LABEL_131;
      }

      if (v18 - v16 < v106)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v16)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = v96;
    }

    v54 = *(v17 + 2);
    v53 = *(v17 + 3);
    v55 = v54 + 1;
    v118 = v18;
    if (v54 >= v53 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v17);
      v17 = v97;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    v58 = v118;
    *v57 = v16;
    *(v57 + 1) = v58;
    v120 = *v110;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v54)
    {
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v56[16 * v55 - 16];
        v61 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v17 + 4);
          v63 = *(v17 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_117;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_125;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_119;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_122;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_124;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_134;
        }

        if (!*v119)
        {
          goto LABEL_137;
        }

        v91 = &v56[16 * v59 - 16];
        v92 = *v91;
        v93 = &v56[16 * v59];
        v94 = *(v93 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v119 + *(v117 + 72) * *v91, *v119 + *(v117 + 72) * *v93, *v119 + *(v117 + 72) * v94, v120);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v94 < v92)
        {
          goto LABEL_112;
        }

        v5 = v17;
        v17 = *(v17 + 2);
        if (v59 > v17)
        {
          goto LABEL_113;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        if (v59 >= v17)
        {
          goto LABEL_114;
        }

        v55 = (v17 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v93 + 16, &v17[-v59 - 1], &v56[16 * v59]);
        *(v5 + 2) = v17 - 1;
        v95 = v17 > 2;
        v17 = v5;
        v5 = 0;
        if (!v95)
        {
          goto LABEL_97;
        }
      }

      v66 = &v56[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_115;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_116;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_118;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_121;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v16 = v118;
    v15 = v119[1];
    if (v118 >= v15)
    {
      goto LABEL_100;
    }
  }

  v41 = v16 + v106;
  if (__OFADD__(v16, v106))
  {
    goto LABEL_133;
  }

  if (v41 >= v40)
  {
    v41 = v119[1];
  }

  if (v41 < v16)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v41)
  {
    goto LABEL_48;
  }

  v107 = v17;
  v108 = v5;
  v42 = *v119;
  v43 = *(v117 + 72);
  v44 = *v119 + v43 * (v18 - 1);
  v45 = -v43;
  v109 = v16;
  v46 = v16 - v18;
  v120 = v42;
  v111 = v43;
  v112 = v41;
  v47 = v42 + v18 * v43;
LABEL_41:
  v118 = v18;
  v114 = v47;
  v115 = v46;
  v116 = v44;
  v48 = v44;
  while (1)
  {
    v49 = v123;
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v50 = v124;
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v51 = *v49;
    v52 = *v50;
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    if (v51 >= v52)
    {
LABEL_46:
      v18 = v118 + 1;
      v44 = v116 + v111;
      v46 = v115 - 1;
      v47 = v114 + v111;
      if ((v118 + 1) == v112)
      {
        v18 = v112;
        v17 = v107;
        v5 = v108;
        v16 = v109;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v120)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWObTm_6();
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_6();
    v48 += v45;
    v47 += v45;
    v39 = __CFADD__(v46++, 1);
    if (v39)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v78, *a1, a3);
LABEL_89:
}

{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v92, *a1, a3);
LABEL_102:
}

{
  v123 = a1;
  v133 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v119 - v9;
  v128 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v140 = *v123;
    if (!v140)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v129;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  v121 = a4;
  v11 = 0;
  v130 = (v8 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v126 = v10;
      v14 = *v128;
      a4 = 40;
      outlined init with copy of IDSLookupManager(*v128 + 40 * v11, &v137);
      outlined init with copy of IDSLookupManager(&v14[40 * v13], v134);
      v15 = v129;
      LODWORD(v140) = closure #2 in Array<A>.sortedActivities.getter(&v137, v134);
      v129 = v15;
      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v134);
        __swift_destroy_boxed_opaque_existential_1(&v137);
LABEL_113:

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v134);
      __swift_destroy_boxed_opaque_existential_1(&v137);
      v125 = 40 * v13;
      v16 = v13;
      v17 = &v14[40 * v13 + 80];
      v122 = v16;
      v18 = v16 + 2;
      v19 = v126;
      while (1)
      {
        v20 = v18;
        if (v11 + 1 >= v19)
        {
          break;
        }

        outlined init with copy of IDSLookupManager(v17, &v137);
        outlined init with copy of IDSLookupManager(v17 - 40, v134);
        v21 = v138;
        v22 = v139;
        a4 = __swift_project_boxed_opaque_existential_1(&v137, v138);
        v23 = (*(v22 + 104))(v21, v22);
        if (v23)
        {
          v24 = v23;
          v25 = v135;
          v26 = v136;
          a4 = __swift_project_boxed_opaque_existential_1(v134, v135);
          v27 = (*(v26 + 104))(v25, v26);
          if (v27)
          {
            v28 = v27;
            v29 = [v24 timestamp];
            v127 = v11;
            v30 = v131;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = [v28 timestamp];
            v32 = v132;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v33 = static Date.> infix(_:_:)();
            a4 = *v130;
            v34 = v133;
            (*v130)(v32, v133);
            v35 = v30;
            v11 = v127;
            (a4)(v35, v34);
            v19 = v126;
          }

          else
          {

            v33 = 1;
          }
        }

        else
        {
          v33 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v134);
        __swift_destroy_boxed_opaque_existential_1(&v137);
        v17 += 40;
        ++v11;
        v18 = v20 + 1;
        if ((v140 & 1) != (v33 & 1))
        {
          goto LABEL_15;
        }
      }

      v11 = v19;
LABEL_15:
      if ((v140 & 1) == 0)
      {
        goto LABEL_26;
      }

      v13 = v122;
      if (v11 < v122)
      {
        goto LABEL_137;
      }

      if (v122 < v11)
      {
        if (v19 >= v20)
        {
          v36 = v20;
        }

        else
        {
          v36 = v19;
        }

        v37 = 40 * v36 - 40;
        v38 = v122;
        v39 = v11;
        v40 = v125;
        do
        {
          if (v38 != --v39)
          {
            v41 = *v128;
            if (!*v128)
            {
              goto LABEL_142;
            }

            a4 = v41 + v40;
            v42 = v41 + v37;
            outlined init with take of TapInteractionHandler((v41 + v40), &v137);
            v43 = *(v42 + 32);
            v44 = *(v42 + 16);
            *a4 = *v42;
            *(a4 + 16) = v44;
            *(a4 + 32) = v43;
            outlined init with take of TapInteractionHandler(&v137, v42);
          }

          ++v38;
          v37 -= 40;
          v40 += 40;
        }

        while (v38 < v39);
LABEL_26:
        v13 = v122;
      }
    }

    v45 = v128[1];
    if (v11 < v45)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_134;
      }

      if (v11 - v13 < v121)
      {
        break;
      }
    }

LABEL_49:
    if (v11 < v13)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = v109;
    }

    v67 = *(v12 + 2);
    v66 = *(v12 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v12);
      v12 = v110;
    }

    *(v12 + 2) = v68;
    v69 = v12 + 32;
    v70 = &v12[16 * v67 + 32];
    *v70 = v13;
    *(v70 + 1) = v11;
    v140 = *v123;
    if (!v140)
    {
      goto LABEL_143;
    }

    if (v67)
    {
      while (1)
      {
        v71 = v68 - 1;
        v72 = &v69[16 * v68 - 16];
        v73 = &v12[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v12 + 4);
          v75 = *(v12 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_69:
          if (v77)
          {
            goto LABEL_120;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_123;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_128;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v68 < 2)
        {
          goto LABEL_122;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_84:
        if (v92)
        {
          goto LABEL_125;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_127;
        }

        if (v99 < v91)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_115:
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
          goto LABEL_136;
        }

        if (!*v128)
        {
          goto LABEL_140;
        }

        v103 = &v69[16 * v71 - 16];
        v104 = *v103;
        v105 = &v69[16 * v71];
        v106 = *(v105 + 1);
        v107 = v129;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v128 + 40 * *v103), (*v128 + 40 * *v105), *v128 + 40 * v106, v140);
        v129 = v107;
        if (v107)
        {
          goto LABEL_113;
        }

        if (v106 < v104)
        {
          goto LABEL_115;
        }

        a4 = v12;
        v12 = *(v12 + 2);
        if (v71 > v12)
        {
          goto LABEL_116;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        if (v71 >= v12)
        {
          goto LABEL_117;
        }

        v68 = (v12 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v105 + 16, &v12[-v71 - 1], &v69[16 * v71]);
        *(a4 + 16) = v12 - 1;
        v108 = v12 > 2;
        v12 = a4;
        if (!v108)
        {
          goto LABEL_98;
        }
      }

      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_118;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_121;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_124;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_132;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v10 = v128[1];
    if (v11 >= v10)
    {
      goto LABEL_101;
    }
  }

  v46 = v13 + v121;
  if (__OFADD__(v13, v121))
  {
    goto LABEL_135;
  }

  if (v46 >= v45)
  {
    v46 = v128[1];
  }

  if (v46 < v13)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
LABEL_103:
    v112 = v12 + 16;
    v113 = *(v12 + 2);
    while (v113 >= 2)
    {
      if (!*v128)
      {
        goto LABEL_141;
      }

      v114 = v12;
      v115 = &v12[16 * v113];
      v12 = *v115;
      v116 = &v112[2 * v113];
      v117 = *(v116 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v128 + 40 * *v115), (*v128 + 40 * *v116), *v128 + 40 * v117, v140);
      if (a4)
      {
        break;
      }

      if (v117 < v12)
      {
        goto LABEL_129;
      }

      if (v113 - 2 >= *v112)
      {
        goto LABEL_130;
      }

      *v115 = v12;
      *(v115 + 1) = v117;
      v118 = *v112 - v113;
      if (*v112 < v113)
      {
        goto LABEL_131;
      }

      v113 = *v112 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v116 + 16, v118, v116);
      *v112 = v113;
      v12 = v114;
    }

    goto LABEL_113;
  }

  if (v11 == v46)
  {
    goto LABEL_49;
  }

  v120 = v12;
  v140 = *v128;
  v47 = &v140[40 * v11];
  v122 = v13;
  v48 = v13 - v11;
  v124 = v46;
LABEL_36:
  v126 = v47;
  v127 = v11;
  v125 = v48;
  v49 = v48;
  v50 = v47;
  while (1)
  {
    outlined init with copy of IDSLookupManager(v50, &v137);
    outlined init with copy of IDSLookupManager(v50 - 40, v134);
    v51 = v138;
    v52 = v139;
    a4 = __swift_project_boxed_opaque_existential_1(&v137, v138);
    v53 = (*(v52 + 104))(v51, v52);
    if (!v53)
    {
      __swift_destroy_boxed_opaque_existential_1(v134);
      __swift_destroy_boxed_opaque_existential_1(&v137);
LABEL_47:
      v11 = v127 + 1;
      v47 = (v126 + 40);
      v48 = v125 - 1;
      if (v127 + 1 == v124)
      {
        v11 = v124;
        v12 = v120;
        v13 = v122;
        goto LABEL_49;
      }

      goto LABEL_36;
    }

    v54 = v53;
    v56 = v135;
    v55 = v136;
    a4 = __swift_project_boxed_opaque_existential_1(v134, v135);
    v57 = (*(v55 + 104))(v56, v55);
    if (v57)
    {
      v58 = v57;
      v59 = [v54 timestamp];
      v60 = v131;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = [v58 timestamp];
      v62 = v132;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v61) = static Date.> infix(_:_:)();
      a4 = *v130;
      v63 = v133;
      (*v130)(v62, v133);
      (a4)(v60, v63);
      __swift_destroy_boxed_opaque_existential_1(v134);
      __swift_destroy_boxed_opaque_existential_1(&v137);
      if ((v61 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v134);
      __swift_destroy_boxed_opaque_existential_1(&v137);
    }

    if (!v140)
    {
      break;
    }

    outlined init with take of TapInteractionHandler(v50, &v137);
    v64 = *(v50 - 24);
    *v50 = *(v50 - 40);
    *(v50 + 16) = v64;
    *(v50 + 32) = *(v50 - 8);
    outlined init with take of TapInteractionHandler(&v137, v50 - 40);
    v50 -= 40;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

{
  v96 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 40 * i;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *a3 + 40 * v8;
        if (v11 == *(v13 + 16) && v12 == *(v13 + 24))
        {
          v15 = 0;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v16 = (v9 + 40 * v8 + 104);
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 40 * i - 16;
          v19 = 40 * v8 + 24;
          v20 = i;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 24);
              v25 = v22 + v18;
              v26 = *(v23 - 1);
              v27 = *v23;
              v28 = *(v25 + 8);
              v29 = *(v25 - 8);
              *(v23 - 24) = *(v25 - 24);
              *(v23 - 8) = v29;
              *(v23 + 1) = v28;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (i < v30)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v8 + a4;
          }

          if (v31 < v8)
          {
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
            return;
          }

          if (i != v31)
          {
            v32 = *a3;
            v33 = *a3 + 40 * i - 40;
            v34 = v8 - i;
            do
            {
              v35 = v32 + 40 * i;
              v36 = *(v35 + 16);
              v37 = *(v35 + 24);
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *(v39 + 16) && v37 == *(v39 + 24);
                if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 48);
                v36 = *(v39 + 56);
                v42 = *(v39 + 16);
                v44 = *(v39 + 32);
                v43 = *(v39 + 40);
                *(v39 + 40) = *v39;
                v45 = *(v39 + 64);
                *(v39 + 56) = v42;
                *(v39 + 72) = v44;
                *(v39 + 24) = v45;
                v37 = v45;
                *v39 = v43;
                *(v39 + 8) = v41;
                *(v39 + 16) = v36;
                v39 -= 40;
              }

              while (!__CFADD__(v38++, 1));
              ++i;
              v33 += 40;
              --v34;
            }

            while (i != v31);
            i = v31;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
        v7 = v90;
      }

      v48 = v7[2];
      v47 = v7[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v7);
        v7 = v91;
      }

      v7[2] = v49;
      v50 = v7 + 4;
      v51 = &v7[2 * v48 + 4];
      *v51 = v8;
      v51[1] = i;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v7[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v7[4];
            v56 = v7[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_69:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_84:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = v7;
          v85 = &v50[2 * v52 - 2];
          v86 = *v85;
          v87 = &v50[2 * v52];
          v88 = v87[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, v94);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v84[2];
          if (v52 > v89)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v52 >= v89)
          {
            goto LABEL_107;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v87 + 2, 16 * (v89 - 1 - v52));
          v7 = v84;
          v84[2] = v89 - 1;
          if (v89 <= 2)
          {
            goto LABEL_98;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v96 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v96, *a1, a3);
LABEL_103:
}