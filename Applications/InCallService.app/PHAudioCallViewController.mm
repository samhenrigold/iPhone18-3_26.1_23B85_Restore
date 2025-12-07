@interface PHAudioCallViewController
+ (BOOL)wallpaperContentIsSensitive:(id)sensitive;
+ (NSArray)contactKeysToFetch;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isScreeningAnyCallGroup:(id)group;
- (BOOL)_isScreeningCallGroup:(id)group;
- (BOOL)allowsBanners;
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)allowsOrientationChangeEvents;
- (BOOL)callHasContactPosterWithHorizontalName;
- (BOOL)callHasContactPosterWithVerticalName;
- (BOOL)callHasNoContactPoster;
- (BOOL)callIsRecording;
- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)avatar;
- (BOOL)callRecordingAllowed;
- (BOOL)callStateCanShowNewPoster:(id)poster;
- (BOOL)canDoInfoButtonCoinFlipWith:(id)with contactStore:(id)store;
- (BOOL)canRecord;
- (BOOL)canShowBackgroundImage;
- (BOOL)canShowPosterBadgeInAudioCallView:(id)view;
- (BOOL)canShowPosterImage;
- (BOOL)currentCallStateCanShowNewPoster;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)container;
- (BOOL)fetchLockState;
- (BOOL)hasLastSeenPosterForCall:(id)call;
- (BOOL)hasNoCallsOrOnlyEndedCalls;
- (BOOL)holdingConditions;
- (BOOL)isCallRecordingActive;
- (BOOL)isCallSmartHoldingSessionActive:(id)active;
- (BOOL)isPickedRouteReceiver;
- (BOOL)isPickedRouteSpeaker;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowSOSConfirmationSupported;
- (BOOL)isShowingBackgroundImage;
- (BOOL)isShowingPosterBadge;
- (BOOL)isUserInterfaceShowing;
- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)call;
- (BOOL)middlePillContainerIsShowing;
- (BOOL)needsDismissalAssertion;
- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)connected;
- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)call;
- (BOOL)recordingSupportedForCurrentCallDsplayStyles;
- (BOOL)setCallForBackgroundImage:(id)image animated:(BOOL)animated callDisplayStyleChanged:(BOOL)changed;
- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy;
- (BOOL)shouldAddRTTButtonToViewHierarchy;
- (BOOL)shouldApplyNewGradientBlur;
- (BOOL)shouldPlayAudioInCallBufferScreen;
- (BOOL)shouldRenderAlertTextColor;
- (BOOL)shouldRenderAlertTextFont;
- (BOOL)shouldShowAnswerRTT;
- (BOOL)shouldShowCallDetailsViewButton;
- (BOOL)shouldShowCallTransfer;
- (BOOL)shouldShowCircularAvatar;
- (BOOL)shouldShowConferenceCallDetails;
- (BOOL)shouldShowContactOrLastSeenWallpaper;
- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)call;
- (BOOL)shouldShowLargeAvatarForCall:(id)call;
- (BOOL)shouldShowMergeCalls;
- (BOOL)shouldShowNewPosterUpdates;
- (BOOL)shouldShowUseRTT;
- (BOOL)shouldUpdateBackgroundForEmergencyCall;
- (BOOL)shouldUseHeroImageLayout;
- (BOOL)usesCompactMulticallUI;
- (BOOL)videoStreamingIsGoingOn;
- (IMNicknameProvider)imNicknameProvider;
- (PHAudioButtonsViewControllerProtocol)buttonsViewController;
- (PHAudioCallControlsSupplementalButton)callTransferButton;
- (PHAudioCallControlsSupplementalButton)extensionNumberButton;
- (PHAudioCallControlsSupplementalButton)mergeCallsButton;
- (PHAudioCallControlsSupplementalButton)useRTTButton;
- (PHAudioCallViewController)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center featureFlags:(id)flags;
- (PHAudioCallVoiceLoopViewController)voiceLoopViewController;
- (PHCallTranslationController)translationController;
- (PHInCallKeypadViewController)keypadViewController;
- (PHInCallRootViewControllerProtocol)inCallRootViewController;
- (SOSEmergencyCallVoiceLoopManager)voiceLoopManager;
- (TUCall)activeCall;
- (TUCall)callToUseForWallpaper;
- (TUCall)frontmostCall;
- (TUCall)prioritizedCall;
- (UILayoutGuide)translationLayoutGuide;
- (UIStackView)middlePillContainer;
- (UIStackView)topLeadingContainer;
- (UIViewController)screeningViewController;
- (UIViewController)waitOnHoldViewController;
- (double)callDetailsButtonPaddingTop;
- (double)callDetailsButtonPaddingTop_PERCENT;
- (double)callDetailsButtonPaddingTrailing;
- (double)callDetailsButtonPaddingTrailing_PERCENT;
- (double)callWaitingAnimationDelay;
- (double)screeningTextFieldPadding;
- (id)ambientParticipantsViewConstraintsForView:(id)view largeAvatar:(BOOL)avatar;
- (id)answerRequestForCall:(id)call;
- (id)associatedCallGroupForCall:(id)call;
- (id)audioRouteMenu;
- (id)bottomBarBottomConstraintToUse;
- (id)buttonsViewBottomConstraintToUse;
- (id)contactForCall:(id)call;
- (id)contactImage;
- (id)contactImageDataForCall:(id)call;
- (id)contactImageForCall:(id)call;
- (id)contactToDisplayInCallWallpaperForCall:(id)call;
- (id)contactWallpaperBackgroundColor;
- (id)contactWallpaperConfigurationForCall:(id)call shouldReadFromCache:(BOOL)cache;
- (id)contactWallpaperForCall:(id)call;
- (id)createBlurryBackgroundView;
- (id)createContactFirstNameLabelViewModel;
- (id)createPosterBlurryBackgroundView;
- (id)currentIMNicknameMatchingContact:(id)contact;
- (id)customColorForParticipantLabelWithCall:(id)call;
- (id)customColorForStatusLabelWithCall:(id)call;
- (id)customFontForParticipantLabelWithCall:(id)call;
- (id)customizedTitleForItemInBar:(id)bar withActionType:(int64_t)type;
- (id)fallbackHorizontalNameLabelString;
- (id)fallbackImageDataForCall:(id)call;
- (id)getAudioRouteMenu;
- (id)getCurrentCall;
- (id)getParticipantsView_NotWaiting;
- (id)getParticipantsView_Waiting;
- (id)getParticipantsView_WaitingOrNot;
- (id)isolatedCall;
- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)call;
- (id)lastSeenPosterConfigurationForCall:(id)call;
- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)call;
- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)manager existingCoordinator:(id)coordinator deferredPresentationManager:(id)presentationManager;
- (id)makeHeldCallControlsViewWithCallCenter:(id)center style:(int64_t)style;
- (id)makeLockObserverWithHandler:(id)handler;
- (id)newPosterConfigurationForCall:(id)call;
- (id)readCachedLastSeenPosterDataForCall:(id)call;
- (id)routesForAudioRoutingMenuController:(id)controller;
- (id)screeningContainerView;
- (id)sharedProfileStateOracleForCall:(id)call;
- (id)snapshotUIImageView;
- (id)wallpaperTitleStyleAttributes;
- (id)wallpaperTitleStyleAttributesForCall:(id)call;
- (id)wallpaperTypeForBundleID:(id)d;
- (id)wallpaperTypeForCNWallpaper:(id)wallpaper;
- (id)wallpaperTypeForIMWallpaperMetadata:(id)metadata;
- (int64_t)bottomBarCallStateInBar:(id)bar;
- (int64_t)bottomBarStateForCallWaitingCall;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)currentDisplayedPosterSourceForCall:(id)call;
- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)connects;
- (unint64_t)supportedInterfaceOrientations;
- (void)_leaveMessage;
- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)state;
- (void)_testing_didTransitionToActiveCallState:(id)state;
- (void)_testing_didTransitionToEndingCallState;
- (void)_testing_didTransitionToIdleCallState;
- (void)_testing_didTransitionToIncomingRingingCallState:(id)state;
- (void)_testing_finishedAnimatingToActiveCallState:(id)state;
- (void)_updatePosterNameAlpha;
- (void)_updatePosterStatusLabelForState:(unsigned __int16)state;
- (void)_updateStatusLabelVisibility;
- (void)addBottomBarSubView;
- (void)addButton:(id)button;
- (void)addCallHoldingIfNeeded:(id)needed;
- (void)addCallParticipantsSubView;
- (void)addCallRecordingIfNeededWithButtonContainer:(id)container pillContainer:(id)pillContainer;
- (void)addDefaultBackgroundGradientView;
- (void)addDimmingView;
- (void)addEnhancedEmergencyIntermittentStateLabelWithState:(int64_t)state;
- (void)addHoldingButton:(id)button;
- (void)addMediaRequestViewController:(id)controller;
- (void)addPosterBlurToPosterVC:(id)c nameLabelWrapper:(id)wrapper;
- (void)addRecordingIndicatorWithPillContainer:(id)container;
- (void)addWebRTCViewController:(id)controller;
- (void)alertWillInvoke;
- (void)animateInfoButtonCoinFlipIfNeeded;
- (void)applyBlockButtonPositionAndSizeCapToElement:(id)element;
- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)element;
- (void)applyCallWaitingConstraintsForAmbient;
- (void)applyParticipantsViewConstraints;
- (void)applyParticipantsViewConstraintsForAmbient;
- (void)applyParticipantsViewConstraintsForBanner;
- (void)applyParticipantsViewConstraintsForFullScreen;
- (void)applySizeToElement:(id)element usingThisElementAsGuide:(id)guide;
- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)wrapper;
- (void)audioCallControlsViewControllerDidTapEndButton:(id)button;
- (void)audioCallControlsViewControllerDidTapRTTButton;
- (void)audioCallControlsViewControllerDidTapVideoStreamingButton;
- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)button;
- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation forView:(id)view;
- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)presentation;
- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)presentation forView:(id)view;
- (void)audioCallControlsViewControllerRequestedInvokeAlert;
- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)presentation;
- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)mode;
- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)view;
- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)view;
- (void)audioCallControlsViewControllerRequestedShareMedia;
- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)presentation;
- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation;
- (void)audioDeviceControllerMutedTalkerDidStart:(id)start;
- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route;
- (void)bannerDidGetTap;
- (void)blockButtonTapped;
- (void)blockWithHandle:(id)handle;
- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar;
- (void)bringWebRTCViewControllerToFront:(id)front;
- (void)callCenterCallStatusChangedNotification:(id)notification;
- (void)callCenterScreeningStatusChangedNotification:(id)notification;
- (void)callContinuityStateChangedNotification:(id)notification;
- (void)callDetailsViewButtonTapped;
- (void)callDisplayContextChangedNotification:(id)notification;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callIsEmergencyChangedNotification:(id)notification;
- (void)callIsScreenSharingChangedNotification:(id)notification;
- (void)callKeypadDataSourceChangedNotification:(id)notification;
- (void)callOnHoldChangedNotification:(id)notification;
- (void)callParticipantsViewController:(id)controller didPerformActionType:(int64_t)type;
- (void)callParticipantsViewController:(id)controller didShowMultipleLabel:(BOOL)label;
- (void)callParticipantsViewController:(id)controller willShowMultipleLabel:(BOOL)label;
- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)recognizer;
- (void)callRecordingAfterFullScreenRequest:(id)request;
- (void)callRecordingCountdownStarted:(id)started;
- (void)callRecordingStateChanged:(id)changed;
- (void)callTransferButtonTapped;
- (void)clearMenuItemRegistration:(id)registration;
- (void)conferenceParticipantCallsChangedNotification:(id)notification;
- (void)constrainBottomBar;
- (void)constrainBottomBarBottom;
- (void)constrainButtonsViewBottom;
- (void)contactDidChange:(id)change;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action;
- (void)copyCallWaitingConstraintsFromParticipantsView;
- (void)createContactWithHandle:(id)handle;
- (void)createDetachedPosterNameViewModel:(id)model;
- (void)createPosterContainerWithDimmingLayer;
- (void)dealloc;
- (void)deleteAllUnarchivedPosterDirectories;
- (void)dismissNavigationController;
- (void)dismissNavigationControllerAndUpdateScene;
- (void)dismissPeoplePicker;
- (void)dismissScreenSharingIndicatorView;
- (void)dismissWaitOnHoldTip;
- (void)displayDialledNumberDetailsForCallBufferScreen;
- (void)displayScreenSharingIndicator;
- (void)displayWaitOnHoldTip;
- (void)endWaitOnHoldSession;
- (void)extensionNumberButtonTapped;
- (void)fadeInBottomBar;
- (void)finishNewPosterUpdatesWithCompletion:(id)completion;
- (void)gameControllerDidChangeContext;
- (void)handleCallRecordingCountdownNotificationWithNotification:(id)notification;
- (void)handleCancelPressedInCallBufferScreen;
- (void)handleDeviceLockEventWithSourceType:(int64_t)type;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification;
- (void)handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)handleViewDidAppear:(BOOL)appear;
- (void)handleViewDidDisappear:(BOOL)disappear;
- (void)handleViewWillAppear:(BOOL)appear;
- (void)handleViewWillDisappear:(BOOL)disappear;
- (void)hardPauseDigitsStateChangedNotification:(id)notification;
- (void)hardwareButtonEventNotification:(id)notification;
- (void)hideCallControls;
- (void)hideFirstNameLabelOnKeypad;
- (void)hideOrShowKeypadBackgroundView;
- (void)hideOrShowScreeningBackgroundView;
- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)image;
- (void)hideRTTConversationIfNeeded;
- (void)hideWebRTCViewController:(id)controller;
- (void)insertBelowDimmingLayerWithNewView:(id)view containerView:(id)containerView;
- (void)insertWebViewUnderButtonControls:(id)controls;
- (void)invertColorCallHoldingButtonColor:(BOOL)color;
- (void)invertColorCallRecordingButtonColor:(BOOL)color;
- (void)layoutParticipantsViewAnimated:(BOOL)animated crossfade:(BOOL)crossfade;
- (void)loadView;
- (void)localAudioToggledWithIsMuted:(BOOL)muted;
- (void)lockScreenVisibilityDidChange:(id)change;
- (void)mergeCallsButtonTapped;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)performBottomBarActionType:(int64_t)type;
- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)button;
- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)button;
- (void)presentContactCard;
- (void)presentDisconnectionAlert:(id)alert;
- (void)presentFullScreenPeoplePicker;
- (void)presentMoreMenu:(id)menu source:(id)source;
- (void)presentMoreMenu:(id)menu source:(id)source alongsideTransition:(id)transition;
- (void)presentShareCard:(id)card source:(id)source;
- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler;
- (void)receptionistStateChanged:(id)changed;
- (void)refreshCallDetailsViewButton;
- (void)refreshExtensionNumberButton;
- (void)refreshUseRTTButton;
- (void)releaseDismissalAssertion;
- (void)removeAllParticipantsViewConstraints;
- (void)removeBackgroundContactImageView;
- (void)removeButtonFrom:(id)from;
- (void)removeDefaultBackgroundGradientView;
- (void)removeEmergencyTextViaSatelliteUI;
- (void)removeEnhancedEmergencyIntermittentStateLabel;
- (void)removeFirstNameLabelFromViewIfNeeded;
- (void)removeMediaRequestViewController:(id)controller;
- (void)removeNameLabelForAlwaysOnDisplay;
- (void)removePosterViewController:(BOOL)controller completion:(id)completion;
- (void)removeScreeningBackgroundView;
- (void)removeSupplementalButtons;
- (void)removeWebRTCViewController:(id)controller;
- (void)removeWebRTCViewControllerForPIP:(id)p;
- (void)reportWithCall:(id)call;
- (void)requestAnimationToFullScreenWebView;
- (void)requestHapticForRequest;
- (void)requestToAddErrorLabelWithRetryable:(BOOL)retryable;
- (void)requestToAddMitigationLabel;
- (void)requestToAddPhotoMitigationLabel;
- (void)requestToAddResumeCameraLabel;
- (void)requestToDisableMediaUploadButton;
- (void)requestToDisableVideoStreamingButton;
- (void)requestToEnableMediaUploadButton;
- (void)requestToEnableVideoStreamingButton;
- (void)requestToPresentMediaUploadRequestBanner;
- (void)requestToPresentMediaUploadRequestBannerDuringStreaming;
- (void)requestToPresentVideoStreamingRequestBanner;
- (void)requestToRemoveEnhancedEmergencyIntermittentStateLabel;
- (void)resetParticipantsViewConstraints;
- (void)restartCallBufferTimer;
- (void)restoreParticipantsViewStatusLabelForFullScreen;
- (void)revealAudioRoutingDeviceListAnimated:(BOOL)animated;
- (void)revealAudioRoutingDeviceListAnimatedIfNeeded;
- (void)routesChangedForRouteController:(id)controller;
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)setActiveState:(unsigned __int16)state;
- (void)setAlertModeNeededState:(unsigned __int16)state;
- (void)setBackgroundColor:(id)color animated:(BOOL)animated;
- (void)setBackgroundImage:(id)image;
- (void)setCallBufferState:(unsigned __int16)state;
- (void)setCurrentState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setDetachedPosterNameViewModel:(id)model;
- (void)setEmergencyTextViaSatelliteUI;
- (void)setEndedState:(unsigned __int16)state;
- (void)setEndingState:(unsigned __int16)state;
- (void)setIdleState:(unsigned __int16)state;
- (void)setInCallRootViewController:(id)controller;
- (void)setKeypadPosterNameViewModel:(id)model;
- (void)setMiddleViewButtonsIfNecessary;
- (void)setMiddleViewState:(unsigned __int16)state animated:(BOOL)animated completion:(id)completion;
- (void)setOutgoingRingingState:(unsigned __int16)state;
- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)updates;
- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)label;
- (void)setPosterNameViewModel:(id)model;
- (void)setPrioritizedCall:(id)call;
- (void)setRingingState:(unsigned __int16)state;
- (void)setRootView;
- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated overrideWithIsUnlocked:(BOOL)unlocked;
- (void)setShowsBlockButton:(BOOL)button;
- (void)setShowsCallDetailsViewButton:(BOOL)button;
- (void)setShowsCallWaitingParticipantView:(BOOL)view;
- (void)setUpBlockButton;
- (void)setUpCallDetailsViewButton;
- (void)setUpLayoutGuidesForParticipantsViewController:(id)controller;
- (void)setUpMiddlePillContainerConstraints;
- (void)setUpPosterBadgeViewIfNecessary;
- (void)setViewsHiddenForAudioRoutes:(BOOL)routes animated:(BOOL)animated;
- (void)setWaitOnHoldState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setWaitingState:(unsigned __int16)state;
- (void)setupAmbientAudioRoutesControlViewIfNeeded;
- (void)setupCallHoldingObservers;
- (void)setupDimmingViewForAlwaysOnDisplay;
- (void)setupHeldCallControlsViewIfNeeded;
- (void)setupNameLabelForAlwaysOnDisplay;
- (void)showAddParticipantSheet;
- (void)showBlockAlertForCall:(id)call;
- (void)showBlockAlertForHandle:(id)handle;
- (void)showCallControls;
- (void)showCallDetailsIfNecessaryForDisplayStyle:(int64_t)style;
- (void)showFirstNameLabelOnKeypad;
- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)manager callCenter:(id)center;
- (void)showPosterBlurTransition;
- (void)showRTTConversation;
- (void)speakAlertUtteranceIfNecessary;
- (void)startAutoCountdownAlert;
- (void)startCallBufferScreenCountdown;
- (void)startCallRecording;
- (void)startMessagePlayback;
- (void)startSuppressionOfSTKAlerts;
- (void)stopCallBufferTimer;
- (void)stopCallRecording;
- (void)stopMessagePlayback;
- (void)stopSuppressionOfSTKAlerts;
- (void)suppressRingtoneForIncomingCall;
- (void)suspendPosterAndCancelDelay:(BOOL)delay;
- (void)synchronizeSingleLabelViewWithPosterText;
- (void)tipKitStartWaitOnHoldObservation;
- (void)tipKitStopWaitOnHoldObservation;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToFullScreenIfNecessary;
- (void)transitionToNewPoster:(id)poster showingPosterTransition:(BOOL)transition shouldBlurPoster:(BOOL)blurPoster completion:(id)completion;
- (void)triggerAutoCountdownIfAvailable;
- (void)updateAmbientAudioRoutesVisibility;
- (void)updateBackgroundContactImageViewWithImage:(id)image animated:(BOOL)animated;
- (void)updateBackgroundForEmergencyCall;
- (void)updateBottomBarAlphaWithCurrentState:(unsigned __int16)state;
- (void)updateBottomBarButtonsWithCall:(id)call;
- (void)updateCallHoldingIfNeeded:(id)needed;
- (void)updateCallHoldingPositionIfNeeded;
- (void)updateCallParticipantsViewControllerCallGroups;
- (void)updateCallRecordingIfNeededWithButtonContainer:(id)container pillContainer:(id)pillContainer;
- (void)updateCallRecordingPositionIfNeeded;
- (void)updateCallRecordingViewBackgroundMaterialType:(unint64_t)type;
- (void)updateCallTranslationIfNeeded;
- (void)updateCurrentState;
- (void)updateDimmingValuesFor:(unsigned __int16)for;
- (void)updateDimmingView;
- (void)updateEnhancedEmergencyViewWhenKeypadPresented;
- (void)updateHardPauseDigitsState;
- (void)updateIncomingBottomBarControlState;
- (void)updateLayeredBackgroundWallpaper;
- (void)updateLayoutSupplementalButtons;
- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)wallpaper;
- (void)updateParticipantConstraintsForPosterName:(id)name;
- (void)updateParticipantsLabelForView:(id)view isHidden:(BOOL)hidden;
- (void)updatePosterBadgeView:(BOOL)view to:(id)to;
- (void)updatePosterDimmingAreaWith:(CGRect)with;
- (void)updatePosterViewModelForParticipantsView:(id)view;
- (void)updatePresentationStateWithAllowed:(BOOL)allowed;
- (void)updateSaliencyRectIfNeeded;
- (void)updateScreenSharingDisableUpdateMask;
- (void)updateScreenSharingIndicatorView;
- (void)updateShareNameAndPhotoHUDPresentationIfNeeded;
- (void)updateShouldShowLargeAvatar;
- (void)updateTextFieldPadding:(id)padding padding:(double)a4;
- (void)updateTranslationBackgroundView:(BOOL)view;
- (void)updateTranslationPosterName:(BOOL)name;
- (void)updateViewForEmergencyCallIfNecessary;
- (void)updateViewsForHeldCallControlsViewIfNeeded;
- (void)updateWaitOnHoldServiceWithCallWithCall:(id)call;
- (void)updateWaitOnHoldViewIfNeeded;
- (void)useRTTButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wantsHoldMusicChangedNotification:(id)notification;
- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)call;
@end

@implementation PHAudioCallViewController

- (BOOL)shouldRenderAlertTextColor
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController shouldRenderAlertTextColor = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
}

- (BOOL)allowsOrientationChangeEvents
{
  v2 = +[UIDevice currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    v5 = userInterfaceIdiom == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)desiresLockButtonEvents
{
  selfCopy = self;
  callCenter = [(PHAudioCallViewController *)self callCenter];
  LOBYTE(selfCopy) = [(PHAudioCallViewController *)selfCopy desiresLockButtonEventsForCallContainer:callCenter];

  return selfCopy;
}

- (BOOL)isPickedRouteReceiver
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isReceiver = [pickedRoute isReceiver];

  return isReceiver;
}

- (BOOL)allowsMenuButtonDismissal
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];
  v4 = incomingCall == 0;

  return v4;
}

- (BOOL)allowsBanners
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];
  v4 = incomingCall == 0;

  return v4;
}

- (BOOL)usesCompactMulticallUI
{
  features = [(PHAudioCallViewController *)self features];
  if ([features callManagerEnabled])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features2 = [(PHAudioCallViewController *)self features];
      v6 = [features2 isDominoEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (TUCall)prioritizedCall
{
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);

  return WeakRetained;
}

- (void)updateViewsForHeldCallControlsViewIfNeeded
{
  v3 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v3 isIPadIdiom];

  if ((isIPadIdiom & 1) == 0)
  {
    heldCallControlsView = [(PHAudioCallViewController *)self heldCallControlsView];
    [heldCallControlsView removeFromSuperview];

    [(PHAudioCallViewController *)self setHeldCallControlsView:0];
    [(PHAudioCallViewController *)self setupHeldCallControlsViewIfNeeded];
    [(PHAudioCallViewController *)self constrainButtonsViewBottom];

    [(PHAudioCallViewController *)self constrainBottomBarBottom];
  }
}

- (void)setupHeldCallControlsViewIfNeeded
{
  heldCallControlsView = [(PHAudioCallViewController *)self heldCallControlsView];

  if (!heldCallControlsView)
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v6 = -[PHAudioCallViewController makeHeldCallControlsViewWithCallCenter:style:](self, "makeHeldCallControlsViewWithCallCenter:style:", callCenter, [callDisplayStyleManager callDisplayStyle]);
    [(PHAudioCallViewController *)self setHeldCallControlsView:v6];

    heldCallControlsView2 = [(PHAudioCallViewController *)self heldCallControlsView];

    if (heldCallControlsView2)
    {
      view = [(PHAudioCallViewController *)self view];
      heldCallControlsView3 = [(PHAudioCallViewController *)self heldCallControlsView];
      [view addSubview:heldCallControlsView3];

      heldCallControlsView4 = [(PHAudioCallViewController *)self heldCallControlsView];
      [heldCallControlsView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager2 callDisplayStyle] == 3)
      {
        features = [(PHAudioCallViewController *)self features];
        isDominoEnabled = [features isDominoEnabled];

        if (isDominoEnabled)
        {
          heldCallControlsView5 = [(PHAudioCallViewController *)self heldCallControlsView];
          leadingAnchor = [heldCallControlsView5 leadingAnchor];
          view2 = [(PHAudioCallViewController *)self view];
          leadingAnchor2 = [view2 leadingAnchor];
          v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
          v39[0] = v18;
          heldCallControlsView6 = [(PHAudioCallViewController *)self heldCallControlsView];
          bottomAnchor = [heldCallControlsView6 bottomAnchor];
          view3 = [(PHAudioCallViewController *)self view];
          safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
          [safeAreaLayoutGuide bottomAnchor];
          layoutMarginsGuide = heldCallControlsView9 = bottomAnchor;
          v32 = [bottomAnchor constraintEqualToAnchor:?];
          v39[1] = v32;
          heldCallControlsView7 = [(PHAudioCallViewController *)self heldCallControlsView];
          trailingAnchor = [heldCallControlsView7 trailingAnchor];
          leadingSideLayoutGuide = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
          trailingAnchor2 = [leadingSideLayoutGuide trailingAnchor];
          safeAreaLayoutGuide2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
          v39[2] = safeAreaLayoutGuide2;
          bottomAnchor2 = [NSArray arrayWithObjects:v39 count:3];
          [NSLayoutConstraint activateConstraints:bottomAnchor2];
LABEL_8:

          return;
        }
      }

      else
      {
      }

      heldCallControlsView8 = [(PHAudioCallViewController *)self heldCallControlsView];
      leadingAnchor3 = [heldCallControlsView8 leadingAnchor];
      view2 = [(PHAudioCallViewController *)self view];
      leadingAnchor2 = [view2 layoutMarginsGuide];
      v17LeadingAnchor = [leadingAnchor2 leadingAnchor];
      heldCallControlsView6 = [leadingAnchor3 constraintEqualToAnchor:v17LeadingAnchor];
      v38[0] = heldCallControlsView6;
      heldCallControlsView9 = [(PHAudioCallViewController *)self heldCallControlsView];
      trailingAnchor3 = [heldCallControlsView9 trailingAnchor];
      safeAreaLayoutGuide = [(PHAudioCallViewController *)self view];
      layoutMarginsGuide = [safeAreaLayoutGuide layoutMarginsGuide];
      [layoutMarginsGuide trailingAnchor];
      v32 = view3 = trailingAnchor3;
      heldCallControlsView7 = [trailingAnchor3 constraintEqualToAnchor:?];
      v38[1] = heldCallControlsView7;
      trailingAnchor = [(PHAudioCallViewController *)self heldCallControlsView];
      leadingSideLayoutGuide = [trailingAnchor bottomAnchor];
      trailingAnchor2 = [(PHAudioCallViewController *)self view];
      safeAreaLayoutGuide2 = [trailingAnchor2 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
      v27 = [leadingSideLayoutGuide constraintEqualToAnchor:bottomAnchor2];
      v38[2] = v27;
      v28 = [NSArray arrayWithObjects:v38 count:3];
      [NSLayoutConstraint activateConstraints:v28];

      v18 = v17LeadingAnchor;
      heldCallControlsView5 = heldCallControlsView8;
      leadingAnchor = leadingAnchor3;
      goto LABEL_8;
    }
  }
}

- (id)makeHeldCallControlsViewWithCallCenter:(id)center style:(int64_t)style
{
  centerCopy = center;
  selfCopy = self;
  v8 = PHAudioCallViewController.makeHeldCallControls(callCenter:style:)(centerCopy, style);

  return v8;
}

- (void)constrainButtonsViewBottom
{
  buttonsViewBottomConstraintToUse = [(PHAudioCallViewController *)self buttonsViewBottomConstraintToUse];
  if (buttonsViewBottomConstraintToUse)
  {
    v5 = buttonsViewBottomConstraintToUse;
    buttonsViewBottomConstraint = [(PHAudioCallViewController *)self buttonsViewBottomConstraint];
    [buttonsViewBottomConstraint setActive:0];

    [(PHAudioCallViewController *)self setButtonsViewBottomConstraint:v5];
    [v5 setActive:1];
    buttonsViewBottomConstraintToUse = v5;
  }
}

- (id)buttonsViewBottomConstraintToUse
{
  buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
  view = [buttonsViewController view];
  superview = [view superview];

  if (!superview)
  {
    goto LABEL_26;
  }

  emergencyPhotoPickerGrabberView = [(PHAudioCallViewController *)self emergencyPhotoPickerGrabberView];

  if (emergencyPhotoPickerGrabberView)
  {
    buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController2 view];
    bottomAnchor = [view2 bottomAnchor];
    emergencyPhotoPickerGrabberView2 = [(PHAudioCallViewController *)self emergencyPhotoPickerGrabberView];
    topAnchor = [emergencyPhotoPickerGrabberView2 topAnchor];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
    if (callDisplayStyle == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if ([features isDominoEnabled])
      {
        +[PHUIConfiguration ambientVerticalPadding];
        v16 = (v15 + 32.0) * -2.5;
      }

      else
      {
        v16 = -50.0;
      }
    }

    else
    {
      v16 = -50.0;
    }

LABEL_20:
    v28 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v16];
    if (callDisplayStyle == 3)
    {
    }

LABEL_23:
    goto LABEL_27;
  }

  heldCallControlsView = [(PHAudioCallViewController *)self heldCallControlsView];
  if (heldCallControlsView)
  {
    v18 = heldCallControlsView;
    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features2 = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features2 isDominoEnabled];

      if (isDominoEnabled)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController2 view];
    bottomAnchor = [view2 bottomAnchor];
    emergencyPhotoPickerGrabberView2 = [(PHAudioCallViewController *)self heldCallControlsView];
    topAnchor2 = [emergencyPhotoPickerGrabberView2 topAnchor];
LABEL_16:
    topAnchor = topAnchor2;
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
    v26 = 20.0;
    if (callDisplayStyle == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if ([features isDominoEnabled])
      {
        +[PHUIConfiguration ambientVerticalPadding];
        v26 = v27 + 32.0;
      }
    }

    v16 = -v26;
    goto LABEL_20;
  }

LABEL_9:
  callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager3 callDisplayStyle] == 3)
  {
    features3 = [(PHAudioCallViewController *)self features];
    isDominoEnabled2 = [features3 isDominoEnabled];

    if (isDominoEnabled2)
    {
      buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
      view2 = [buttonsViewController2 view];
      bottomAnchor = [view2 bottomAnchor];
      emergencyPhotoPickerGrabberView2 = [(PHAudioCallViewController *)self view];
      topAnchor2 = [emergencyPhotoPickerGrabberView2 bottomAnchor];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v29 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v29 isIPadIdiom];

  if ((isIPadIdiom & 1) == 0)
  {
    v32 = +[UIScreen mainScreen];
    [v32 bounds];
    v34 = v33;
    v36 = v35;

    if (v34 >= v36)
    {
      v36 = v34;
    }

    +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
    v38 = v37;
    buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController2 view];
    bottomAnchor = [view2 bottomAnchor];
    emergencyPhotoPickerGrabberView2 = [(PHAudioCallViewController *)self view];
    topAnchor = [emergencyPhotoPickerGrabberView2 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-(v36 * v38)];
    goto LABEL_23;
  }

LABEL_26:
  v28 = 0;
LABEL_27:

  return v28;
}

- (PHAudioButtonsViewControllerProtocol)buttonsViewController
{
  if (!self->_buttonsViewController)
  {
    features = [(PHAudioCallViewController *)self features];
    isModernAudioBottomButtonsEnabled = [features isModernAudioBottomButtonsEnabled];

    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if (isModernAudioBottomButtonsEnabled)
    {
      frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
      view = [(PHAudioCallViewController *)self view];
      [view frame];
      v9 = [PHInCallAudioButtonsBuilder buildModernSixedUpViewControllerWithCallDisplayManager:callDisplayStyleManager frontmostCall:frontmostCall with:v8];
      buttonsViewController = self->_buttonsViewController;
      self->_buttonsViewController = v9;
    }

    else
    {
      v11 = [PHInCallAudioButtonsBuilder buildDeprecatedSixedUpViewControllerWithCallDisplayManager:callDisplayStyleManager];
      v12 = self->_buttonsViewController;
      self->_buttonsViewController = v11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_buttonsViewController;
      [(PHAudioCallViewController *)self addChildViewController:v13];
      [(PHAudioButtonsViewControllerProtocol *)self->_buttonsViewController setDelegate:self];
    }
  }

  v14 = self->_buttonsViewController;

  return v14;
}

- (void)constrainBottomBarBottom
{
  bottomBarBottomConstraintToUse = [(PHAudioCallViewController *)self bottomBarBottomConstraintToUse];
  if (bottomBarBottomConstraintToUse)
  {
    v5 = bottomBarBottomConstraintToUse;
    bottomBarBottomConstraint = [(PHAudioCallViewController *)self bottomBarBottomConstraint];
    [bottomBarBottomConstraint setActive:0];

    [(PHAudioCallViewController *)self setBottomBarBottomConstraint:v5];
    [v5 setActive:1];
    bottomBarBottomConstraintToUse = v5;
  }
}

- (id)bottomBarBottomConstraintToUse
{
  heldCallControlsView = [(PHAudioCallViewController *)self heldCallControlsView];
  if (heldCallControlsView)
  {
    v5 = heldCallControlsView;
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    bottomAnchor = [bottomBar bottomAnchor];
    heldCallControlsView2 = [(PHAudioCallViewController *)self heldCallControlsView];
    topAnchor = [heldCallControlsView2 topAnchor];
    goto LABEL_8;
  }

LABEL_4:
  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    bottomAnchor = [bottomBar bottomAnchor];
    heldCallControlsView2 = [(PHAudioCallViewController *)self view];
    safeAreaLayoutGuide = [heldCallControlsView2 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
LABEL_13:

    goto LABEL_14;
  }

  callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager2 callDisplayStyle] == 3)
  {
    features2 = [(PHAudioCallViewController *)self features];
    isDominoEnabled2 = [features2 isDominoEnabled];

    if (isDominoEnabled2)
    {
      bottomBar = [(PHCallViewController *)self bottomBar];
      bottomAnchor = [bottomBar bottomAnchor];
      heldCallControlsView2 = [(PHAudioCallViewController *)self view];
      topAnchor = [heldCallControlsView2 bottomAnchor];
LABEL_8:
      safeAreaLayoutGuide = topAnchor;
      bottomAnchor2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      callDisplayStyle = [bottomAnchor2 callDisplayStyle];
      v19 = 20.0;
      if (callDisplayStyle == 3)
      {
        features3 = [(PHAudioCallViewController *)self features];
        if ([features3 isDominoEnabled])
        {
          +[PHUIConfiguration ambientVerticalPadding];
          v19 = v20 + 32.0;
        }
      }

      v16 = [bottomAnchor constraintEqualToAnchor:safeAreaLayoutGuide constant:-v19];
      if (callDisplayStyle == 3)
      {
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v25 = +[PHInCallUtilities sharedInstance];
  [v25 isIPadIdiom];

  bottomBar = [(PHCallViewController *)self bottomBar];
  bottomAnchor = [bottomBar bottomAnchor];
  heldCallControlsView2 = [(PHAudioCallViewController *)self view];
  safeAreaLayoutGuide = [heldCallControlsView2 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:safeAreaLayoutGuide];
LABEL_14:

  return v16;
}

- (void)updateCurrentState
{
  [(PHAudioCallViewController *)self refreshCallDetailsViewButton];
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if (![callDisplayStyleManager callDisplayStyle])
  {
    v6 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];

    if (!v6)
    {
      goto LABEL_5;
    }

    callDisplayStyleManager = +[UIApplication sharedApplication];
    delegate = [callDisplayStyleManager delegate];
    currentInCallScene = [delegate currentInCallScene];
    [currentInCallScene requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceCallScreeningBegin"];
  }

LABEL_5:
  v9 = +[PHSOSViewController isCallBufferDismissalAssertionActive];
  if (!v9)
  {
    goto LABEL_8;
  }

  if ([currentCallGroups count])
  {
    v9 = +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
LABEL_8:
    v10 = sub_100004F84(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v150 = 138412290;
      *&v150[4] = currentCallGroups;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Current Call Groups is %@", v150, 0xCu);
    }

    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    v12 = [callCenter2 allCallsPassTest:&stru_100359C08];

    callCenter3 = [(PHAudioCallViewController *)self callCenter];
    routeController = [callCenter3 routeController];
    pickedRoute = [routeController pickedRoute];
    deviceType = [pickedRoute deviceType];

    if (!v12 || [(PHCallViewController *)self currentState]!= 1 && [(PHCallViewController *)self currentState]!= 3 && deviceType != 13)
    {
      goto LABEL_17;
    }

    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
LABEL_17:
        [(PHCallViewController *)self obtainDismissalAssertionIfNeeded];
        v20 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v20 = 1;
LABEL_23:
    if ([currentCallGroups count])
    {
      if (([(PHAudioCallViewController *)self isViewLoaded]& 1) == 0)
      {
        [(PHAudioCallViewController *)self loadView];
      }

      v22 = +[UIApplication sharedApplication];
      delegate2 = [v22 delegate];
      bannerPresentationManager = [delegate2 bannerPresentationManager];
      callDetailsCoordinator = [(PHAudioCallViewController *)self callDetailsCoordinator];
      v26 = [(PHAudioCallViewController *)self makeCallDetailsCoordinatorWithBannerPresentationManager:bannerPresentationManager existingCoordinator:callDetailsCoordinator deferredPresentationManager:self];

      outcome = [v26 outcome];
      if (outcome == 1)
      {
        [(PHAudioCallViewController *)self setCallDetailsCoordinator:0];
      }

      else if (outcome == 2)
      {
        coordinator = [v26 coordinator];
        [(PHAudioCallViewController *)self setCallDetailsCoordinator:coordinator];
      }
    }

    v29 = [currentCallGroups count];
    if (!v29)
    {
      v34 = +[UIApplication sharedApplication];
      delegate3 = [v34 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate3 mostRecentlyDisconnectedAudioCall];

      if (!mostRecentlyDisconnectedAudioCall)
      {
        goto LABEL_76;
      }

      v37 = [mostRecentlyDisconnectedAudioCall canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
      v38 = v37;
      v39 = sub_100004F84(v37);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        if (v40)
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Emergency call has been disconnected, setting state to PHInCallStateAlertModeNeededIfAvailable", v150, 2u);
        }

        [(PHAudioCallViewController *)self setCurrentState:8 animated:1];
        [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
        [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteUI];
        buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
        view = [buttonsViewController view];

        [view updateControls];
        [(PHAudioCallViewController *)self setMiddleViewState:1];
        currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
        v44 = objc_opt_respondsToSelector();

        if (v44)
        {
          currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
          [currentMiddleView2 setButtonsEnabled:1];
        }
      }

      else
      {
        if (v40)
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call has been disconnected, setting state to PHInCallStateEnded", v150, 2u);
        }

        if ([(PHCallViewController *)self currentState]== 8)
        {
          bottomBar = [(PHCallViewController *)self bottomBar];
          [bottomBar setCurrentState:11];
        }

        [(PHAudioCallViewController *)self setCurrentState:7 animated:0];
        [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
        [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
      }

      if (([mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI] & 1) == 0)
      {
LABEL_76:
        [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
      }

      goto LABEL_111;
    }

    if (v20)
    {
      v30 = sub_100004F84(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        currentState = [(PHCallViewController *)self currentState];
        *v150 = 67109376;
        *&v150[4] = currentState;
        *&v150[8] = 1024;
        *&v150[10] = deviceType == 13;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: All calls are an endpoint elsewhere and previous state was %d OR shouldDismissForPickedRoute is %d, so setting state to PHInCallStateIdle", v150, 0xEu);
      }

      selfCopy4 = self;
      v33 = 0;
      goto LABEL_36;
    }

    if ([currentCallGroups count] != 1 || (-[PHAudioCallViewController callCenter](self, "callCenter"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "hasCurrentVideoCalls"), v46, (v47 & 1) != 0))
    {
      v48 = [currentCallGroups count];
      callCenter4 = [(PHAudioCallViewController *)self callCenter];
      v50 = &v48[[callCenter4 currentVideoCallCount]];

      if (v50 < 2)
      {
        goto LABEL_112;
      }

      v52 = sub_100004F84(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: More than one call is active...", v150, 2u);
      }

      callCenter5 = [(PHAudioCallViewController *)self callCenter];
      incomingCall = [callCenter5 incomingCall];

      if (incomingCall)
      {
        v56 = sub_100004F84(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we have an incoming audio call...", v150, 2u);
        }

        callCenter6 = [(PHAudioCallViewController *)self callCenter];
        callCenter7 = [callCenter6 callWithStatus:1];
        if (!callCenter7)
        {
          callCenter7 = [(PHAudioCallViewController *)self callCenter];
          callCenter8 = [callCenter7 callWithStatus:3];
          if (!callCenter8)
          {
            callCenter8 = [(PHAudioCallViewController *)self callCenter];
            v60 = [callCenter8 callWithStatus:2];
            if (!v60)
            {
              callCenter9 = [(PHAudioCallViewController *)self callCenter];
              currentVideoCallCount = [callCenter9 currentVideoCallCount];

              if (!currentVideoCallCount)
              {
                prioritizedCall = sub_100004F84(v136);
                if (os_log_type_enabled(prioritizedCall, OS_LOG_TYPE_DEFAULT))
                {
                  *v150 = 0;
                  _os_log_impl(&_mh_execute_header, prioritizedCall, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but we don't also have an active call, so moving to PHInCallStateIncomingRinging", v150, 2u);
                }

                goto LABEL_147;
              }

LABEL_58:
              v61 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];
              callCenter10 = [(PHAudioCallViewController *)self callCenter];
              ics_hasTooManyCallsForCallWaitingBanner = [callCenter10 ics_hasTooManyCallsForCallWaitingBanner];

              features2 = [(PHAudioCallViewController *)self features];
              if (([features2 shouldShowFullScreenCallWaiting] & 1) != 0 || (v61 & 1) != 0 || (ics_hasTooManyCallsForCallWaitingBanner & 1) != 0 || -[PHAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI"))
              {

                goto LABEL_63;
              }

              callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
              if ([callDisplayStyleManager3 callDisplayStyle] == 3)
              {
                features3 = [(PHAudioCallViewController *)self features];
                isDominoEnabled2 = [features3 isDominoEnabled];

                if (isDominoEnabled2)
                {
LABEL_63:
                  v66 = sub_100004F84(v65);
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    *v150 = 0;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateCallWaiting", v150, 2u);
                  }

                  if (![(PHAudioCallViewController *)self usesCompactMulticallUI])
                  {
                    selfCopy4 = self;
                    v33 = 3;
LABEL_36:
                    [(PHAudioCallViewController *)selfCopy4 setCurrentState:v33 animated:1, *v150];
                    goto LABEL_112;
                  }

                  prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
                  callUUID = [prioritizedCall callUUID];
                  if (callUUID)
                  {
                    v69 = callUUID;
                    callCenter11 = [(PHAudioCallViewController *)self callCenter];
                    incomingCall2 = [callCenter11 incomingCall];
                    callUUID2 = [incomingCall2 callUUID];
                    prioritizedCall2 = [(PHAudioCallViewController *)self prioritizedCall];
                    callUUID3 = [prioritizedCall2 callUUID];

                    if (callUUID2 != callUUID3)
                    {
                      prioritizedCall3 = [(PHAudioCallViewController *)self prioritizedCall];
                      if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:prioritizedCall3])
                      {
                      }

                      else
                      {
                        currentState2 = [(PHCallViewController *)self currentState];

                        if (currentState2 == 12)
                        {
                          [(PHAudioCallViewController *)self setCurrentState:4 animated:1];
                        }
                      }

                      goto LABEL_114;
                    }

                    goto LABEL_148;
                  }

LABEL_147:

LABEL_148:
                  selfCopy4 = self;
                  v33 = 1;
                  goto LABEL_36;
                }
              }

              else
              {
              }

              v125 = sub_100004F84(v65);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                *v150 = 0;
                v126 = "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateSingleCallActive (EmbedSwapBanner)";
LABEL_157:
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, v126, v150, 2u);
                goto LABEL_158;
              }

              goto LABEL_158;
            }
          }
        }

        goto LABEL_58;
      }

      v89 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];
      usesCompactMulticallUI = [(PHAudioCallViewController *)self usesCompactMulticallUI];
      v91 = usesCompactMulticallUI;
      if (!v89)
      {
        v103 = sub_100004F84(usesCompactMulticallUI);
        v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT);
        if (v91)
        {
          if (v104)
          {
            *v150 = 0;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateSingleCallActive", v150, 2u);
          }

          v105 = 4;
        }

        else
        {
          if (v104)
          {
            *v150 = 0;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateMultipleCallsActive", v150, 2u);
          }

          v105 = 5;
        }

        [(PHAudioCallViewController *)self setCurrentState:v105 animated:1];
        [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
        goto LABEL_112;
      }

      if (usesCompactMulticallUI)
      {
        usesCompactMulticallUI = [(PHAudioCallViewController *)self prioritizedCall];
        if (usesCompactMulticallUI)
        {
          v92 = usesCompactMulticallUI;
          prioritizedCall4 = [(PHAudioCallViewController *)self prioritizedCall];
          isScreening = [prioritizedCall4 isScreening];

          if ((isScreening & 1) == 0)
          {
            v125 = sub_100004F84(usesCompactMulticallUI);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              *v150 = 0;
              v126 = "UpdateCurrentState: ... but no incoming call and the screening call isn't the prioritized one.";
              goto LABEL_157;
            }

LABEL_158:

            selfCopy4 = self;
            v33 = 4;
            goto LABEL_36;
          }
        }
      }

      v95 = sub_100004F84(usesCompactMulticallUI);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but no incoming call while one is being screened meaning the other was declined, so moving to PHInCallStateScreening", v150, 2u);
      }

      frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
      v97 = frontmostCall;
      if (frontmostCall)
      {
        mostRecentlyDisconnectedAudioCall = frontmostCall;
      }

      else
      {
        callCenter12 = [(PHAudioCallViewController *)self callCenter];
        currentCalls = [callCenter12 currentCalls];
        mostRecentlyDisconnectedAudioCall = [currentCalls firstObject];
      }

      v130 = sub_100004F84(v129);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        *v150 = 138412290;
        *&v150[4] = mostRecentlyDisconnectedAudioCall;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... frontmost call %@", v150, 0xCu);
      }

      if (mostRecentlyDisconnectedAudioCall)
      {
        if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:mostRecentlyDisconnectedAudioCall])
        {
          waitOnHoldViewController = self->_waitOnHoldViewController;
          self->_waitOnHoldViewController = 0;

          v132 = 12;
        }

        else
        {
          v132 = 11;
        }

        [(PHAudioCallViewController *)self setCurrentState:v132 animated:1];
      }

LABEL_111:

LABEL_112:
      topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
      middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
      [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

      topLeadingContainer2 = [(PHAudioCallViewController *)self topLeadingContainer];
      [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:topLeadingContainer2];

      [(PHAudioCallViewController *)self updateCallTranslationIfNeeded];
      screeningViewController = self->_screeningViewController;
      if (screeningViewController)
      {
        [(PHAudioCallViewController *)self screeningTextFieldPadding];
        [(PHAudioCallViewController *)self updateTextFieldPadding:screeningViewController padding:?];
      }

      goto LABEL_114;
    }

    mostRecentlyDisconnectedAudioCall = [currentCallGroups lastObject];
    isConnected = [mostRecentlyDisconnectedAudioCall isConnected];
    removeEmergencyTextViaSatelliteUI = [mostRecentlyDisconnectedAudioCall canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    v79 = removeEmergencyTextViaSatelliteUI;
    if ((removeEmergencyTextViaSatelliteUI & 1) == 0)
    {
      removeEmergencyTextViaSatelliteUI = [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
    }

    v80 = sub_100004F84(removeEmergencyTextViaSatelliteUI);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      callStatus = [mostRecentlyDisconnectedAudioCall callStatus];
      isEmergency = [mostRecentlyDisconnectedAudioCall isEmergency];
      isFailureExpected = [mostRecentlyDisconnectedAudioCall isFailureExpected];
      shouldPresentAlertButton = [(PHAudioCallViewController *)self shouldPresentAlertButton];
      *v150 = 67110144;
      *&v150[4] = v79;
      *&v150[8] = 1024;
      *&v150[10] = callStatus;
      v151 = 1024;
      v152 = isEmergency;
      v153 = 1024;
      v154 = isFailureExpected;
      v155 = 1024;
      v156 = shouldPresentAlertButton;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController will or will not update UI for alert: needsAlertUI = %d, callStatus = %d, isEmergency = %d, isFailureExpected = %d, alertServiceAvailable = %d", v150, 0x20u);
    }

    if (v79)
    {
      v86 = sub_100004F84(v85);
      v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
      if (isConnected)
      {
        if (v87)
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is not TUCallStatusActive, setting state to PHInCallStateAlertModeNeededWhileConnectedIfAvailable", v150, 2u);
        }

        v88 = 9;
      }

      else
      {
        if (v87)
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is not TUCallStatusActive, setting state to PHInCallStateAlertModeNeededIfAvailable", v150, 2u);
        }

        v88 = 8;
      }

      [(PHAudioCallViewController *)self setCurrentState:v88 animated:1];
      [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
      [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteUI];
LABEL_109:
      buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
      view2 = [buttonsViewController2 view];

      [view2 updateControls];
      goto LABEL_110;
    }

    status = [mostRecentlyDisconnectedAudioCall status];
    if (status == 4 || (status = [mostRecentlyDisconnectedAudioCall wantsHoldMusic], status))
    {
      v99 = sub_100004F84(status);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging, setting state to PHInCallStateIncomingRinging", v150, 2u);
      }

      selfCopy7 = self;
      v101 = 1;
      v102 = 0;
      goto LABEL_99;
    }

    if ([mostRecentlyDisconnectedAudioCall status] != 1 && objc_msgSend(mostRecentlyDisconnectedAudioCall, "status") != 2)
    {
      status2 = [mostRecentlyDisconnectedAudioCall status];
      if (status2 == 5)
      {
        v140 = sub_100004F84(status2);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", v150, 2u);
        }

        selfCopy7 = self;
        v101 = 6;
      }

      else
      {
        status3 = [mostRecentlyDisconnectedAudioCall status];
        if (status3 != 6)
        {
          if ([mostRecentlyDisconnectedAudioCall status] != 3)
          {
            goto LABEL_110;
          }

          currentState3 = [(PHCallViewController *)self currentState];
          LOWORD(v116) = currentState3;
          v144 = sub_100004F84(currentState3);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *v150 = 0;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is Sending, setting state to PHInCallStateOutgoingRinging", v150, 2u);
          }

          [(PHAudioCallViewController *)self setCurrentState:2 animated:1];
          goto LABEL_179;
        }

        v142 = sub_100004F84(status3);
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnected, setting state to PHInCallStateEnded", v150, 2u);
        }

        selfCopy7 = self;
        v101 = 7;
      }

      v102 = 1;
LABEL_99:
      [(PHAudioCallViewController *)selfCopy7 setCurrentState:v101 animated:v102];
LABEL_110:

      goto LABEL_111;
    }

    currentState4 = [(PHCallViewController *)self currentState];
    v116 = currentState4;
    v117 = sub_100004F84(currentState4);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, and the call was initiated on this device", v150, 2u);
    }

    calls = [mostRecentlyDisconnectedAudioCall calls];
    v119 = [calls count];

    v121 = sub_100004F84(v120);
    v122 = os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT);
    if (v119 >= 2)
    {
      if (v122)
      {
        calls2 = [mostRecentlyDisconnectedAudioCall calls];
        v124 = [calls2 count];
        *v150 = 134217984;
        *&v150[4] = v124;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "There are %lu calls in call group, so setting state to PHInCallStateMultipleCallsActive", v150, 0xCu);
      }

      [(PHAudioCallViewController *)self setCurrentState:5 animated:1];
      if (!v116)
      {
        [(PHAudioCallViewController *)self setMiddleViewState:1];
        goto LABEL_110;
      }

      goto LABEL_179;
    }

    if (v122)
    {
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "There is only one call in call group, so setting state to PHInCallStateSingleCallActive", v150, 2u);
    }

    if ([(PHAudioCallViewController *)self _isScreeningCallGroup:mostRecentlyDisconnectedAudioCall]&& ![(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:mostRecentlyDisconnectedAudioCall])
    {
      selfCopy9 = self;
      v138 = 11;
    }

    else
    {
      if (![(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:mostRecentlyDisconnectedAudioCall])
      {
        [(PHAudioCallViewController *)self setCurrentState:4 animated:1];
        if (![(PHAudioCallViewController *)self hasKeypadUpdated])
        {
          [(PHAudioCallViewController *)self showFirstNameLabelOnKeypad];
        }

        goto LABEL_172;
      }

      selfCopy9 = self;
      v138 = 12;
    }

    [(PHAudioCallViewController *)selfCopy9 setCurrentState:v138 animated:1];
LABEL_172:
    if (self->_waitOnHoldTipView && [(PHCallViewController *)self currentState]== 4)
    {
      [(PHAudioCallViewController *)self displayWaitOnHoldTip];
    }

LABEL_179:
    if ((v116 & 0xFFFE) != 8)
    {
      goto LABEL_110;
    }

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 setCurrentState:11];

    [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
    v146 = +[PHInCallUtilities sharedInstance];
    if ([v146 isIPadIdiom])
    {
      callDisplayStyleManager4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager4 callDisplayStyle] != 3)
      {

        goto LABEL_110;
      }

      features4 = [(PHAudioCallViewController *)self features];
      isDominoEnabled3 = [features4 isDominoEnabled];

      if (!isDominoEnabled3)
      {
        goto LABEL_110;
      }
    }

    else
    {
    }

    goto LABEL_109;
  }

  v21 = sub_100004F84(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v150 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,UpdateCurrentState,invoking setCurrentState:PHInCallStateCallBuffer", v150, 2u);
  }

  [(PHAudioCallViewController *)self setCurrentState:10];
LABEL_114:
}

- (void)refreshCallDetailsViewButton
{
  shouldShowCallDetailsViewButton = [(PHAudioCallViewController *)self shouldShowCallDetailsViewButton];

  [(PHAudioCallViewController *)self setShowsCallDetailsViewButton:shouldShowCallDetailsViewButton];
}

- (BOOL)shouldShowCallDetailsViewButton
{
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
LABEL_2:
    v4 = +[CNKFeatures sharedInstance];
    isMoreMenuEnabled = [v4 isMoreMenuEnabled];

    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    v7 = frontmostCall;
    if (isMoreMenuEnabled)
    {
      callCenter = [(PHAudioCallViewController *)self callCenter];
      currentCallGroups = [callCenter currentCallGroups];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      provider2 = currentCallGroups;
      v11 = [provider2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(provider2);
            }

            calls = [*(*(&v27 + 1) + 8 * i) calls];
            v16 = [calls count];

            if (v16 > 1)
            {
              v17 = 1;
              goto LABEL_26;
            }
          }

          v12 = [provider2 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_26:

      provider = [v7 provider];
      if ((([provider isFaceTimeProvider] & 1) != 0 || v17 && -[PHAudioCallViewController shouldShowConferenceCallDetails](self, "shouldShowConferenceCallDetails")) && ((objc_msgSend(v7, "isActive", v27) & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
      {
        callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([callDisplayStyleManager callDisplayStyle])
        {
          callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          v23 = [callDisplayStyleManager2 callDisplayStyle] != 3;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      provider2 = [frontmostCall provider];
      isFaceTimeProvider = [provider2 isFaceTimeProvider];
      if ((isFaceTimeProvider & 1) != 0 || ([v7 provider], provider = objc_claimAutoreleasedReturnValue(), objc_msgSend(provider, "isTelephonyProvider")))
      {
        if ((([v7 isActive] & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
        {
          callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          if ([callDisplayStyleManager3 callDisplayStyle])
          {
            callDisplayStyleManager4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
            v23 = [callDisplayStyleManager4 callDisplayStyle] != 3;

            if (isFaceTimeProvider)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }

        v23 = 0;
        if (isFaceTimeProvider)
        {
          goto LABEL_41;
        }

LABEL_40:

LABEL_41:
        return v23;
      }
    }

    v23 = 0;
    goto LABEL_40;
  }

  callDisplayStyleManager5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager5 callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    provider = [features isDominoEnabled];

    if (provider)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)shouldUseHeroImageLayout
{
  features = [(PHAudioCallViewController *)self features];
  isHeroImageEnabled = [features isHeroImageEnabled];

  return isHeroImageEnabled;
}

- (TUCall)frontmostCall
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI])
  {
    activeCall = [(PHAudioCallViewController *)self activeCall];
  }

  else
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    activeCall = [callCenter frontmostCall];
  }

  return activeCall;
}

- (TUCall)activeCall
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
  }

  else
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    prioritizedCall = [callCenter callWithStatus:1];

    if (!prioritizedCall)
    {
      callCenter2 = [(PHAudioCallViewController *)self callCenter];
      prioritizedCall = [callCenter2 callWithStatus:4];

      if (!prioritizedCall)
      {
        callCenter3 = [(PHAudioCallViewController *)self callCenter];
        prioritizedCall = [callCenter3 callWithStatus:3];

        if (!prioritizedCall)
        {
          callCenter4 = [(PHAudioCallViewController *)self callCenter];
          prioritizedCall = [callCenter4 callWithStatus:2];
        }
      }
    }
  }

  return prioritizedCall;
}

- (BOOL)needsDismissalAssertion
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  hasCurrentAudioCalls = [callCenter hasCurrentAudioCalls];

  return hasCurrentAudioCalls;
}

- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)manager existingCoordinator:(id)coordinator deferredPresentationManager:(id)presentationManager
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = PHAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(managerCopy, coordinator, presentationManager);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

- (void)removeEmergencyTextViaSatelliteUI
{
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
    if (callDisplayStyle != 3)
    {
LABEL_10:
      v5 = callDisplayStyleManager;
      goto LABEL_11;
    }

    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      return;
    }
  }

  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  callDisplayStyleManager = frontmostCall;
  if (!frontmostCall || (callDisplayStyle = [frontmostCall isEmergency], v5 = callDisplayStyleManager, callDisplayStyle))
  {
    [(PHAudioCallViewController *)self addDefaultBackgroundGradientView];
    getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
    statusLabel = [singleCallLabelView statusLabel];

    [statusLabel setAlpha:1.0];
    emergencyTextViaSatelliteLabel = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

    if (emergencyTextViaSatelliteLabel)
    {
      emergencyTextViaSatelliteLabel2 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
      [emergencyTextViaSatelliteLabel2 removeFromSuperview];

      [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteLabel:0];
    }

    goto LABEL_10;
  }

LABEL_11:

  _objc_release_x1(callDisplayStyle, v5);
}

- (id)isolatedCall
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentCalls = [callCenter currentCalls];

  if ([currentCalls count] == 1)
  {
    firstObject = [currentCalls firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (NSArray)contactKeysToFetch
{
  if (qword_1003B0FD8 != -1)
  {
    sub_1002571A8();
  }

  v3 = qword_1003B0FD0;

  return v3;
}

- (BOOL)shouldShowContactOrLastSeenWallpaper
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    if ([features isDominoEnabled])
    {

      goto LABEL_13;
    }

    shouldUseHeroImageLayout = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];

    if ((shouldUseHeroImageLayout & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    shouldUseHeroImageLayout2 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];

    if (!shouldUseHeroImageLayout2)
    {
      return 0;
    }
  }

  if (![(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls]|| ([(PHAudioCallViewController *)self renderingViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
    callDisplayStyleManager = callToUseForWallpaper;
    if (callToUseForWallpaper)
    {
      contactIdentifier = [callToUseForWallpaper contactIdentifier];

      if (contactIdentifier)
      {
        if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:callDisplayStyleManager]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callDisplayStyleManager])
        {
          v12 = [(PHAudioCallViewController *)self contactWallpaperForCall:callDisplayStyleManager];
          v7 = v12 != 0;
        }

        else
        {
          v7 = [(PHAudioCallViewController *)self hasLastSeenPosterForCall:callDisplayStyleManager];
        }

        goto LABEL_14;
      }
    }

LABEL_13:
    v7 = 0;
LABEL_14:

    return v7;
  }

  return 1;
}

- (BOOL)hasNoCallsOrOnlyEndedCalls
{
  selfCopy = self;
  v3 = sub_10001299C();

  return v3;
}

- (TUCall)callToUseForWallpaper
{
  selfCopy = self;
  v3 = sub_100012B70();

  return v3;
}

- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)connected
{
  connectedCopy = connected;
  connectedCopy2 = connected;
  selfCopy = self;
  LOBYTE(connectedCopy) = sub_100013460(connectedCopy);

  return connectedCopy & 1;
}

- (void)addDefaultBackgroundGradientView
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Adding default backgroundGradientView", buf, 2u);
  }

  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_4;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

    return;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
LABEL_4:
    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features2 = [(PHAudioCallViewController *)self features];
      isDominoEnabled2 = [features2 isDominoEnabled];

      if (isDominoEnabled2)
      {
        return;
      }
    }

    else
    {
    }

    if ([(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(PHAudioCallViewController *)self updateBackgroundForEmergencyCall];
    }

    else
    {
      defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!defaultBackgroundGradientView)
      {
        v32 = objc_alloc_init(PHAudioCallBackgroundGradientViewController);
        view = [(PHAudioCallBackgroundGradientViewController *)v32 view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        view2 = [(PHAudioCallViewController *)self view];
        [view2 insertSubview:view atIndex:0];

        leadingAnchor = [view leadingAnchor];
        view3 = [(PHAudioCallViewController *)self view];
        leadingAnchor2 = [view3 leadingAnchor];
        v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v34[0] = v28;
        trailingAnchor = [view trailingAnchor];
        view4 = [(PHAudioCallViewController *)self view];
        trailingAnchor2 = [view4 trailingAnchor];
        v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v34[1] = v24;
        topAnchor = [view topAnchor];
        view5 = [(PHAudioCallViewController *)self view];
        topAnchor2 = [view5 topAnchor];
        v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v34[2] = v15;
        bottomAnchor = [view bottomAnchor];
        view6 = [(PHAudioCallViewController *)self view];
        bottomAnchor2 = [view6 bottomAnchor];
        v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v34[3] = v19;
        v20 = [NSArray arrayWithObjects:v34 count:4];
        [NSLayoutConstraint activateConstraints:v20];

        [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
          view7 = [buttonsViewController view];

          [view7 updateBackgroundMaterial:2];
        }

        [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:2];
      }

      [(PHAudioCallViewController *)self updateDimmingView];
    }
  }
}

- (BOOL)currentCallStateCanShowNewPoster
{
  selfCopy = self;
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  LOBYTE(selfCopy) = [(PHAudioCallViewController *)selfCopy callStateCanShowNewPoster:frontmostCall];

  return selfCopy;
}

- (id)getParticipantsView_WaitingOrNot
{
  getParticipantsView_Waiting = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  v4 = getParticipantsView_Waiting;
  if (getParticipantsView_Waiting)
  {
    getParticipantsView_NotWaiting = getParticipantsView_Waiting;
  }

  else
  {
    getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  }

  v6 = getParticipantsView_NotWaiting;

  return v6;
}

- (BOOL)canShowPosterImage
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmergency], v3, (v4 & 1) == 0))
  {
    if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
LABEL_4:
      callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v6 = [callDisplayStyleManager callDisplayStyle] != 0;
LABEL_12:

      return v6;
    }

    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    if (![(PHAudioCallViewController *)self wasPresentedAsBanner])
    {
      callDisplayStyleManager = +[UIDevice currentDevice];
      v6 = [callDisplayStyleManager userInterfaceIdiom] == 0;
      goto LABEL_12;
    }
  }

  return 0;
}

- (BOOL)shouldUpdateBackgroundForEmergencyCall
{
  selfCopy = self;
  v3 = sub_100013C0C();

  return v3;
}

- (void)updateLayeredBackgroundWallpaper
{
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        return;
      }
    }

    else
    {
    }

    if (![(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
    {
      callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
      v86 = [PHInCallUtilities contactStoreForCall:callToUseForWallpaper];
      contactIdentifier = [callToUseForWallpaper contactIdentifier];
      v7 = +[PHAudioCallViewController contactKeysToFetch];
      contactsCache = [(PHAudioCallViewController *)self contactsCache];
      v84 = [v86 contactForIdentifier:contactIdentifier keysToFetch:v7 usingCache:contactsCache];

      v9 = [(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callToUseForWallpaper];
      v10 = [(PHAudioCallViewController *)self suggestedNewPosterSourceAfterCallConnects:callToUseForWallpaper];
      currentCallStateCanShowNewPoster = [(PHAudioCallViewController *)self currentCallStateCanShowNewPoster];
      if (currentCallStateCanShowNewPoster && (currentCallStateCanShowNewPoster = [objc_opt_class() posterSourceIsSyncedWithContacts:v10], currentCallStateCanShowNewPoster))
      {
        if (v10 == 2)
        {
          v30 = sub_100004F84(currentCallStateCanShowNewPoster);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - transitioning from cached last seen poster -> current wallpaper if available.", buf, 2u);
          }

          contactsCache2 = [(PHAudioCallViewController *)self contactsCache];
          contactIdentifier2 = [callToUseForWallpaper contactIdentifier];
          v33 = [contactsCache2 objectForKey:contactIdentifier2];

          if (v33)
          {
            contactsCache3 = [(PHAudioCallViewController *)self contactsCache];
            contactIdentifier3 = [callToUseForWallpaper contactIdentifier];
            [contactsCache3 removeObjectForKey:contactIdentifier3];
          }

          v36 = [(PHAudioCallViewController *)self currentDisplayedPosterSourceForCall:callToUseForWallpaper]!= 1;
          [(PHAudioCallViewController *)self setSnapshottedPosterImageToUseForColorInversion:0];
          [(PHAudioCallViewController *)self setHasInvertedUIElementColorsBasedOnPoster:0];
          v88 = [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:callToUseForWallpaper shouldReadFromCache:v36];
          v37 = objc_opt_class();
          v38 = [(PHAudioCallViewController *)self currentIMNicknameMatchingContact:v84];
          wallpaper = [v38 wallpaper];
          v24 = [v37 wallpaperContentIsSensitive:wallpaper];
        }

        else if (v10 == 3)
        {
          frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
          v88 = [(PHAudioCallViewController *)self newPosterConfigurationForCall:frontmostCall];

          v14 = sub_100004F84(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v98 = v88;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - transitioning to show new poster updates (i.e. pendingIMNickname), new configuration: %@", buf, 0xCu);
          }

          contactsCache4 = [(PHAudioCallViewController *)self contactsCache];
          contactIdentifier4 = [callToUseForWallpaper contactIdentifier];
          v17 = [contactsCache4 objectForKey:contactIdentifier4];

          if (v17)
          {
            contactsCache5 = [(PHAudioCallViewController *)self contactsCache];
            contactIdentifier5 = [callToUseForWallpaper contactIdentifier];
            [contactsCache5 removeObjectForKey:contactIdentifier5];
          }

          [(PHAudioCallViewController *)self setSnapshottedPosterImageToUseForColorInversion:0];
          [(PHAudioCallViewController *)self setHasInvertedUIElementColorsBasedOnPoster:0];
          v20 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:callToUseForWallpaper];
          pendingNickname = [v20 pendingNickname];

          v22 = objc_opt_class();
          wallpaper2 = [pendingNickname wallpaper];
          v24 = [v22 wallpaperContentIsSensitive:wallpaper2];
        }

        else
        {
          v40 = sub_100004F84(currentCallStateCanShowNewPoster);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_100257174();
          }

          v88 = 0;
          v24 = 0;
        }

        v85 = 1;
      }

      else
      {
        v25 = sub_100004F84(currentCallStateCanShowNewPoster);
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - Going to show the last seen poster for this contact if available.", buf, 2u);
          }

          v88 = [(PHAudioCallViewController *)self lastSeenPosterConfigurationForCall:callToUseForWallpaper];
          v24 = [(PHAudioCallViewController *)self lastSeenPosterDataIsSensitiveForCall:callToUseForWallpaper];
        }

        else
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - Going to show the current wallpaper for this contact if available.", buf, 2u);
          }

          v88 = [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:callToUseForWallpaper shouldReadFromCache:1];
          v27 = objc_opt_class();
          v28 = [(PHAudioCallViewController *)self currentIMNicknameMatchingContact:v84];
          wallpaper3 = [v28 wallpaper];
          v24 = [v27 wallpaperContentIsSensitive:wallpaper3];
        }

        v85 = 0;
      }

      getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
      v87 = getParticipantsView_WaitingOrNot;
      if (v88)
      {
        v82 = [[PRUISIncomingCallPosterContext alloc] initWithTitleString:&stru_100361FD0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:CGRectZero.origin.x personalPoster:{CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        v42 = [[PRUISPosterRenderingViewController alloc] initWithConfiguration:v88 context:v82];
        view = [(PHAudioCallViewController *)self view];
        [view bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        view2 = [v42 view];
        [view2 setFrame:{v45, v47, v49, v51}];

        view3 = [v42 view];
        [view3 setAutoresizingMask:18];

        [(PHAudioCallViewController *)self createPosterContainerWithDimmingLayer];
        v54 = objc_opt_respondsToSelector();
        if (v54)
        {
          v55 = sub_100004F84(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .live and starting 30sec delay to set it back to .paused", buf, 2u);
          }

          [v42 setRenderingMode:2];
          suspendPosterAfterDelayBlock = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          v57 = suspendPosterAfterDelayBlock == 0;

          if (!v57)
          {
            suspendPosterAfterDelayBlock2 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
            dispatch_block_cancel(suspendPosterAfterDelayBlock2);

            [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
          }

          objc_initWeak(buf, self);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001212F0;
          block[3] = &unk_100356F60;
          objc_copyWeak(v95, buf);
          v59 = dispatch_block_create(0, block);
          [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:v59];

          v60 = dispatch_time(0, 30000000000);
          v61 = &_dispatch_main_q;
          suspendPosterAfterDelayBlock3 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_after(v60, &_dispatch_main_q, suspendPosterAfterDelayBlock3);

          objc_destroyWeak(v95);
          objc_destroyWeak(buf);
        }

        singleCallLabelView = [v87 singleCallLabelView];
        statusLabel = [singleCallLabelView statusLabel];

        if ([(PHAudioCallViewController *)self canShowPosterImage])
        {
          v64 = +[ICSPreferences sharedPreferences];
          v65 = v64;
          if (v85)
          {
            forceBlurNewPoster = [v64 forceBlurNewPoster];
          }

          else
          {
            forceBlurNewPoster = [v64 forceBlurCurrentPoster];
          }

          v70 = forceBlurNewPoster;

          v69 = v70 | v24;
        }

        else
        {
          v69 = 0;
        }

        callToUseForWallpaper2 = [(PHAudioCallViewController *)self callToUseForWallpaper];
        text = [statusLabel text];
        objc_initWeak(buf, self);
        v90[0] = _NSConcreteStackBlock;
        v90[1] = 3221225472;
        v90[2] = sub_100121344;
        v90[3] = &unk_100359CD0;
        objc_copyWeak(&v93, buf);
        v73 = callToUseForWallpaper2;
        v91 = v73;
        v74 = text;
        v92 = v74;
        v75 = objc_retainBlock(v90);
        v76 = (v75[2])(v75, 0);
        if (v69)
        {
          v77 = (v75[2])(v75, 1);
        }

        else
        {
          v77 = 0;
        }

        [TPIncomingCallMetricsProvider addCallerNameView:v76 toViewController:v42];
        v78 = [[PHPosterNameViewModel alloc] initWithCall:v73 posterNameTextView:v76 priorityPosterNameTextView:v77];
        [(PHAudioCallViewController *)self setPosterNameViewModel:v78];

        [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:v87];
        [(PHAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
        callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v80 = [callDisplayStyleManager2 callDisplayStyle] == 0;

        if (v80)
        {
          [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:1];
          [statusLabel setAlpha:1.0];
        }

        else
        {
          [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:0];
          getParticipantsView_Waiting = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
          [(PHAudioCallViewController *)self updateParticipantsLabelForView:getParticipantsView_Waiting isHidden:1];

          [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
          [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:v87];
          [(PHAudioCallViewController *)self _updatePosterNameAlpha];
        }

        [PHAudioCallViewController transitionToNewPoster:"transitionToNewPoster:showingPosterTransition:shouldBlurPoster:completion:" showingPosterTransition:v42 shouldBlurPoster:? completion:?];

        objc_destroyWeak(&v93);
        objc_destroyWeak(buf);
      }

      else
      {
        v67 = sub_100004F84(getParticipantsView_WaitingOrNot);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
          *buf = 138412290;
          v98 = renderingViewController;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "SNAP: There is no configuration now, we are going to fade out old poster %@", buf, 0xCu);
        }

        [(PHAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
        v95[1] = _NSConcreteStackBlock;
        v95[2] = 3221225472;
        v95[3] = sub_10001452C;
        v95[4] = &unk_100359CA8;
        v96 = v85;
        v95[5] = self;
        v95[6] = v10;
        [PHAudioCallViewController removePosterViewController:"removePosterViewController:completion:" completion:?];
        if ((v85 & 1) == 0 && [(PHCallViewController *)self currentState]== 11)
        {
          [(PHAudioCallViewController *)self removeFirstNameLabelFromViewIfNeeded];
        }
      }
    }
  }
}

- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)connects
{
  connectsCopy = connects;
  selfCopy = self;
  v7 = sub_100018238(connects);

  return v7;
}

- (BOOL)hasLastSeenPosterForCall:(id)call
{
  callCopy = call;
  callCopy2 = call;
  selfCopy = self;
  LOBYTE(callCopy) = sub_100013F60(callCopy);

  return callCopy & 1;
}

- (id)currentIMNicknameMatchingContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_100018C98();

  return v6;
}

- (id)getParticipantsView_Waiting
{
  callWaitingParticipantsViewController = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];
  view = [callWaitingParticipantsViewController view];

  return view;
}

- (id)getParticipantsView_NotWaiting
{
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  view = [callParticipantsViewController view];

  return view;
}

- (void)removeNameLabelForAlwaysOnDisplay
{
  alwaysOnDisplayPosterNameViewModel = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

  if (alwaysOnDisplayPosterNameViewModel)
  {
    alwaysOnDisplayPosterNameViewModel2 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [alwaysOnDisplayPosterNameViewModel2 removeFromSuperview];

    [(PHAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:0];
  }
}

- (void)_updateStatusLabelVisibility
{
  getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  singleCallLabelView = [getParticipantsView_WaitingOrNot singleCallLabelView];
  callHasNoContactPoster = [(PHAudioCallViewController *)self callHasNoContactPoster];
  if (singleCallLabelView)
  {
    [(PHAudioCallViewController *)self updatePosterBadgeView:callHasNoContactPoster ^ 1 to:singleCallLabelView];
  }

  [(PHAudioCallViewController *)self updateCallRecordingPositionIfNeeded];
  [(PHAudioCallViewController *)self updateCallHoldingPositionIfNeeded];
  if ([(PHAudioCallViewController *)self callHasContactPosterWithHorizontalName]|| ([(PHAudioCallViewController *)self detachedPosterNameViewModel], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = singleCallLabelView;
    v7 = 1;
LABEL_6:
    [v6 setHidesLabel:v7];
    goto LABEL_7;
  }

  if (![(PHAudioCallViewController *)self callHasContactPosterWithVerticalName])
  {
    v6 = singleCallLabelView;
    v7 = 0;
    goto LABEL_6;
  }

  posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];
  posterNameTextView = [posterNameViewModel posterNameTextView];
  callIsActive = [posterNameTextView callIsActive];

  posterNameViewModel2 = [(PHAudioCallViewController *)self posterNameViewModel];
  posterNameTextView2 = [posterNameViewModel2 posterNameTextView];
  LODWORD(posterNameTextView) = [posterNameTextView2 statusIsSuitableForVerticalLayout];

  [singleCallLabelView setHidesLabel:(callIsActive ^ 1) & posterNameTextView];
  [singleCallLabelView hideBadgesOnly];
LABEL_7:
}

- (BOOL)callHasNoContactPoster
{
  if (![(PHAudioCallViewController *)self canShowPosterImage])
  {
    return 1;
  }

  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
  v4 = renderingViewController == 0;

  return v4;
}

- (void)synchronizeSingleLabelViewWithPosterText
{
  getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  detachedPosterNameViewModel = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

  if (detachedPosterNameViewModel)
  {
    detachedPosterNameViewModel2 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updateViewModelForParticipantsView:getParticipantsView_WaitingOrNot];
  }

  else
  {
    [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:getParticipantsView_WaitingOrNot];
  }
}

- (void)updateCallRecordingPositionIfNeeded
{
  selfCopy = self;
  PHAudioCallViewController.updateCallRecordingPositionIfNeeded()();
}

- (void)updateCallHoldingPositionIfNeeded
{
  selfCopy = self;
  PHAudioCallViewController.updateCallHoldingPositionIfNeeded()();
}

- (BOOL)callHasContactPosterWithHorizontalName
{
  if ([(PHAudioCallViewController *)self callHasNoContactPoster])
  {
    return 0;
  }

  else
  {
    return ![(PHAudioCallViewController *)self callHasContactPosterWithVerticalName];
  }
}

- (BOOL)callHasContactPosterWithVerticalName
{
  posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];

  if (!posterNameViewModel)
  {
    return 0;
  }

  posterNameViewModel2 = [(PHAudioCallViewController *)self posterNameViewModel];
  posterNameTextView = [posterNameViewModel2 posterNameTextView];
  v6 = [posterNameTextView layout] == 1;

  return v6;
}

- (void)removeBackgroundContactImageView
{
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView removeFromSuperview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = 0;
}

- (BOOL)canShowBackgroundImage
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmergency], v3, (v4 & 1) == 0))
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v5 = [callDisplayStyleManager2 callDisplayStyle] != 0;
LABEL_11:

        return v5;
      }
    }

    else
    {
    }

    callDisplayStyleManager2 = +[UIDevice currentDevice];
    if ([callDisplayStyleManager2 userInterfaceIdiom])
    {
      v5 = 0;
    }

    else
    {
      callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v5 = [callDisplayStyleManager3 callDisplayStyle] != 0;
    }

    goto LABEL_11;
  }

  return 0;
}

- (UILayoutGuide)translationLayoutGuide
{
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (!audioCallTranslationEnabled)
  {
    goto LABEL_4;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  translationLayoutGuide = self->_translationLayoutGuide;
  if (!translationLayoutGuide)
  {
    v10 = objc_alloc_init(UILayoutGuide);
    v11 = self->_translationLayoutGuide;
    self->_translationLayoutGuide = v10;

    view = [(PHAudioCallViewController *)self view];
    [view addLayoutGuide:self->_translationLayoutGuide];

    leadingAnchor = [(UILayoutGuide *)self->_translationLayoutGuide leadingAnchor];
    view2 = [(PHAudioCallViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[0] = v15;
    trailingAnchor = [(UILayoutGuide *)self->_translationLayoutGuide trailingAnchor];
    view3 = [(PHAudioCallViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[1] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v20];

    translationLayoutGuide = self->_translationLayoutGuide;
  }

  v8 = translationLayoutGuide;
LABEL_9:

  return v8;
}

- (BOOL)shouldShowUseRTT
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentCallCount = [callCenter currentCallCount];

  if (currentCallCount != 1)
  {
    frontmostCall = sub_100004F84(v5);
    if (os_log_type_enabled(frontmostCall, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, frontmostCall, OS_LOG_TYPE_DEFAULT, "Multiple calls are currently active; Use RTT button should not be presented.", &v15, 2u);
    }

    goto LABEL_17;
  }

  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  if (([frontmostCall isRTT]& 1) != 0 || ([frontmostCall isTTY]& 1) != 0 || ![frontmostCall supportsTTYWithVoice]|| [frontmostCall status]!= 1)
  {
LABEL_17:
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
  if (!localSenderIdentityUUID)
  {
    v8 = sub_100004F84(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = frontmostCall;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not retrieve a sender identity UUID from the frontmost call %@; checking if RTT is available anyway.", &v15, 0xCu);
    }
  }

  senderIdentityClient = [(PHCallViewController *)self senderIdentityClient];
  v10 = [senderIdentityClient isRTTAvailableForSenderIdentityUUID:localSenderIdentityUUID];

  v12 = sub_100004F84(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"should not";
    if (v10)
    {
      v13 = @"should";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = frontmostCall;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Determined that the Use RTT button %@ be presented for the frontmost call %@.", &v15, 0x16u);
  }

LABEL_18:
  return v10;
}

- (void)refreshUseRTTButton
{
  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar refreshUseRTTButton];
}

- (void)updateLayoutSupplementalButtons
{
  [(PHAudioCallViewController *)self removeSupplementalButtons];
  if (![(PHAudioCallViewController *)self middlePillContainerIsShowing])
  {
    buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
    view = [buttonsViewController view];

    superview = [view superview];
    if (!superview || (v6 = superview, v7 = [(PHAudioCallViewController *)self middleViewState], v6, v7 != 1))
    {
LABEL_27:

      return;
    }

    v8 = +[UIScreen mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    if (v10 >= v12)
    {
      v10 = v12;
    }

    v13 = objc_alloc_init(NSMutableArray);
    if ([(PHAudioCallViewController *)self shouldShowCallTransfer])
    {
      callTransferButton = [(PHAudioCallViewController *)self callTransferButton];
      [v13 addObject:callTransferButton];
    }

    if ([(PHAudioCallViewController *)self shouldShowMergeCalls])
    {
      mergeCallsButton = [(PHAudioCallViewController *)self mergeCallsButton];
      [v13 addObject:mergeCallsButton];
    }

    if ([(PHAudioCallViewController *)self shouldAddExtensionNumberButtonToViewHierarchy])
    {
      extensionNumberButton = [(PHAudioCallViewController *)self extensionNumberButton];
      [v13 addObject:extensionNumberButton];
    }

    if ([(PHAudioCallViewController *)self shouldAddRTTButtonToViewHierarchy])
    {
      useRTTButton = [(PHAudioCallViewController *)self useRTTButton];
      [v13 addObject:useRTTButton];
    }

    v18 = v10 * 0.102;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100117944;
    v54[3] = &unk_100359BE8;
    v54[4] = self;
    v19 = view;
    v55 = v19;
    [v13 __imForEach:v54];
    if ([v13 count] == 3)
    {
      v47 = [v13 objectAtIndexedSubscript:0];
      leadingAnchor = [v47 leadingAnchor];
      leadingAnchor2 = [v19 leadingAnchor];
      v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v18];
      v57[0] = v50;
      v48 = [v13 objectAtIndexedSubscript:1];
      centerXAnchor = [v48 centerXAnchor];
      centerXAnchor2 = [v19 centerXAnchor];
      v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v57[1] = v21;
      v22 = [v13 objectAtIndexedSubscript:2];
      trailingAnchor = [v22 trailingAnchor];
      trailingAnchor2 = [v19 trailingAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v18];
      v57[2] = v25;
      v26 = [NSArray arrayWithObjects:v57 count:3];
      [NSLayoutConstraint activateConstraints:v26];

      v27 = v47;
      v28 = v50;

      centerXAnchor3 = leadingAnchor2;
      leadingAnchor3 = leadingAnchor;
    }

    else if ([v13 count] == 2)
    {
      v27 = [v13 objectAtIndexedSubscript:0];
      leadingAnchor3 = [v27 leadingAnchor];
      leadingAnchor4 = [v19 leadingAnchor];
      v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v18];
      v56[0] = v51;
      v31 = [v13 objectAtIndexedSubscript:1];
      trailingAnchor3 = [v31 trailingAnchor];
      trailingAnchor4 = [v19 trailingAnchor];
      v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v18];
      v56[1] = v34;
      v35 = [NSArray arrayWithObjects:v56 count:2];
      [NSLayoutConstraint activateConstraints:v35];

      v28 = v51;
      centerXAnchor3 = leadingAnchor4;
    }

    else
    {
      if ([v13 count] != 1)
      {
LABEL_21:
        translationLayoutGuide = [(PHAudioCallViewController *)self translationLayoutGuide];

        if (translationLayoutGuide)
        {
          translationLayoutBottomConstraint = [(PHAudioCallViewController *)self translationLayoutBottomConstraint];
          [translationLayoutBottomConstraint setActive:0];

          v38 = [v13 count];
          translationLayoutGuide2 = [(PHAudioCallViewController *)self translationLayoutGuide];
          bottomAnchor = [translationLayoutGuide2 bottomAnchor];
          if (v38)
          {
            buttonsViewController2 = [v13 objectAtIndexedSubscript:0];
            topAnchor = [buttonsViewController2 topAnchor];
            v42TopAnchor = [bottomAnchor constraintEqualToAnchor:topAnchor];
            [(PHAudioCallViewController *)self setTranslationLayoutBottomConstraint:v42TopAnchor];
          }

          else
          {
            buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
            topAnchor = [buttonsViewController2 view];
            v42TopAnchor = [topAnchor topAnchor];
            v44 = [bottomAnchor constraintEqualToAnchor:v42TopAnchor];
            [(PHAudioCallViewController *)self setTranslationLayoutBottomConstraint:v44];
          }

          translationLayoutBottomConstraint2 = [(PHAudioCallViewController *)self translationLayoutBottomConstraint];
          [translationLayoutBottomConstraint2 setActive:1];
        }

        goto LABEL_27;
      }

      v27 = [v13 objectAtIndexedSubscript:0];
      leadingAnchor3 = [v27 centerXAnchor];
      centerXAnchor3 = [v19 centerXAnchor];
      v28 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor3];
      [v28 setActive:1];
    }

    goto LABEL_21;
  }
}

- (PHAudioCallControlsSupplementalButton)callTransferButton
{
  callTransferButton = self->_callTransferButton;
  if (!callTransferButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_callTransferButton;
    self->_callTransferButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_callTransferButton addTarget:self action:"callTransferButtonTapped" forEvents:64];
    v6 = self->_callTransferButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TRANSFER" value:&stru_100361FD0 table:@"InCallService"];
    [(PHAudioCallControlsSupplementalButton *)v6 setTitle:v8 forState:0];

    v9 = self->_callTransferButton;
    v10 = [UIImage symbolImageNamed:@"phone.arrow.right.fill"];
    [(PHAudioCallControlsSupplementalButton *)v9 setImage:v10 forState:0];

    callTransferButton = self->_callTransferButton;
  }

  return callTransferButton;
}

- (PHAudioCallControlsSupplementalButton)extensionNumberButton
{
  extensionNumberButton = self->_extensionNumberButton;
  if (!extensionNumberButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_extensionNumberButton;
    self->_extensionNumberButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton addTarget:self action:"extensionNumberButtonTapped" forEvents:64];
    extensionNumberButton = self->_extensionNumberButton;
  }

  return extensionNumberButton;
}

- (PHAudioCallControlsSupplementalButton)useRTTButton
{
  useRTTButton = self->_useRTTButton;
  if (!useRTTButton)
  {
    v4 = sub_10001A58C(0);
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    v6 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = self->_useRTTButton;
    self->_useRTTButton = v6;

    localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
    v9 = [v4 rttDisplayName:0 forSubscriptionContextUUID:localSenderIdentityUUID];

    [(PHAudioCallControlsSupplementalButton *)self->_useRTTButton setTitle:v9 forState:0];
    v10 = self->_useRTTButton;
    v11 = [UIImage symbolImageNamed:@"teletype"];
    [(PHAudioCallControlsSupplementalButton *)v10 setImage:v11 forState:0];

    [(PHAudioCallControlsSupplementalButton *)self->_useRTTButton addTarget:self action:"useRTTButtonTapped" forEvents:64];
    useRTTButton = self->_useRTTButton;
  }

  return useRTTButton;
}

- (BOOL)shouldShowCallTransfer
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

LABEL_5:
    callCenter = [(PHAudioCallViewController *)self callCenter];
    v8 = [callCenter callsPassingTest:&stru_100359D90];

    if ([v8 count] == 2)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 isConferenced])
      {
      }

      else
      {
        v10 = [v8 objectAtIndexedSubscript:0];
        provider = [v10 provider];
        identifier = [provider identifier];
        v13 = [v8 objectAtIndexedSubscript:1];
        provider2 = [v13 provider];
        identifier2 = [provider2 identifier];

        if (identifier == identifier2)
        {
          firstObject = [v8 firstObject];
          v18 = [PHInCallUtilities contactStoreForCall:firstObject];

          v19 = [CNPhoneNumber phoneNumberWithStringValue:@"4"];
          v20 = [CNContact predicateForContactMatchingPhoneNumber:v19];

          v39 = CNPhoneNumberStringValueKey;
          v21 = [NSArray arrayWithObjects:&v39 count:1];
          v32 = 0;
          v22 = [v18 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:&v32];
          v23 = v32;

          firstObject2 = [v8 firstObject];
          localSenderIdentity = [firstObject2 localSenderIdentity];
          accountUUID = [localSenderIdentity accountUUID];
          uUIDString = [accountUUID UUIDString];
          v28 = [PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:uUIDString];

          v30 = sub_100004F84(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v22 count];
            *buf = 134218498;
            v34 = v31;
            v35 = 1024;
            v36 = v28;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CallTransferButton: contacts with number 4 have count of %lu,  carrierWantsShowCallTransferButton = %d, error is %@", buf, 0x1Cu);
          }

          if (v23)
          {
            v6 = 0;
          }

          else
          {
            v6 = ([v22 count] != 0) | v28;
          }

          goto LABEL_10;
        }
      }
    }

    v6 = 0;
LABEL_10:

    return v6 & 1;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if ((isDominoEnabled & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy
{
  v4 = +[PHInCallUtilities sharedInstance];
  if (([v4 isIPadIdiom] & 1) == 0)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
    if (callDisplayStyle == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if (([features isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

    else if (self->_middleViewState != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    v5 = [frontmostCall hardPauseDigitsState] == 2;

    if (callDisplayStyle != 3)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (BOOL)shouldAddRTTButtonToViewHierarchy
{
  if ([(PHAudioCallViewController *)self shouldShowUseRTT])
  {
    v4 = +[PHInCallUtilities sharedInstance];
    if ([v4 isIPadIdiom])
    {
      v5 = 0;
LABEL_14:

      return v5;
    }

    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
    if (callDisplayStyle == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if (([features isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
      {
        v5 = 0;
        goto LABEL_11;
      }
    }

    else if (self->_middleViewState != 1)
    {
      v5 = 0;
      goto LABEL_13;
    }

    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v5 = [callDisplayStyleManager2 callDisplayStyle] != 0;

    if (callDisplayStyle != 3)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_11:

    goto LABEL_13;
  }

  return 0;
}

- (void)refreshExtensionNumberButton
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  v4 = [(PHAudioCallViewController *)self customizedTitleForItemInBar:bottomBar withActionType:23];

  [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton setTitle:v4 forState:0];
  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
}

- (void)hideOrShowScreeningBackgroundView
{
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  v4 = TUCallScreeningEnabled();

  if (!v4)
  {
    return;
  }

  if ([(PHCallViewController *)self currentState]== 11 && [(PHAudioCallViewController *)self isShowingNewTranscriptsView])
  {
    renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
    v6 = renderingViewController != 0;
  }

  else
  {
    v6 = 0;
  }

  currentState = [(PHCallViewController *)self currentState];
  if (currentState == 12)
  {
    renderingViewController2 = [(PHAudioCallViewController *)self renderingViewController];
    v9 = renderingViewController2 != 0;

    v6 |= v9;
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  currentState2 = [bottomBar currentState];
  if (currentState == 12 || currentState2 == 23)
  {
    goto LABEL_13;
  }

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  if ([bottomBar2 currentState] == 24 && -[PHCallViewController currentState](self, "currentState") == 11)
  {

LABEL_13:
LABEL_15:
    screeningBackgroundView = [(PHAudioCallViewController *)self screeningBackgroundView];
    if (screeningBackgroundView)
    {
    }

    else
    {
      renderingViewController3 = [(PHAudioCallViewController *)self renderingViewController];

      if (renderingViewController3)
      {
        if (v6)
        {
          createPosterBlurryBackgroundView = [(PHAudioCallViewController *)self createPosterBlurryBackgroundView];
          [(PHAudioCallViewController *)self setScreeningBackgroundView:createPosterBlurryBackgroundView];
          view = [(PHAudioCallViewController *)self view];
          screeningBackgroundView2 = [(PHAudioCallViewController *)self screeningBackgroundView];
          posterContainer = [(PHAudioCallViewController *)self posterContainer];
          [view insertSubview:screeningBackgroundView2 above:posterContainer];

          contentView = [createPosterBlurryBackgroundView contentView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:contentView];

          screeningBackgroundView3 = [(PHAudioCallViewController *)self screeningBackgroundView];
          [screeningBackgroundView3 setTranslatesAutoresizingMaskIntoConstraints:0];

          screeningBackgroundView4 = [(PHAudioCallViewController *)self screeningBackgroundView];
          topAnchor = [screeningBackgroundView4 topAnchor];
          view2 = [(PHAudioCallViewController *)self view];
          topAnchor2 = [view2 topAnchor];
          v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v68[0] = v59;
          screeningBackgroundView5 = [(PHAudioCallViewController *)self screeningBackgroundView];
          bottomAnchor = [screeningBackgroundView5 bottomAnchor];
          view3 = [(PHAudioCallViewController *)self view];
          bottomAnchor2 = [view3 bottomAnchor];
          v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v68[1] = v54;
          screeningBackgroundView6 = [(PHAudioCallViewController *)self screeningBackgroundView];
          leadingAnchor = [screeningBackgroundView6 leadingAnchor];
          view4 = [(PHAudioCallViewController *)self view];
          leadingAnchor2 = [view4 leadingAnchor];
          v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v68[2] = v22;
          screeningBackgroundView7 = [(PHAudioCallViewController *)self screeningBackgroundView];
          trailingAnchor = [screeningBackgroundView7 trailingAnchor];
          view5 = [(PHAudioCallViewController *)self view];
          trailingAnchor2 = [view5 trailingAnchor];
          v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v68[3] = v27;
          v28 = [NSArray arrayWithObjects:v68 count:4];
          [NSLayoutConstraint activateConstraints:v28];
        }

        else
        {
          createBlurryBackgroundView = [(PHAudioCallViewController *)self createBlurryBackgroundView];
          v30 = objc_opt_new();
          makeViewComposer = [v30 makeViewComposer];
          v32 = [makeViewComposer composeBackgroundWithView:createBlurryBackgroundView];
          [(PHAudioCallViewController *)self setScreeningBackgroundViewController:v32];

          screeningBackgroundViewController = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          [(PHAudioCallViewController *)self addChildViewController:screeningBackgroundViewController];

          screeningBackgroundViewController2 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          view6 = [screeningBackgroundViewController2 view];
          [(PHAudioCallViewController *)self setScreeningBackgroundView:view6];

          view7 = [(PHAudioCallViewController *)self view];
          screeningBackgroundView8 = [(PHAudioCallViewController *)self screeningBackgroundView];
          posterContainer2 = [(PHAudioCallViewController *)self posterContainer];
          [view7 insertSubview:screeningBackgroundView8 above:posterContainer2];

          screeningBackgroundViewController3 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          [screeningBackgroundViewController3 didMoveToParentViewController:self];

          screeningBackgroundView9 = [(PHAudioCallViewController *)self screeningBackgroundView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:screeningBackgroundView9];
        }

        objc_initWeak(&location, self);
        v41 = dispatch_time(0, 550000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011FECC;
        block[3] = &unk_100356F60;
        objc_copyWeak(&v66, &location);
        dispatch_after(v41, &_dispatch_main_q, block);
        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);
      }
    }

    posterContainer3 = [(PHAudioCallViewController *)self posterContainer];
    [posterContainer3 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    screeningBackgroundView10 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [screeningBackgroundView10 setFrame:{v44, v46, v48, v50}];

    return;
  }

  if (v6)
  {
    goto LABEL_15;
  }

  [(PHAudioCallViewController *)self removeScreeningBackgroundView];
}

- (void)removeScreeningBackgroundView
{
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  translationBackgroundView = [(PHAudioCallViewController *)self translationBackgroundView];
  [translationBackgroundView alpha];
  v5 = v4;

  if (v5 == 0.0)
  {
    [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:0];
  }

  screeningBackgroundView = [(PHAudioCallViewController *)self screeningBackgroundView];

  if (screeningBackgroundView)
  {
    screeningBackgroundView2 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [screeningBackgroundView2 removeFromSuperview];

    [(PHAudioCallViewController *)self setScreeningBackgroundView:0];
    screeningBackgroundViewController = [(PHAudioCallViewController *)self screeningBackgroundViewController];
    [screeningBackgroundViewController willMoveToParentViewController:0];

    screeningBackgroundViewController2 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
    [screeningBackgroundViewController2 removeFromParentViewController];

    [(PHAudioCallViewController *)self setScreeningBackgroundViewController:0];
  }

  [(PHAudioCallViewController *)self _updatePosterNameAlpha];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:getParticipantsView_NotWaiting];
}

- (void)_updatePosterNameAlpha
{
  detachedPosterNameViewModel = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
  if (detachedPosterNameViewModel || ([(PHAudioCallViewController *)self posterNameViewModel], (detachedPosterNameViewModel = objc_claimAutoreleasedReturnValue()) != 0))
  {
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    [detachedPosterNameViewModel updatePosterNameAlpha:{((objc_msgSend(frontmostCall, "status") == 4) | !self->_participantsViewIsShowingMultipleLabel)}];
    detachedPosterNameViewModel2 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    if (detachedPosterNameViewModel2)
    {
      v5 = detachedPosterNameViewModel2;
      posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];

      if (posterNameViewModel)
      {
        posterNameViewModel2 = [(PHAudioCallViewController *)self posterNameViewModel];
        [posterNameViewModel2 updatePosterNameAlpha:0.0];
      }
    }
  }
}

- (void)restoreParticipantsViewStatusLabelForFullScreen
{
  participantsViewVerticalPosterNameTopConstraint = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  if (participantsViewVerticalPosterNameTopConstraint)
  {
    v4 = participantsViewVerticalPosterNameTopConstraint;
    participantsViewVerticalPosterNameTopConstraint2 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    isActive = [participantsViewVerticalPosterNameTopConstraint2 isActive];

    if (isActive)
    {
      participantsViewVerticalPosterNameTopConstraint3 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
      [participantsViewVerticalPosterNameTopConstraint3 setActive:0];

      [(PHAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:0];
    }
  }

  participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];
  if (participantsViewTopConstraint)
  {
    v9 = participantsViewTopConstraint;
    participantsViewTopConstraint2 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    isActive2 = [participantsViewTopConstraint2 isActive];

    if ((isActive2 & 1) == 0)
    {
      participantsViewTopConstraint3 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      [participantsViewTopConstraint3 setActive:1];
    }
  }
}

- (UIStackView)topLeadingContainer
{
  v3 = +[CNKFeatures sharedInstance];
  isMoreMenuEnabled = [v3 isMoreMenuEnabled];

  if (isMoreMenuEnabled)
  {
    v5 = 0;
  }

  else
  {
    topLeadingContainer = self->_topLeadingContainer;
    if (topLeadingContainer)
    {
      v5 = topLeadingContainer;
    }

    else
    {
      v7 = objc_alloc_init(UIStackView);
      v8 = self->_topLeadingContainer;
      self->_topLeadingContainer = v7;

      [(UIStackView *)self->_topLeadingContainer setSpacing:4.0];
      [(UIStackView *)self->_topLeadingContainer setAxis:0];
      [(UIStackView *)self->_topLeadingContainer setAlignment:3];
      [(UIStackView *)self->_topLeadingContainer setDistribution:1];
      [(UIStackView *)self->_topLeadingContainer setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(PHAudioCallViewController *)self view];
      [view addSubview:self->_topLeadingContainer];

      leadingAnchor = [(UIStackView *)self->_topLeadingContainer leadingAnchor];
      view2 = [(PHAudioCallViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
      v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

      LODWORD(v14) = 1132068864;
      [v13 setPriority:v14];
      v22[0] = v13;
      topAnchor = [(UIStackView *)self->_topLeadingContainer topAnchor];
      view3 = [(PHAudioCallViewController *)self view];
      topAnchor2 = [view3 topAnchor];
      [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v18 + 3.0];
      v22[1] = v19;
      v20 = [NSArray arrayWithObjects:v22 count:2];
      [NSLayoutConstraint activateConstraints:v20];

      v5 = self->_topLeadingContainer;
    }
  }

  return v5;
}

- (BOOL)canRecord
{
  selfCopy = self;
  sub_10001D85C();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)recordingSupportedForCurrentCallDsplayStyles
{
  selfCopy = self;
  v3 = sub_10001DAE0();

  return v3 & 1;
}

- (BOOL)callIsRecording
{
  selfCopy = self;
  sub_10001DBB0();
  v4 = v3;

  return v4 & 1;
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_10001DE6C(button);
}

- (void)updateCallHoldingIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.super.isa = needed;
  PHAudioCallViewController.updateCallHoldingIfNeeded(_:)(v9);
}

- (void)addCallHoldingIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  sub_10001E4D0(needed);
}

- (void)addHoldingButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_10001E5C8(button);
}

- (void)updateWaitOnHoldServiceWithCallWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10001E934(callCopy);
}

- (BOOL)holdingConditions
{
  selfCopy = self;
  v3 = sub_10001EA6C();

  return v3;
}

- (void)stopSuppressionOfSTKAlerts
{
  v2 = sub_100004F84(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping Suppression of STK Alerts", v3, 2u);
  }

  if (byte_1003B0FE4 == 1)
  {
    notify_set_state(dword_1003B0FE0, 0);
    notify_post("MPInCallAlertStateChangeNotification");
    notify_cancel(dword_1003B0FE0);
    byte_1003B0FE4 = 0;
  }
}

- (BOOL)shouldShowNewPosterUpdates
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:frontmostCall])
  {
    v4 = [objc_opt_class() posterSourceIsSyncedWithContacts:{-[PHAudioCallViewController suggestedNewPosterSourceAfterCallConnects:](self, "suggestedNewPosterSourceAfterCallConnects:", frontmostCall)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateAmbientAudioRoutesVisibility
{
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_7;
  }

  features = [(PHAudioCallViewController *)self features];
  if (([features isDominoEnabled] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  middleViewState = [(PHAudioCallViewController *)self middleViewState];

  if (middleViewState != 1)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  ambientAudioRoutesControlView = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
  isHidden = [ambientAudioRoutesControlView isHidden];

  if (isHidden)
  {
    ambientAudioRoutesControlView2 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [_TtC13InCallService27AmbientAnimationCoordinator show:ambientAudioRoutesControlView2 completion:0];

    ambientAudioRoutesControlView3 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [ambientAudioRoutesControlView3 setHidden:0];

    view = [(PHAudioCallViewController *)self view];
    ambientAudioRoutesControlView4 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [view bringSubviewToFront:ambientAudioRoutesControlView4];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  view = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
  [view setHidden:v11];
LABEL_10:
}

- (void)setupAmbientAudioRoutesControlViewIfNeeded
{
  if (!self->_ambientAudioRoutesControlView)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (!isDominoEnabled)
      {
        return;
      }

      v5 = objc_alloc_init(PHAmbientAudioRoutesControlView);
      buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
      [(PHAmbientAudioRoutesControlView *)v5 setDelegate:buttonsViewController];

      [(PHAmbientAudioRoutesControlView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      ambientAudioRoutesControlView = self->_ambientAudioRoutesControlView;
      self->_ambientAudioRoutesControlView = &v5->super;
      v8 = v5;

      view = [(PHAudioCallViewController *)self view];
      [view addSubview:self->_ambientAudioRoutesControlView];

      topAnchor = [(UIView *)self->_ambientAudioRoutesControlView topAnchor];
      view2 = [(PHAudioCallViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      [v13 setActive:1];

      callDisplayStyleManager = [(UIView *)self->_ambientAudioRoutesControlView trailingAnchor];
      view3 = [(PHAudioCallViewController *)self view];
      trailingAnchor = [view3 trailingAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v17 = v16;

      v18 = [callDisplayStyleManager constraintEqualToAnchor:trailingAnchor constant:-v17];
      [v18 setActive:1];
    }
  }
}

- (void)updateShareNameAndPhotoHUDPresentationIfNeeded
{
  features = [(PHAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled && ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5))
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle == 2)
    {
      v10 = +[UIApplication sharedApplication];
      delegate = [v10 delegate];
      bannerPresentationManager = [delegate bannerPresentationManager];
      callCenter = [(PHAudioCallViewController *)self callCenter];
      [(PHAudioCallViewController *)self showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:bannerPresentationManager callCenter:callCenter];
    }
  }
}

- (void)updateCallTranslationIfNeeded
{
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (audioCallTranslationEnabled)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        return;
      }
    }

    else
    {
    }

    activeCall = [(PHAudioCallViewController *)self activeCall];
    v9 = sub_100004F84(activeCall);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [callDisplayStyleManager2 callDisplayStyle]);
      v16 = 138412546;
      v17 = activeCall;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Update translation with call: %@, display style %@", &v16, 0x16u);
    }

    if ([activeCall translationAvailability] == 3 && (objc_msgSend(activeCall, "callStatus") == 1 || objc_msgSend(activeCall, "callStatus") == 4) && (-[PHCallViewController currentState](self, "currentState") == 4 || -[PHCallViewController currentState](self, "currentState") == 1 || -[PHCallViewController currentState](self, "currentState") == 2))
    {
      translationController = [(PHAudioCallViewController *)self translationController];
      [translationController updateCall:activeCall];

      translationController2 = [(PHAudioCallViewController *)self translationController];
      topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
      [translationController2 showCallTranslationButtonIfNeeded:self buttonContainer:topLeadingContainer];
    }

    else
    {
      translationController3 = [(PHAudioCallViewController *)self translationController];
      [translationController3 hideCallTranslationButtonIfNeeded];

      translationController2 = [(PHAudioCallViewController *)self translationController];
      [translationController2 updateCall:0];
    }
  }
}

- (PHCallTranslationController)translationController
{
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (!audioCallTranslationEnabled)
  {
    goto LABEL_4;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  translationController = self->_translationController;
  if (!translationController)
  {
    v11 = sub_100004F84(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Create translation controller", buf, 2u);
    }

    objc_initWeak(buf, self);
    v12 = [PHCallTranslationController alloc];
    translationLayoutGuide = [(PHAudioCallViewController *)self translationLayoutGuide];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100130A78;
    v17[3] = &unk_100356E98;
    objc_copyWeak(&v18, buf);
    v14 = [(PHCallTranslationController *)v12 initWithContentLayoutGuide:translationLayoutGuide translationStateDidChange:v17];
    v15 = self->_translationController;
    self->_translationController = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    translationController = self->_translationController;
  }

  v9 = translationController;
LABEL_11:

  return v9;
}

- (BOOL)shouldApplyNewGradientBlur
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
    provider = [callToUseForWallpaper provider];
    isSystemProvider = [provider isSystemProvider];
    if ((isSystemProvider & 1) != 0 || (-[PHAudioCallViewController callToUseForWallpaper](self, "callToUseForWallpaper"), v2 = objc_claimAutoreleasedReturnValue(), [v2 status] != 4))
    {
      features = [(PHAudioCallViewController *)self features];
      isHeroImageEnabled = [features isHeroImageEnabled];

      if (isSystemProvider)
      {
LABEL_9:

        return isHeroImageEnabled;
      }
    }

    else
    {
      isHeroImageEnabled = 0;
    }

    goto LABEL_9;
  }

  return 0;
}

- (BOOL)shouldRenderAlertTextFont
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController shouldRenderAlertTextFont = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
}

- (BOOL)shouldShowCircularAvatar
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    if (frontmostCall)
    {
      firstObject = frontmostCall;
    }

    else
    {
      callCenter = [(PHAudioCallViewController *)self callCenter];
      currentCalls = [callCenter currentCalls];
      firstObject = [currentCalls firstObject];

      if (!firstObject)
      {
        v7 = +[UIApplication sharedApplication];
        delegate = [v7 delegate];
        firstObject = [delegate mostRecentlyDisconnectedAudioCall];
      }
    }

    isEmergency = [firstObject isEmergency];

    if (isEmergency)
    {
      return 0;
    }
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return 1;
    }
  }

  else
  {
  }

  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if ([(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    v18 = 1;
  }

  else
  {
    renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
    v18 = renderingViewController != 0;
  }

  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v21 = [(PHAudioCallViewController *)self contactImageForCall:callToUseForWallpaper];

  callToUseForWallpaper2 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v23 = [(PHAudioCallViewController *)self fallbackImageDataForCall:callToUseForWallpaper2];

  if (!v18 && [(PHAudioCallViewController *)self shouldApplyNewGradientBlur])
  {
    return 1;
  }

  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 0;
  }

  v25 = !v24;
  if ((userInterfaceIdiom | callDisplayStyle) == 0 || v18)
  {
    return (userInterfaceIdiom | callDisplayStyle) == 0;
  }

  else
  {
    return v25;
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v8 viewDidLayoutSubviews];
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  if (callParticipantsViewController)
  {
    v4 = callParticipantsViewController;
    canDumpHierarchy = [(PHAudioCallViewController *)self canDumpHierarchy];

    if (canDumpHierarchy)
    {
      callParticipantsViewController2 = [(PHAudioCallViewController *)self callParticipantsViewController];
      view = [callParticipantsViewController2 view];
      [ICSViewEvaluation processHierarchy:view];

      [(PHAudioCallViewController *)self setCanDumpHierarchy:0];
    }
  }

  [(PHAudioCallViewController *)self updateSaliencyRectIfNeeded];
  [(UIView *)self->_posterContainer bounds];
  [(PHAudioCallViewController *)self updatePosterDimmingAreaWith:?];
}

- (void)clearMenuItemRegistration:(id)registration
{
  if (registration)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000321BC(v4, v6);
}

- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_1000322E4();
}

- (void)tipKitStopWaitOnHoldObservation
{
  selfCopy = self;
  sub_10003430C();
}

- (BOOL)isUserInterfaceShowing
{
  v3 = +[ICSPreferences sharedPreferences];
  hasAdoptedModernInCallAPI = [v3 hasAdoptedModernInCallAPI];

  if (!hasAdoptedModernInCallAPI)
  {
    return [(PHAudioCallViewController *)self _appearState]== 2;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v6 = [callDisplayStyleManager callDisplayStyle] != 4;

  return v6;
}

- (void)transitionToFullScreenIfNecessary
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if (![callDisplayStyleManager callDisplayStyle])
  {
    view = [(PHAudioCallViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    callDisplayStyleManager = [(PHAudioCallViewController *)self inCallRootViewController];
    [callDisplayStyleManager requestInCallSceneTransitionToFullScreen];
  }
}

- (void)removeButtonFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1000349B4(from);
}

- (void)updateCallParticipantsViewControllerCallGroups
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setPrioritizedCall:prioritizedCall];
  }

  else
  {
    prioritizedCall = [(PHAudioCallViewController *)self callParticipantsViewController];
    [prioritizedCall updateCallGroups];
  }
}

- (void)dismissWaitOnHoldTip
{
  selfCopy = self;
  sub_10024E4A8();
}

- (void)revealAudioRoutingDeviceListAnimatedIfNeeded
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];

  areNonRelayAuxiliaryRoutesAvailable = [routeController areNonRelayAuxiliaryRoutesAvailable];
  v5 = routeController;
  if (areNonRelayAuxiliaryRoutesAvailable)
  {
    pickedRoute = [routeController pickedRoute];
    v7 = pickedRoute;
    if (!pickedRoute || (v8 = [pickedRoute deviceType], v8 > 0x1D) || ((1 << v8) & 0x24140002) == 0 || (objc_msgSend(v7, "isPreferredAndActive") & 1) == 0)
    {
      [(PHAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
    }

    v5 = routeController;
  }

  _objc_release_x1(areNonRelayAuxiliaryRoutesAvailable, v5);
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (!+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PHAudioCallViewController;
  return [(PHAudioCallViewController *)&v4 preferredInterfaceOrientationForPresentation];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_testing_finishedAnimatingToActiveCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
    [(PHAudioCallViewController *)self bottomBarActionPerformed:15 withCompletionState:1 fromBar:stateCopy];
  }
}

- (void)_testing_didTransitionToActiveCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"pre-animation-delay" forTest:@"AnswerIncomingCall"];
  }

  else if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    v5 = dispatch_time(0, 2000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B1AD0;
    v7[3] = &unk_100357110;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_after(v5, &_dispatch_main_q, v7);
  }

  else if ([UIApp isRunningTest:@"PlaceOutgoingCall"])
  {
    v6 = +[TUCallCenter sharedInstance];
    [v6 disconnectAllCalls];
  }
}

- (void)_testing_didTransitionToIdleCallState
{
  if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    [UIApp finishedSubTest:@"end-call" forTest:@"EndActiveCall"];
    v2 = UIApp;
    v3 = @"EndActiveCall";
  }

  else
  {
    v4 = [UIApp isRunningTest:@"AnswerIncomingCall"];
    v2 = UIApp;
    if (v4)
    {
      v3 = @"AnswerIncomingCall";
    }

    else
    {
      if (![UIApp isRunningTest:@"PlaceOutgoingCall"])
      {
        return;
      }

      v2 = UIApp;
      v3 = @"PlaceOutgoingCall";
    }
  }

  [v2 finishedTest:v3];
}

- (void)_testing_didTransitionToEndingCallState
{
  if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    v2 = UIApp;

    [v2 finishedSubTest:@"pre-transition-delay" forTest:@"EndActiveCall"];
  }
}

- (void)_testing_didTransitionToIncomingRingingCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    v5 = dispatch_time(0, 2000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B1D4C;
    v6[3] = &unk_100357110;
    v6[4] = self;
    v7 = stateCopy;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)updates
{
  if (self->_participantsViewControllersShouldIgnoreUpdates != updates)
  {
    updatesCopy = updates;
    v5 = sub_100004F84(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (updatesCopy)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating the participants view and viewController shouldIgnoreUpdates: %@", &v9, 0xCu);
    }

    self->_participantsViewControllersShouldIgnoreUpdates = updatesCopy;
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setShouldIgnoreUpdates:updatesCopy];

    callWaitingParticipantsViewController = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];
    [callWaitingParticipantsViewController setShouldIgnoreUpdates:updatesCopy];
  }
}

- (PHAudioCallViewController)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center featureFlags:(id)flags
{
  managerCopy = manager;
  centerCopy = center;
  flagsCopy = flags;
  v81.receiver = self;
  v81.super_class = PHAudioCallViewController;
  v12 = [(PHCallViewController *)&v81 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callCenter, center);
    objc_storeStrong(&v13->_featureFlags, flags);
    v14 = objc_opt_new();
    analyticsReporter = v13->_analyticsReporter;
    v13->_analyticsReporter = v14;

    v16 = objc_opt_new();
    v17 = [v16 makeWithCallCenter:centerCopy];
    declineCallService = v13->_declineCallService;
    v13->_declineCallService = v17;

    v19 = objc_opt_new();
    labelDescriptorFactory = v13->_labelDescriptorFactory;
    v13->_labelDescriptorFactory = v19;

    objc_storeStrong(&v13->_callDisplayStyleManager, manager);
    v13->_wasPresentedAsBanner = [managerCopy callDisplayStyle] == 0;
    v13->_middleViewState = 0;
    v13->_canDumpHierarchy = 1;
    v21 = objc_opt_new();
    mutedTalkerViewControllerFactory = v13->_mutedTalkerViewControllerFactory;
    v13->_mutedTalkerViewControllerFactory = v21;

    makeViewController = [(CNKMutedTalkerBannerViewControllerFactory *)v13->_mutedTalkerViewControllerFactory makeViewController];
    mutedTalkerBannerViewController = v13->_mutedTalkerBannerViewController;
    v13->_mutedTalkerBannerViewController = makeViewController;

    [(CNKMutedTalkerBannerViewControllerProtocol *)v13->_mutedTalkerBannerViewController setDelegate:v13];
    v13->_didNotifyMutedCaller = 0;
    v25 = objc_opt_new();
    screeningViewControllerFactory = v13->_screeningViewControllerFactory;
    v13->_screeningViewControllerFactory = v25;

    v27 = +[CNKFeatures sharedInstance];
    features = v13->_features;
    v13->_features = v27;

    v13->_participantsViewShouldShowParticipantLabel = 1;
    v29 = objc_alloc_init(NSCache);
    contactsCache = v13->_contactsCache;
    v13->_contactsCache = v29;

    [(NSCache *)v13->_contactsCache setCountLimit:10];
    v31 = objc_alloc_init(NSCache);
    configurationCache = v13->_configurationCache;
    v13->_configurationCache = v31;

    v33 = +[NSMutableArray array];
    callUUIDsThatPresentedSNaPHUD = v13->_callUUIDsThatPresentedSNaPHUD;
    v13->_callUUIDsThatPresentedSNaPHUD = v33;

    v35 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v13->_featureFlags;
    v13->_featureFlags = v35;

    v37 = objc_opt_new();
    screenSharingInteractionControllerFactory = v13->_screenSharingInteractionControllerFactory;
    v13->_screenSharingInteractionControllerFactory = v37;

    v39 = objc_opt_new();
    waitOnHoldViewControllerFactory = v13->_waitOnHoldViewControllerFactory;
    v13->_waitOnHoldViewControllerFactory = v39;

    v41 = objc_opt_new();
    smartHoldingAnalytics = v13->_smartHoldingAnalytics;
    v13->_smartHoldingAnalytics = v41;

    v43 = +[NSNotificationCenter defaultCenter];
    [v43 addObserver:v13 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v43 addObserver:v13 selector:"hardwareButtonEventNotification:" name:@"PHHardwareButtonEventNotification" object:0];
    [v43 addObserver:v13 selector:"hardPauseDigitsStateChangedNotification:" name:TUCallHardPauseDigitsStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"callContinuityStateChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"wantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
    [v43 addObserver:v13 selector:"callOnHoldChangedNotification:" name:TUCallIsOnHoldChangedNotification object:0];
    [v43 addObserver:v13 selector:"handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
    [v43 addObserver:v13 selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
    [v43 addObserver:v13 selector:"callIsScreenSharingChangedNotification:" name:TUCallIsSharingScreenChangedNotification object:0];
    [v43 addObserver:v13 selector:"callKeypadDataSourceChangedNotification:" name:@"PHInCallKeypadDataSourceChangedNotification" object:0];
    [v43 addObserver:v13 selector:"callDisplayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];
    [v43 addObserver:v13 selector:"callIsEmergencyChangedNotification:" name:TUCallCenterIsEmergencyChangedNotification object:0];
    [v43 addObserver:v13 selector:"conferenceParticipantCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
    [v43 addObserver:v13 selector:"showAddParticipantSheet" name:@"MoreMenuRemoteAlertViewPresentAddParticipantNotification" object:0];
    [v43 addObserver:v13 selector:"presentContactCard" name:@"MoreMenuRemoteAlertViewPresentContactCardNotification" object:0];
    [v43 addObserver:v13 selector:"callRecordingAfterFullScreenRequest:" name:@"MoreMenuRemoteAlertViewCallRecordingNotification" object:0];
    [v43 addObserver:v13 selector:"callRecordingStateChanged:" name:TUCallRecordingStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"callRecordingCountdownStarted:" name:@"startCountdownForCallRecording" object:0];
    featureFlags = [(PHAudioCallViewController *)v13 featureFlags];
    v45 = TUCallScreeningEnabledM3();

    if (v45)
    {
      [v43 addObserver:v13 selector:"callCenterScreeningStatusChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];
    }

    featureFlags2 = [(PHAudioCallViewController *)v13 featureFlags];
    receptionistEnabled = [featureFlags2 receptionistEnabled];

    if (receptionistEnabled)
    {
      [v43 addObserver:v13 selector:"receptionistStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    }

    featureFlags3 = [(PHAudioCallViewController *)v13 featureFlags];
    audioCallTranslationEnabled = [featureFlags3 audioCallTranslationEnabled];

    if (audioCallTranslationEnabled)
    {
      [v43 addObserver:v13 selector:"updateCallTranslationIfNeeded" name:TUCallTranslationAvailabilityChangedNotification object:0];
    }

    featureFlags4 = [(PHAudioCallViewController *)v13 featureFlags];
    waitOnHoldEnabled = [featureFlags4 waitOnHoldEnabled];

    if (waitOnHoldEnabled)
    {
      [(PHAudioCallViewController *)v13 setupCallHoldingObservers];
    }

    routeController = [centerCopy routeController];
    [routeController addDelegate:v13];

    audioDeviceController = [centerCopy audioDeviceController];
    [audioDeviceController addDelegate:v13];

    v54 = +[UIApplication sharedApplication];
    delegate = [v54 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    [bannerPresentationManager setLocalAudioTogglingDelegate:v13];

    sharedController = [(CNKScreenSharingInteractionControllerFactory *)v13->_screenSharingInteractionControllerFactory sharedController];
    [sharedController addDelegate:v13];
  }

  v58 = sub_100004F84(v12);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to NO", buf, 2u);
  }

  v13->_shouldPresentAlertButton = 0;
  v59 = +[UIApplication sharedApplication];
  delegate2 = [v59 delegate];
  alertCoordinator = [delegate2 alertCoordinator];

  if (!alertCoordinator)
  {
    v62 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
    v63 = +[UIApplication sharedApplication];
    delegate3 = [v63 delegate];
    [delegate3 setAlertCoordinator:v62];
  }

  v65 = +[UIApplication sharedApplication];
  delegate4 = [v65 delegate];
  alertCoordinator2 = [delegate4 alertCoordinator];
  [alertCoordinator2 setDelegate:v13];

  v13->_shouldEnableVideoStreamingButton = 0;
  v13->_shouldEnableShareMediaButton = 0;
  features = [(PHAudioCallViewController *)v13 features];
  LODWORD(delegate4) = [features isEnhancedEmergencyEnabled];

  if (delegate4)
  {
    v69 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v69 addDelegate:v13];

    frontmostCall = [centerCopy frontmostCall];
    if ([frontmostCall isEmergency])
    {
      emergencyCoordinator = [(PHAudioCallViewController *)v13 emergencyCoordinator];

      if (emergencyCoordinator)
      {
        goto LABEL_22;
      }

      v73 = sub_100004F84(v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v83 = v13;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from initing PHAudioCallViewController: %@", buf, 0xCu);
      }

      v74 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
      [(PHAudioCallViewController *)v13 setEmergencyCoordinator:v74];

      emergencyCoordinator2 = [(PHAudioCallViewController *)v13 emergencyCoordinator];
      [emergencyCoordinator2 setDelegate:v13];

      frontmostCall = [centerCopy frontmostCall];
      emergencyCoordinator3 = [(PHAudioCallViewController *)v13 emergencyCoordinator];
      [emergencyCoordinator3 setTuCall:frontmostCall];
    }
  }

LABEL_22:
  [(PHAudioCallViewController *)v13 setupDimmingViewForAlwaysOnDisplay];
  if (_UISolariumEnabled())
  {
    [(PHAudioCallViewController *)v13 addDimmingView];
  }

  topLeadingContainer = [(PHAudioCallViewController *)v13 topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)v13 middlePillContainer];
  [(PHAudioCallViewController *)v13 updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  topLeadingContainer2 = [(PHAudioCallViewController *)v13 topLeadingContainer];
  [(PHAudioCallViewController *)v13 updateCallHoldingIfNeeded:topLeadingContainer2];

  return v13;
}

- (void)callRecordingAfterFullScreenRequest:(id)request
{
  userInfo = [request userInfo];
  v7 = [userInfo valueForKey:@"callRecording"];

  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  if ([v7 isEqual:@"start"])
  {
    [(PHAudioCallViewController *)self startCallRecording];
  }

  else if ([v7 isEqual:@"stop"])
  {
    [(PHAudioCallViewController *)self stopCallRecording];
  }
}

- (void)callRecordingCountdownStarted:(id)started
{
  self->_callRecordingCountdownShowing = 1;
  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  [(PHAudioCallViewController *)self removeSupplementalButtons];
}

- (void)callRecordingStateChanged:(id)changed
{
  self->_callRecordingCountdownShowing = 0;
  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDelegate:0];

  callCenter = [(PHAudioCallViewController *)self callCenter];
  audioDeviceController = [callCenter audioDeviceController];
  [audioDeviceController removeDelegate:self];

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

    goto LABEL_5;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if ((isDominoEnabled & 1) == 0)
  {
LABEL_5:
    [(PHAudioCallViewController *)self deleteAllUnarchivedPosterDirectories];
  }

  features2 = [(PHAudioCallViewController *)self features];
  isEnhancedEmergencyEnabled = [features2 isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    v13 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v13 removeDelegate:self];
  }

  v14 = sub_100004F84(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController deallocated %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v15 dealloc];
}

- (void)loadView
{
  [(PHAudioCallViewController *)self setRootView];
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(PHAudioCallViewController *)self addCallParticipantsSubView];
  v3 = sub_100004F84([(PHAudioCallViewController *)self addBottomBarSubView]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    view = [(PHAudioCallViewController *)self view];
    v5 = 138412290;
    v6 = view;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view loaded: %@", &v5, 0xCu);
  }
}

- (void)setRootView
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(PHAudioCallViewController *)self preferredInterfaceOrientationForPresentation]== 1)
  {
    v12 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [v12 isIPadIdiom];

    v14 = v11 < v9;
    if ((v14 & ~isIPadIdiom) != 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v14 = v11 < v9;
    v15 = v11;
  }

  if (v14)
  {
    v9 = v11;
  }

  v18 = [[UIView alloc] initWithFrame:{v5, v7, v9, v15}];
  [(PHAudioCallViewController *)self setView:v18];
  layer = [v18 layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [v18 layer];
  [layer2 setAllowsGroupOpacity:0];

  [v18 setAutoresizingMask:18];
}

- (void)addBottomBarSubView
{
  v3 = [PHBottomBar alloc];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v5 = [(PHBottomBar *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager];
  [(PHCallViewController *)self setBottomBar:v5];

  view = [(PHAudioCallViewController *)self view];
  [view frame];
  v8 = v7;
  v10 = v9;
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setRotatedTargetSizeOfParent:{v8, v10}];

  v12 = +[UIColor clearColor];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setBackgroundColor:v12];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setDelegate:self];

  v15 = objc_opt_class();
  view2 = [(PHAudioCallViewController *)self view];
  [v15 _bottomBarBottomMarginForView:view2];
  v18 = v17;
  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [bottomBar4 setBottomMargin:v18];

  callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (!callDisplayStyle)
  {
    bottomBar5 = [(PHCallViewController *)self bottomBar];
    [bottomBar5 setAlpha:0.0];
  }

  [(PHAudioCallViewController *)self updateHardPauseDigitsState];
  view3 = [(PHAudioCallViewController *)self view];
  bottomBar6 = [(PHCallViewController *)self bottomBar];
  [view3 addSubview:bottomBar6];

  [(PHAudioCallViewController *)self constrainBottomBar];
  bottomBar7 = [(PHCallViewController *)self bottomBar];
  [bottomBar7 setCurrentState:11];

  objc_initWeak(&location, self);
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10001B37C;
  v34 = &unk_100356F60;
  objc_copyWeak(&v35, &location);
  v26 = objc_retainBlock(&v31);
  (v26[2])(v26, v27, v28, v29);
  v30 = [(PHCallViewController *)self bottomBar:v31];
  [v30 setStatusChangedHandler:v26];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)constrainBottomBar
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setTranslatesAutoresizingMaskIntoConstraints:0];

  [(PHAudioCallViewController *)self constrainBottomBarBottom];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

LABEL_5:
    bottomBar2 = [(PHCallViewController *)self bottomBar];
    centerXAnchor = [bottomBar2 centerXAnchor];
    view = [(PHAudioCallViewController *)self view];
    centerXAnchor2 = [view centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    v23 = +[PHInCallUtilities sharedInstance];
    if ([v23 isIPadIdiom])
    {
      features = [(PHAudioCallViewController *)self features];
      lvmEverywhereEnabled = [features lvmEverywhereEnabled];

      if (!lvmEverywhereEnabled)
      {
        bottomBar3 = [(PHCallViewController *)self bottomBar];
        widthAnchor = [bottomBar3 widthAnchor];
        +[PHBottomBar defaultWidth];
        topAnchor = [widthAnchor constraintEqualToConstant:?];
LABEL_10:

        v44[0] = v18;
        v44[1] = topAnchor;
        trailingSideLayoutGuide = [NSArray arrayWithObjects:v44 count:2];
        [NSLayoutConstraint activateConstraints:trailingSideLayoutGuide];
        goto LABEL_11;
      }
    }

    else
    {
    }

    bottomBar3 = [(PHCallViewController *)self bottomBar];
    widthAnchor = [bottomBar3 widthAnchor];
    view2 = [(PHAudioCallViewController *)self view];
    [view2 frame];
    topAnchor = [widthAnchor constraintEqualToConstant:v29];

    goto LABEL_10;
  }

  features2 = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features2 isDominoEnabled];

  if (!isDominoEnabled)
  {
    goto LABEL_5;
  }

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  topAnchor = [bottomBar4 topAnchor];
  trailingSideLayoutGuide = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  bottomAnchor = [trailingSideLayoutGuide bottomAnchor];
  v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:11.0];
  v45[0] = v42;
  bottomBar5 = [(PHCallViewController *)self bottomBar];
  trailingAnchor = [bottomBar5 trailingAnchor];
  safeAreaLayoutGuide = [(PHAudioCallViewController *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  +[PHUIConfiguration ambientHorizontalPadding];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v9];
  v45[1] = v36;
  bottomBar6 = [(PHCallViewController *)self bottomBar];
  widthAnchor2 = [bottomBar6 widthAnchor];
  +[PHBottomBar ambientWidth];
  v33 = [widthAnchor2 constraintEqualToConstant:?];
  v45[2] = v33;
  bottomBar7 = [(PHCallViewController *)self bottomBar];
  leadingAnchor = [bottomBar7 leadingAnchor];
  trailingSideLayoutGuide2 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  leadingAnchor2 = [trailingSideLayoutGuide2 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[3] = v11;
  bottomBar8 = [(PHCallViewController *)self bottomBar];
  trailingAnchor3 = [bottomBar8 trailingAnchor];
  trailingSideLayoutGuide3 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  trailingAnchor4 = [trailingSideLayoutGuide3 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v45[4] = v16;
  v17 = [NSArray arrayWithObjects:v45 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = bottomBar4;
LABEL_11:
}

- (void)addCallParticipantsSubView
{
  if (!self->_callParticipantsViewController)
  {
    v3 = [PHCallParticipantsViewController alloc];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v6 = [(PHCallParticipantsViewController *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager contactsCache:contactsCache];
    callParticipantsViewController = self->_callParticipantsViewController;
    self->_callParticipantsViewController = v6;

    prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setPrioritizedCall:prioritizedCall];

    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setDelegate:self];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setShouldIgnoreUpdates:[(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
    [(PHAudioCallViewController *)self addChildViewController:self->_callParticipantsViewController];
    view = [(PHAudioCallViewController *)self view];
    view2 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [view addSubview:view2];

    [(PHAudioCallViewController *)self setUpLayoutGuidesForParticipantsViewController:self->_callParticipantsViewController];
    [(PHAudioCallViewController *)self applyParticipantsViewConstraints];
    translationLayoutGuide = [(PHAudioCallViewController *)self translationLayoutGuide];

    if (translationLayoutGuide)
    {
      translationLayoutGuide2 = [(PHAudioCallViewController *)self translationLayoutGuide];
      topAnchor = [translationLayoutGuide2 topAnchor];
      view3 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
      bottomAnchor = [view3 bottomAnchor];
      v15 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      [v15 setActive:1];
    }
  }
}

- (void)layoutParticipantsViewAnimated:(BOOL)animated crossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  animatedCopy = animated;
  shouldShowLargeAvatar = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
  [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
  shouldShowLargeAvatar2 = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
  if (animatedCopy)
  {
    if (crossfadeCopy)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100111E00;
      v14[3] = &unk_100356988;
      v14[4] = self;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100111E70;
      v13[3] = &unk_1003569B0;
      v13[4] = self;
      [UIView animateWithDuration:v14 animations:v13 completion:0.400000006];
    }

    else
    {
      v9 = shouldShowLargeAvatar ^ shouldShowLargeAvatar2;
      if (v9)
      {
        view = [(PHAudioCallViewController *)self view];
        [view layoutIfNeeded];
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100111F8C;
      v11[3] = &unk_100356BB8;
      v12 = v9;
      v11[4] = self;
      [UIView animateWithDuration:0 delay:v11 usingSpringWithDamping:&stru_100359BC0 initialSpringVelocity:0.800000012 options:0.0 animations:1.0 completion:0.0];
    }
  }

  else
  {

    [(PHAudioCallViewController *)self resetParticipantsViewConstraints];
  }
}

- (void)resetParticipantsViewConstraints
{
  [(PHAudioCallViewController *)self removeAllParticipantsViewConstraints];
  [(PHAudioCallViewController *)self applyParticipantsViewConstraints];

  [(PHAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
}

- (void)removeAllParticipantsViewConstraints
{
  v15 = +[NSMutableArray array];
  participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];

  if (participantsViewTopConstraint)
  {
    participantsViewTopConstraint2 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v15 addObject:participantsViewTopConstraint2];
  }

  participantsViewLeadingConstraint = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];

  if (participantsViewLeadingConstraint)
  {
    participantsViewLeadingConstraint2 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    [v15 addObject:participantsViewLeadingConstraint2];
  }

  participantsViewTrailingConstraint = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];

  if (participantsViewTrailingConstraint)
  {
    participantsViewTrailingConstraint2 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    [v15 addObject:participantsViewTrailingConstraint2];
  }

  participantsViewCenterXConstraint = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];

  if (participantsViewCenterXConstraint)
  {
    participantsViewCenterXConstraint2 = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];
    [v15 addObject:participantsViewCenterXConstraint2];
  }

  participantsViewBottomConstraint = [(PHAudioCallViewController *)self participantsViewBottomConstraint];

  if (participantsViewBottomConstraint)
  {
    participantsViewBottomConstraint2 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
    [v15 addObject:participantsViewBottomConstraint2];
  }

  participantsViewCenterYConstraint = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];

  if (participantsViewCenterYConstraint)
  {
    participantsViewCenterYConstraint2 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    [v15 addObject:participantsViewCenterYConstraint2];
  }

  [NSLayoutConstraint deactivateConstraints:v15];
}

- (void)applyParticipantsViewConstraints
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle <= 2)
  {
    if ((callDisplayStyle - 1) >= 2)
    {
      if (!callDisplayStyle)
      {

        [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForBanner];
      }

      return;
    }

    goto LABEL_9;
  }

  if (callDisplayStyle != 3)
  {
    if (callDisplayStyle != 4)
    {
      return;
    }

LABEL_9:

    [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForFullScreen];
    return;
  }

  [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForAmbient];
}

- (void)applyParticipantsViewConstraintsForFullScreen
{
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (getParticipantsView_NotWaiting)
  {
    viewIfLoaded = [(PHAudioCallViewController *)self viewIfLoaded];

    if (viewIfLoaded)
    {
      [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:0];
      topAnchor = [getParticipantsView_NotWaiting topAnchor];
      view = [(PHAudioCallViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v9];

      centerXAnchor = [getParticipantsView_NotWaiting centerXAnchor];
      view2 = [(PHAudioCallViewController *)self view];
      centerXAnchor2 = [view2 centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:v13];

      leadingAnchor = [getParticipantsView_NotWaiting leadingAnchor];
      view3 = [(PHAudioCallViewController *)self view];
      readableContentGuide = [view3 readableContentGuide];
      leadingAnchor2 = [readableContentGuide leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v18];

      trailingAnchor = [getParticipantsView_NotWaiting trailingAnchor];
      view4 = [(PHAudioCallViewController *)self view];
      readableContentGuide2 = [view4 readableContentGuide];
      trailingAnchor2 = [readableContentGuide2 trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v23];

      participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      v29[0] = participantsViewTopConstraint;
      participantsViewCenterXConstraint = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];
      v29[1] = participantsViewCenterXConstraint;
      participantsViewLeadingConstraint = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
      v29[2] = participantsViewLeadingConstraint;
      participantsViewTrailingConstraint = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
      v29[3] = participantsViewTrailingConstraint;
      v28 = [NSArray arrayWithObjects:v29 count:4];
      [NSLayoutConstraint activateConstraints:v28];
    }
  }
}

- (id)ambientParticipantsViewConstraintsForView:(id)view largeAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  viewCopy = view;
  v7 = objc_alloc_init(NSMutableDictionary);
  +[PHUIConfiguration ambientVerticalPadding];
  v9 = v8;
  +[PHUIConfiguration ambientHorizontalPadding];
  v11 = v10;
  if (avatarCopy)
  {
    bottomAnchor = [viewCopy bottomAnchor];
    view = [(PHAudioCallViewController *)self view];
    bottomAnchor2 = [view bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v9];
    [v7 setObject:v15 forKeyedSubscript:&off_10036A508];

    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(PHAudioCallViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v11];
    [v7 setObject:v20 forKeyedSubscript:&off_10036A520];
  }

  else
  {
    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    safeAreaLayoutGuide = [view2 leadingAnchor];
    trailingAnchor2 = [trailingAnchor constraintEqualToAnchor:safeAreaLayoutGuide constant:-20.0];
    [v7 setObject:trailingAnchor2 forKeyedSubscript:&off_10036A520];
  }

  topAnchor = [viewCopy topAnchor];
  view3 = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  [v7 setObject:v24 forKeyedSubscript:&off_10036A538];

  leadingAnchor = [viewCopy leadingAnchor];
  view4 = [(PHAudioCallViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  [v7 setObject:v29 forKeyedSubscript:&off_10036A550];

  return v7;
}

- (void)applyParticipantsViewConstraintsForAmbient
{
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = getParticipantsView_NotWaiting;
  if (getParticipantsView_NotWaiting)
  {
    [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PHAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v4 largeAvatar:[(PHAudioCallViewController *)self shouldShowLargeAvatar]];
    [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:0];
    v6 = [v5 objectForKeyedSubscript:&off_10036A538];
    [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v6];

    v7 = [v5 objectForKeyedSubscript:&off_10036A508];
    [(PHAudioCallViewController *)self setParticipantsViewBottomConstraint:v7];

    v8 = [v5 objectForKeyedSubscript:&off_10036A550];
    [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v8];

    v9 = [v5 objectForKeyedSubscript:&off_10036A520];
    [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v9];

    participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    participantsViewLeadingConstraint = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    v16[1] = participantsViewLeadingConstraint;
    participantsViewTrailingConstraint = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    v16[2] = participantsViewTrailingConstraint;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v13];

    participantsViewBottomConstraint = [(PHAudioCallViewController *)self participantsViewBottomConstraint];

    if (participantsViewBottomConstraint)
    {
      participantsViewBottomConstraint2 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
      [participantsViewBottomConstraint2 setActive:1];
    }
  }
}

- (void)applyParticipantsViewConstraintsForBanner
{
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = getParticipantsView_NotWaiting;
  if (getParticipantsView_NotWaiting)
  {
    [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    centerYAnchor = [v4 centerYAnchor];
    view = [(PHAudioCallViewController *)self view];
    centerYAnchor2 = [view centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:v8];

    topAnchor = [v4 topAnchor];
    view2 = [(PHAudioCallViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v12];

    bottomAnchor = [v4 bottomAnchor];
    view3 = [(PHAudioCallViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v16 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [(PHAudioCallViewController *)self setParticipantsViewBottomConstraint:v16];

    leadingAnchor = [v4 leadingAnchor];
    view4 = [(PHAudioCallViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v20];

    trailingAnchor = [v4 trailingAnchor];
    view5 = [(PHAudioCallViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v24];

    participantsViewCenterYConstraint = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    v31[1] = participantsViewTopConstraint;
    participantsViewBottomConstraint = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
    v31[2] = participantsViewBottomConstraint;
    participantsViewLeadingConstraint = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    v31[3] = participantsViewLeadingConstraint;
    participantsViewTrailingConstraint = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    v31[4] = participantsViewTrailingConstraint;
    v30 = [NSArray arrayWithObjects:v31 count:5];
    [NSLayoutConstraint activateConstraints:v30];
  }
}

- (void)setUpLayoutGuidesForParticipantsViewController:(id)controller
{
  controllerCopy = controller;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      goto LABEL_8;
    }

    callDisplayStyleManager = [controllerCopy view];
    if (!self->_leadingSideLayoutGuide && !self->_trailingSideLayoutGuide)
    {
      v7 = objc_alloc_init(UILayoutGuide);
      leadingSideLayoutGuide = self->_leadingSideLayoutGuide;
      self->_leadingSideLayoutGuide = v7;

      v9 = objc_alloc_init(UILayoutGuide);
      trailingSideLayoutGuide = self->_trailingSideLayoutGuide;
      self->_trailingSideLayoutGuide = v9;

      view = [(PHAudioCallViewController *)self view];
      leadingSideLayoutGuide = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      [view addLayoutGuide:leadingSideLayoutGuide];

      view2 = [(PHAudioCallViewController *)self view];
      trailingSideLayoutGuide = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
      [view2 addLayoutGuide:trailingSideLayoutGuide];

      leadingSideLayoutGuide2 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      leadingAnchor = [leadingSideLayoutGuide2 leadingAnchor];
      view3 = [(PHAudioCallViewController *)self view];
      safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v20 setActive:1];

      leadingSideLayoutGuide3 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      trailingAnchor = [leadingSideLayoutGuide3 trailingAnchor];
      view4 = [(PHAudioCallViewController *)self view];
      centerXAnchor = [view4 centerXAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
      [v25 setActive:1];
    }

    leadingSideLayoutGuide4 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
    [callDisplayStyleManager setLeadingSideLayoutGuide:leadingSideLayoutGuide4];

    trailingSideLayoutGuide2 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
    [callDisplayStyleManager setTrailingSideLayoutGuide:trailingSideLayoutGuide2];
  }

LABEL_8:
}

- (void)updateScreenSharingDisableUpdateMask
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];

  v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        if ([*(*(&v24 + 1) + 8 * i) isSharingScreen])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  screenSharingInteractionControllerFactory = [(PHAudioCallViewController *)self screenSharingInteractionControllerFactory];
  sharedController = [screenSharingInteractionControllerFactory sharedController];
  remoteControlStatus = [sharedController remoteControlStatus];

  if (remoteControlStatus == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  v16 = sub_1000314C4(v13, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (v15)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (v9)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *buf = 138543874;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    if (remoteControlStatus == 2)
    {
      v17 = @"YES";
    }

    v32 = 2114;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Screen sharing audio call view controller shouldHideViewsFromScreenSharing: %{public}@ (isSharingScreenForAnyCall: %{public}@ isUnderRemoteControl: %{public}@)", buf, 0x20u);
  }

  if (v15)
  {
    v20 = 16;
  }

  else
  {
    v20 = 0;
  }

  view = [(PHAudioCallViewController *)self view];
  layer = [view layer];
  [layer setDisableUpdateMask:v20];

  callDetailsCoordinator = [(PHAudioCallViewController *)self callDetailsCoordinator];
  [callDetailsCoordinator setShouldHideViewsFromScreenSharing:v15];
}

- (void)updateScreenSharingIndicatorView
{
  features = [(PHAudioCallViewController *)self features];
  sharePlayInCallsEnabled = [features sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    frontmostCall = [callCenter frontmostCall];

    if ([frontmostCall isSharingScreen])
    {
      v6 = objc_alloc_init(_TtC13InCallService26ScreenSharingIndicatorView);
      getView = [(ScreenSharingIndicatorView *)v6 getView];
      [(PHAudioCallViewController *)self setScreenSharingIndicatorView:getView];

      [(PHAudioCallViewController *)self displayScreenSharingIndicator];
    }

    else
    {
      [(PHAudioCallViewController *)self dismissScreenSharingIndicatorView];
    }
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v7 viewDidLoad];
  inCallRootViewController = [(PHAudioCallViewController *)self inCallRootViewController];

  if (inCallRootViewController)
  {
    [(PHAudioCallViewController *)self updateCurrentState];
  }

  else
  {
    v5 = sub_100004F84(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping update to state due to lack of root view controller.", v6, 2u);
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view will appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewWillAppear:appearCopy];
  [(PHAudioCallViewController *)self handleViewWillAppear:appearCopy];
}

- (void)handleViewWillAppear:(BOOL)appear
{
  [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
  [(PHAudioCallViewController *)self updateCurrentState];
  [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v5 = emergencyCoordinator;
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (eedRTTState != 4)
      {
        return;
      }

      features = [(PHAudioCallViewController *)self emergencyCoordinator];
      [features transitionToRTTState:2];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewDidAppear:appearCopy];
  [(PHAudioCallViewController *)self handleViewDidAppear:appearCopy];
}

- (void)handleViewDidAppear:(BOOL)appear
{
  v4 = 0.300000012;
  if (!appear)
  {
    v4 = 0.0;
  }

  [(PHCallViewController *)self setStatusBarHidden:0 withDuration:v4];
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  provider = [frontmostCall provider];
  if ([provider isFaceTimeProvider])
  {
    isVideo = [frontmostCall isVideo];

    if (isVideo)
    {
      goto LABEL_7;
    }

    provider = +[CUTWiFiManager sharedInstance];
    [provider addWiFiAutoAssociationClientToken:@"PHFaceTimeAudioWiFiAssertionKey"];
  }

LABEL_7:
  callCenter = [(PHAudioCallViewController *)self callCenter];
  [callCenter enteredForegroundForCall:frontmostCall];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  alertCoordinator = [delegate alertCoordinator];
  isMonitoring = [alertCoordinator isMonitoring];

  v12 = +[UIApplication sharedApplication];
  delegate2 = [v12 delegate];
  alertCoordinator2 = [delegate2 alertCoordinator];
  v15 = alertCoordinator2;
  if (isMonitoring)
  {
    [alertCoordinator2 refreshDelegateWithState];
  }

  else
  {
    [alertCoordinator2 startMonitoring];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view will disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewWillDisappear:disappearCopy];
  [(PHAudioCallViewController *)self handleViewWillDisappear:disappearCopy];
}

- (void)handleViewWillDisappear:(BOOL)disappear
{
  v3 = +[CUTWiFiManager sharedInstance];
  [v3 removeWiFiAutoAssociationClientToken:@"PHFaceTimeAudioWiFiAssertionKey"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHCallViewController *)&v6 viewDidDisappear:disappearCopy];
  [(PHAudioCallViewController *)self handleViewDidDisappear:disappearCopy];
  [(PHAudioCallViewController *)self setCanDumpHierarchy:1];
}

- (void)handleViewDidDisappear:(BOOL)disappear
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  [callCenter enteredBackgroundForAllCalls];

  [(PHAudioCallViewController *)self suspendPosterAndCancelDelay:1];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = PHAudioCallViewController;
  v7 = [(PHAudioCallViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v8 = sub_100004F84(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = windowCopy;
    v12 = 1024;
    v13 = disappearCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did move to window %@, shouldAppearOrDisappear %d", buf, 0x12u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v37.receiver = self;
  v37.super_class = PHAudioCallViewController;
  changeCopy = change;
  [(PHAudioCallViewController *)&v37 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHAudioCallViewController *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance == _backlightLuminance2)
  {
    goto LABEL_26;
  }

  traitCollection2 = [(PHAudioCallViewController *)self traitCollection];
  _backlightLuminance3 = [traitCollection2 _backlightLuminance];

  traitCollection3 = [(PHAudioCallViewController *)self traitCollection];
  _backlightLuminance4 = [traitCollection3 _backlightLuminance];

  if (!_backlightLuminance4)
  {
    v13 = sub_100004F84(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Got trait collection callback saying display was off", v36, 2u);
    }

    [(PHAudioCallViewController *)self suspendPosterAndCancelDelay:1];
  }

  if (_backlightLuminance3 == 1)
  {
    view = [(PHAudioCallViewController *)self view];
    alwaysOnDisplayDimmingView = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [view bringSubviewToFront:alwaysOnDisplayDimmingView];

    view2 = [(PHAudioCallViewController *)self view];
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    view3 = [callParticipantsViewController view];
    [view2 bringSubviewToFront:view3];

    alwaysOnDisplayDimmingView2 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [alwaysOnDisplayDimmingView2 setAlpha:1.0];

    renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

    if (renderingViewController)
    {
      posterContainer = [(PHAudioCallViewController *)self posterContainer];
      [posterContainer setAlpha:0.0];
    }

    alwaysOnDisplayPosterNameViewModel = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

    if (!alwaysOnDisplayPosterNameViewModel)
    {
      goto LABEL_19;
    }

    v23 = +[TUCallCenter sharedInstance];
    if ([v23 currentCallCount] < 2)
    {
    }

    else
    {
      usesCompactMulticallUI = [(PHAudioCallViewController *)self usesCompactMulticallUI];

      v25 = 0.0;
      if ((usesCompactMulticallUI & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v25 = 1.0;
LABEL_18:
    alwaysOnDisplayPosterNameViewModel2 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [alwaysOnDisplayPosterNameViewModel2 updatePosterNameAlpha:v25];

LABEL_19:
    videoStreamingIsGoingOn = [(PHAudioCallViewController *)self videoStreamingIsGoingOn];
    if (!videoStreamingIsGoingOn)
    {
      goto LABEL_24;
    }

    v33 = sub_100004F84(videoStreamingIsGoingOn);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when going to AOD", v36, 2u);
    }

    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator handleDeviceLockEvent];
    goto LABEL_23;
  }

  alwaysOnDisplayDimmingView3 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [alwaysOnDisplayDimmingView3 setAlpha:0.0];

  renderingViewController2 = [(PHAudioCallViewController *)self renderingViewController];
  if (renderingViewController2)
  {
    v28 = renderingViewController2;
    canShowPosterImage = [(PHAudioCallViewController *)self canShowPosterImage];

    if (canShowPosterImage)
    {
      emergencyCoordinator = [(PHAudioCallViewController *)self posterContainer];
      [emergencyCoordinator setAlpha:1.0];
LABEL_23:
    }
  }

LABEL_24:
  stateDisplayChangedObservation = [(PHAudioCallViewController *)self stateDisplayChangedObservation];

  if (stateDisplayChangedObservation)
  {
    stateDisplayChangedObservation2 = [(PHAudioCallViewController *)self stateDisplayChangedObservation];
    stateDisplayChangedObservation2[2]();
  }

LABEL_26:
  [(PHAudioCallViewController *)self updateDimmingView];
}

- (void)releaseDismissalAssertion
{
  v2.receiver = self;
  v2.super_class = PHAudioCallViewController;
  [(PHCallViewController *)&v2 releaseDismissalAssertion];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
}

- (void)callIsEmergencyChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v15 = 138412546;
    selfCopy = v6;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v15, 0x16u);
  }

  object = [notificationCopy object];
  if (object)
  {
    if ([(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(PHAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
      emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];

      if (!emergencyCoordinator)
      {
        v12 = sub_100004F84(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from callIsEmergencyChangedNotification from PHAudioCallViewController: %@", &v15, 0xCu);
        }

        v13 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(PHAudioCallViewController *)self setEmergencyCoordinator:v13];

        emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
        [emergencyCoordinator2 setDelegate:self];
      }
    }
  }
}

- (void)updateViewForEmergencyCallIfNecessary
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: remove all the possile call UI because we are now in emergency call", v9, 2u);
  }

  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    [(PHAudioCallViewController *)self removePosterViewController:1 completion:0];
  }

  backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];

  if (backgroundImageView)
  {
    [(PHAudioCallViewController *)self removeBackgroundContactImageView];
  }

  defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

  if (defaultBackgroundGradientView)
  {
    [(PHAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  unblurredBackgroundImageView = [(PHAudioCallViewController *)self unblurredBackgroundImageView];

  if (unblurredBackgroundImageView)
  {
    unblurredBackgroundImageView2 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
    [unblurredBackgroundImageView2 removeFromSuperview];

    [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:0];
  }

  [(PHAudioCallViewController *)self updateBackgroundForEmergencyCall];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (void)wantsHoldMusicChangedNotification:(id)notification
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  wantsHoldMusic = [frontmostCall wantsHoldMusic];

  if (wantsHoldMusic)
  {
    v7 = sub_100004F84(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "decline with reminder and decline with message unavailable due to call wanting hold music.", v10, 2u);
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setDeclineAndMessageIsAvailable:0];

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 setDeclineAndRemindIsAvailable:0];
  }
}

- (void)callCenterScreeningStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v11, 0x16u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
  [singleCallLabelView updateLabelsOrderAndLayout];
}

- (void)callCenterCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v50 = 138412546;
    selfCopy = v6;
    v52 = 2112;
    v53 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v50, 0x16u);
  }

  object = [notificationCopy object];
  if (![(PHAudioCallViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_12;
  }

  prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
  callUUID = [prioritizedCall callUUID];
  if (!callUUID)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = callUUID;
  callUUID2 = [object callUUID];
  prioritizedCall2 = [(PHAudioCallViewController *)self prioritizedCall];
  callUUID3 = [prioritizedCall2 callUUID];
  v16 = callUUID3;
  if (callUUID2 == callUUID3)
  {

    goto LABEL_11;
  }

  v17 = [(PHAudioCallViewController *)self prioritizedCallIsInSameCallGroupAsCall:object];

  if ((v17 & 1) == 0)
  {
    v19 = sub_100004F84(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "callCenterCallStatusChangedNotification - bail since we don't want to choose the call ourselves", &v50, 2u);
    }

    [(PHAudioCallViewController *)self refreshUseRTTButton];
    [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
    goto LABEL_47;
  }

LABEL_12:
  if ([object status] == 1)
  {
    features = [(PHAudioCallViewController *)self features];
    if ([features isEnhancedEmergencyEnabled])
    {
      emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
      if (emergencyCoordinator)
      {
      }

      else
      {
        isEmergency = [object isEmergency];

        if (!isEmergency)
        {
LABEL_21:
          [(PHAudioCallViewController *)self tipKitStartWaitOnHoldObservation];
          goto LABEL_22;
        }

        v24 = sub_100004F84(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 138412290;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator when call is active from PHAudioCallViewController: %@", &v50, 0xCu);
        }

        v25 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(PHAudioCallViewController *)self setEmergencyCoordinator:v25];

        features = [(PHAudioCallViewController *)self emergencyCoordinator];
        [features setDelegate:self];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  if ([object status] == 6)
  {
    v26 = +[UIApplication sharedApplication];
    delegate = [v26 delegate];
    [delegate setMostRecentlyDisconnectedAudioCall:object];

    uniqueProxyIdentifier = [object uniqueProxyIdentifier];
    [(PHAudioCallViewController *)self clearMenuItemRegistration:uniqueProxyIdentifier];

    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    if (([object isVideo] & 1) == 0 && objc_msgSend(object, "disconnectedReason") == 6)
    {
      if (frontmostCall)
      {
        bottomBar = [(PHCallViewController *)self bottomBar];
        currentState = [bottomBar currentState];

        if (currentState == 7)
        {
          analyticsReporter = [(PHAudioCallViewController *)self analyticsReporter];
          [analyticsReporter reportMultipleCallsWaitingUIAction:0];
        }
      }
    }

    [(PHAudioCallViewController *)self writeToLastSeenPosterCacheIfNecessaryForCall:object];
    features2 = [(PHAudioCallViewController *)self features];
    if (([features2 isEnhancedEmergencyEnabled] & 1) != 0 && (-[PHAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v32 = v31;
      isEmergency2 = [object isEmergency];

      if (isEmergency2)
      {
        v35 = sub_100004F84(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
          v50 = 138412290;
          selfCopy = emergencyCoordinator2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: clean emergencyCoordinator: %@", &v50, 0xCu);
        }

        emergencyCoordinator3 = [(PHAudioCallViewController *)self emergencyCoordinator];
        [emergencyCoordinator3 cleanUpViewAndObjectWhenCallEnds];

        [(PHAudioCallViewController *)self setEmergencyCoordinator:0];
      }
    }

    else
    {
    }

    [(PHAudioCallViewController *)self tipKitStopWaitOnHoldObservation];
  }

  emergencyCoordinator4 = [(PHAudioCallViewController *)self emergencyCoordinator];

  if (emergencyCoordinator4)
  {
    emergencyCoordinator5 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator5 setTuCall:object];
  }

  [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  [(PHAudioCallViewController *)self updateCurrentState];
  [(PHAudioCallViewController *)self refreshUseRTTButton];
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:callToUseForWallpaper animated:1 callDisplayStyleChanged:0];
  }

  callCenter = [(PHAudioCallViewController *)self callCenter];
  autoPunchOutBehaviorRequiredForCurrentCalls = [callCenter autoPunchOutBehaviorRequiredForCurrentCalls];

  if (autoPunchOutBehaviorRequiredForCurrentCalls)
  {
    v44 = sub_100004F84(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Punch-out requested for current calls", &v50, 2u);
    }

    [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:1];
    [(PHCallViewController *)self punchOutToVoIPApplicationForCurrentCall];
  }

  else
  {
    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    v46 = [callCenter2 shouldActivateProviderInBackgroundForCall:object];

    if (v46)
    {
      [(PHCallViewController *)self activateProviderInBackgroundForCall:object];
    }

    else
    {
      [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

LABEL_47:
}

- (void)conferenceParticipantCallsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
}

- (void)receptionistStateChanged:(id)changed
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  isScreening = [frontmostCall isScreening];

  if (isScreening)
  {
    screeningViewController = [(PHAudioCallViewController *)self screeningViewController];
    if (screeningViewController)
    {
      v7 = screeningViewController;
      isShowingNewTranscriptsView = [(PHAudioCallViewController *)self isShowingNewTranscriptsView];

      if ((isShowingNewTranscriptsView & 1) == 0)
      {
        frontmostCall2 = [(PHAudioCallViewController *)self frontmostCall];
        receptionistState = [frontmostCall2 receptionistState];

        if (receptionistState)
        {
          [(PHAudioCallViewController *)self setMiddleViewState:0 animated:0];
          [(PHAudioCallViewController *)self setScreeningViewController:0];
          [(PHAudioCallViewController *)self removeScreeningBackgroundView];

          [(PHAudioCallViewController *)self setMiddleViewState:4 animated:0];
        }
      }
    }
  }
}

- (void)callContinuityStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callContinuityStateChangedNotification: %@", &v6, 0xCu);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
}

- (void)hardPauseDigitsStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hardPauseDigitsStateChangedNotification: %@", &v7, 0xCu);
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar refreshCustomizedActionTypeTitles];

  [(PHAudioCallViewController *)self updateHardPauseDigitsState];
  [(PHAudioCallViewController *)self refreshExtensionNumberButton];
}

- (void)callOnHoldChangedNotification:(id)notification
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar refreshEndCallButton];

  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:topLeadingContainer];
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(PHAudioCallViewController *)self refreshUseRTTButton];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v34 = 138412546;
    v35 = v6;
    v36 = 2112;
    v37 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v34, 0x16u);
  }

  [(PHAudioCallViewController *)self refreshUseRTTButton];
  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    frontmostCall = [callCenter frontmostCall];
    isEmergency = [frontmostCall isEmergency];

    if (!isEmergency)
    {
      goto LABEL_7;
    }

    features = [(PHAudioCallViewController *)self emergencyCoordinator];
    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    frontmostCall2 = [callCenter2 frontmostCall];
    [features updateRTTEnabled:{objc_msgSend(frontmostCall2, "isRTT")}];
  }

LABEL_7:
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  v16 = TUCallScreeningRTTEnabled();

  if (v16)
  {
    if ([(PHAudioCallViewController *)self middleViewState]== 4)
    {
      [(PHAudioCallViewController *)self setMiddleViewState:0];
      screeningViewController = self->_screeningViewController;
      self->_screeningViewController = 0;

      featureFlags2 = [(PHAudioCallViewController *)self featureFlags];
      receptionistEnabled = [featureFlags2 receptionistEnabled];

      if (receptionistEnabled)
      {
        [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:0];
      }

      [(PHAudioCallViewController *)self setMiddleViewState:4];
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    currentState = [bottomBar currentState];

    if (currentState == 23)
    {
      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:29];

      bottomBar3 = [(PHCallViewController *)self bottomBar];
      [bottomBar3 setCurrentState:23];
    }
  }

  v24 = +[UIApplication sharedApplication];
  delegate = [v24 delegate];
  currentInCallScene = [delegate currentInCallScene];

  if (currentInCallScene)
  {
    v27 = +[UIApplication sharedApplication];
    delegate2 = [v27 delegate];
    currentInCallScene2 = [delegate2 currentInCallScene];
    delegate3 = [currentInCallScene2 delegate];
    v31 = +[UIApplication sharedApplication];
    delegate4 = [v31 delegate];
    currentInCallScene3 = [delegate4 currentInCallScene];
    [delegate3 updateSceneBackgroundMaterialWith:currentInCallScene3];
  }
}

- (void)callIsScreenSharingChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    name = [notificationCopy name];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v8, 0x16u);
  }

  [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  [(PHAudioCallViewController *)self updateScreenSharingIndicatorView];
}

- (void)callKeypadDataSourceChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    name = [notificationCopy name];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@, we are going to hide the name on keypad", &v8, 0x16u);
  }

  [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
  [(PHAudioCallViewController *)self setHasKeypadUpdated:1];
}

- (void)callDisplayContextChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  object = [notificationCopy object];
  [(PHAudioCallViewController *)self updateBottomBarButtonsWithCall:object];
}

- (void)setShowsCallDetailsViewButton:(BOOL)button
{
  buttonCopy = button;
  callDetailsViewButton = [(PHAudioCallViewController *)self callDetailsViewButton];
  v6 = callDetailsViewButton;
  if (buttonCopy)
  {

    if (!v6)
    {

      [(PHAudioCallViewController *)self setUpCallDetailsViewButton];
    }
  }

  else
  {
    [callDetailsViewButton removeFromSuperview];

    [(PHAudioCallViewController *)self setCallDetailsViewButton:0];
  }
}

- (void)setUpCallDetailsViewButton
{
  v3 = [UIButton buttonWithType:4];
  [(PHAudioCallViewController *)self setCallDetailsViewButton:v3];

  callDetailsViewButton = [(PHAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton addTarget:self action:"callDetailsViewButtonTapped" forEvents:64];

  callDetailsViewButton2 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(PHAudioCallViewController *)self view];
  callDetailsViewButton3 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [view addSubview:callDetailsViewButton3];

  v8 = +[UIColor whiteColor];
  callDetailsViewButton4 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton4 setTintColor:v8];

  callDetailsViewButton5 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:callDetailsViewButton5];
}

- (double)callDetailsButtonPaddingTop
{
  +[TPIncomingCallMetricsProvider fullDeviceHeight];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop_PERCENT];
  view = [(PHAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTrailing
{
  +[TPIncomingCallMetricsProvider fullDeviceWidth];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing_PERCENT];
  view = [(PHAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTop_PERCENT
{
  if ((+[TPIncomingCallMetricsProvider deviceHasHomeButton]& 1) != 0)
  {

    +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_HomeButton];
  }

  else
  {
    features = [(PHAudioCallViewController *)self features];
    isSystemApertureEnabled = [features isSystemApertureEnabled];

    if (isSystemApertureEnabled)
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_DynamicIsland];
    }

    else
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_Notch];
    }
  }

  return result;
}

- (double)callDetailsButtonPaddingTrailing_PERCENT
{
  if ((+[TPIncomingCallMetricsProvider deviceHasHomeButton]& 1) != 0)
  {

    +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_HomeButton];
  }

  else
  {
    features = [(PHAudioCallViewController *)self features];
    isSystemApertureEnabled = [features isSystemApertureEnabled];

    if (isSystemApertureEnabled)
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_DynamicIsland];
    }

    else
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_Notch];
    }
  }

  return result;
}

- (void)applyBlockButtonPositionAndSizeCapToElement:(id)element
{
  elementCopy = element;
  topAnchor = [elementCopy topAnchor];
  view = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v15[0] = v8;
  leadingAnchor = [elementCopy leadingAnchor];
  view2 = [(PHAudioCallViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v13];

  v14 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [elementCopy setMaximumContentSizeCategory:v14];
}

- (void)blockButtonTapped
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  [(PHAudioCallViewController *)self showBlockAlertForCall:frontmostCall];
}

- (void)setShowsBlockButton:(BOOL)button
{
  buttonCopy = button;
  blockButton = [(PHAudioCallViewController *)self blockButton];
  v6 = blockButton;
  if (buttonCopy)
  {

    if (!v6)
    {

      [(PHAudioCallViewController *)self setUpBlockButton];
    }
  }

  else
  {
    [blockButton removeFromSuperview];

    [(PHAudioCallViewController *)self setBlockButton:0];
  }
}

- (void)setUpBlockButton
{
  v11 = [UIButton buttonWithType:1];
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  [v3 setCornerStyle:4];
  [v3 contentInsets];
  [v3 setContentInsets:?];
  v4 = +[UIColor secondarySystemFillColor];
  [v3 setBaseBackgroundColor:v4];

  v5 = +[UIColor whiteColor];
  [v3 setBaseForegroundColor:v5];

  [v11 setConfiguration:v3];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
  [v11 setTitle:v7 forState:0];

  [v11 addTarget:self action:"blockButtonTapped" forEvents:64];
  [(PHAudioCallViewController *)self setBlockButton:v11];
  view = [(PHAudioCallViewController *)self view];
  blockButton = [(PHAudioCallViewController *)self blockButton];
  [view addSubview:blockButton];

  blockButton2 = [(PHAudioCallViewController *)self blockButton];
  [(PHAudioCallViewController *)self applyBlockButtonPositionAndSizeCapToElement:blockButton2];
}

- (void)updateParticipantConstraintsForPosterName:(id)name
{
  nameCopy = name;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle)
  {
    if (![(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
    {
      detachedPosterNameViewModel = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
      if (detachedPosterNameViewModel)
      {
      }

      else if ([(PHAudioCallViewController *)self callHasContactPosterWithVerticalName])
      {
        [(PHAudioCallViewController *)self positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:nameCopy];
        callDetailsViewButton = [(PHAudioCallViewController *)self callDetailsViewButton];
        v8 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
        [callDetailsViewButton setMaximumContentSizeCategory:v8];

        goto LABEL_8;
      }
    }

    [(PHAudioCallViewController *)self restoreParticipantsViewStatusLabelForFullScreen];
  }

LABEL_8:
}

- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)button
{
  buttonCopy = button;
  v16 = +[NSMutableArray array];
  participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];

  if (participantsViewTopConstraint)
  {
    participantsViewTopConstraint2 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v16 addObject:participantsViewTopConstraint2];
  }

  participantsViewCenterYConstraint = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];

  if (participantsViewCenterYConstraint)
  {
    participantsViewCenterYConstraint2 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    [v16 addObject:participantsViewCenterYConstraint2];
  }

  participantsViewVerticalPosterNameTopConstraint = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];

  if (participantsViewVerticalPosterNameTopConstraint)
  {
    participantsViewVerticalPosterNameTopConstraint2 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    [v16 addObject:participantsViewVerticalPosterNameTopConstraint2];
  }

  [NSLayoutConstraint deactivateConstraints:v16];
  topAnchor = [buttonCopy topAnchor];

  view = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [(PHAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:v14];

  participantsViewVerticalPosterNameTopConstraint3 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  [participantsViewVerticalPosterNameTopConstraint3 setActive:1];
}

- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)button
{
  buttonCopy = button;
  leadingAnchor = [buttonCopy leadingAnchor];
  view = [(PHAudioCallViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v15[0] = v8;
  topAnchor = [buttonCopy topAnchor];

  view2 = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v12 + 6.0];
  v15[1] = v13;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)applySizeToElement:(id)element usingThisElementAsGuide:(id)guide
{
  elementCopy = element;
  guideCopy = guide;
  if (guideCopy)
  {
    widthAnchor = [elementCopy widthAnchor];
    widthAnchor2 = [guideCopy widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
    v16[0] = v9;
    heightAnchor = [elementCopy heightAnchor];
    heightAnchor2 = [guideCopy heightAnchor];
    v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:0.0];
    v16[1] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    maximumContentSizeCategory = [guideCopy maximumContentSizeCategory];

    if (maximumContentSizeCategory)
    {
      maximumContentSizeCategory2 = [guideCopy maximumContentSizeCategory];
      [elementCopy setMaximumContentSizeCategory:maximumContentSizeCategory2];
    }
  }
}

- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)element
{
  elementCopy = element;
  topAnchor = [elementCopy topAnchor];
  view = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v16[0] = v8;
  trailingAnchor = [elementCopy trailingAnchor];
  view2 = [(PHAudioCallViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [elementCopy setMaximumContentSizeCategory:v15];
}

- (void)callDetailsViewButtonTapped
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  if ([(PHAudioCallViewController *)self shouldShowConferenceCallDetails])
  {
    v4 = objc_alloc_init(PHConferenceParticipantsViewController);
    v5 = [[UINavigationController alloc] initWithRootViewController:v4];
    v6 = +[UIColor grayColor];
    view = [v5 view];
    [view setBackgroundColor:v6];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissNavigationController"];
    navigationItem = [(PHConferenceParticipantsViewController *)v4 navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

    [(PHAudioCallViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    provider = [frontmostCall provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    if (isTelephonyProvider)
    {
      [(PHAudioCallViewController *)self presentContactCard];
    }

    else
    {
      objc_initWeak(&location, self);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1001165A0;
      v17 = &unk_100356E98;
      objc_copyWeak(&v18, &location);
      v12 = objc_retainBlock(&v14);
      v13 = [PHInCallUtilities sharedInstance:v14];
      [v13 requestPasscodeUnlockWithCompletion:v12];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action
{
  v5 = [(PHAudioCallViewController *)self activeCall:controller];
  [(PHAudioCallViewController *)self reportWithCall:v5];
}

- (BOOL)shouldShowConferenceCallDetails
{
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  view = [callParticipantsViewController view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  callParticipantsViewController2 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v8 = [callParticipantsViewController2 shouldShowInfoButtonForParticipantAtIndex:0 inParticipantsView:getParticipantsView_NotWaiting];

  return v8;
}

- (BOOL)canDoInfoButtonCoinFlipWith:(id)with contactStore:(id)store
{
  withCopy = with;
  storeCopy = store;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PHInCallUIInfoButtonCoinFlipKey"];

  if (v8)
  {
    v9 = [[CNSharedProfileStateOracle alloc] initWithContact:withCopy contactStore:storeCopy];
    v10 = [v9 avatarViewAnimationTypeForEffectiveState] == 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)animateInfoButtonCoinFlipIfNeeded
{
  shouldUseHeroImageLayout = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((shouldUseHeroImageLayout & 1) == 0)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] != 3)
    {
LABEL_19:

      return;
    }

    features = [(PHAudioCallViewController *)self features];
    if (([features isDominoEnabled] & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  features2 = [(PHAudioCallViewController *)self features];
  if (![features2 isNameAndPhotoC3Enabled])
  {

    if (shouldUseHeroImageLayout)
    {
      return;
    }

    goto LABEL_18;
  }

  callDetailsViewButton = [(PHAudioCallViewController *)self callDetailsViewButton];

  if (!shouldUseHeroImageLayout)
  {
  }

  if (callDetailsViewButton)
  {
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    contactIdentifier = [frontmostCall contactIdentifier];

    if (!contactIdentifier)
    {
LABEL_36:

      return;
    }

    v9 = [PHInCallUtilities contactStoreForCall:frontmostCall];
    contactIdentifier2 = [frontmostCall contactIdentifier];
    v11 = +[PHAudioCallViewController contactKeysToFetch];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v13 = [v9 contactForIdentifier:contactIdentifier2 keysToFetch:v11 usingCache:contactsCache];

    if (!v13 || ![(PHAudioCallViewController *)self canDoInfoButtonCoinFlipWith:v13 contactStore:v9])
    {
LABEL_35:

      goto LABEL_36;
    }

    v14 = [[CNSharedProfileStateOracle alloc] initWithContact:v13 contactStore:v9];
    v15 = [CNSharedProfileStateOracle contactIsInAutoUpdateState:v13];
    v16 = v15;
    v17 = sub_100004F84(v15);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        currentNickname = [v14 currentNickname];
        imageData = [v13 imageData];
        *buf = 138412546;
        v64 = currentNickname;
        v65 = 2112;
        v66 = imageData;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using currentNickname %@ contact.imageData: %@", buf, 0x16u);
      }

      currentNickname2 = [v14 currentNickname];

      v22 = [CNSharedProfile alloc];
      v23 = v22;
      if (!currentNickname2)
      {
        v55 = [v22 initWithContact:v13];
        goto LABEL_26;
      }

      currentNickname3 = [v14 currentNickname];
    }

    else
    {
      if (v18)
      {
        pendingNickname = [v14 pendingNickname];
        *buf = 138412290;
        v64 = pendingNickname;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using pendingNickname %@", buf, 0xCu);
      }

      v23 = [CNSharedProfile alloc];
      currentNickname3 = [v14 pendingNickname];
    }

    v26 = currentNickname3;
    v55 = [v23 initWithNickname:currentNickname3];

LABEL_26:
    callDetailsViewButton2 = [(PHAudioCallViewController *)self callDetailsViewButton];
    [callDetailsViewButton2 setAlpha:0.0];

    v28 = objc_alloc_init(UIView);
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PHAudioCallViewController *)self view];
    [view addSubview:v28];

    pendingNickname2 = [v14 pendingNickname];
    avatar = [pendingNickname2 avatar];

    v32 = +[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled];
    v52 = avatar;
    if (v32)
    {
      contentIsSensitive = [avatar contentIsSensitive];
      v34 = contentIsSensitive;
      v35 = sub_100004F84(contentIsSensitive);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v64) = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo returning %d", buf, 8u);
      }
    }

    else
    {
      v35 = sub_100004F84(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo not performing check", buf, 2u);
      }

      LOBYTE(v34) = 0;
    }

    v36 = +[ICSPreferences sharedPreferences];
    forceBlurNewPoster = [v36 forceBlurNewPoster];

    v38 = forceBlurNewPoster | v34;
    v39 = [_TtC13InCallService19BlurrableAvatarView alloc];
    contact = [v55 contact];
    v41 = [(BlurrableAvatarView *)v39 initWithContact:contact wantsBlur:v38 & 1 isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];

    [(BlurrableAvatarView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 addSubview:v41];
    v42 = [UIButton buttonWithType:4];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 addSubview:v42];
    v43 = +[UIColor secondaryLabelColor];
    [v42 setTintColor:v43];

    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v42];
    wallpaperTitleStyleAttributes = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributes];
    v45 = wallpaperTitleStyleAttributes;
    if (wallpaperTitleStyleAttributes)
    {
      titleColor = [wallpaperTitleStyleAttributes titleColor];
      [v42 setTintColor:titleColor];
    }

    v47 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
    [(BlurrableAvatarView *)v41 setMaximumContentSizeCategory:v47];

    [(PHAudioCallViewController *)self applySizeToElement:v41 usingThisElementAsGuide:v42];
    [(PHAudioCallViewController *)self applySizeToElement:v28 usingThisElementAsGuide:v42];
    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v28];
    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v41];
    [(BlurrableAvatarView *)v41 setAlpha:0.0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100116EB0;
    block[3] = &unk_100359098;
    v57 = v28;
    v58 = v41;
    v59 = v42;
    selfCopy = self;
    v61 = v13;
    v62 = v14;
    v48 = v14;
    v49 = v42;
    v50 = v41;
    v51 = v28;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_35;
  }
}

- (void)updateSaliencyRectIfNeeded
{
  if (self->_renderingViewController)
  {
    +[TPIncomingCallMetricsProvider twentyTwoPointFivePercentOfDeviceHeight];
    v4 = v3;
    +[TPIncomingCallMetricsProvider fullDeviceWidth];
    v6 = v5;
    +[TPIncomingCallMetricsProvider fullDeviceHeight];
    v8 = v7 - v4;
    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar frame];
    v11 = v8 - v10;

    [(PRUISPosterRenderingViewController *)self->_renderingViewController salientContentRectangle];
    v21.origin.x = 0.0;
    v21.origin.y = v4;
    v21.size.width = v6;
    v21.size.height = v11;
    v12 = CGRectEqualToRect(v20, v21);
    if (!v12)
    {
      v13 = sub_100004F84(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134218496;
        v15 = v4;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating saliency rect to y=%f, width=%f, height=%f", &v14, 0x20u);
      }

      [(PRUISPosterRenderingViewController *)self->_renderingViewController setSalientContentRectangle:0.0, v4, v6, v11];
    }
  }
}

- (void)useRTTButtonTapped
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  callCenter = [(PHAudioCallViewController *)self callCenter];
  [callCenter setTTYType:1 forCall:frontmostCall];
}

- (void)extensionNumberButtonTapped
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  [frontmostCall sendHardPauseDigits];
}

- (void)callTransferButtonTapped
{
  v11 = objc_alloc_init(TUCallProviderManager);
  v3 = [TUDialRequest alloc];
  telephonyProvider = [v11 telephonyProvider];
  v5 = [v3 initWithProvider:telephonyProvider];

  v6 = [[TUHandle alloc] initWithType:2 value:@"4"];
  [v5 setHandle:v6];

  [v5 setOriginatingUIType:38];
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  localSenderIdentityAccountUUID = [frontmostCall localSenderIdentityAccountUUID];
  [v5 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  callCenter = [(PHAudioCallViewController *)self callCenter];
  v10 = [callCenter dialWithRequest:v5];
}

- (void)mergeCallsButtonTapped
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  v4 = [callCenter callWithStatus:2];

  callCenter2 = [(PHAudioCallViewController *)self callCenter];
  v6 = [callCenter2 callWithStatus:1];

  v8 = sub_100004F84(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Supplemental merge button tapped. Grouping held call %@ with active call %@", &v10, 0x16u);
  }

  callCenter3 = [(PHAudioCallViewController *)self callCenter];
  [callCenter3 groupCall:v4 withOtherCall:v6];
}

- (void)removeSupplementalButtons
{
  callTransferButton = [(PHAudioCallViewController *)self callTransferButton];
  [callTransferButton removeFromSuperview];

  extensionNumberButton = [(PHAudioCallViewController *)self extensionNumberButton];
  [extensionNumberButton removeFromSuperview];

  useRTTButton = [(PHAudioCallViewController *)self useRTTButton];
  [useRTTButton removeFromSuperview];

  mergeCallsButton = [(PHAudioCallViewController *)self mergeCallsButton];
  [mergeCallsButton removeFromSuperview];
}

- (void)dismissNavigationController
{
  navigationController = [(PHAudioCallViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissNavigationControllerAndUpdateScene
{
  objc_initWeak(&location, self);
  navigationController = [(PHAudioCallViewController *)self navigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100117B20;
  v4[3] = &unk_100356F60;
  objc_copyWeak(&v5, &location);
  [navigationController dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isScreeningAnyCallGroup:(id)group
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100117C80;
  v4[3] = &unk_100359130;
  v4[4] = self;
  return [group tu_containsObjectPassingTest:v4];
}

- (BOOL)_isScreeningCallGroup:(id)group
{
  groupCopy = group;
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabled())
  {
    calls = [groupCopy calls];
    firstObject = [calls firstObject];
    isScreening = [firstObject isScreening];
  }

  else
  {
    isScreening = 0;
  }

  return isScreening;
}

- (void)setIdleState:(unsigned __int16)state
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  [delegate setMostRecentlyDisconnectedAudioCall:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(PHAudioCallViewController *)self releaseDismissalAssertion];

  [(PHAudioCallViewController *)self _testing_didTransitionToIdleCallState];
}

- (void)setActiveState:(unsigned __int16)state
{
  stateCopy = state;
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];

  if ([routeController hasAirPodsAvailable])
  {
    v7 = [routeController hasAirPodsInEar] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = PHPreferencesGetValue();
  if ([v8 BOOLValue])
  {
    v9 = 1;
  }

  else
  {
    v9 = ([(PHCallViewController *)self currentState]== 1) & v7;
  }

  if (![(PHAudioCallViewController *)self middleViewState]|| [(PHAudioCallViewController *)self middleViewState]== 4 || [(PHAudioCallViewController *)self middleViewState]== 5)
  {
    objc_initWeak(location, self);
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_10011831C;
    v45 = &unk_100359158;
    objc_copyWeak(&v46, location);
    v47 = v9;
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:&v42];
    objc_destroyWeak(&v46);
    objc_destroyWeak(location);
  }

  if (stateCopy == 5 || [(PHCallViewController *)self currentState]== 5)
  {
    [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded:v42];
  }

  v10 = [(PHCallViewController *)self bottomBar:v42];
  [v10 setUserInteractionEnabled:1];

  currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:1];
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToActiveCallState:bottomBar];

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:stateCopy == 4];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    }
  }

  else
  {
  }

  if (stateCopy == 4)
  {
    isolatedCall = [(PHAudioCallViewController *)self isolatedCall];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];
    if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
    {
      [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    }

    [(PHAudioCallViewController *)self animateInfoButtonCoinFlipIfNeeded];
  }

  else
  {
    isolatedCall = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];
  }

  if ([isolatedCall originatingUIType] == 10)
  {
    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    routeController2 = [callCenter2 routeController];
    routeForSpeakerEnable = [routeController2 routeForSpeakerEnable];

    if (routeForSpeakerEnable)
    {
      callCenter3 = [(PHAudioCallViewController *)self callCenter];
      routeController3 = [callCenter3 routeController];
      [routeController3 pickRoute:routeForSpeakerEnable];
    }

    else
    {
      callCenter3 = sub_100004F84(v22);
      if (os_log_type_enabled(callCenter3, OS_LOG_TYPE_ERROR))
      {
        sub_10025710C();
      }
    }

    voiceLoopManager = [(PHAudioCallViewController *)self voiceLoopManager];
    [voiceLoopManager startLoopPlayback];
  }

  else
  {
    if ([isolatedCall originatingUIType] != 12)
    {
      goto LABEL_35;
    }

    callCenter4 = [(PHAudioCallViewController *)self callCenter];
    routeController4 = [callCenter4 routeController];
    routeForSpeakerEnable = [routeController4 routeForSpeakerDisable];

    if (routeForSpeakerEnable)
    {
      voiceLoopManager = [(PHAudioCallViewController *)self callCenter];
      routeController5 = [voiceLoopManager routeController];
      [routeController5 pickRoute:routeForSpeakerEnable];
    }

    else
    {
      voiceLoopManager = sub_100004F84(v27);
      if (os_log_type_enabled(voiceLoopManager, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, voiceLoopManager, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController: Could not find available route to pick for speaker disable", location, 2u);
      }
    }
  }

LABEL_35:
  callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (!callDisplayStyle)
  {
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:1];

    callCenter5 = [(PHAudioCallViewController *)self callCenter];
    routeController6 = [callCenter5 routeController];
    pickedRoute = [routeController6 pickedRoute];
    isReceiver = [pickedRoute isReceiver];

    v37 = +[UIApplication sharedApplication];
    delegate = [v37 delegate];
    currentInCallScene = [delegate currentInCallScene];
    delegate2 = [currentInCallScene delegate];
    callAnalyticsLogger = [delegate2 callAnalyticsLogger];
    [callAnalyticsLogger createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:isReceiver ^ 1];
  }

  [(PHAudioCallViewController *)self _performPosterTransformationsIfNecessaryToState:stateCopy];
}

- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)state
{
  stateCopy = state;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
  if (stateCopy == 4 && callDisplayStyle == 2 && ([(PHAudioCallViewController *)self renderingViewController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    shouldShowContactOrLastSeenWallpaper = [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper];

    if (shouldShowContactOrLastSeenWallpaper)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001184E8;
      v11[3] = &unk_100356960;
      v11[4] = self;
      v12 = 4;
      v9 = objc_retainBlock(v11);
      [UIView animateWithDuration:v9 animations:0.5];
    }
  }

  else
  {
  }
}

- (BOOL)isShowingPosterBadge
{
  posterBadgeView = [(PHAudioCallViewController *)self posterBadgeView];
  v3 = posterBadgeView != 0;

  return v3;
}

- (void)updatePosterBadgeView:(BOOL)view to:(id)to
{
  viewCopy = view;
  toCopy = to;
  if (viewCopy && [(PHAudioCallViewController *)self canShowPosterBadgeInAudioCallView:toCopy])
  {
    [(PHAudioCallViewController *)self setUpPosterBadgeViewIfNecessary];
  }

  else
  {
    posterBadgeView = [(PHAudioCallViewController *)self posterBadgeView];

    if (posterBadgeView)
    {
      posterBadgeView2 = [(PHAudioCallViewController *)self posterBadgeView];
      [posterBadgeView2 removeFromSuperview];

      [(PHAudioCallViewController *)self setPosterBadgeView:0];
    }
  }

  posterBadgeView3 = [(PHAudioCallViewController *)self posterBadgeView];
  [toCopy setPosterBadgeView:posterBadgeView3];

  [(PHAudioCallViewController *)self synchronizeSingleLabelViewWithPosterText];
}

- (void)setUpPosterBadgeViewIfNecessary
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  posterBadgeView = [(PHAudioCallViewController *)self posterBadgeView];

  if (posterBadgeView)
  {
    return;
  }

  getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  singleCallLabelView = [getParticipantsView_WaitingOrNot singleCallLabelView];
  iconView = [singleCallLabelView iconView];

  if (iconView)
  {
    v9 = objc_alloc_init(UIImageView);
LABEL_10:
    badgeView = v9;
    goto LABEL_11;
  }

  badgeView = [singleCallLabelView badgeView];

  if (badgeView)
  {
    v9 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    goto LABEL_10;
  }

LABEL_11:
  [badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PHAudioCallViewController *)self view];
  [view addSubview:badgeView];

  [(PHAudioCallViewController *)self positionPosterBadgeToBeHorizontallyCenteredToInfoButton:badgeView];
  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];

  if (topLeadingContainer)
  {
    topLeadingContainer2 = [(PHAudioCallViewController *)self topLeadingContainer];
    leadingAnchor = [topLeadingContainer2 leadingAnchor];
    trailingAnchor = [badgeView trailingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:8.0];

    [v16 setActive:1];
  }

  [(PHAudioCallViewController *)self setPosterBadgeView:badgeView];
  posterBadgeView2 = [(PHAudioCallViewController *)self posterBadgeView];
  v18 = +[TPIncomingCallMetricsProvider posterBadgeMaxSize];
  [posterBadgeView2 setMaximumContentSizeCategory:v18];
}

- (void)_updatePosterStatusLabelForState:(unsigned __int16)state
{
  stateCopy = state;
  posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];

  if (posterNameViewModel)
  {
    getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
    posterNameViewModel2 = [(PHAudioCallViewController *)self posterNameViewModel];
    [posterNameViewModel2 updateStatusFromParticipantsView:getParticipantsView_WaitingOrNot];

    if (stateCopy <= 0xB && ((1 << stateCopy) & 0x814) != 0)
    {
      [(PHAudioCallViewController *)self _updatePosterNameAlpha];
      view = [(PHAudioCallViewController *)self view];
      window = [view window];

      v10 = window != 0;
      if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
      {
        v11 = dispatch_time(0, 850000000);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100118B30;
        v13[3] = &unk_100356BB8;
        v13[4] = self;
        v14 = v10;
        dispatch_after(v11, &_dispatch_main_q, v13);
      }

      else
      {
        posterNameViewModel3 = [(PHAudioCallViewController *)self posterNameViewModel];
        [posterNameViewModel3 transitionCallToActiveStateAnimated:v10];
      }
    }

    [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  }
}

- (void)setRingingState:(unsigned __int16)state
{
  presentedViewController = [(PHAudioCallViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  currentInCallScene = [delegate currentInCallScene];
  isBeingShownAboveCoverSheet = [currentInCallScene isBeingShownAboveCoverSheet];

  callCenter = [(PHAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v10 = [(PHAudioCallViewController *)self setCallForBackgroundImage:incomingCall animated:1 callDisplayStyleChanged:0];
  v11 = 4;
  if (v10)
  {
    v11 = 5;
  }

  if (isBeingShownAboveCoverSheet)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      v12 = 0;
    }
  }

  else
  {
  }

  isMessagingAllowed = [incomingCall isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [incomingCall isReminderAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setCurrentState:v12];

  [(PHAudioCallViewController *)self setMiddleViewState:0 animated:0];
  callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (!callDisplayStyle)
  {
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:0];
  }

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:bottomBar4];
}

- (void)setWaitingState:(unsigned __int16)state
{
  stateCopy = state;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setWaitingState: %lu", &v23, 0xCu);
  }

  callCenter = [(PHAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  isPresentingAmbient = [delegate isPresentingAmbient];

  if ((isPresentingAmbient & 1) == 0)
  {
    provider = [incomingCall provider];
    if ([provider supportsDynamicSystemUI])
    {
      featureFlags = [(PHAudioCallViewController *)self featureFlags];
      if ([featureFlags groupConversations])
      {
        HasChinaSKU = TUDeviceHasChinaSKU();

        if (HasChinaSKU)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    inCallRootViewController = [(PHAudioCallViewController *)self inCallRootViewController];
    [inCallRootViewController requestInCallSceneTransitionToFullScreen];
  }

LABEL_11:
  [(PHAudioCallViewController *)self setShouldShowLargeAvatarForCallWaiting:[(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:incomingCall]];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:incomingCall animated:1 callDisplayStyleChanged:0];
  if ([(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates])
  {
    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    autoPunchOutBehaviorRequiredForCurrentCalls = [callCenter2 autoPunchOutBehaviorRequiredForCurrentCalls];

    if ((autoPunchOutBehaviorRequiredForCurrentCalls & 1) == 0)
    {
      [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  [(PHAudioCallViewController *)self setShowsCallWaitingParticipantView:1];
  isMessagingAllowed = [incomingCall isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [incomingCall isReminderAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setUserInteractionEnabled:1];

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [bottomBar4 setCurrentState:-[PHAudioCallViewController bottomBarStateForCallWaitingCall](self animated:"bottomBarStateForCallWaitingCall") animationCompletionBlock:{0, 0}];

  [(PHAudioCallViewController *)self setMiddleViewState:0 animated:1];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
}

- (void)setEndedState:(unsigned __int16)state
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

  currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
  LOBYTE(delegate) = objc_opt_respondsToSelector();

  if (delegate)
  {
    currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:0];
  }

  v9 = sub_100004F84([(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    contactIdentifiers = [mostRecentlyDisconnectedAudioCall contactIdentifiers];
    v11 = [contactIdentifiers count];
    isOutgoing = [mostRecentlyDisconnectedAudioCall isOutgoing];
    dateConnected = [mostRecentlyDisconnectedAudioCall dateConnected];
    v14 = [dateConnected description];
    provider = [mostRecentlyDisconnectedAudioCall provider];
    v27 = 134218754;
    v28 = v11;
    v29 = 1024;
    v30 = isOutgoing;
    v31 = 2112;
    v32 = v14;
    v33 = 1024;
    isFaceTimeProvider = [provider isFaceTimeProvider];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(disconnectedCall.contactIdentifiers.count: %lu && \n\n !(disconnectedCall.isOutgoing: %d && disconnectedCall.dateConnected: %@) && \n\n disconnectedCall.provider.isFaceTimeProvider: %d)", &v27, 0x22u);
  }

  if (![mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI] || !-[PHAudioCallViewController isUserInterfaceShowing](self, "isUserInterfaceShowing"))
  {
    uUIDForLocallyDisconnectedCall = [(PHAudioCallViewController *)self UUIDForLocallyDisconnectedCall];
    callUUID = [mostRecentlyDisconnectedAudioCall callUUID];
    if ([uUIDForLocallyDisconnectedCall isEqualToString:callUUID])
    {
    }

    else
    {
      v19 = +[UIApplication sharedApplication];
      delegate2 = [v19 delegate];
      hasExistingFullScreenInCallScene = [delegate2 hasExistingFullScreenInCallScene];

      if (hasExistingFullScreenInCallScene)
      {
        [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
      }
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setUserInteractionEnabled:0];

    [(PHCallViewController *)self transitionToIdleAfterDelay];
    inCallRootViewController = [(PHAudioCallViewController *)self inCallRootViewController];
    [inCallRootViewController showFailureOrFallbackAlertIfNecessaryForCall:mostRecentlyDisconnectedAudioCall];
    goto LABEL_15;
  }

  [(PHAudioCallViewController *)self transitionToFullScreenIfNecessary];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
  [(PHAudioCallViewController *)self setMiddleViewState:0];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:mostRecentlyDisconnectedAudioCall animated:1 callDisplayStyleChanged:0];
  if ([mostRecentlyDisconnectedAudioCall service] == 2 && (objc_msgSend(mostRecentlyDisconnectedAudioCall, "isMessagingAllowed") & 1) != 0)
  {
    v16 = 17;
  }

  else if ([mostRecentlyDisconnectedAudioCall isCallbackAllowed])
  {
    v16 = 13;
  }

  else
  {
    v16 = 18;
  }

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setCurrentState:v16 animated:1 animationCompletionBlock:0];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setUserInteractionEnabled:1];

  if ([(PHAudioCallViewController *)self shouldShowEnableWiFiCallingAlertForCall:mostRecentlyDisconnectedAudioCall])
  {
    inCallRootViewController = +[UIAlertController enableWiFiCallingAlertController];
    if (inCallRootViewController)
    {
      [(PHAudioCallViewController *)self presentViewController:inCallRootViewController animated:1 completion:0];
      PHIncrementWifiCallingAlertShowCount();
    }

LABEL_15:
  }

  if ([mostRecentlyDisconnectedAudioCall disconnectedReason] == 34)
  {
    v24 = sub_100004F84([(PHAudioCallViewController *)self setMiddleViewState:0]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to NO", &v27, 2u);
    }

    self->_shouldPresentAlertButton = 0;
  }
}

- (void)setEndingState:(unsigned __int16)state
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:0];

  currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  isolatedCall = [(PHAudioCallViewController *)self isolatedCall];
  v9 = isolatedCall;
  if (isolatedCall)
  {
    v10 = isolatedCall;
    isolatedCall = [(PHAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:0 callDisplayStyleChanged:0];
    v9 = v10;
  }

  _objc_release_x1(isolatedCall, v9);
}

- (void)setOutgoingRingingState:(unsigned __int16)state
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  lastObject = [currentCallGroups lastObject];
  if ([lastObject originatingUIType] == 10)
  {
    callCenter2 = [(PHAudioCallViewController *)self callCenter];
    routeController = [callCenter2 routeController];
    pickedRoute = [routeController pickedRoute];
    isSpeaker = [pickedRoute isSpeaker];

    if ((isSpeaker & 1) == 0)
    {
      callCenter3 = [(PHAudioCallViewController *)self callCenter];
      routeController2 = [callCenter3 routeController];
      routeForSpeakerEnable = [routeController2 routeForSpeakerEnable];

      if (!routeForSpeakerEnable)
      {
        callCenter6 = sub_100004F84(v22);
        if (os_log_type_enabled(callCenter6, OS_LOG_TYPE_ERROR))
        {
          sub_10025710C();
        }

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ([lastObject originatingUIType] == 12)
  {
    callCenter4 = [(PHAudioCallViewController *)self callCenter];
    routeController3 = [callCenter4 routeController];
    pickedRoute2 = [routeController3 pickedRoute];
    isReceiver = [pickedRoute2 isReceiver];

    if ((isReceiver & 1) == 0)
    {
      callCenter5 = [(PHAudioCallViewController *)self callCenter];
      routeController4 = [callCenter5 routeController];
      routeForSpeakerEnable = [routeController4 routeForSpeakerDisable];

      if (!routeForSpeakerEnable)
      {
        callCenter6 = sub_100004F84(v18);
        if (os_log_type_enabled(callCenter6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, callCenter6, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController: Could not find available route to pick for speaker disable", buf, 2u);
        }

        goto LABEL_12;
      }

LABEL_9:
      callCenter6 = [(PHAudioCallViewController *)self callCenter];
      routeController5 = [callCenter6 routeController];
      [routeController5 pickRoute:routeForSpeakerEnable];

LABEL_12:
    }
  }

  isolatedCall = [(PHAudioCallViewController *)self isolatedCall];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];

  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_10011996C;
  v44 = &unk_100356D10;
  v25 = lastObject;
  v45 = v25;
  selfCopy = self;
  v26 = objc_retainBlock(&v41);
  -[PHAudioCallViewController setMiddleViewState:animated:completion:](self, "setMiddleViewState:animated:completion:", 1, [v25 isVoicemail] ^ 1, v26);
  currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:1];
  }

  if ([v25 isVoicemail])
  {
    [(PHAudioCallViewController *)self setMiddleViewState:2];
  }

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:1];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_24;
  }

  features = [(PHAudioCallViewController *)self features];
  if (![features isDominoEnabled])
  {
    goto LABEL_23;
  }

  v32 = +[UIApplication sharedApplication];
  delegate = [v32 delegate];
  currentInCallScene = [delegate currentInCallScene];
  presentationMode = [currentInCallScene presentationMode];

  if (!presentationMode)
  {
    callCenter7 = [(PHAudioCallViewController *)self callCenter];
    callDisplayStyleManager = [callCenter7 routeController];

    routeForSpeakerEnable2 = [callDisplayStyleManager routeForSpeakerEnable];
    if (!routeForSpeakerEnable2)
    {
      goto LABEL_24;
    }

    v38 = routeForSpeakerEnable2;
    pickedRoute3 = [callDisplayStyleManager pickedRoute];
    isReceiver2 = [pickedRoute3 isReceiver];

    if (!isReceiver2)
    {
      goto LABEL_24;
    }

    features = [callDisplayStyleManager routeForSpeakerEnable];
    [callDisplayStyleManager pickRoute:features];
LABEL_23:

LABEL_24:
  }
}

- (void)setCallBufferState:(unsigned __int16)state
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,setCurrentState,PHInCallStateCallBuffer", buf, 2u);
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 1)
  {
    currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
    [currentMiddleView setButtonsEnabled:0];

    currentMiddleView2 = [(PHAudioCallViewController *)self currentMiddleView];
    v7 = [currentMiddleView2 buttonForControlType:15];
    [v7 setEnabled:1];
  }

  else
  {
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100119B78;
    v9[3] = &unk_100356E98;
    objc_copyWeak(&v10, buf);
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:1];

  [(PHAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(PHAudioCallViewController *)self displayDialledNumberDetailsForCallBufferScreen];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
  [(PHAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)setAlertModeNeededState:(unsigned __int16)state
{
  if ([(PHAudioCallViewController *)self shouldPresentAlertButton])
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setUserInteractionEnabled:1];

    middleViewState = [(PHAudioCallViewController *)self middleViewState];
    if (middleViewState == 2)
    {
      bottomBar2 = sub_100004F84(middleViewState);
      if (os_log_type_enabled(bottomBar2, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, bottomBar2, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController skips updating bottomBarButton to alert style since keypad is expanded", v7, 2u);
      }
    }

    else
    {
      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:22];
    }

    [(PHAudioCallViewController *)self speakAlertUtteranceIfNecessary];
  }
}

- (void)setEmergencyTextViaSatelliteUI
{
  v38 = +[PHInCallUtilities sharedInstance];
  if (([v38 isIPadIdiom] & 1) == 0)
  {

LABEL_6:
    getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
    statusLabel = [singleCallLabelView statusLabel];

    emergencyTextViaSatelliteLabel = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

    if (!emergencyTextViaSatelliteLabel)
    {
      defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      [defaultBackgroundGradientView removeFromSuperview];

      [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:0];
      v11 = +[UIColor blackColor];
      view = [(PHAudioCallViewController *)self view];
      [view setBackgroundColor:v11];

      v13 = objc_alloc_init(UILabel);
      text = [statusLabel text];
      [v13 setText:text];

      font = [statusLabel font];
      [v13 setFont:font];

      [v13 setNumberOfLines:3];
      [v13 setTextAlignment:1];
      textColor = [statusLabel textColor];
      [v13 setTextColor:textColor];

      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteLabel:v13];
      view2 = [(PHAudioCallViewController *)self view];
      [view2 addSubview:v13];

      leadingAnchor = [v13 leadingAnchor];
      leadingAnchor2 = [getParticipantsView_NotWaiting leadingAnchor];
      v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v40[0] = v36;
      trailingAnchor = [v13 trailingAnchor];
      trailingAnchor2 = [getParticipantsView_NotWaiting trailingAnchor];
      v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v40[1] = v33;
      centerXAnchor = [v13 centerXAnchor];
      view3 = [(PHAudioCallViewController *)self view];
      centerXAnchor2 = [view3 centerXAnchor];
      v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v40[2] = v18;
      centerYAnchor = [v13 centerYAnchor];
      view4 = [(PHAudioCallViewController *)self view];
      centerYAnchor2 = [view4 centerYAnchor];
      v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v40[3] = v22;
      [NSArray arrayWithObjects:v40 count:4];
      v24 = v23 = getParticipantsView_NotWaiting;
      [NSLayoutConstraint activateConstraints:v24];

      getParticipantsView_NotWaiting = v23;
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    if ([bottomBar currentState] == 19)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    emergencyTextViaSatelliteLabel2 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
    [emergencyTextViaSatelliteLabel2 setAlpha:v26];

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    if ([bottomBar2 currentState] == 19)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 0.0;
    }

    [statusLabel setAlpha:v29];

    return;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      return;
    }

    goto LABEL_6;
  }
}

- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated
{
  stateCopy = state;
  v6 = [(PHAudioCallViewController *)self callDisplayStyleManager:state];
  if ([v6 callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      v9 = [(PHAudioCallViewController *)self fetchLockState]^ 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  [(PHAudioCallViewController *)self setScreeningState:stateCopy animated:1 overrideWithIsUnlocked:v9];
}

- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated overrideWithIsUnlocked:(BOOL)unlocked
{
  stateCopy = state;
  unlockedCopy = unlocked;
  animatedCopy = animated;
  v7 = sub_100004F84(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = stateCopy;
    *&buf[8] = 1024;
    *&buf[10] = unlockedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: (existing state is %d) with unlockedOverride: %d", buf, 0xEu);
  }

  features = [(PHAudioCallViewController *)self features];
  lvm_stopEnabled = [features lvm_stopEnabled];

  if (lvm_stopEnabled)
  {
    [(PHAudioCallViewController *)self setShowsBlockButton:0];
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:1];

  presentedViewController = [(PHAudioCallViewController *)self presentedViewController];
  if (presentedViewController)
  {
    isPresentingCustomMessageController = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((isPresentingCustomMessageController & 1) == 0)
    {
      [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  traitCollection = [(PHAudioCallViewController *)self traitCollection];
  if ([traitCollection _backlightLuminance] == 1)
  {
    v14 = 1;
  }

  else
  {
    traitCollection2 = [(PHAudioCallViewController *)self traitCollection];
    v14 = [traitCollection2 _backlightLuminance] == 0;
  }

  v16 = +[UIApplication sharedApplication];
  delegate = [v16 delegate];
  currentInCallScene = [delegate currentInCallScene];
  isBeingShownAboveCoverSheet = [currentInCallScene isBeingShownAboveCoverSheet];

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v76 = isBeingShownAboveCoverSheet & !unlockedCopy | v14;
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features2 = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features2 isDominoEnabled];
    v23 = 23;
    if (v76)
    {
      v24 = 24;
    }

    else
    {
      v24 = 23;
    }

    if (!isDominoEnabled)
    {
      v23 = v24;
    }

    v75 = v23;
  }

  else
  {
    v25 = 23;
    if ((isBeingShownAboveCoverSheet & !unlockedCopy | v14))
    {
      v25 = 24;
    }

    v75 = v25;
  }

  callCenter = [(PHAudioCallViewController *)self callCenter];
  screeningCall = [callCenter screeningCall];

  v28 = sub_100004F84(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (v76)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    if (v14)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    if (isBeingShownAboveCoverSheet)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];
    v34 = @"NO";
    if (callDisplayStyle == 3)
    {
      features3 = [(PHAudioCallViewController *)self features];
      if ([features3 isDominoEnabled])
      {
        v34 = @"YES";
      }
    }

    *buf = 138413058;
    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = v30;
    *&buf[22] = 2112;
    v88 = v31;
    LOWORD(v89[0]) = 2112;
    *(v89 + 2) = v34;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: showLockedState: %@, displayIsOff: %@, beingShownAboveCoverSheet: %@, isAmbient: %@", buf, 0x2Au);
    if (callDisplayStyle == 3)
    {
    }
  }

  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabledM3())
  {
    contactIdentifiers = [screeningCall contactIdentifiers];
    v37 = [contactIdentifiers count] != 0;

    if (((v37 | v76) & 1) == 0)
    {
      features4 = [(PHAudioCallViewController *)self features];
      if ([features4 lvm_stopEnabled])
      {
        callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([callDisplayStyleManager3 callDisplayStyle] == 3)
        {
          features5 = [(PHAudioCallViewController *)self features];
          isDominoEnabled2 = [features5 isDominoEnabled];

          if (isDominoEnabled2)
          {
            goto LABEL_53;
          }
        }

        else
        {
        }

        features6 = [(PHAudioCallViewController *)self features];
        receptionistEnabled = [features6 receptionistEnabled];

        if (receptionistEnabled && [screeningCall receptionistState])
        {
          [(PHAudioCallViewController *)self setShowsBlockButton:0];
        }

        else
        {
          [(PHAudioCallViewController *)self setShowsBlockButton:1];
        }

        goto LABEL_53;
      }

LABEL_53:
      [(PHAudioCallViewController *)self setCallForBackgroundImage:screeningCall animated:1 callDisplayStyleChanged:0];
      v42 = 25;
      goto LABEL_54;
    }
  }

  else
  {
  }

  [(PHAudioCallViewController *)self setCallForBackgroundImage:screeningCall animated:1 callDisplayStyleChanged:0];
  if (v75 != 23)
  {
    v42 = 24;
    goto LABEL_60;
  }

  v42 = 23;
LABEL_54:
  if (!unlockedCopy)
  {
    callDisplayStyleManager4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager4 callDisplayStyle] == 3)
    {
      features7 = [(PHAudioCallViewController *)self features];
      isDominoEnabled3 = [features7 isDominoEnabled];

      if (isDominoEnabled3)
      {
        v42 = 26;
      }
    }

    else
    {
    }
  }

LABEL_60:
  isMessagingAllowed = [screeningCall isMessagingAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [screeningCall isReminderAllowed];
  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  callDisplayStyleManager5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager5 callDisplayStyle] == 3)
  {
    features8 = [(PHAudioCallViewController *)self features];
    [bottomBar4 setCurrentState:v42 animated:objc_msgSend(features8 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [bottomBar4 setCurrentState:v42 animated:0 animationCompletionBlock:0];
  }

  bottomBar5 = [(PHCallViewController *)self bottomBar];
  v56 = [bottomBar5 controlForActionType:30];

  [(PHCallViewController *)self configureDeclineWithReminderButton:0 declineWithMessageButton:v56 forIncomingCall:screeningCall];
  featureFlags2 = [(PHAudioCallViewController *)self featureFlags];
  receptionistEnabled2 = [featureFlags2 receptionistEnabled];

  if (receptionistEnabled2)
  {
    bottomBar6 = [(PHCallViewController *)self bottomBar];
    v60 = [bottomBar6 controlForActionType:27];

    [(PHCallViewController *)self configureDeclineWithMoreButton:v60 forIncomingCall:screeningCall];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:4 animated:1];
  callDisplayStyleManager6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v62 = [callDisplayStyleManager6 callDisplayStyle] == 0;

  if (v62)
  {
    callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:0];
  }

  bottomBar7 = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:bottomBar7];

  callDisplayStyleManager7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager7 callDisplayStyle] == 3)
  {
    features9 = [(PHAudioCallViewController *)self features];
    isDominoEnabled4 = [features9 isDominoEnabled];

    if (isDominoEnabled4)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:animatedCopy];
      [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:stateCopy];
    }
  }

  else
  {
  }

  stateChangeLockObservation = [(PHAudioCallViewController *)self stateChangeLockObservation];
  if (!stateChangeLockObservation || ([(PHAudioCallViewController *)self stateDisplayChangedObservation], v69 = objc_claimAutoreleasedReturnValue(), v70 = v69 == 0, v69, stateChangeLockObservation, v70))
  {
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x2020000000;
    v86 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v88 = sub_10011ABF0;
    v89[0] = sub_10011ABFC;
    objc_initWeak(&v89[1], self);
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10011AC04;
    v83[3] = &unk_100359180;
    v83[4] = buf;
    v83[5] = v85;
    v84 = stateCopy;
    v71 = [(PHAudioCallViewController *)self makeLockObserverWithHandler:v83];
    [(PHAudioCallViewController *)self setStateChangeLockObservation:v71];

    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x2020000000;
    traitCollection3 = [(PHAudioCallViewController *)self traitCollection];
    _backlightLuminance = [traitCollection3 _backlightLuminance];

    v82[3] = _backlightLuminance;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_10011AD24;
    v80[3] = &unk_1003591A8;
    v80[4] = buf;
    v80[5] = v82;
    v80[6] = v85;
    v81 = stateCopy;
    [(PHAudioCallViewController *)self setStateDisplayChangedObservation:v80];
    _Block_object_dispose(v82, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v89[1]);
    _Block_object_dispose(v85, 8);
  }
}

- (void)setWaitOnHoldState:(unsigned __int16)state animated:(BOOL)animated
{
  [(PHAudioCallViewController *)self dismissWaitOnHoldTip:state];
  presentedViewController = [(PHAudioCallViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    isPresentingCustomMessageController = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((isPresentingCustomMessageController & 1) == 0)
    {
      [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    [bottomBar setCurrentState:28 animated:objc_msgSend(features animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [bottomBar setCurrentState:28 animated:0 animationCompletionBlock:0];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:5 animated:1];
}

- (void)displayWaitOnHoldTip
{
  waitOnHoldTipView = [(PHAudioCallViewController *)self waitOnHoldTipView];
  superview = [waitOnHoldTipView superview];

  if (!superview)
  {
    middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
    waitOnHoldTipView2 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    [middlePillContainer addArrangedSubview:waitOnHoldTipView2];

    [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
    waitOnHoldTipView3 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    [waitOnHoldTipView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    waitOnHoldTipViewLayoutConstraints = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];

    if (waitOnHoldTipViewLayoutConstraints)
    {
      waitOnHoldTipViewLayoutConstraints2 = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];
      [NSLayoutConstraint deactivateConstraints:waitOnHoldTipViewLayoutConstraints2];
    }

    v23 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
    waitOnHoldTipView4 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    trailingAnchor = [waitOnHoldTipView4 trailingAnchor];
    middlePillContainer2 = [(PHAudioCallViewController *)self middlePillContainer];
    trailingAnchor2 = [middlePillContainer2 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v23 addObject:v14];

    waitOnHoldTipView5 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    leadingAnchor = [waitOnHoldTipView5 leadingAnchor];
    middlePillContainer3 = [(PHAudioCallViewController *)self middlePillContainer];
    leadingAnchor2 = [middlePillContainer3 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v23 addObject:v19];

    [(PHAudioCallViewController *)self setWaitOnHoldTipViewLayoutConstraints:v23];
    waitOnHoldTipViewLayoutConstraints3 = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];
    [NSLayoutConstraint activateConstraints:waitOnHoldTipViewLayoutConstraints3];

    v21 = [[TLAlertConfiguration alloc] initWithType:17];
    v22 = [TLAlert alertWithConfiguration:v21];
    [v22 play];
  }
}

- (void)displayScreenSharingIndicator
{
  screenSharingIndicatorView = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  superview = [screenSharingIndicatorView superview];

  if (!superview)
  {
    middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
    screenSharingIndicatorView2 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
    [middlePillContainer addArrangedSubview:screenSharingIndicatorView2];

    [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
  }

  v17 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  screenSharingIndicatorView3 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  trailingAnchor = [screenSharingIndicatorView3 trailingAnchor];
  middlePillContainer2 = [(PHAudioCallViewController *)self middlePillContainer];
  trailingAnchor2 = [middlePillContainer2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 addObject:v11];

  screenSharingIndicatorView4 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  leadingAnchor = [screenSharingIndicatorView4 leadingAnchor];
  middlePillContainer3 = [(PHAudioCallViewController *)self middlePillContainer];
  leadingAnchor2 = [middlePillContainer3 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 addObject:v16];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)dismissScreenSharingIndicatorView
{
  screenSharingIndicatorView = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  [screenSharingIndicatorView removeFromSuperview];

  [(PHAudioCallViewController *)self setScreenSharingIndicatorView:0];

  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
}

- (UIViewController)waitOnHoldViewController
{
  waitOnHoldViewController = self->_waitOnHoldViewController;
  if (waitOnHoldViewController)
  {
    goto LABEL_4;
  }

  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  waitOnHoldService = [delegate waitOnHoldService];

  if (waitOnHoldService)
  {
    makeViewComposer = [(CNKWaitOnHoldViewComposerFactory *)self->_waitOnHoldViewControllerFactory makeViewComposer];
    activeCall = [(PHAudioCallViewController *)self activeCall];
    v9 = +[UIApplication sharedApplication];
    delegate2 = [v9 delegate];
    waitOnHoldService2 = [delegate2 waitOnHoldService];
    v12 = [makeViewComposer composeWithCall:activeCall waitOnHoldService:waitOnHoldService2];
    v13 = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = v12;

    [(PHAudioCallViewController *)self addChildViewController:self->_waitOnHoldViewController];
    waitOnHoldViewController = self->_waitOnHoldViewController;
LABEL_4:
    v14 = waitOnHoldViewController;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_5:

  return v14;
}

- (void)updateWaitOnHoldViewIfNeeded
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateWaitOnHoldViewIfNeeded", v7, 2u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
  activeCall = [(PHAudioCallViewController *)self activeCall];
  isWaitOnHoldActive = [activeCall isWaitOnHoldActive];

  if ((isWaitOnHoldActive & 1) == 0)
  {
    waitOnHoldViewController = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = 0;
  }
}

- (BOOL)isCallSmartHoldingSessionActive:(id)active
{
  activeCopy = active;
  smartHoldingSession = [activeCopy smartHoldingSession];

  if (smartHoldingSession)
  {
    smartHoldingSession2 = [activeCopy smartHoldingSession];
    if ([smartHoldingSession2 state])
    {
      smartHoldingSession3 = [activeCopy smartHoldingSession];
      v7 = [smartHoldingSession3 state] == 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setCurrentState:(unsigned __int16)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  currentState = [(PHCallViewController *)self currentState];
  v8 = currentState;
  v9 = sub_100004F84(currentState);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = stateCopy;
    *&buf[8] = 1024;
    *&buf[10] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: %d (existing state is %d)", buf, 0xEu);
  }

  if (v8 != stateCopy)
  {
    v11 = sub_100004F84(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      currentState2 = [(PHCallViewController *)self currentState];
      *buf = 67109376;
      *&buf[4] = currentState2;
      *&buf[8] = 1024;
      *&buf[10] = stateCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio: Setting current state: %d -> %d", buf, 0xEu);
    }

    v37.receiver = self;
    v37.super_class = PHAudioCallViewController;
    [(PHCallViewController *)&v37 setCurrentState:stateCopy];
    [(PHAudioCallViewController *)self setStateChangeLockObservation:0];
    [(PHAudioCallViewController *)self setStateDisplayChangedObservation:0];
    features = [(PHAudioCallViewController *)self features];
    lvm_stopEnabled = [features lvm_stopEnabled];

    if (lvm_stopEnabled)
    {
      [(PHAudioCallViewController *)self setShowsBlockButton:0];
    }

    if (stateCopy <= 5)
    {
      if (stateCopy > 2)
      {
        if ((stateCopy - 4) >= 2)
        {
          if (stateCopy == 3)
          {
            [(PHAudioCallViewController *)self setWaitingState:3];
LABEL_65:
            bottomBar = [(PHCallViewController *)self bottomBar];
            [bottomBar setUserInteractionEnabled:1];

            if (stateCopy == 1)
            {
              [(PHAudioCallViewController *)self startSuppressionOfSTKAlerts];
LABEL_43:
              callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
              if ([callDisplayStyleManager callDisplayStyle] == 3)
              {
                features2 = [(PHAudioCallViewController *)self features];
                isDominoEnabled = [features2 isDominoEnabled];

                if (isDominoEnabled)
                {
LABEL_48:
                  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
                  {
                    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
                    if ([callDisplayStyleManager2 callDisplayStyle] != 3)
                    {
LABEL_56:

                      goto LABEL_57;
                    }

                    features3 = [(PHAudioCallViewController *)self features];
                    if (![features3 isDominoEnabled])
                    {
LABEL_55:

                      goto LABEL_56;
                    }
                  }

                  if (stateCopy != 7)
                  {
LABEL_57:
                    if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
                    {
                      v27 = dispatch_time(0, 950000000);
                      v35[0] = _NSConcreteStackBlock;
                      v35[1] = 3221225472;
                      v35[2] = sub_10011BC74;
                      v35[3] = &unk_100356960;
                      v35[4] = self;
                      v36 = stateCopy;
                      dispatch_after(v27, &_dispatch_main_q, v35);
                    }

                    else
                    {
                      [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:stateCopy];
                      if ([(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
                      {
                        renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
                        if (renderingViewController)
                        {
                          v29 = renderingViewController;
                          posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];
                          priorityPosterNameTextView = [posterNameViewModel priorityPosterNameTextView];

                          if (priorityPosterNameTextView)
                          {
                            posterContainer = [(PHAudioCallViewController *)self posterContainer];
                            [posterContainer setAlpha:0.0];
                          }
                        }
                      }
                    }

                    [(PHAudioCallViewController *)self updateAmbientAudioRoutesVisibility];
                    [(PHAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
                    v33 = +[NSNotificationCenter defaultCenter];
                    [v33 postNotificationName:@"PHCallViewControllerStateChangedNotification" object:0];

                    return;
                  }

                  callDisplayStyleManager2 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
                  singleCallLabelView = [callDisplayStyleManager2 singleCallLabelView];
                  features3 = singleCallLabelView;
                  if (singleCallLabelView)
                  {
                    statusLabel = [singleCallLabelView statusLabel];
                    v26 = *&CGAffineTransformIdentity.c;
                    *buf = *&CGAffineTransformIdentity.a;
                    v39 = v26;
                    v40 = *&CGAffineTransformIdentity.tx;
                    [statusLabel setTransform:buf];
                  }

                  goto LABEL_55;
                }
              }

              else
              {
              }

              [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:stateCopy];
              goto LABEL_48;
            }

LABEL_42:
            [(PHAudioCallViewController *)self stopSuppressionOfSTKAlerts];
            goto LABEL_43;
          }
        }

        else
        {
          usesCompactMulticallUI = [(PHAudioCallViewController *)self usesCompactMulticallUI];
          if (stateCopy == 5 && usesCompactMulticallUI)
          {
            callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
            if ([callDisplayStyleManager3 callDisplayStyle] == 3)
            {
              features4 = [(PHAudioCallViewController *)self features];
              isDominoEnabled2 = [features4 isDominoEnabled];

              if (isDominoEnabled2)
              {
                return;
              }
            }

            else
            {
            }

            [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:5];
            return;
          }

          [(PHAudioCallViewController *)self setActiveState:stateCopy];
        }
      }

      else if (stateCopy)
      {
        if (stateCopy == 1)
        {
          [(PHAudioCallViewController *)self setRingingState:1];
        }

        else if (stateCopy == 2)
        {
          [(PHAudioCallViewController *)self setOutgoingRingingState:2];
        }
      }

      else
      {
        [(PHAudioCallViewController *)self setIdleState:0];
      }
    }

    else if (stateCopy > 9)
    {
      switch(stateCopy)
      {
        case 0xA:
          [(PHAudioCallViewController *)self setCallBufferState:10];
          break;
        case 0xB:
          [(PHAudioCallViewController *)self setScreeningState:11 animated:animatedCopy];
          break;
        case 0xC:
          [(PHAudioCallViewController *)self setWaitOnHoldState:12 animated:animatedCopy];
          break;
      }
    }

    else if ((stateCopy - 8) < 2)
    {
      [(PHAudioCallViewController *)self setAlertModeNeededState:stateCopy];
    }

    else if (stateCopy == 6)
    {
      [(PHAudioCallViewController *)self setEndingState:6];
      [(PHAudioCallViewController *)self _testing_didTransitionToEndingCallState];
    }

    else if (stateCopy == 7)
    {
      [(PHAudioCallViewController *)self setEndedState:7];
    }

    if (v8 == 3)
    {
      [(PHAudioCallViewController *)self setShowsCallWaitingParticipantView:0];
    }

    if (stateCopy <= 7 && ((1 << stateCopy) & 0xC1) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }
}

- (void)updateBottomBarAlphaWithCurrentState:(unsigned __int16)state
{
  stateCopy = state;
  mostRecentlyDisconnectedAudioCall = +[PHInCallUtilities sharedInstance];
  if (([mostRecentlyDisconnectedAudioCall isIPadIdiom] & 1) == 0)
  {

    goto LABEL_6;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      return;
    }

LABEL_6:
    v8 = +[UIApplication sharedApplication];
    delegate = [v8 delegate];
    mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

    disconnectedReasonRequiresCallBackUI = mostRecentlyDisconnectedAudioCall;
    if (mostRecentlyDisconnectedAudioCall)
    {
      disconnectedReasonRequiresCallBackUI = [mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI];
    }

    if (stateCopy == 1 || stateCopy == 3)
    {
      goto LABEL_12;
    }

    if (stateCopy == 7)
    {
      if (disconnectedReasonRequiresCallBackUI)
      {
LABEL_12:
        callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([callDisplayStyleManager2 callDisplayStyle])
        {

          v12 = 1.0;
LABEL_16:
          callDisplayStyleManager = [(PHCallViewController *)self bottomBar];
          [callDisplayStyleManager setAlpha:v12];
          goto LABEL_17;
        }

        middleViewState = [(PHAudioCallViewController *)self middleViewState];

        v12 = 1.0;
        if (middleViewState == 2)
        {
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0.0;
        goto LABEL_16;
      }
    }

    else if ((stateCopy - 11) <= 1)
    {
      goto LABEL_12;
    }

    v12 = 1.0;
    if ([(PHAudioCallViewController *)self middleViewState]== 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)updateIncomingBottomBarControlState
{
  if ([(PHCallViewController *)self currentState]== 11)
  {
    currentState = [(PHCallViewController *)self currentState];

    [(PHAudioCallViewController *)self setScreeningState:currentState animated:1];
  }

  else
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    currentState2 = [bottomBar currentState];

    if (!currentState2)
    {
      v6 = +[UIApplication sharedApplication];
      delegate = [v6 delegate];
      currentInCallScene = [delegate currentInCallScene];
      if ([currentInCallScene isBeingShownAboveCoverSheet])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:v9];
    }
  }
}

- (void)updateBottomBarButtonsWithCall:(id)call
{
  isMessagingAllowed = [call isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];
}

- (void)updateHardPauseDigitsState
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  v4 = [frontmostCall hardPauseDigitsState] == 2;

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setAction:23 enabled:v4];
}

- (id)associatedCallGroupForCall:(id)call
{
  callCopy = call;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  callCenter = [(PHAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  v7 = [currentCallGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(currentCallGroups);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        calls = [v10 calls];
        v12 = [calls containsObject:callCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [currentCallGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)call
{
  callCopy = call;
  prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];

  if (prioritizedCall)
  {
    v6 = [(PHAudioCallViewController *)self associatedCallGroupForCall:callCopy];
    v7 = v6;
    if (v6)
    {
      calls = [v6 calls];
      prioritizedCall2 = [(PHAudioCallViewController *)self prioritizedCall];
      v10 = [calls containsObject:prioritizedCall2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setInCallRootViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_inCallRootViewController, obj);
    isViewLoaded = [(PHAudioCallViewController *)self isViewLoaded];
    v6 = obj;
    if (isViewLoaded)
    {
      isViewLoaded = [(PHAudioCallViewController *)self updateCurrentState];
      v6 = obj;
    }
  }

  _objc_release_x1(isViewLoaded, v6);
}

- (void)gameControllerDidChangeContext
{
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  [callParticipantsViewController gameControllerDidChangeContext];
}

- (BOOL)canShowPosterBadgeInAudioCallView:(id)view
{
  viewCopy = view;
  if ([(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
  {
    v5 = 0;
  }

  else
  {
    badgeView = [viewCopy badgeView];
    if (badgeView)
    {
      v5 = 1;
    }

    else
    {
      iconView = [viewCopy iconView];
      v5 = iconView != 0;
    }
  }

  return v5;
}

- (id)newPosterConfigurationForCall:(id)call
{
  callCopy = call;
  shouldUseHeroImageLayout = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((shouldUseHeroImageLayout & 1) == 0)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if ([features isDominoEnabled])
      {
        goto LABEL_2;
      }
    }

    goto LABEL_16;
  }

LABEL_2:
  features2 = [(PHAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features2 isNameAndPhotoC3Enabled];

  if ((shouldUseHeroImageLayout & 1) == 0)
  {

    if (isNameAndPhotoC3Enabled)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_21;
  }

  if (!isNameAndPhotoC3Enabled)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:callCopy];
  pendingNickname = [v10 pendingNickname];

  if (pendingNickname && ([pendingNickname wallpaper], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(pendingNickname, "wallpaper"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "wallpaperData"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v15))
  {
    wallpaper = [pendingNickname wallpaper];
    wallpaperData = [wallpaper wallpaperData];

    v18 = [PRSPosterArchiver unarchiveConfigurationFromData:wallpaperData error:0];
    v19 = sub_100004F84(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v26 = 138412290;
      v27 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a pending PRSPosterConfiguration for %@", &v26, 0xCu);
    }

    v21 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v18 source:3];
    configurationCache = [(PHAudioCallViewController *)self configurationCache];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [configurationCache setObject:v21 forKey:uniqueProxyIdentifier2];
  }

  else
  {
    v24 = sub_100004F84(v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = pendingNickname;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SNAP: there is no newPosterConfiguration, current pendingNickName is %@", &v26, 0xCu);
    }

    wallpaperData = [(PHAudioCallViewController *)self configurationCache];
    v21 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:3];
    configurationCache = [callCopy uniqueProxyIdentifier];
    [wallpaperData setObject:v21 forKey:configurationCache];
    v18 = 0;
  }

LABEL_21:
  return v18;
}

- (id)sharedProfileStateOracleForCall:(id)call
{
  callCopy = call;
  contactIdentifier = [callCopy contactIdentifier];

  if (contactIdentifier)
  {
    v7 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v9 = +[PHAudioCallViewController contactKeysToFetch];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v11 = [v7 contactForIdentifier:contactIdentifier2 keysToFetch:v9 usingCache:contactsCache];

    if (v11)
    {
      v12 = [[CNSharedProfileStateOracle alloc] initWithContact:v11 contactStore:v7];
      v13 = sub_100004F84(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: current CNSharedProfileStateOracle is %@", &v16, 0xCu);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v7 = sub_100004F84(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v16 = 138412290;
      v17 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SNAP: call doesn't have contactIdentifier %@", &v16, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)callStateCanShowNewPoster:(id)poster
{
  posterCopy = poster;
  shouldUseHeroImageLayout = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if (shouldUseHeroImageLayout)
  {
    goto LABEL_2;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
LABEL_8:

    goto LABEL_13;
  }

  features = [(PHAudioCallViewController *)self features];
  if (([features isDominoEnabled] & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_2:
  features2 = [(PHAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features2 isNameAndPhotoC3Enabled];

  if (shouldUseHeroImageLayout)
  {
    if (!isNameAndPhotoC3Enabled)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if ((isNameAndPhotoC3Enabled & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (posterCopy)
  {
    if ([posterCopy status] == 1)
    {
      callCenter = [(PHAudioCallViewController *)self callCenter];
      currentCallCount = [callCenter currentCallCount];

      if (currentCallCount < 2)
      {
        v12 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12;
}

- (void)finishNewPosterUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  shouldUseHeroImageLayout = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((shouldUseHeroImageLayout & 1) == 0)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      if ([features isDominoEnabled])
      {
        goto LABEL_2;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_2:
  features2 = [(PHAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features2 isNameAndPhotoC3Enabled];

  if (shouldUseHeroImageLayout)
  {
    if (!isNameAndPhotoC3Enabled)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (isNameAndPhotoC3Enabled)
  {
LABEL_9:
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    callDisplayStyleManager = frontmostCall;
    if (frontmostCall)
    {
      if ([frontmostCall status] == 1)
      {
        callCenter = [(PHAudioCallViewController *)self callCenter];
        currentCallCount = [callCenter currentCallCount];

        if (currentCallCount <= 1)
        {
          v13 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:callDisplayStyleManager];
          v17 = 0;
          v14 = [v13 updateContactAndNicknamesForAutoUpdateWithError:&v17];
          v15 = v17;
          v16 = sub_100004F84(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: new poster update completed with error: %@", buf, 0xCu);
          }

          if (completionCopy)
          {
            completionCopy[2](completionCopy, v13);
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)isShowingBackgroundImage
{
  backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
  v3 = backgroundImageView != 0;

  return v3;
}

- (id)contactToDisplayInCallWallpaperForCall:(id)call
{
  callCopy = call;
  isBeingDismissed = [(PHAudioCallViewController *)self isBeingDismissed];
  v6 = 0;
  if (callCopy && (isBeingDismissed & 1) == 0)
  {
    contactIdentifier = [callCopy contactIdentifier];

    if (contactIdentifier)
    {
      v8 = [PHInCallUtilities contactStoreForCall:callCopy];
      contactIdentifier2 = [callCopy contactIdentifier];
      v10 = +[PHAudioCallViewController contactKeysToFetch];
      contactsCache = [(PHAudioCallViewController *)self contactsCache];
      v6 = [v8 contactForIdentifier:contactIdentifier2 keysToFetch:v10 usingCache:contactsCache];

      if (v6)
      {
        mostRecentContactToDisplayInCallWallpaper = [(PHAudioCallViewController *)self mostRecentContactToDisplayInCallWallpaper];

        if (v6 != mostRecentContactToDisplayInCallWallpaper)
        {
          [(PHAudioCallViewController *)self setMostRecentContactToDisplayInCallWallpaper:v6];
          v13 = +[CNContactChangesNotifier sharedNotifier];
          [v13 unregisterObserver:self forContact:0];

          v14 = +[CNContactChangesNotifier sharedNotifier];
          v15 = +[PHAudioCallViewController contactKeysToFetch];
          [v14 registerObserver:self forContact:v6 keysToFetch:v15];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)contactWallpaperForCall:(id)call
{
  callCopy = call;
  if (-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") && ([callCopy isEmergency] & 1) != 0)
  {
    wallpaper = 0;
    goto LABEL_20;
  }

  contactIdentifier = [callCopy contactIdentifier];

  if (contactIdentifier)
  {
    handle = [callCopy handle];
    siriDisplayName = [handle siriDisplayName];
    if ([siriDisplayName length])
    {
      handle2 = [callCopy handle];
      shouldHideContact = [handle2 shouldHideContact];

      if (shouldHideContact)
      {
        v13 = sub_100004F84(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = callCopy;
          v14 = "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper %@";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v22, 0xCu);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v13 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v16 = +[PHAudioCallViewController contactKeysToFetch];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v18 = [v13 contactForIdentifier:contactIdentifier2 keysToFetch:v16 usingCache:contactsCache];

    v20 = sub_100004F84(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 67109120;
      LODWORD(v23) = v18 != 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SNAP: the contact we used to fetch wallpaper for call is non-nil: %d", &v22, 8u);
    }

    wallpaper = [v18 wallpaper];

    if (wallpaper)
    {
      wallpaper = [v18 wallpaper];
    }

    goto LABEL_19;
  }

  v13 = sub_100004F84(v7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = callCopy;
    v14 = "SNAP: call doesn't have contactIdentifier %@";
    goto LABEL_11;
  }

LABEL_12:
  wallpaper = 0;
LABEL_19:

LABEL_20:

  return wallpaper;
}

- (id)wallpaperTypeForCNWallpaper:(id)wallpaper
{
  extensionBundleID = [wallpaper extensionBundleID];
  v5 = [(PHAudioCallViewController *)self wallpaperTypeForBundleID:extensionBundleID];

  return v5;
}

- (id)wallpaperTypeForIMWallpaperMetadata:(id)metadata
{
  type = [metadata type];
  v5 = [(PHAudioCallViewController *)self wallpaperTypeForBundleID:type];

  return v5;
}

- (id)wallpaperTypeForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqual:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
  {
    v4 = &CNWallpaperTypePhoto;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([dCopy isEqual:@"com.apple.AvatarUI.AvatarPosterExtension"])
  {
    v4 = &CNWallpaperTypeMemoji;
    goto LABEL_7;
  }

  if ([dCopy isEqual:@"com.apple.ContactsUI.MonogramPosterExtension"])
  {
    v4 = &CNWallpaperTypeMonogram;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)call
{
  callCopy = call;
  if ([(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callCopy])
  {
    [(PHAudioCallViewController *)self lastSeenPosterConfigurationForCall:callCopy];
  }

  else
  {
    [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:callCopy shouldReadFromCache:1];
  }
  v5 = ;

  return v5;
}

- (id)lastSeenPosterConfigurationForCall:(id)call
{
  callCopy = call;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v12 = 0;
    goto LABEL_24;
  }

LABEL_2:
  configurationCache = [(PHAudioCallViewController *)self configurationCache];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v7 = [configurationCache objectForKey:uniqueProxyIdentifier];
  configuration = [v7 configuration];

  if (configuration)
  {
    v10 = sub_100004F84(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      callUUID = [callCopy callUUID];
      v31 = 138412290;
      v32 = callUUID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v31, 0xCu);
    }

    v12 = configuration;
    goto LABEL_23;
  }

  handle = [callCopy handle];
  siriDisplayName = [handle siriDisplayName];
  if ([siriDisplayName length])
  {
    handle2 = [callCopy handle];
    shouldHideContact = [handle2 shouldHideContact];

    if (shouldHideContact)
    {
      v21 = sub_100004F84(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
        v31 = 138412290;
        v32 = uniqueProxyIdentifier2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper for callUUID %@", &v31, 0xCu);
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v23 = [(PHAudioCallViewController *)self readCachedLastSeenPosterDataForCall:callCopy];
  if (v23)
  {
    configurationCache3 = v23;
    v12 = [PRSPosterArchiver unarchiveConfigurationFromData:v23 error:0];
    v25 = sub_100004F84(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
      v31 = 138412290;
      v32 = uniqueProxyIdentifier3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a lastSeen PRSPosterConfiguration for %@", &v31, 0xCu);
    }

    v27 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v12 source:1];
    configurationCache2 = [(PHAudioCallViewController *)self configurationCache];
    uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
    [configurationCache2 setObject:v27 forKey:uniqueProxyIdentifier4];

    goto LABEL_22;
  }

LABEL_21:
  configurationCache3 = [(PHAudioCallViewController *)self configurationCache];
  v27 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:1];
  configurationCache2 = [callCopy uniqueProxyIdentifier];
  [configurationCache3 setObject:v27 forKey:configurationCache2];
  v12 = 0;
LABEL_22:

LABEL_23:
LABEL_24:

  return v12;
}

- (id)contactWallpaperConfigurationForCall:(id)call shouldReadFromCache:(BOOL)cache
{
  cacheCopy = cache;
  callCopy = call;
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_2;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

LABEL_17:
    v11 = 0;
    goto LABEL_26;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (!isDominoEnabled)
  {
    goto LABEL_17;
  }

LABEL_2:
  v7 = [(PHAudioCallViewController *)self contactWallpaperForCall:callCopy];
  if (v7)
  {
    if (cacheCopy && (-[PHAudioCallViewController configurationCache](self, "configurationCache"), v8 = objc_claimAutoreleasedReturnValue(), [callCopy uniqueProxyIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "configuration"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11))
    {
      posterArchiveData = sub_100004F84(v12);
      if (os_log_type_enabled(posterArchiveData, OS_LOG_TYPE_DEFAULT))
      {
        callUUID = [callCopy callUUID];
        v30 = 138412290;
        v31 = callUUID;
        _os_log_impl(&_mh_execute_header, posterArchiveData, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v30, 0xCu);
      }
    }

    else
    {
      posterArchiveData = [v7 posterArchiveData];
      v18 = sub_100004F84(posterArchiveData);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (posterArchiveData)
      {
        if (v19)
        {
          v30 = 138412546;
          v31 = posterArchiveData;
          v32 = 2048;
          v33 = [posterArchiveData length];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SNAP: posterArchiveData in wallpaper is %@, length is %lu", &v30, 0x16u);
        }

        v11 = [PRSPosterArchiver unarchiveConfigurationFromData:posterArchiveData error:0];
        v20 = sub_100004F84(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
          v30 = 138412290;
          v31 = uniqueProxyIdentifier;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a contact (current) PRSPosterConfiguration for %@", &v30, 0xCu);
        }

        configurationCache2 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:2];
        configurationCache = [(PHAudioCallViewController *)self configurationCache];
        uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)configurationCache setObject:configurationCache2 forKey:uniqueProxyIdentifier2];
      }

      else
      {
        if (v19)
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SNAP: there is no posterArchiveData in wallpaper", &v30, 2u);
        }

        configurationCache2 = [(PHAudioCallViewController *)self configurationCache];
        configurationCache = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
        uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)configurationCache2 setObject:configurationCache forKey:uniqueProxyIdentifier2];
        v11 = 0;
      }
    }
  }

  else
  {
    configurationCache3 = [(PHAudioCallViewController *)self configurationCache];
    v26 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
    uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
    [configurationCache3 setObject:v26 forKey:uniqueProxyIdentifier3];

    posterArchiveData = sub_100004F84(v28);
    if (os_log_type_enabled(posterArchiveData, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, posterArchiveData, OS_LOG_TYPE_DEFAULT, "SNAP: contactWallpaperForCall is nil", &v30, 2u);
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (id)wallpaperTitleStyleAttributesForCall:(id)call
{
  callCopy = call;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    titleStyleAttributes2 = 0;
    goto LABEL_19;
  }

LABEL_2:
  v5 = [(PHAudioCallViewController *)self lastSeenOrCurrentPosterConfigurationForCall:callCopy];
  if (v5)
  {
    configurationCache = [(PHAudioCallViewController *)self configurationCache];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v8 = [configurationCache objectForKey:uniqueProxyIdentifier];

    if (v8)
    {
      configuration = [v8 configuration];
      if ([configuration isEqual:v5])
      {
        titleStyleAttributes = [v8 titleStyleAttributes];

        if (titleStyleAttributes)
        {
          titleStyleAttributes2 = [v8 titleStyleAttributes];
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v18 = 0;
    titleStyleAttributes2 = [PRUISPosterConfigurationUtilities titleStyleAttributesForConfiguration:v5 error:&v18];
    if (v8)
    {
      configuration2 = [v8 configuration];
      v16 = [configuration2 isEqual:v5];

      if (v16)
      {
        [v8 setTitleStyleAttributes:titleStyleAttributes2];
      }
    }

    goto LABEL_17;
  }

  titleStyleAttributes2 = 0;
LABEL_18:

LABEL_19:

  return titleStyleAttributes2;
}

- (id)wallpaperTitleStyleAttributes
{
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callToUseForWallpaper];

  return v4;
}

- (id)contactWallpaperBackgroundColor
{
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  if (![(PHAudioCallViewController *)self callStateCanShowNewPoster:callToUseForWallpaper]&& [(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callToUseForWallpaper])
  {
    v4 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callToUseForWallpaper];
    backgroundColor = [v4 backgroundColor];
LABEL_6:
    v7 = backgroundColor;
    goto LABEL_8;
  }

  v6 = [(PHAudioCallViewController *)self contactWallpaperForCall:callToUseForWallpaper];
  v4 = v6;
  if (v6)
  {
    backgroundColor = [v6 backgroundColorDescription];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  v8 = [v7 objectForKey:CNWallpaperColorDescriptionKeyRed];
  v9 = [v7 objectForKey:CNWallpaperColorDescriptionKeyGreen];
  v10 = [v7 objectForKey:CNWallpaperColorDescriptionKeyBlue];
  v11 = [v7 objectForKey:CNWallpaperColorDescriptionKeyAlpha];
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v10 == 0 || v11 == 0)
  {
    v23 = 0;
  }

  else
  {
    [v8 doubleValue];
    v17 = v16;
    [v9 doubleValue];
    v19 = v18;
    [v10 doubleValue];
    v21 = v20;
    [v12 doubleValue];
    v23 = [UIColor colorWithRed:v17 green:v19 blue:v21 alpha:v22];
  }

  return v23;
}

- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)wallpaper
{
  wallpaperCopy = wallpaper;
  canShowBackgroundImage = [(PHAudioCallViewController *)self canShowBackgroundImage];
  v6 = !wallpaperCopy;
  if (!canShowBackgroundImage)
  {
    v6 = 0.0;
  }

  v7 = sub_100004F84([(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:v6]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(PHBackgroundGradientBlurView *)self->_backgroundImageView alpha];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SNAP: updated legacyBackgroundImageVisibility to %f", &v9, 0xCu);
  }
}

- (BOOL)setCallForBackgroundImage:(id)image animated:(BOOL)animated callDisplayStyleChanged:(BOOL)changed
{
  changedCopy = changed;
  imageCopy = image;
  v8 = sub_100004F84(imageCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = imageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setCallForBackgroundImage to: %@", &v17, 0xCu);
  }

  callForBackgroundImage = [(PHAudioCallViewController *)self callForBackgroundImage];
  if ([callForBackgroundImage isEqual:imageCopy])
  {
    callForBackgroundImage2 = [(PHAudioCallViewController *)self callForBackgroundImage];

    if (callForBackgroundImage2)
    {
      v11 = 1;
    }

    else
    {
      v11 = imageCopy == 0;
    }

    if (v11 && !changedCopy)
    {
      backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
      image = [backgroundImageView image];

      [(PHAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:image];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (imageCopy)
  {
    v14 = [(PHAudioCallViewController *)self contactImageDataForCall:imageCopy];
    if (v14)
    {
      image = [[UIImage alloc] initWithData:v14];
    }

    else
    {
      image = 0;
    }
  }

  else
  {
    image = 0;
  }

  [(PHAudioCallViewController *)self setBackgroundImage:image];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:imageCopy];
LABEL_19:
  [(PHAudioCallViewController *)self updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:[(PHAudioCallViewController *)self callHasNoContactPoster]^ 1];
  if (image)
  {
    canShowBackgroundImage = [(PHAudioCallViewController *)self canShowBackgroundImage];
  }

  else
  {
    canShowBackgroundImage = 0;
  }

  return canShowBackgroundImage;
}

- (id)contactImageDataForCall:(id)call
{
  imageData = [(PHAudioCallViewController *)self contactForCall:call];
  v5 = imageData;
  if (imageData)
  {
    fullscreenImageData = [imageData fullscreenImageData];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled && !fullscreenImageData)
      {
        imageData = [v5 imageData];
        fullscreenImageData = imageData;
      }
    }

    else
    {
    }
  }

  else
  {
    fullscreenImageData = 0;
  }

  v10 = sub_100004F84(imageData);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = fullscreenImageData;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: contactImageDataForCall is %@", &v12, 0xCu);
  }

  return fullscreenImageData;
}

- (id)contactForCall:(id)call
{
  callCopy = call;
  handle = [callCopy handle];
  siriDisplayName = [handle siriDisplayName];
  if ([siriDisplayName length])
  {
    handle2 = [callCopy handle];
    v8 = [handle2 shouldHideContact] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  contactIdentifier = [callCopy contactIdentifier];

  v11 = 0;
  if (contactIdentifier && v8)
  {
    v12 = sub_100004F84(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: trying to fetch contactImageData", v18, 2u);
    }

    v13 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v15 = +[PHAudioCallViewController contactKeysToFetch];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v11 = [v13 contactForIdentifier:contactIdentifier2 keysToFetch:v15 usingCache:contactsCache];
  }

  return v11;
}

- (id)fallbackImageDataForCall:(id)call
{
  imageData = [(PHAudioCallViewController *)self contactForCall:call];
  v4 = imageData;
  if (imageData)
  {
    imageData = [imageData imageData];
    v5 = imageData;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004F84(imageData);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: fallbackImageDataForContact is %@", &v8, 0xCu);
  }

  return v5;
}

- (id)contactImageForCall:(id)call
{
  callCopy = call;
  if (callCopy && ([(PHAudioCallViewController *)self contactImageDataForCall:callCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [UIImage imageWithData:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactImage
{
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self contactImageForCall:callToUseForWallpaper];

  return v4;
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
      if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:callToUseForWallpaper]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callToUseForWallpaper])
      {
        v8 = [(PHAudioCallViewController *)self contactWallpaperForCall:callToUseForWallpaper];
        v9 = [(PHAudioCallViewController *)self wallpaperTypeForCNWallpaper:v8];
      }

      else
      {
        v8 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callToUseForWallpaper];
        v9 = [(PHAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v8];
      }

      v15 = v9;

      callCenter = [(PHAudioCallViewController *)self callCenter];
      if ([callCenter currentCallCount] <= 1)
      {
      }

      else
      {
        callCenter2 = [(PHAudioCallViewController *)self callCenter];
        incomingCall = [callCenter2 incomingCall];

        if (incomingCall)
        {
          v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
LABEL_24:
          v21 = *(&self->super.super.super.super.isa + *v19);
          currentState = [(PHCallViewController *)self currentState];
          if (v15 == CNWallpaperTypeMemoji || v15 == CNWallpaperTypeMonogram)
          {
            contactWallpaperBackgroundColor = [(PHAudioCallViewController *)self contactWallpaperBackgroundColor];
            if (contactWallpaperBackgroundColor)
            {
              [(PHAudioCallViewController *)self setBackgroundColor:contactWallpaperBackgroundColor animated:1];
            }

            else
            {
              v26 = +[UIColor blackColor];
              [(PHAudioCallViewController *)self setBackgroundColor:v26 animated:1];
            }

            [(PHAudioCallViewController *)self removeBackgroundContactImageView];
          }

          else
          {
            if (currentState == 11)
            {
              v23 = 1;
            }

            else
            {
              v23 = v21;
            }

            if (imageCopy && v23)
            {
              [(PHAudioCallViewController *)self updateBackgroundContactImageViewWithImage:imageCopy animated:1];
            }

            else
            {
              v25 = +[UIColor blackColor];
              [(PHAudioCallViewController *)self setBackgroundColor:v25 animated:1];
            }
          }

          goto LABEL_38;
        }
      }

      usesCompactMulticallUI = [(PHAudioCallViewController *)self usesCompactMulticallUI];
      v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatar;
      if (usesCompactMulticallUI)
      {
        v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  if (imageCopy && [(PHAudioCallViewController *)self canShowBackgroundImage]|| [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    [(PHAudioCallViewController *)self updateBackgroundContactImageViewWithImage:imageCopy animated:0];
    [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    [(PHAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  else
  {
    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

    if (callDisplayStyle)
    {
      v12 = +[UIApplication sharedApplication];
      delegate = [v12 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

      if (!mostRecentlyDisconnectedAudioCall || ![mostRecentlyDisconnectedAudioCall isEmergency] || (objc_msgSend(mostRecentlyDisconnectedAudioCall, "disconnectedReasonRequiresCallBackUI") & 1) == 0)
      {
        [(PHAudioCallViewController *)self addDefaultBackgroundGradientView];
      }

      [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
      [(PHAudioCallViewController *)self removeBackgroundContactImageView];
    }
  }

LABEL_38:
}

- (void)setBackgroundColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011E9CC;
  v10[3] = &unk_100357110;
  v10[4] = self;
  colorCopy = color;
  v11 = colorCopy;
  v6 = objc_retainBlock(v10);
  v7 = v6;
  if (animatedCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011EA1C;
    v8[3] = &unk_100356D38;
    v9 = v6;
    [UIView animateWithDuration:v8 animations:0.5];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)updateBackgroundContactImageViewWithImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  v7 = sub_100004F84(imageCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = imageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SNAP: update backgroundContactImageView withImage: %@", buf, 0xCu);
  }

  if ([(PHAudioCallViewController *)self isShowingBackgroundImage])
  {
    if (animatedCopy)
    {
      backgroundImageView = self->_backgroundImageView;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10011EFE8;
      v41[3] = &unk_100357110;
      v41[4] = self;
      v42 = imageCopy;
      [UIView transitionWithView:backgroundImageView duration:5242880 options:v41 animations:0 completion:0.5];
    }

    else
    {
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setImage:imageCopy];
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:1.0];
    }

    goto LABEL_16;
  }

  v9 = [[PHBackgroundGradientBlurView alloc] initWithImage:imageCopy];
  v10 = self->_backgroundImageView;
  self->_backgroundImageView = v9;

  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setContentMode:2];
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setClipsToBounds:1];
  view = [(PHAudioCallViewController *)self view];
  [view insertSubview:self->_backgroundImageView atIndex:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController view];

    [view2 updateBackgroundMaterial:1];
  }

  [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:1];
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = _NSDictionaryOfVariableBindings(@"_backgroundImageView", self->_backgroundImageView, 0);
      view3 = [(PHAudioCallViewController *)self view];
      v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_backgroundImageView]|" options:0 metrics:0 views:v17];
      [view3 addConstraints:v19];

      view4 = [(PHAudioCallViewController *)self view];
      v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_backgroundImageView]|" options:0 metrics:0 views:v17];
      [view4 addConstraints:v21];
      goto LABEL_14;
    }
  }

  else
  {
  }

  topAnchor = [(PHBackgroundGradientBlurView *)self->_backgroundImageView topAnchor];
  view5 = [(PHAudioCallViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v39;
  bottomAnchor = [(PHBackgroundGradientBlurView *)self->_backgroundImageView bottomAnchor];
  view6 = [(PHAudioCallViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[1] = v33;
  leadingAnchor = [(PHBackgroundGradientBlurView *)self->_backgroundImageView leadingAnchor];
  view7 = [(PHAudioCallViewController *)self view];
  [view7 leadingAnchor];
  v22 = v40 = imageCopy;
  v23 = [leadingAnchor constraintEqualToAnchor:v22];
  v44[2] = v23;
  trailingAnchor = [(PHBackgroundGradientBlurView *)self->_backgroundImageView trailingAnchor];
  view8 = [(PHAudioCallViewController *)self view];
  [view8 trailingAnchor];
  v27 = v26 = animatedCopy;
  v28 = [trailingAnchor constraintEqualToAnchor:v27];
  v44[3] = v28;
  v29 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v29];

  v21 = topAnchor2;
  animatedCopy = v26;

  view4 = view5;
  v17 = topAnchor;

  imageCopy = v40;
LABEL_14:

  if (animatedCopy)
  {
    [(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:0.0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10011EFD0;
    v43[3] = &unk_100356988;
    v43[4] = self;
    [UIView animateWithDuration:v43 animations:0.5];
  }

LABEL_16:
  [(PHAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:imageCopy];
}

- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)image
{
  imageCopy = image;
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    if ([(PHAudioCallViewController *)self shouldApplyNewGradientBlur]|| [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
    {
      unblurredBackgroundImageView = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      [unblurredBackgroundImageView removeFromSuperview];

      [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:0];
    }

    else
    {
      unblurredBackgroundImageView2 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];

      if (!unblurredBackgroundImageView2)
      {
        v8 = objc_opt_new();
        [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:v8];

        view = [(PHAudioCallViewController *)self view];
        [view frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        unblurredBackgroundImageView3 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
        [unblurredBackgroundImageView3 setFrame:{v11, v13, v15, v17}];

        unblurredBackgroundImageView4 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
        [unblurredBackgroundImageView4 setContentMode:2];
      }

      unblurredBackgroundImageView5 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      [unblurredBackgroundImageView5 setImage:imageCopy];

      view2 = [(PHAudioCallViewController *)self view];
      unblurredBackgroundImageView6 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
      [view2 insertSubview:unblurredBackgroundImageView6 above:backgroundImageView];
    }
  }
}

- (id)fallbackHorizontalNameLabelString
{
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self associatedCallGroupForCall:callToUseForWallpaper];

  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  v6 = [callParticipantsViewController nameForCallGroup:v4];

  return v6;
}

- (id)createContactFirstNameLabelViewModel
{
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self contactToDisplayInCallWallpaperForCall:callToUseForWallpaper];
  handle = [callToUseForWallpaper handle];
  value = [handle value];
  v7 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v4 callStatus:0 callIsActive:1 optionalBackupName:value];

  [(PHAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v7];
  [v7 overrideTitleLayoutWith:0];
  v8 = [[PHPosterNameViewModel alloc] initWithCall:callToUseForWallpaper posterNameTextView:v7];

  return v8;
}

- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  wallpaperTitleStyleAttributes = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributes];
  v5 = wallpaperTitleStyleAttributes;
  if (wallpaperTitleStyleAttributes)
  {
    titleFont = [wallpaperTitleStyleAttributes titleFont];
    [wrapperCopy setTextFontUsingDefaultFontSizes:titleFont];

    [wrapperCopy setPreferredAlignment:{objc_msgSend(v5, "preferredTitleAlignment")}];
    [wrapperCopy setPreferredLayout:0];
  }
}

- (void)removeFirstNameLabelFromViewIfNeeded
{
  keypadPosterNameViewModel = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (keypadPosterNameViewModel)
  {

    [(PHAudioCallViewController *)self setKeypadPosterNameViewModel:0];
  }
}

- (void)hideFirstNameLabelOnKeypad
{
  keypadPosterNameViewModel = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (keypadPosterNameViewModel)
  {
    keypadPosterNameViewModel2 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
    [keypadPosterNameViewModel2 updatePosterNameAlpha:0.0];
  }
}

- (void)showFirstNameLabelOnKeypad
{
  keypadPosterNameViewModel = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (keypadPosterNameViewModel)
  {
    keypadPosterNameViewModel2 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
    [keypadPosterNameViewModel2 updatePosterNameAlpha:1.0];
  }
}

- (id)createBlurryBackgroundView
{
  v3 = +[UIColorEffect inCallControls];
  v4 = [UIBlurEffect effectWithBlurRadius:50.0];
  v5 = [[UIVisualEffectView alloc] initWithEffect:0];
  view = [(PHAudioCallViewController *)self view];
  [view frame];
  [v5 setFrame:?];

  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
  if (renderingViewController)
  {

LABEL_3:
    v18 = v4;
    v19 = v3;
    v8 = &v18;
    v9 = 2;
    goto LABEL_7;
  }

  backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
  if (backgroundImageView)
  {
    v11 = backgroundImageView;
    backgroundImageView2 = [(PHAudioCallViewController *)self backgroundImageView];
    [backgroundImageView2 alpha];
    v14 = v13;

    if (v14 != 0.0)
    {
      goto LABEL_3;
    }
  }

  v17 = v4;
  v8 = &v17;
  v9 = 1;
LABEL_7:
  v15 = [NSArray arrayWithObjects:v8 count:v9, v17, v18, v19];
  [v5 setBackgroundEffects:v15];

  return v5;
}

- (void)hideOrShowKeypadBackgroundView
{
  features = [(PHAudioCallViewController *)self features];
  isDialPadEnabled = [features isDialPadEnabled];

  if (!isDialPadEnabled)
  {
    return;
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  currentState = [bottomBar currentState];

  translationBackgroundView = [(PHAudioCallViewController *)self translationBackgroundView];
  v8 = translationBackgroundView;
  if (currentState != 19)
  {
    superview = [translationBackgroundView superview];

    if (superview)
    {
      translationBackgroundView2 = [(PHAudioCallViewController *)self translationBackgroundView];
      [translationBackgroundView2 setAlpha:1.0];

      [(PHAudioCallViewController *)self updateTranslationPosterName:1];
    }

    [(PHAudioCallViewController *)self removeFirstNameLabelFromViewIfNeeded];
    keypadBackgroundView = [(PHAudioCallViewController *)self keypadBackgroundView];

    if (keypadBackgroundView)
    {
      keypadBackgroundView2 = [(PHAudioCallViewController *)self keypadBackgroundView];
      [keypadBackgroundView2 removeFromSuperview];

      [(PHAudioCallViewController *)self setKeypadBackgroundView:0];
    }

    emergencyTextViaSatelliteLabel = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

    if (!emergencyTextViaSatelliteLabel)
    {
      goto LABEL_28;
    }

    shouldPresentAlertButton = [(PHAudioCallViewController *)self shouldPresentAlertButton];
    goto LABEL_27;
  }

  [translationBackgroundView setAlpha:0.0];

  keypadBackgroundView3 = [(PHAudioCallViewController *)self keypadBackgroundView];

  if (!keypadBackgroundView3)
  {
    [(PHAudioCallViewController *)self setHasKeypadUpdated:0];
    createBlurryBackgroundView = [(PHAudioCallViewController *)self createBlurryBackgroundView];
    renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

    if (renderingViewController)
    {
      view = [(PHAudioCallViewController *)self view];
      posterContainer = [(PHAudioCallViewController *)self posterContainer];
      [view insertSubview:createBlurryBackgroundView above:posterContainer];

      createContactFirstNameLabelViewModel = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
      [(PHAudioCallViewController *)self setKeypadPosterNameViewModel:createContactFirstNameLabelViewModel];

      keypadPosterNameViewModel = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
      posterNameTextView = [keypadPosterNameViewModel posterNameTextView];
      contentView = [createBlurryBackgroundView contentView];
      [TPIncomingCallMetricsProvider addCallerNameView:posterNameTextView toContainerView:contentView];

      v18 = +[TUCallCenter sharedInstance];
      currentCallCount = [v18 currentCallCount];

      if (currentCallCount >= 2)
      {
        [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
      }
    }

    else
    {
      defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (defaultBackgroundGradientView)
      {
        view2 = [(PHAudioCallViewController *)self view];
        defaultBackgroundGradientView2 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
        [view2 insertSubview:createBlurryBackgroundView above:defaultBackgroundGradientView2];
      }
    }

    [(PHAudioCallViewController *)self setKeypadBackgroundView:createBlurryBackgroundView];
    callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
    v30 = callToUseForWallpaper;
    if (callToUseForWallpaper && [callToUseForWallpaper status] == 1)
    {
      memset(&v46, 0, sizeof(v46));
      CGAffineTransformMakeScale(&v46, 1.03, 1.03);
      v45 = v46;
      keypadBackgroundView4 = [(PHAudioCallViewController *)self keypadBackgroundView];
      v44 = v45;
      [keypadBackgroundView4 setTransform:&v44];
    }

    renderingViewController2 = [(PHAudioCallViewController *)self renderingViewController];
    if (renderingViewController2)
    {
    }

    else
    {
      backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
      if (!backgroundImageView || (v37 = backgroundImageView, -[PHAudioCallViewController backgroundImageView](self, "backgroundImageView"), v38 = objc_claimAutoreleasedReturnValue(), [v38 alpha], v40 = v39, v38, v37, v40 == 0.0))
      {
        v33 = +[UIColorEffect inCallControlsButtonNoPhotoNoAvatar];
        keypadViewController2 = [UIBlurEffect effectWithBlurRadius:30.0];
        keypadViewController = [(PHAudioCallViewController *)self keypadViewController];
        v47[0] = v33;
        v47[1] = keypadViewController2;
        v41 = [NSArray arrayWithObjects:v47 count:2];
        [keypadViewController updateKeypadButtonBackgroundMaterial:v41];

        goto LABEL_24;
      }
    }

    v33 = +[UIColorEffect inCallControlsKeypadButton];
    keypadViewController2 = [(PHAudioCallViewController *)self keypadViewController];
    v48 = v33;
    keypadViewController = [NSArray arrayWithObjects:&v48 count:1];
    [keypadViewController2 updateKeypadButtonBackgroundMaterial:keypadViewController];
LABEL_24:
  }

  emergencyTextViaSatelliteLabel2 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

  if (emergencyTextViaSatelliteLabel2)
  {
    shouldPresentAlertButton = ([(PHAudioCallViewController *)self shouldPresentAlertButton]^ 1);
LABEL_27:
    emergencyTextViaSatelliteLabel3 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
    [emergencyTextViaSatelliteLabel3 setAlpha:shouldPresentAlertButton];
  }

LABEL_28:
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    [(PHAudioCallViewController *)self removeEnhancedEmergencyIntermittentStateLabel];
  }

  [(PHAudioCallViewController *)self updateDimmingView];
}

- (void)createDetachedPosterNameViewModel:(id)model
{
  modelCopy = model;
  detachedPosterNameViewModel = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

  if (!detachedPosterNameViewModel)
  {
    getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    createContactFirstNameLabelViewModel = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
    [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:createContactFirstNameLabelViewModel];

    detachedPosterNameViewModel2 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updatePosterNameAlpha:0.0];

    detachedPosterNameViewModel3 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel3 updateStatusFromParticipantsView:getParticipantsView_NotWaiting];

    detachedPosterNameViewModel4 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView = [detachedPosterNameViewModel4 posterNameTextView];
    [TPIncomingCallMetricsProvider addCallerNameView:posterNameTextView toContainerView:modelCopy];

    detachedPosterNameViewModel5 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView2 = [detachedPosterNameViewModel5 posterNameTextView];
    displayNameText = [posterNameTextView2 displayNameText];

    detachedPosterNameViewModel6 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView3 = [detachedPosterNameViewModel6 posterNameTextView];
    [(PHAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:posterNameTextView3];

    detachedPosterNameViewModel7 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView4 = [detachedPosterNameViewModel7 posterNameTextView];
    displayNameText2 = [posterNameTextView4 displayNameText];
    v19 = [displayNameText2 length];

    if (!v19)
    {
      detachedPosterNameViewModel8 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
      posterNameTextView5 = [detachedPosterNameViewModel8 posterNameTextView];
      [posterNameTextView5 setDisplayNameText:displayNameText];
    }

    translationLayoutGuide = [(PHAudioCallViewController *)self translationLayoutGuide];
    if (translationLayoutGuide)
    {
      v23 = translationLayoutGuide;
      detachedPosterNameViewModel9 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

      if (detachedPosterNameViewModel9)
      {
        translationLayoutGuide2 = [(PHAudioCallViewController *)self translationLayoutGuide];
        topAnchor = [translationLayoutGuide2 topAnchor];
        detachedPosterNameViewModel10 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
        posterNameTextView6 = [detachedPosterNameViewModel10 posterNameTextView];
        viewController = [posterNameTextView6 viewController];
        view = [viewController view];
        bottomAnchor = [view bottomAnchor];
        v32 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        [v32 setActive:1];
      }
    }
  }
}

- (void)removeDefaultBackgroundGradientView
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Removing default backgroundGradientView", v8, 2u);
  }

  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_4;
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
LABEL_4:
      defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      [defaultBackgroundGradientView removeFromSuperview];

      [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:0];
    }
  }

  else
  {
  }
}

- (void)setPosterNameViewModel:(id)model
{
  modelCopy = model;
  posterNameViewModel = self->_posterNameViewModel;
  if (posterNameViewModel)
  {
    [(PHPosterNameViewModel *)posterNameViewModel removeFromSuperview];
  }

  v6 = self->_posterNameViewModel;
  self->_posterNameViewModel = modelCopy;
}

- (void)setKeypadPosterNameViewModel:(id)model
{
  modelCopy = model;
  keypadPosterNameViewModel = self->_keypadPosterNameViewModel;
  if (keypadPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)keypadPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_keypadPosterNameViewModel;
  self->_keypadPosterNameViewModel = modelCopy;
}

- (void)setDetachedPosterNameViewModel:(id)model
{
  modelCopy = model;
  detachedPosterNameViewModel = self->_detachedPosterNameViewModel;
  if (detachedPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)detachedPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_detachedPosterNameViewModel;
  self->_detachedPosterNameViewModel = modelCopy;
}

- (void)updatePosterViewModelForParticipantsView:(id)view
{
  viewCopy = view;
  posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];

  if (posterNameViewModel)
  {
    posterNameViewModel2 = [(PHAudioCallViewController *)self posterNameViewModel];
    [posterNameViewModel2 updateViewModelForParticipantsView:viewCopy];
  }

  else
  {
    posterNameViewModel2 = [viewCopy singleCallLabelView];
    [posterNameViewModel2 setPosterNameViewModel:0];
  }
}

- (void)showPosterBlurTransition
{
  v3 = [UIBlurEffect effectWithBlurRadius:15.0];
  v4 = [[UIVisualEffectView alloc] initWithEffect:0];
  view = [(PHAudioCallViewController *)self view];
  [view frame];
  [v4 setFrame:?];

  view2 = [(PHAudioCallViewController *)self view];
  buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
  view3 = [buttonsViewController view];
  [view2 insertSubview:v4 below:view3];

  view4 = [(PHAudioCallViewController *)self view];
  callDetailsViewButton = [(PHAudioCallViewController *)self callDetailsViewButton];
  [view4 bringSubviewToFront:callDetailsViewButton];

  view5 = [(PHAudioCallViewController *)self view];
  posterBadgeView = [(PHAudioCallViewController *)self posterBadgeView];
  [view5 bringSubviewToFront:posterBadgeView];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001204CC;
  v17[3] = &unk_100357110;
  v18 = v4;
  v19 = v3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100120554;
  v15[3] = &unk_1003569B0;
  v16 = v18;
  v13 = v18;
  v14 = v3;
  [UIView _animateUsingSpringWithDuration:0 delay:v17 options:v15 mass:0.25 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

- (void)removePosterViewController:(BOOL)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
  [(PHAudioCallViewController *)self setRenderingViewController:0];
  [(PHAudioCallViewController *)self setPosterNameViewModel:0];
  if (renderingViewController)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001207D0;
    v11[3] = &unk_100357C78;
    v12 = renderingViewController;
    selfCopy = self;
    v14 = completionCopy;
    v8 = objc_retainBlock(v11);
    v9 = v8;
    if (controllerCopy)
    {
      [(PHAudioCallViewController *)self showPosterBlurTransition];
      v10 = dispatch_time(0, 0);
      dispatch_after(v10, &_dispatch_main_q, v9);
    }

    else
    {
      (v8[2])(v8);
    }
  }

  else
  {
    [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:1];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)transitionToNewPoster:(id)poster showingPosterTransition:(BOOL)transition shouldBlurPoster:(BOOL)blurPoster completion:(id)completion
{
  transitionCopy = transition;
  posterCopy = poster;
  completionCopy = completion;
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];
  [(PHAudioCallViewController *)self setRenderingViewController:posterCopy];
  [(PHAudioCallViewController *)self addChildViewController:posterCopy];
  view = [posterCopy view];
  [(PHAudioCallViewController *)self insertBelowDimmingLayerWithNewView:view containerView:self->_posterContainer];

  v15 = sub_100004F84(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!renderingViewController)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SNAP: Going to set up a new poster, there isn't an old one", buf, 2u);
    }

    if (transitionCopy && ([(PHAudioCallViewController *)self backgroundImageView], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
    {
      defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!defaultBackgroundGradientView)
      {
        view2 = sub_100004F84(v49);
        if (os_log_type_enabled(view2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, view2, OS_LOG_TYPE_DEFAULT, "SNAP: Going to set up a new poster, but there is no backgroundImageView or defaultBackgroundGradientView", buf, 2u);
        }

        goto LABEL_12;
      }

      view2 = [(PHAudioCallViewController *)self view];
      posterContainer = self->_posterContainer;
      defaultBackgroundGradientView2 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    else
    {
      view2 = [(PHAudioCallViewController *)self view];
      posterContainer = self->_posterContainer;
      defaultBackgroundGradientView2 = [(PHAudioCallViewController *)self backgroundImageView];
    }

    v34 = defaultBackgroundGradientView2;
    [view2 insertSubview:posterContainer above:defaultBackgroundGradientView2];

LABEL_12:
    [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
    goto LABEL_20;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SNAP: Going to swap old and new poster", buf, 2u);
  }

  screeningBackgroundView = [(PHAudioCallViewController *)self screeningBackgroundView];

  if (screeningBackgroundView)
  {
    [(UIView *)self->_posterContainer frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    screeningBackgroundView2 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [screeningBackgroundView2 setFrame:{v19, v21, v23, v25}];

    view3 = [(PHAudioCallViewController *)self view];
    v28 = self->_posterContainer;
    screeningBackgroundView3 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [view3 insertSubview:v28 below:screeningBackgroundView3];
  }

  else
  {
    backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];

    if (backgroundImageView)
    {
      view3 = [(PHAudioCallViewController *)self view];
      v36 = self->_posterContainer;
      backgroundImageView2 = [(PHAudioCallViewController *)self backgroundImageView];
    }

    else
    {
      defaultBackgroundGradientView3 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!defaultBackgroundGradientView3)
      {
        view3 = sub_100004F84(v39);
        if (os_log_type_enabled(view3, OS_LOG_TYPE_ERROR))
        {
          sub_100257140();
        }

        goto LABEL_19;
      }

      view3 = [(PHAudioCallViewController *)self view];
      v36 = self->_posterContainer;
      backgroundImageView2 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    screeningBackgroundView3 = backgroundImageView2;
    [view3 insertSubview:v36 above:backgroundImageView2];
  }

LABEL_19:
LABEL_20:
  [posterCopy didMoveToParentViewController:self];
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_100120E80;
  v53 = &unk_100359C58;
  blurPosterCopy = blurPoster;
  selfCopy = self;
  v40 = posterCopy;
  v55 = v40;
  v41 = renderingViewController;
  v56 = v41;
  v58 = 0x3FE0000000000000;
  v42 = completionCopy;
  v57 = v42;
  v43 = objc_retainBlock(&v50);
  v44 = v43;
  if (transitionCopy)
  {
    [(PHAudioCallViewController *)self showPosterBlurTransition:v50];
    v45 = dispatch_time(0, 0);
    dispatch_after(v45, &_dispatch_main_q, v44);
  }

  else
  {
    (v43[2])(v43);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [(PHAudioCallViewController *)self buttonsViewController:v50];
      view4 = [v46 view];

      [view4 updateBackgroundMaterial:0];
    }

    [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:0, v50, v51, v52, v53, selfCopy];
    [(PHAudioCallViewController *)self updateDimmingView];
    [(PHAudioCallViewController *)self updateSaliencyRectIfNeeded];
  }
}

- (void)setupNameLabelForAlwaysOnDisplay
{
  [(PHAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
  [(PHAudioCallViewController *)self setupDimmingViewForAlwaysOnDisplay];
  createContactFirstNameLabelViewModel = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
  [(PHAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:createContactFirstNameLabelViewModel];

  alwaysOnDisplayPosterNameViewModel = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
  posterNameTextView = [alwaysOnDisplayPosterNameViewModel posterNameTextView];
  alwaysOnDisplayDimmingView = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [TPIncomingCallMetricsProvider addCallerNameView:posterNameTextView toContainerView:alwaysOnDisplayDimmingView];
}

- (void)setupDimmingViewForAlwaysOnDisplay
{
  alwaysOnDisplayDimmingView = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];

  if (!alwaysOnDisplayDimmingView)
  {
    v4 = [UIView alloc];
    view = [(PHAudioCallViewController *)self view];
    [view frame];
    v10 = [v4 initWithFrame:?];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.75];
    [v10 setBackgroundColor:v7];

    view2 = [(PHAudioCallViewController *)self view];
    [view2 addSubview:v10];

    [(PHAudioCallViewController *)self setAlwaysOnDisplayDimmingView:v10];
    alwaysOnDisplayDimmingView2 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [alwaysOnDisplayDimmingView2 setAlpha:0.0];
  }
}

- (id)snapshotUIImageView
{
  v3 = [UIImageView alloc];
  backgroundImageView = [(PHAudioCallViewController *)self backgroundImageView];
  image = [backgroundImageView image];
  v6 = [v3 initWithImage:image];

  view = [(PHAudioCallViewController *)self view];
  [view frame];
  [v6 setFrame:?];

  v8 = objc_alloc_init(UIVisualEffectView);
  v9 = [UIBlurEffect effectWithBlurRadius:100.0];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v8 setBackgroundEffects:v10];

  view2 = [(PHAudioCallViewController *)self view];
  [view2 frame];
  [v8 setFrame:?];

  [v6 addSubview:v8];
  v12 = +[CALayer layer];
  v13 = [CAFilter filterWithType:kCAFilterPlusD];
  [v12 setCompositingFilter:v13];

  v14 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.150000006];
  [v12 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  view3 = [(PHAudioCallViewController *)self view];
  [view3 frame];
  [v12 setFrame:?];

  layer = [v8 layer];
  [layer addSublayer:v12];

  return v6;
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v4 viewSafeAreaInsetsDidChange];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    [(PHAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
  }
}

- (void)lockScreenVisibilityDidChange:(id)change
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  v8 = sub_100004F84(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Lock screen visibility did change, refreshing UI", v20, 2u);
  }

  [(PHAudioCallViewController *)self setCallForBackgroundImage:0];
  callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:callToUseForWallpaper animated:1 callDisplayStyleChanged:0];

  [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
  [singleCallLabelView updateLabelsOrderAndLayout];
  middleViewState = [(PHAudioCallViewController *)self middleViewState];
  [(PHAudioCallViewController *)self setMiddleViewState:0];
  screeningViewController = self->_screeningViewController;
  self->_screeningViewController = 0;

  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:0];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:middleViewState];
  bottomBar = [(PHCallViewController *)self bottomBar];
  currentState = [bottomBar currentState];

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setCurrentState:-1];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setCurrentState:currentState];
}

- (unint64_t)currentDisplayedPosterSourceForCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    configurationCache = [(PHAudioCallViewController *)self configurationCache];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v8 = [configurationCache objectForKey:uniqueProxyIdentifier2];

    source = [v8 source];
  }

  else
  {
    source = 0;
  }

  return source;
}

- (void)suspendPosterAndCancelDelay:(BOOL)delay
{
  delayCopy = delay;
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    renderingViewController2 = [(PHAudioCallViewController *)self renderingViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if (delayCopy)
      {
        suspendPosterAfterDelayBlock = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];

        if (suspendPosterAfterDelayBlock)
        {
          suspendPosterAfterDelayBlock2 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_block_cancel(suspendPosterAfterDelayBlock2);

          [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
        }
      }

      renderingViewController3 = [(PHAudioCallViewController *)self renderingViewController];
      renderingMode = [renderingViewController3 renderingMode];

      if (renderingMode == 2)
      {
        v13 = sub_100004F84(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .paused", v15, 2u);
        }

        renderingViewController4 = [(PHAudioCallViewController *)self renderingViewController];
        [renderingViewController4 setRenderingMode:1];
      }
    }
  }
}

- (void)setShowsCallWaitingParticipantView:(BOOL)view
{
  callWaitingParticipantsViewController = self->_callWaitingParticipantsViewController;
  if (view)
  {
    if (callWaitingParticipantsViewController)
    {
      return;
    }

    v5 = [PHCallParticipantsViewController alloc];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    contactsCache = [(PHAudioCallViewController *)self contactsCache];
    v8 = [(PHCallParticipantsViewController *)v5 initWithCallDisplayStyleManager:callDisplayStyleManager contactsCache:contactsCache];
    v9 = self->_callWaitingParticipantsViewController;
    self->_callWaitingParticipantsViewController = v8;

    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:[(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setHandlesCallWaitingCalls:1];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setDelegate:self];
    [(PHAudioCallViewController *)self addChildViewController:self->_callWaitingParticipantsViewController];
    view = [(PHAudioCallViewController *)self view];
    view2 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [view addSubview:view2];

    view3 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    singleCallLabelView = [view3 singleCallLabelView];
    [singleCallLabelView setPosterNameViewModel:0];

    view4 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:view4];
    callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        view5 = [(PHAudioCallViewController *)self view];
        bottomBar = [(PHCallViewController *)self bottomBar];
        [view5 bringSubviewToFront:bottomBar];

        view6 = [(PHAudioCallViewController *)self view];
        ambientAudioRoutesControlView = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
        [view6 bringSubviewToFront:ambientAudioRoutesControlView];

        [(PHAudioCallViewController *)self setUpLayoutGuidesForParticipantsViewController:self->_callWaitingParticipantsViewController];
        [(PHAudioCallViewController *)self applyCallWaitingConstraintsForAmbient];
        [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController updateCallGroups];
        [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:1];
LABEL_10:
        view7 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [view7 setAlpha:0.0];

        view8 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
        [view8 setAlpha:1.0];

        [(PHAudioCallViewController *)self callWaitingAnimationDelay];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10012225C;
        v36[3] = &unk_100356988;
        v36[4] = self;
        [UIView animateWithDuration:0 delay:v36 options:0 animations:0.5 completion:v29];
        goto LABEL_11;
      }
    }

    else
    {
    }

    [(PHAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
    goto LABEL_10;
  }

  if (!callWaitingParticipantsViewController)
  {
    return;
  }

  v22 = callWaitingParticipantsViewController;
  view9 = [(PHCallParticipantsViewController *)v22 view];
  [view9 setAlpha:1.0];

  view10 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
  [view10 setAlpha:0.0];

  view3 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
  singleCallLabelView2 = [view3 singleCallLabelView];
  [singleCallLabelView2 setPosterNameViewModel:0];

  view4 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
  [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:view4];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001222E4;
  v33[3] = &unk_100357110;
  v34 = v22;
  selfCopy = self;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100122360;
  v30[3] = &unk_100356D10;
  v31 = v34;
  selfCopy2 = self;
  v26 = v34;
  [UIView animateWithDuration:v33 animations:v30 completion:0.5];

LABEL_11:
}

- (double)callWaitingAnimationDelay
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 0.5;
  }

  return v3;
}

- (int64_t)bottomBarStateForCallWaitingCall
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  if ([callCenter currentVideoCallCount])
  {

LABEL_8:
    v12 = 9;
    goto LABEL_9;
  }

  callCenter2 = [(PHAudioCallViewController *)self callCenter];
  isHoldAndAnswerAllowed = [callCenter2 isHoldAndAnswerAllowed];

  if (!isHoldAndAnswerAllowed)
  {
    goto LABEL_8;
  }

  callCenter3 = [(PHAudioCallViewController *)self callCenter];
  v8 = [callCenter3 callWithStatus:2];
  if (v8)
  {
    v9 = v8;
    callCenter4 = [(PHAudioCallViewController *)self callCenter];
    v11 = [callCenter4 callWithStatus:1];

    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {

    v12 = 7;
  }

LABEL_9:
  v13 = sub_100004F84(v4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AudioCallWaiting: Showing bottom bar state: %ld", &v15, 0xCu);
  }

  return v12;
}

- (void)copyCallWaitingConstraintsFromParticipantsView
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  getParticipantsView_Waiting = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (getParticipantsView_Waiting)
  {
    superview = [getParticipantsView_Waiting superview];

    if (superview)
    {
      if (getParticipantsView_NotWaiting)
      {
        [getParticipantsView_Waiting setTranslatesAutoresizingMaskIntoConstraints:0];
        callWaitingLayoutConstraints = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint deactivateConstraints:callWaitingLayoutConstraints];

        centerYAnchor = [getParticipantsView_Waiting centerYAnchor];
        centerYAnchor2 = [getParticipantsView_NotWaiting centerYAnchor];
        v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v30[0] = v27;
        centerXAnchor = [getParticipantsView_Waiting centerXAnchor];
        centerXAnchor2 = [getParticipantsView_NotWaiting centerXAnchor];
        v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v30[1] = v24;
        topAnchor = [getParticipantsView_Waiting topAnchor];
        topAnchor2 = [getParticipantsView_NotWaiting topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v30[2] = v21;
        bottomAnchor = [getParticipantsView_Waiting bottomAnchor];
        bottomAnchor2 = [getParticipantsView_NotWaiting bottomAnchor];
        v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v30[3] = v18;
        leadingAnchor = [getParticipantsView_Waiting leadingAnchor];
        leadingAnchor2 = [getParticipantsView_NotWaiting leadingAnchor];
        v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v30[4] = v12;
        trailingAnchor = [getParticipantsView_Waiting trailingAnchor];
        trailingAnchor2 = [getParticipantsView_NotWaiting trailingAnchor];
        v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v30[5] = v15;
        v16 = [NSArray arrayWithObjects:v30 count:6];
        [(PHAudioCallViewController *)self setCallWaitingLayoutConstraints:v16];

        callWaitingLayoutConstraints2 = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:callWaitingLayoutConstraints2];
      }
    }
  }
}

- (void)applyCallWaitingConstraintsForAmbient
{
  getParticipantsView_Waiting = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  if (getParticipantsView_Waiting)
  {
    v10 = getParticipantsView_Waiting;
    superview = [getParticipantsView_Waiting superview];
    getParticipantsView_Waiting = v10;
    if (superview)
    {
      callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle] == 3)
      {
        features = [(PHAudioCallViewController *)self features];
        isDominoEnabled = [features isDominoEnabled];

        getParticipantsView_Waiting = v10;
        if (!isDominoEnabled)
        {
          goto LABEL_7;
        }

        view = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];

        superview = [(PHAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v10 largeAvatar:self->_shouldShowLargeAvatarForCallWaiting];
        allValues = [superview allValues];
        [(PHAudioCallViewController *)self setCallWaitingLayoutConstraints:allValues];

        callDisplayStyleManager = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:callDisplayStyleManager];
      }

      getParticipantsView_Waiting = v10;
    }
  }

LABEL_7:
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)presentation
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested keypad presentation", v9, 2u);
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      v8 = +[NSURL showKeypadURL];
      TUUnlockAndOpenURL();

      return;
    }
  }

  else
  {
  }

  [(PHAudioCallViewController *)self setMiddleViewState:2 animated:1];
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)mode
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested keypad presentation for field mode", v6, 2u);
  }

  [(PHAudioCallViewController *)self setMiddleViewState:2 animated:1];
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
  [callParticipantsViewController setAllowsFieldModeSendButton:1];
}

- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)presentation forView:(id)view
{
  viewCopy = view;
  v6 = sub_100004F84(viewCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Contacts presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100122CA0;
  v13 = &unk_100356D10;
  selfCopy = self;
  v15 = viewCopy;
  v7 = viewCopy;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation forView:(id)view
{
  viewCopy = view;
  v6 = sub_100004F84(viewCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Add Call presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100122E3C;
  v13 = &unk_100356D10;
  selfCopy = self;
  v15 = viewCopy;
  v7 = viewCopy;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)presentation
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Audio Route presentation", v5, 2u);
  }

  [(PHAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
}

- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)presentation
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Video presentation", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012302C;
  v7[3] = &unk_1003569B0;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = +[PHInCallUtilities sharedInstance];
  [v6 requestPasscodeUnlockWithCompletion:v5];
}

- (void)audioCallControlsViewControllerRequestedInvokeAlert
{
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  alertCoordinator = [delegate alertCoordinator];
  [alertCoordinator invokeAlertWithRequestUnlock:-[PHAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[PHAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];
}

- (void)audioCallControlsViewControllerDidTapVideoStreamingButton
{
  features = [(PHAudioCallViewController *)self features];
  isEnhancedEmergencyEnabled = [features isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    [(PHAudioCallViewController *)self removeEnhancedEmergencyIntermittentStateLabel];
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator handleVideoStreamingButtonTapped];

    emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
    videoStreamingIsOnScreen = [emergencyCoordinator2 videoStreamingIsOnScreen];

    if (videoStreamingIsOnScreen)
    {
      buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
      view = [buttonsViewController view];

      [view changeVideoStreamingButtonTitleWithIsSharing:1];
      emergencyCoordinator3 = [(PHAudioCallViewController *)self emergencyCoordinator];
      videoStreamingRequestHasBeenAccepted = [emergencyCoordinator3 videoStreamingRequestHasBeenAccepted];

      if (videoStreamingRequestHasBeenAccepted)
      {
        [(PHAudioCallViewController *)self addEnhancedEmergencyIntermittentStateLabelWithState:1];
      }
    }

    else
    {

      [(PHAudioCallViewController *)self requestToAddResumeCameraLabel];
    }
  }
}

- (void)audioCallControlsViewControllerRequestedShareMedia
{
  features = [(PHAudioCallViewController *)self features];
  isEnhancedEmergencyEnabled = [features isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator handleMediaUploadButtonTapped];
  }
}

- (void)audioCallControlsViewControllerDidTapRTTButton
{
  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled] && (-[PHAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    eedRTTState = [emergencyCoordinator eedRTTState];

    if (eedRTTState == 3)
    {
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      [emergencyCoordinator2 transitionToRTTState:2];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = sub_10014265C(v8);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  activeCall = [(PHAudioCallViewController *)self activeCall];
  emergencyCoordinator2 = [v10 viewControllerForCall:activeCall];

  navigationController = [(PHAudioCallViewController *)self navigationController];
  [navigationController pushViewController:emergencyCoordinator2 animated:1];

LABEL_8:
}

- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)view
{
  viewCopy = view;
  v5 = sub_100004F84(viewCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: requested more menu presentation", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012377C;
  v10[3] = &unk_100357E78;
  objc_copyWeak(&v12, buf);
  v9 = viewCopy;
  v11 = v9;
  [(PHAudioCallViewController *)self presentMoreMenu:bannerPresentationManager source:v9 alongsideTransition:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)view
{
  viewCopy = view;
  v5 = sub_100004F84(viewCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: requested share card presentation", v9, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [(PHAudioCallViewController *)self presentShareCard:bannerPresentationManager source:viewCopy];
}

- (BOOL)videoStreamingIsGoingOn
{
  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      videoStreamingIsOnScreen = [emergencyCoordinator2 videoStreamingIsOnScreen];
    }

    else
    {
      videoStreamingIsOnScreen = 0;
    }
  }

  else
  {
    videoStreamingIsOnScreen = 0;
  }

  return videoStreamingIsOnScreen;
}

- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)button
{
  buttonCopy = button;
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!buttonCopy)
    {
      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    mutedTalkerBannerViewController = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
    [mutedTalkerBannerViewController updatePillViewWithIsMuted:buttonCopy];
  }
}

- (void)audioCallControlsViewControllerDidTapEndButton:(id)button
{
  if ([(PHCallViewController *)self currentState]== 10)
  {

    [(PHAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
  }

  else
  {
    v4 = +[UIApplication sharedApplication];
    delegate = [v4 delegate];
    mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

    if (mostRecentlyDisconnectedAudioCall && [mostRecentlyDisconnectedAudioCall isEmergency])
    {
      disconnectedReasonRequiresCallBackUI = [mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI];
    }

    else
    {
      disconnectedReasonRequiresCallBackUI = 0;
    }

    v7 = [mostRecentlyDisconnectedAudioCall canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    if (disconnectedReasonRequiresCallBackUI && v7)
    {
      [(PHAudioCallViewController *)self setCurrentState:0];
    }

    else
    {
      activeCall = [(PHAudioCallViewController *)self activeCall];
      callUUID = [activeCall callUUID];
      [(PHAudioCallViewController *)self setUUIDForLocallyDisconnectedCall:callUUID];

      callCenter = [(PHAudioCallViewController *)self callCenter];
      [callCenter disconnectCurrentCall];
    }
  }
}

- (void)localAudioToggledWithIsMuted:(BOOL)muted
{
  mutedCopy = muted;
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!mutedCopy)
    {
      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    mutedTalkerBannerViewController = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
    [mutedTalkerBannerViewController updatePillViewWithIsMuted:mutedCopy];
  }
}

- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Voice loop controller requested button presentation", v5, 2u);
  }

  voiceLoopManager = [(PHAudioCallViewController *)self voiceLoopManager];
  [voiceLoopManager stopLoopPlayback];
}

- (void)setMiddleViewState:(unsigned __int16)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  completionCopy = completion;
  v8 = sub_100004F84(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 67109120;
    HIDWORD(buf.a) = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setMiddleViewState: %d", &buf, 8u);
  }

  v10 = sub_100004F84(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
    view = [buttonsViewController view];
    [(PHAudioCallViewController *)self buttonsViewController];
    v13 = v489 = stateCopy;
    view2 = [v13 view];
    [view2 alpha];
    v16 = v15;
    buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
    [buttonsViewController2 view];
    v19 = v18 = self;
    superview = [v19 superview];
    LODWORD(buf.a) = 138412802;
    *(&buf.a + 4) = view;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = v16;
    HIWORD(buf.c) = 2112;
    *&buf.d = superview;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "current six-up is: %@, six-up view alpha is: %f, six-up view parent view is: %@", &buf, 0x20u);

    self = v18;
    stateCopy = v489;
  }

  currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
  v579[0] = _NSConcreteStackBlock;
  v579[1] = 3221225472;
  v579[2] = sub_1001279A8;
  v579[3] = &unk_100357CA0;
  v22 = completionCopy;
  v580 = v22;
  v23 = objc_retainBlock(v579);
  v24 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (+[PHUIConfiguration usesMiddleCenteringView])
  {
    middleSizingView = [(PHAudioCallViewController *)self middleSizingView];

    if (!middleSizingView)
    {
      v26 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(PHAudioCallViewController *)self setMiddleSizingView:v26];

      middleSizingView2 = [(PHAudioCallViewController *)self middleSizingView];
      [middleSizingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      view3 = [(PHAudioCallViewController *)self view];
      middleSizingView3 = [(PHAudioCallViewController *)self middleSizingView];
      [view3 addSubview:middleSizingView3];

      view4 = [(PHAudioCallViewController *)self view];
      [(PHAudioCallViewController *)self middleSizingView];
      v31 = v490 = v23;
      [(PHAudioCallViewController *)self callParticipantsViewController];
      v33 = v32 = v22;
      [v33 view];
      v35 = v34 = currentMiddleView;
      v36 = [NSLayoutConstraint constraintWithItem:v31 attribute:3 relatedBy:0 toItem:v35 attribute:4 multiplier:1.0 constant:0.0];
      [view4 addConstraint:v36];

      view5 = [(PHAudioCallViewController *)self view];
      middleSizingView4 = [(PHAudioCallViewController *)self middleSizingView];
      bottomBar = [(PHCallViewController *)self bottomBar];
      mainButtonLayoutGuide = [bottomBar mainButtonLayoutGuide];
      v41 = [NSLayoutConstraint constraintWithItem:middleSizingView4 attribute:4 relatedBy:0 toItem:mainButtonLayoutGuide attribute:3 multiplier:1.0 constant:0.0];
      [view5 addConstraint:v41];

      currentMiddleView = v34;
      v22 = v32;

      view6 = [(PHAudioCallViewController *)self view];
      v24 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
      middleSizingView5 = [(PHAudioCallViewController *)self middleSizingView];
      v44 = [NSLayoutConstraint constraintWithItem:middleSizingView5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [view6 addConstraint:v44];

      v23 = v490;
    }
  }

  if (self->_middleViewState == stateCopy)
  {
    v45 = 0;
    view21 = 0;
    goto LABEL_238;
  }

  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  v48 = [frontmostCall canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
  view21 = 0;
  v488 = frontmostCall;
  if (stateCopy > 2)
  {
    v491 = v23;
    if (stateCopy == 3)
    {
      voiceLoopViewController = [(PHAudioCallViewController *)self voiceLoopViewController];
      view7 = [voiceLoopViewController view];
      superview2 = [view7 superview];

      if (!superview2)
      {
        view8 = [(PHAudioCallViewController *)self view];
        voiceLoopViewController2 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view9 = [voiceLoopViewController2 view];
        [view8 addSubview:view9];

        voiceLoopViewController3 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view10 = [voiceLoopViewController3 view];
        [view10 setTranslatesAutoresizingMaskIntoConstraints:0];

        voiceLoopViewController4 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view11 = [voiceLoopViewController4 view];
        centerXAnchor = [view11 centerXAnchor];
        view12 = [(PHAudioCallViewController *)self view];
        centerXAnchor2 = [view12 centerXAnchor];
        v458 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v585[0] = v458;
        voiceLoopViewController5 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view13 = [voiceLoopViewController5 view];
        leadingAnchor = [view13 leadingAnchor];
        view14 = [(PHAudioCallViewController *)self view];
        leadingAnchor2 = [view14 leadingAnchor];
        v440 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v585[1] = v440;
        voiceLoopViewController6 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view15 = [voiceLoopViewController6 view];
        trailingAnchor = [view15 trailingAnchor];
        view16 = [(PHAudioCallViewController *)self view];
        trailingAnchor2 = [view16 trailingAnchor];
        v422 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v585[2] = v422;
        voiceLoopViewController7 = [(PHAudioCallViewController *)self voiceLoopViewController];
        view17 = [voiceLoopViewController7 view];
        topAnchor = [view17 topAnchor];
        callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
        view18 = [callParticipantsViewController view];
        bottomAnchor = [view18 bottomAnchor];
        v413 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        v585[3] = v413;
        voiceLoopViewController8 = [(PHAudioCallViewController *)self voiceLoopViewController];
        [voiceLoopViewController8 view];
        v122 = v121 = self;
        [v122 bottomAnchor];
        v123 = v479 = currentMiddleView;
        [(PHCallViewController *)v121 bottomBar];
        v124 = v484 = v22;
        topLayoutGuide = [v124 topLayoutGuide];
        topAnchor2 = [topLayoutGuide topAnchor];
        v127 = [v123 constraintEqualToAnchor:topAnchor2];
        v585[4] = v127;
        [NSArray arrayWithObjects:v585 count:5];
        v129 = v128 = stateCopy;
        [NSLayoutConstraint activateConstraints:v129];

        stateCopy = v128;
        v22 = v484;

        currentMiddleView = v479;
        self = v121;
      }

      callParticipantsViewController2 = [(PHAudioCallViewController *)self callParticipantsViewController];
      [callParticipantsViewController2 resetNameOverrideString];

      callParticipantsViewController3 = [(PHAudioCallViewController *)self callParticipantsViewController];
      view19 = [callParticipantsViewController3 view];
      [view19 setNeedsLayout];

      callParticipantsViewController4 = [(PHAudioCallViewController *)self callParticipantsViewController];
      view20 = [callParticipantsViewController4 view];
      [view20 layoutIfNeeded];

      callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v136 = [callDisplayStyleManager callDisplayStyle] != 0;

      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:11 animated:v136 animationCompletionBlock:0];

      voiceLoopViewController9 = [(PHAudioCallViewController *)self voiceLoopViewController];
      view21 = [voiceLoopViewController9 view];

      if (![(PHAudioCallViewController *)self middleViewState])
      {
        [view21 setAlpha:0.0];
        v537[0] = _NSConcreteStackBlock;
        v537[1] = 3221225472;
        v537[2] = sub_100128114;
        v537[3] = &unk_100356988;
        view21 = view21;
        v538 = view21;
        v166 = objc_retainBlock(v537);
        callDisplayStyleManager2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

        if (callDisplayStyle)
        {
          selfCopy15 = self;
          v45 = objc_retainBlock(v166);
        }

        else
        {
          v210 = sub_100004F84(v169);
          if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.a) = 0;
            _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
          }

          selfCopy15 = self;
          [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:v166];
          v45 = 0;
        }

        v23 = v491;

        v141 = v538;
        goto LABEL_220;
      }

      if ([(PHAudioCallViewController *)self middleViewState]== 1)
      {
        selfCopy15 = self;
        [view21 setAlpha:0.0];
        v534[0] = _NSConcreteStackBlock;
        v534[1] = 3221225472;
        v534[2] = sub_100128120;
        v534[3] = &unk_100357110;
        v140 = currentMiddleView;
        v535 = v140;
        view21 = view21;
        v536 = view21;
        v45 = objc_retainBlock(v534);
        v531[0] = _NSConcreteStackBlock;
        v531[1] = 3221225472;
        v531[2] = sub_100128164;
        v531[3] = &unk_100357E30;
        v532 = v140;
        v533 = v22;
        v23 = objc_retainBlock(v531);

        v141 = v535;
        goto LABEL_220;
      }

      v23 = v491;
      if ([(PHAudioCallViewController *)self middleViewState]!= 2)
      {
        goto LABEL_211;
      }

      selfCopy15 = self;
      participantsViewTopConstraint = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      +[PHUIConfiguration yParticipantsViewAdjustmentForKeypad];
      v173 = v172;
      [participantsViewTopConstraint constant];
      [participantsViewTopConstraint setConstant:v173 + v174];

      CGAffineTransformMakeScale(&v530, 1.20000005, 1.20000005);
      buf = v530;
      [view21 setTransform:&buf];
      [view21 setAlpha:0.0];
      v527[0] = _NSConcreteStackBlock;
      v527[1] = 3221225472;
      v527[2] = sub_1001281C8;
      v527[3] = &unk_100357110;
      view21 = view21;
      v528 = view21;
      v175 = currentMiddleView;
      v529 = v175;
      v45 = objc_retainBlock(v527);
      v524[0] = _NSConcreteStackBlock;
      v524[1] = 3221225472;
      v524[2] = sub_10012825C;
      v524[3] = &unk_100357E30;
      v525 = v175;
      v526 = v22;
      v176 = objc_retainBlock(v524);

      v141 = v528;
LABEL_61:
      v23 = v176;
      goto LABEL_220;
    }

    if (stateCopy != 4)
    {
      if (stateCopy != 5)
      {
        v45 = 0;
LABEL_139:
        v23 = v491;
        goto LABEL_228;
      }

      waitOnHoldViewController = [(PHAudioCallViewController *)self waitOnHoldViewController];

      if (waitOnHoldViewController)
      {
        v74 = [(PHAudioCallViewController *)self middleViewState]!= 1 && animatedCopy;
        animatedCopy = v74;
        waitOnHoldViewController2 = [(PHAudioCallViewController *)self waitOnHoldViewController];
        view22 = [waitOnHoldViewController2 view];
        superview3 = [view22 superview];

        if (!superview3)
        {
          screeningContainerView = [(PHAudioCallViewController *)self screeningContainerView];
          waitOnHoldViewController3 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view23 = [waitOnHoldViewController3 view];
          [screeningContainerView addSubview:view23];

          waitOnHoldViewController4 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view24 = [waitOnHoldViewController4 view];
          [view24 setTranslatesAutoresizingMaskIntoConstraints:0];

          waitOnHoldViewController5 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view25 = [waitOnHoldViewController5 view];
          [view25 setContentCompressionResistancePriority:0 forAxis:0.0];

          waitOnHoldViewController6 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view26 = [waitOnHoldViewController6 view];
          [view26 setContentCompressionResistancePriority:1 forAxis:0.0];

          waitOnHoldViewController7 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view27 = [waitOnHoldViewController7 view];
          [view27 setContentHuggingPriority:0 forAxis:0.0];

          waitOnHoldViewController8 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view28 = [waitOnHoldViewController8 view];
          [view28 setContentHuggingPriority:1 forAxis:0.0];

          waitOnHoldViewController9 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view29 = [waitOnHoldViewController9 view];
          v93 = +[UIColor clearColor];
          [view29 setBackgroundColor:v93];

          v94 = objc_opt_new();
          [(PHAudioCallViewController *)self setWaitOnHoldConstraints:v94];

          view30 = [(PHAudioCallViewController *)self view];
          waitOnHoldConstraints = [(PHAudioCallViewController *)self waitOnHoldConstraints];
          [waitOnHoldConstraints setView:view30];

          v97 = +[UIScreen mainScreen];
          [v97 bounds];
          v99 = v98;
          v101 = v100;

          if (v99 < v101)
          {
            v99 = v101;
          }

          v478 = currentMiddleView;
          v483 = v22;
          if (+[PHUIConfiguration usesMiddleCenteringView])
          {
            middleSizingView6 = [(PHAudioCallViewController *)self middleSizingView];
            centerYAnchor = [middleSizingView6 centerYAnchor];
          }

          else
          {
            middleSizingView6 = [(PHAudioCallViewController *)self callParticipantsViewController];
            view31 = [middleSizingView6 view];
            centerYAnchor = [view31 bottomAnchor];
          }

          v432 = centerYAnchor;

          view32 = [(PHAudioCallViewController *)self view];
          trailingAnchor3 = [view32 trailingAnchor];
          waitOnHoldViewController10 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view33 = [waitOnHoldViewController10 view];
          trailingAnchor4 = [view33 trailingAnchor];
          v459 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
          v581[0] = v459;
          waitOnHoldViewController11 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view34 = [waitOnHoldViewController11 view];
          leadingAnchor3 = [view34 leadingAnchor];
          view35 = [(PHAudioCallViewController *)self view];
          leadingAnchor4 = [view35 leadingAnchor];
          v441 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
          v581[1] = v441;
          bottomBar3 = [(PHCallViewController *)self bottomBar];
          mainButtonLayoutGuide2 = [bottomBar3 mainButtonLayoutGuide];
          topAnchor3 = [mainButtonLayoutGuide2 topAnchor];
          waitOnHoldViewController12 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view36 = [waitOnHoldViewController12 view];
          bottomAnchor2 = [view36 bottomAnchor];
          v214 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:v99 * 0.0425];
          v581[2] = v214;
          waitOnHoldViewController13 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          view37 = [waitOnHoldViewController13 view];
          topAnchor4 = [view37 topAnchor];
          v218 = [topAnchor4 constraintEqualToAnchor:centerYAnchor constant:v99 * 0.0475];
          v581[3] = v218;
          [NSArray arrayWithObjects:v581 count:4];
          v220 = v219 = self;
          waitOnHoldConstraints2 = [(PHAudioCallViewController *)v219 waitOnHoldConstraints];
          [waitOnHoldConstraints2 setConstraintsStatePrimary:v220];

          self = v219;
          stateCopy = 5;
          currentMiddleView = v478;
          v22 = v483;
        }

        [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
        waitOnHoldViewController14 = [(PHAudioCallViewController *)self waitOnHoldViewController];
        view38 = [waitOnHoldViewController14 view];

        CGAffineTransformMakeScale(&v507, 0.100000001, 0.100000001);
        buf = v507;
        [view38 setTransform:&buf];
        [view38 setAlpha:0.0];
        v504[0] = _NSConcreteStackBlock;
        v504[1] = 3221225472;
        v504[2] = sub_100128608;
        v504[3] = &unk_100357110;
        v224 = currentMiddleView;
        v505 = v224;
        view21 = view38;
        v506 = view21;
        v45 = objc_retainBlock(v504);
        v500[0] = _NSConcreteStackBlock;
        v500[1] = 3221225472;
        v500[2] = sub_10012869C;
        v500[3] = &unk_100357978;
        v501 = v224;
        selfCopy5 = self;
        v503 = v22;
        selfCopy15 = self;
        v23 = objc_retainBlock(v500);

        v141 = v505;
        goto LABEL_220;
      }

      v170 = sub_100004F84(v73);
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "[WARN] WaitOnHoldViewController was unexpectedly nil, cannot show WaitOnHold middle view state.", &buf, 2u);
      }

      view21 = 0;
LABEL_138:
      v45 = 0;
      goto LABEL_139;
    }

    v161 = [(PHAudioCallViewController *)self middleViewState]!= 1 && animatedCopy;
    animatedCopy = v161;
    screeningViewController = [(PHAudioCallViewController *)self screeningViewController];
    view39 = [screeningViewController view];
    superview4 = [view39 superview];

    if (superview4)
    {
LABEL_111:
      [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
      screeningViewController2 = [(PHAudioCallViewController *)self screeningViewController];
      view40 = [screeningViewController2 view];

      CGAffineTransformMakeScale(&v515, 0.100000001, 0.100000001);
      buf = v515;
      [view40 setTransform:&buf];
      [view40 setAlpha:0.0];
      v512[0] = _NSConcreteStackBlock;
      v512[1] = 3221225472;
      v512[2] = sub_1001283C4;
      v512[3] = &unk_100357110;
      v290 = currentMiddleView;
      v513 = v290;
      view21 = view40;
      v514 = view21;
      v45 = objc_retainBlock(v512);
      v508[0] = _NSConcreteStackBlock;
      v508[1] = 3221225472;
      v508[2] = sub_100128458;
      v508[3] = &unk_100357978;
      v509 = v290;
      v511 = v22;
      selfCopy15 = self;
      selfCopy8 = self;
      v23 = objc_retainBlock(v508);

      v141 = v513;
      goto LABEL_220;
    }

    featureFlags = [(PHAudioCallViewController *)self featureFlags];
    if ([featureFlags receptionistEnabled])
    {
    }

    else
    {
      featureFlags2 = [(PHAudioCallViewController *)self featureFlags];
      lVMEverywhere = [featureFlags2 LVMEverywhere];

      if (!lVMEverywhere)
      {
        view41 = [(PHAudioCallViewController *)self view];
LABEL_88:
        v230 = view41;
        screeningViewController3 = [(PHAudioCallViewController *)self screeningViewController];
        view42 = [screeningViewController3 view];
        [v230 addSubview:view42];

        screeningViewController4 = [(PHAudioCallViewController *)self screeningViewController];
        view43 = [screeningViewController4 view];
        [view43 setTranslatesAutoresizingMaskIntoConstraints:0];

        screeningViewController5 = [(PHAudioCallViewController *)self screeningViewController];
        view44 = [screeningViewController5 view];
        [view44 setContentCompressionResistancePriority:0 forAxis:0.0];

        screeningViewController6 = [(PHAudioCallViewController *)self screeningViewController];
        view45 = [screeningViewController6 view];
        [view45 setContentCompressionResistancePriority:1 forAxis:0.0];

        screeningViewController7 = [(PHAudioCallViewController *)self screeningViewController];
        view46 = [screeningViewController7 view];
        [view46 setContentHuggingPriority:0 forAxis:0.0];

        screeningViewController8 = [(PHAudioCallViewController *)self screeningViewController];
        view47 = [screeningViewController8 view];
        [view47 setContentHuggingPriority:1 forAxis:0.0];

        v243 = objc_opt_new();
        [(PHAudioCallViewController *)self setScreeningConstraints:v243];

        callDisplayStyleManager3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v480 = currentMiddleView;
        v486 = v22;
        if ([callDisplayStyleManager3 callDisplayStyle] == 3)
        {
          features = [(PHAudioCallViewController *)self features];
          isDominoEnabled = [features isDominoEnabled];

          if (isDominoEnabled)
          {
            screeningViewController9 = [(PHAudioCallViewController *)self screeningViewController];
            view48 = [screeningViewController9 view];
            trailingAnchor5 = [view48 trailingAnchor];
            bottomBar4 = [(PHCallViewController *)self bottomBar];
            mainButtonLayoutGuide3 = [bottomBar4 mainButtonLayoutGuide];
            [mainButtonLayoutGuide3 leadingAnchor];
            v466 = v263View = trailingAnchor5;
            v463 = [trailingAnchor5 constraintEqualToAnchor:-20.0 constant:?];
            v584[0] = v463;
            screeningViewController10 = [(PHAudioCallViewController *)self screeningViewController];
            view49 = [screeningViewController10 view];
            leadingAnchor5 = [view49 leadingAnchor];
            view50 = [(PHAudioCallViewController *)self view];
            safeAreaLayoutGuide = [view50 safeAreaLayoutGuide];
            [safeAreaLayoutGuide leadingAnchor];
            v445 = v454 = leadingAnchor5;
            bottomBar5 = [leadingAnchor5 constraintEqualToAnchor:?];
            v584[1] = bottomBar5;
            screeningViewController11 = [(PHAudioCallViewController *)self screeningViewController];
            view51 = [screeningViewController11 view];
            topAnchor5 = [view51 topAnchor];
            callParticipantsViewController5 = [(PHAudioCallViewController *)self callParticipantsViewController];
            view52 = [callParticipantsViewController5 view];
            [view52 bottomAnchor];
            v425 = screeningViewController13 = topAnchor5;
            screeningViewController14 = [topAnchor5 constraintEqualToAnchor:?];
            v584[2] = screeningViewController14;
            screeningViewController12 = [(PHAudioCallViewController *)self screeningViewController];
            [screeningViewController12 view];
            v252 = v251 = self;
            bottomAnchor3 = [v252 bottomAnchor];
            view53 = [(PHAudioCallViewController *)v251 view];
            bottomAnchor4 = [view53 bottomAnchor];
            +[PHUIConfiguration ambientVerticalPadding];
            v257 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v256];
            v584[3] = v257;
            v258 = [NSArray arrayWithObjects:v584 count:4];
            v259 = v251;
            [(PHAudioCallViewController *)v251 screeningConstraints];
            v261 = v260 = stateCopy;
            [v261 setConstraintsStatePrimary:v258];

            stateCopy = v260;
            centerYAnchor2 = screeningViewController9;

            view56 = view48;
LABEL_110:

            self = v259;
            currentMiddleView = v480;
            v22 = v486;
            goto LABEL_111;
          }
        }

        else
        {
        }

        v264 = +[UIScreen mainScreen];
        [v264 bounds];
        v266 = v265;
        v268 = v267;

        if (v266 >= v268)
        {
          v269 = v268;
        }

        else
        {
          v269 = v266;
        }

        if (v266 >= v268)
        {
          v268 = v266;
        }

        if (+[PHUIConfiguration usesMiddleCenteringView])
        {
          middleSizingView7 = [(PHAudioCallViewController *)self middleSizingView];
          centerYAnchor2 = [middleSizingView7 centerYAnchor];
        }

        else
        {
          middleSizingView7 = [(PHAudioCallViewController *)self callParticipantsViewController];
          view54 = [middleSizingView7 view];
          centerYAnchor2 = [view54 bottomAnchor];
        }

        view55 = [(PHAudioCallViewController *)self view];
        screeningConstraints = [(PHAudioCallViewController *)self screeningConstraints];
        [screeningConstraints setView:view55];

        featureFlags3 = [(PHAudioCallViewController *)self featureFlags];
        if ([featureFlags3 receptionistEnabled])
        {
        }

        else
        {
          featureFlags4 = [(PHAudioCallViewController *)self featureFlags];
          lVMEverywhere2 = [featureFlags4 LVMEverywhere];

          if (!lVMEverywhere2)
          {
            view56 = [(PHAudioCallViewController *)self view];
            trailingAnchor6 = [view56 trailingAnchor];
            bottomBar4 = [(PHAudioCallViewController *)self screeningViewController];
            mainButtonLayoutGuide3 = [bottomBar4 view];
            [mainButtonLayoutGuide3 trailingAnchor];
            v466 = v263View = trailingAnchor6;
            v463 = [trailingAnchor6 constraintEqualToAnchor:v269 * 0.102 constant:?];
            v582[0] = v463;
            screeningViewController10 = [(PHAudioCallViewController *)self screeningViewController];
            view49 = [screeningViewController10 view];
            leadingAnchor6 = [view49 leadingAnchor];
            view50 = [(PHAudioCallViewController *)self view];
            [view50 leadingAnchor];
            safeAreaLayoutGuide = v454 = leadingAnchor6;
            v445 = [leadingAnchor6 constraintEqualToAnchor:v269 * 0.102 constant:?];
            v582[1] = v445;
            bottomBar5 = [(PHCallViewController *)self bottomBar];
            screeningViewController11 = [bottomBar5 mainButtonLayoutGuide];
            topAnchor6 = [screeningViewController11 topAnchor];
            screeningViewController13 = [(PHAudioCallViewController *)self screeningViewController];
            callParticipantsViewController5 = [screeningViewController13 view];
            [callParticipantsViewController5 bottomAnchor];
            view52 = view51 = topAnchor6;
            v425 = [topAnchor6 constraintEqualToAnchor:v268 * 0.0425 constant:?];
            v582[2] = v425;
            screeningViewController14 = [(PHAudioCallViewController *)self screeningViewController];
            screeningViewController12 = [screeningViewController14 view];
            [screeningViewController12 topAnchor];
            v252 = v283 = self;
            bottomAnchor3 = [v252 constraintEqualToAnchor:centerYAnchor2 constant:v268 * 0.0475];
            v582[3] = bottomAnchor3;
            v284 = v582;
LABEL_109:
            view53 = [NSArray arrayWithObjects:v284 count:4];
            v259 = v283;
            bottomAnchor4 = [(PHAudioCallViewController *)v283 screeningConstraints];
            [bottomAnchor4 setConstraintsStatePrimary:view53];
            goto LABEL_110;
          }
        }

        translationLayoutGuide = [(PHAudioCallViewController *)self translationLayoutGuide];

        if (translationLayoutGuide)
        {
          translationLayoutGuide2 = [(PHAudioCallViewController *)self translationLayoutGuide];
          topAnchor7 = [translationLayoutGuide2 topAnchor];

          centerYAnchor2 = topAnchor7;
        }

        view56 = [(PHAudioCallViewController *)self screeningViewController];
        v263View = [view56 view];
        trailingAnchor7 = [v263View trailingAnchor];
        mainButtonLayoutGuide3 = [(PHAudioCallViewController *)self view];
        [mainButtonLayoutGuide3 trailingAnchor];
        v466 = bottomBar4 = trailingAnchor7;
        v463 = [trailingAnchor7 constraintEqualToAnchor:?];
        v583[0] = v463;
        screeningViewController10 = [(PHAudioCallViewController *)self screeningViewController];
        view49 = [screeningViewController10 view];
        leadingAnchor7 = [view49 leadingAnchor];
        view50 = [(PHAudioCallViewController *)self view];
        [view50 leadingAnchor];
        safeAreaLayoutGuide = v454 = leadingAnchor7;
        v445 = [leadingAnchor7 constraintEqualToAnchor:?];
        v583[1] = v445;
        bottomBar5 = [(PHCallViewController *)self bottomBar];
        screeningViewController11 = [bottomBar5 mainButtonLayoutGuide];
        topAnchor8 = [screeningViewController11 topAnchor];
        screeningViewController13 = [(PHAudioCallViewController *)self screeningViewController];
        callParticipantsViewController5 = [screeningViewController13 view];
        [callParticipantsViewController5 bottomAnchor];
        view52 = view51 = topAnchor8;
        v425 = [topAnchor8 constraintEqualToAnchor:11.0 constant:?];
        v583[2] = v425;
        screeningViewController14 = [(PHAudioCallViewController *)self screeningViewController];
        screeningViewController12 = [screeningViewController14 view];
        [screeningViewController12 topAnchor];
        v252 = v283 = self;
        bottomAnchor3 = [v252 constraintEqualToAnchor:centerYAnchor2];
        v583[3] = bottomAnchor3;
        v284 = v583;
        goto LABEL_109;
      }
    }

    [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
    view41 = [(PHAudioCallViewController *)self screeningContainerView];
    goto LABEL_88;
  }

  if (!stateCopy)
  {
    callParticipantsViewController6 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController6 resetNameOverrideString];

    callDisplayStyleManager4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager4 callDisplayStyle] == 3)
    {
      v106 = v23;
      features2 = [(PHAudioCallViewController *)self features];
      if ([features2 isDominoEnabled])
      {
        middleViewState = [(PHAudioCallViewController *)self middleViewState];

        v23 = v106;
        if (middleViewState == 1)
        {
          bottomBar6 = [(PHCallViewController *)self bottomBar];
          [bottomBar6 setAlpha:1.0];

          buttonsViewController3 = [(PHAudioCallViewController *)self buttonsViewController];
          [buttonsViewController3 setUpdatesPaused:1];

          buttonsViewController4 = [(PHAudioCallViewController *)self buttonsViewController];
          bottomBar7 = [(PHCallViewController *)self bottomBar];
          v521[0] = _NSConcreteStackBlock;
          v521[1] = 3221225472;
          v521[2] = sub_1001282D4;
          v521[3] = &unk_1003591D0;
          v521[4] = self;
          v522 = currentMiddleView;
          v523 = v22;
          [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:buttonsViewController4 to:bottomBar7 allowRoll:0 completion:v521];

          v23 = v106;
          view21 = 0;
          goto LABEL_211;
        }

        goto LABEL_60;
      }

      v23 = v106;
    }

LABEL_60:
    selfCopy15 = self;
    v519[0] = _NSConcreteStackBlock;
    v519[1] = 3221225472;
    v519[2] = sub_10012835C;
    v519[3] = &unk_100356988;
    v177 = currentMiddleView;
    v520 = v177;
    v45 = objc_retainBlock(v519);
    v516[0] = _NSConcreteStackBlock;
    v516[1] = 3221225472;
    v516[2] = sub_100128368;
    v516[3] = &unk_100357E30;
    v517 = v177;
    v518 = v22;
    v176 = objc_retainBlock(v516);

    view21 = 0;
    v141 = v520;
    goto LABEL_61;
  }

  v49 = v48;
  if (stateCopy != 1)
  {
    if (stateCopy != 2)
    {
      v45 = 0;
      goto LABEL_228;
    }

    v491 = v23;
    keypadViewController = [(PHAudioCallViewController *)self keypadViewController];
    view57 = [keypadViewController view];
    superview5 = [view57 superview];

    if (superview5)
    {
      goto LABEL_128;
    }

    v477 = currentMiddleView;
    v482 = v22;
    view58 = [(PHAudioCallViewController *)self view];
    keypadViewController2 = [(PHAudioCallViewController *)self keypadViewController];
    view59 = [keypadViewController2 view];
    [view58 addSubview:view59];

    v56 = +[UIColor clearColor];
    keypadViewController3 = [(PHAudioCallViewController *)self keypadViewController];
    view60 = [keypadViewController3 view];
    [view60 setBackgroundColor:v56];

    keypadViewController4 = [(PHAudioCallViewController *)self keypadViewController];
    view61 = [keypadViewController4 view];
    [view61 setTranslatesAutoresizingMaskIntoConstraints:0];

    view62 = [(PHAudioCallViewController *)self view];
    keypadViewController5 = [(PHAudioCallViewController *)self keypadViewController];
    view63 = [keypadViewController5 view];
    view64 = [(PHAudioCallViewController *)self view];
    v65 = [NSLayoutConstraint constraintWithItem:view63 attribute:9 relatedBy:0 toItem:view64 attribute:9 multiplier:1.0 constant:0.0];
    [view62 addConstraint:v65];

    v66 = +[PHInCallUtilities sharedInstance];
    LOBYTE(view62) = [v66 isIPadIdiom];

    if ((view62 & 1) == 0)
    {
      v178 = +[UIScreen mainScreen];
      [v178 bounds];
      v180 = v179;
      v182 = v181;

      if (v180 >= v182)
      {
        v183 = v182;
      }

      else
      {
        v183 = v180;
      }

      if (v180 < v182)
      {
        v180 = v182;
      }

      +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
      v185 = v184 * v180;
      *&v184 = v183 * 0.1976;
      v186 = roundf(*&v184);
      +[PHUIConfiguration distanceBetweenEndButtonAndKeyPadLastRow];
      v188 = v180 * v187;
      +[TPNumberPadButton verticalPadding];
      v190 = v188 + v185 + v186 - v189;
      keypadViewController6 = [(PHAudioCallViewController *)self keypadViewController];
      view65 = [keypadViewController6 view];
      view66 = [(PHAudioCallViewController *)self view];
      v70 = [NSLayoutConstraint constraintWithItem:view65 attribute:4 relatedBy:0 toItem:view66 attribute:4 multiplier:1.0 constant:-v190];

      goto LABEL_68;
    }

    if (+[PHUIConfiguration usesMiddleCenteringView])
    {
      keypadViewController7 = [(PHAudioCallViewController *)self keypadViewController];
      view67 = [keypadViewController7 view];
      middleSizingView8 = [(PHAudioCallViewController *)self middleSizingView];
      v70 = [NSLayoutConstraint constraintWithItem:view67 attribute:10 relatedBy:0 toItem:middleSizingView8 attribute:10 multiplier:1.0 constant:0.0];

      LODWORD(v71) = 1144750080;
      [v70 setPriority:v71];
LABEL_68:
      view68 = [(PHAudioCallViewController *)self view];
      [view68 addConstraint:v70];
LABEL_127:

      currentMiddleView = v477;
      v22 = v482;
LABEL_128:
      features3 = [(PHAudioCallViewController *)self features];
      isDialPadEnabled = [features3 isDialPadEnabled];

      bottomBar8 = [(PHCallViewController *)self bottomBar];
      v312 = bottomBar8;
      if (isDialPadEnabled)
      {
        [bottomBar8 setCurrentState:19 animated:0 animationCompletionBlock:0];

        [(PHAudioCallViewController *)self hideOrShowKeypadBackgroundView];
        [(PHAudioCallViewController *)self updateEnhancedEmergencyViewWhenKeypadPresented];
      }

      else
      {
        [bottomBar8 setCurrentState:19 animated:1 animationCompletionBlock:0];
      }

      keypadViewController8 = [(PHAudioCallViewController *)self keypadViewController];
      view21 = [keypadViewController8 view];

      participantsViewTopConstraint2 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      +[PHUIConfiguration yParticipantsViewAdjustmentForKeypad];
      v316 = v315;
      [participantsViewTopConstraint2 constant];
      [participantsViewTopConstraint2 setConstant:v317 - v316];

      if ([(PHAudioCallViewController *)self middleViewState]== 1)
      {
        v318 = +[PHInCallUtilities sharedInstance];
        isIPadIdiom = [v318 isIPadIdiom];

        if (isIPadIdiom)
        {
          CGAffineTransformMakeScale(&v545, 0.100000001, 0.100000001);
          buf = v545;
          [view21 setTransform:&buf];
        }

        [view21 setAlpha:0.0];
        v542[0] = _NSConcreteStackBlock;
        v542[1] = 3221225472;
        v542[2] = sub_100127FB0;
        v542[3] = &unk_100357110;
        v320 = currentMiddleView;
        v543 = v320;
        view21 = view21;
        v544 = view21;
        v45 = objc_retainBlock(v542);
        v539[0] = _NSConcreteStackBlock;
        v539[1] = 3221225472;
        v539[2] = sub_100128070;
        v539[3] = &unk_100357E30;
        v540 = v320;
        v541 = v22;
        v321 = objc_retainBlock(v539);

        bottomBar9 = +[PHInCallUtilities sharedInstance];
        if ([bottomBar9 isIPadIdiom])
        {
          v323 = v22;
          callDisplayStyleManager5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          if ([callDisplayStyleManager5 callDisplayStyle] != 3)
          {

            v22 = v323;
            goto LABEL_143;
          }

          features4 = [(PHAudioCallViewController *)self features];
          isDominoEnabled2 = [features4 isDominoEnabled];

          v22 = v323;
          if (!isDominoEnabled2)
          {
            goto LABEL_144;
          }
        }

        else
        {
        }

        bottomBar9 = [(PHCallViewController *)self bottomBar];
        [bottomBar9 setAlpha:1.0];
LABEL_143:

LABEL_144:
        selfCopy15 = self;

        v141 = v543;
LABEL_205:
        v23 = v321;
        goto LABEL_220;
      }

      goto LABEL_138;
    }

    features5 = [(PHAudioCallViewController *)self features];
    isDialPadEnabled2 = [features5 isDialPadEnabled];

    v227 = +[PHUIConfiguration inCallControlSpacing];
    v228 = v227 == 5;
    if (isDialPadEnabled2)
    {
      if (v227 == 5)
      {
        v229 = 52.0;
LABEL_118:
        if (v49)
        {
          if (+[PHUIConfiguration inCallControlSpacing]== 5)
          {
            v229 = 32.0;
          }

          else
          {
            v229 = 0.0;
          }
        }

        [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
        keypadViewController9 = [(PHAudioCallViewController *)self keypadViewController];
        view69 = [keypadViewController9 view];
        centerYAnchor3 = [view69 centerYAnchor];
        view70 = [(PHAudioCallViewController *)self view];
        centerYAnchor4 = [view70 centerYAnchor];
        v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:v229];

        features6 = [(PHAudioCallViewController *)self features];
        shouldEmbedSwapBanner = [features6 shouldEmbedSwapBanner];
        LODWORD(v299) = 1144750080;
        if (shouldEmbedSwapBanner)
        {
          *&v299 = 250.0;
        }

        [v70 setPriority:v299];

        v586[0] = v70;
        view68 = [(PHAudioCallViewController *)self keypadViewController];
        v194View = [view68 view];
        bottomAnchor5 = [v194View bottomAnchor];
        bottomBar10 = [(PHCallViewController *)self bottomBar];
        topLayoutGuide2 = [bottomBar10 topLayoutGuide];
        topAnchor9 = [topLayoutGuide2 topAnchor];
        v304 = +[PHUIConfiguration inCallControlSpacing];
        v305 = -4.0;
        if (v304 > 1)
        {
          v305 = -9.0;
        }

        [bottomAnchor5 constraintLessThanOrEqualToAnchor:topAnchor9 constant:v305];
        v307 = v306 = self;
        v586[1] = v307;
        v308 = [NSArray arrayWithObjects:v586 count:2];
        [NSLayoutConstraint activateConstraints:v308];

        self = v306;
        stateCopy = 2;
        goto LABEL_127;
      }

      v228 = +[PHUIConfiguration inCallControlSpacing]== 0;
      v291 = -5.0;
    }

    else
    {
      v291 = 16.0;
    }

    if (v228)
    {
      v229 = v291;
    }

    else
    {
      v229 = 0.0;
    }

    goto LABEL_118;
  }

  v492 = v23;
  buttonsViewController5 = [(PHAudioCallViewController *)self buttonsViewController];
  view71 = [buttonsViewController5 view];
  superview6 = [view71 superview];

  if (superview6)
  {
    goto LABEL_149;
  }

  view72 = [(PHAudioCallViewController *)self view];
  buttonsViewController6 = [(PHAudioCallViewController *)self buttonsViewController];
  view73 = [buttonsViewController6 view];
  [view72 addSubview:view73];

  buttonsViewController7 = [(PHAudioCallViewController *)self buttonsViewController];
  view74 = [buttonsViewController7 view];
  [view74 setTranslatesAutoresizingMaskIntoConstraints:0];

  callDisplayStyleManager6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v485 = v22;
  v151 = currentMiddleView;
  v152 = stateCopy;
  if ([callDisplayStyleManager6 callDisplayStyle] != 3)
  {

    goto LABEL_70;
  }

  features7 = [(PHAudioCallViewController *)self features];
  isDominoEnabled3 = [features7 isDominoEnabled];

  if (!isDominoEnabled3)
  {
LABEL_70:
    view75 = [(PHAudioCallViewController *)self view];
    buttonsViewController8 = [(PHAudioCallViewController *)self buttonsViewController];
    view76 = [buttonsViewController8 view];
    view77 = [(PHAudioCallViewController *)self view];
    centerXAnchor3 = [NSLayoutConstraint constraintWithItem:view76 attribute:9 relatedBy:0 toItem:view77 attribute:9 multiplier:1.0 constant:0.0];
    [view75 addConstraint:centerXAnchor3];
    goto LABEL_71;
  }

  view75 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  buttonsViewController8 = [view75 centerXAnchor];
  view76 = [(PHAudioCallViewController *)self buttonsViewController];
  view77 = [view76 view];
  centerXAnchor3 = [view77 centerXAnchor];
  v160 = [buttonsViewController8 constraintEqualToAnchor:centerXAnchor3];
  [v160 setActive:1];

LABEL_71:
  [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  buttonsViewBottomConstraint = [(PHAudioCallViewController *)self buttonsViewBottomConstraint];

  stateCopy = v152;
  currentMiddleView = v151;
  v22 = v485;
  v24 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (buttonsViewBottomConstraint)
  {
    goto LABEL_149;
  }

  if (PHUIInCallControlAlignmentIs())
  {
    v196 = v151;
    view78 = [(PHAudioCallViewController *)self view];
    buttonsViewController9 = [(PHAudioCallViewController *)self buttonsViewController];
    view79 = [buttonsViewController9 view];
    view80 = [(PHAudioCallViewController *)self view];
    v201 = 0.326797396;
    v202 = 0.0;
    v203 = view79;
    v204 = 3;
    v205 = view80;
    v206 = 4;
  }

  else
  {
    if (PHUIInCallControlAlignmentIs())
    {
      v196 = v151;
      view78 = [(PHAudioCallViewController *)self view];
      buttonsViewController9 = [(PHAudioCallViewController *)self buttonsViewController];
      view79 = [buttonsViewController9 view];
      view80 = [(PHAudioCallViewController *)self view];
      v201 = 1.0;
      v202 = -12.0;
    }

    else if (PHUIInCallControlAlignmentIs())
    {
      v196 = v151;
      view78 = [(PHAudioCallViewController *)self view];
      buttonsViewController9 = [(PHAudioCallViewController *)self buttonsViewController];
      view79 = [buttonsViewController9 view];
      view80 = [(PHAudioCallViewController *)self view];
      v201 = 1.0;
      v202 = -2.0;
    }

    else
    {
      if (!PHUIInCallControlAlignmentIs())
      {
        goto LABEL_149;
      }

      v196 = v151;
      view78 = [(PHAudioCallViewController *)self view];
      buttonsViewController9 = [(PHAudioCallViewController *)self buttonsViewController];
      view79 = [buttonsViewController9 view];
      view80 = [(PHAudioCallViewController *)self view];
      v201 = 1.0;
      v202 = 2.0;
    }

    v203 = view79;
    v204 = 10;
    v205 = view80;
    v206 = 10;
  }

  v326 = [NSLayoutConstraint constraintWithItem:v203 attribute:v204 relatedBy:0 toItem:v205 attribute:v206 multiplier:v201 constant:v202];
  [view78 addConstraint:v326];

  currentMiddleView = v196;
  v22 = v485;
  v24 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
LABEL_149:
  callParticipantsViewController7 = [(PHAudioCallViewController *)self callParticipantsViewController];
  [callParticipantsViewController7 resetNameOverrideString];

  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  callDisplayStyleManager7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager7 callDisplayStyle] == 3)
  {
    features8 = [(PHAudioCallViewController *)self features];
    isDominoEnabled4 = [features8 isDominoEnabled];

    if (isDominoEnabled4)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
      goto LABEL_154;
    }
  }

  else
  {
  }

  callParticipantsViewController8 = [(PHAudioCallViewController *)self callParticipantsViewController];
  view81 = [callParticipantsViewController8 view];
  [view81 setNeedsLayout];

  callParticipantsViewController9 = [(PHAudioCallViewController *)self callParticipantsViewController];
  view82 = [callParticipantsViewController9 view];
  [view82 layoutIfNeeded];

LABEL_154:
  if (!v49)
  {
    callDisplayStyleManager8 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager8 callDisplayStyle])
    {
      v339 = v24;
      v340 = v22;
      callDisplayStyleManager9 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager9 callDisplayStyle] == 3)
      {
        features9 = [(PHAudioCallViewController *)self features];
        v343 = [features9 isDominoEnabled] ^ 1;
      }

      else
      {
        v343 = 1;
      }

      v22 = v340;
      v24 = v339;
    }

    else
    {
      v343 = 0;
    }

    features10 = [(PHAudioCallViewController *)self features];
    v345 = v24;
    if ([features10 isDialPadEnabled])
    {
      bottomBar11 = [(PHCallViewController *)self bottomBar];
      v347 = [bottomBar11 currentState] != 19;

      v343 = v347 & v343;
    }

    else
    {
    }

    v348 = v22;
    callDisplayStyleManager10 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager10 callDisplayStyle] == 3)
    {
      features11 = [(PHAudioCallViewController *)self features];
      isDominoEnabled5 = [features11 isDominoEnabled];

      if (isDominoEnabled5)
      {
        goto LABEL_171;
      }
    }

    else
    {
    }

    bottomBar12 = [(PHCallViewController *)self bottomBar];
    [bottomBar12 setCurrentState:11 animated:v343 animationCompletionBlock:0];

LABEL_171:
    features12 = [(PHAudioCallViewController *)self features];
    v23 = v492;
    if (![features12 isDialPadEnabled])
    {

      v22 = v348;
      v24 = v345;
      goto LABEL_175;
    }

    middleViewState2 = [(PHAudioCallViewController *)self middleViewState];

    v22 = v348;
    v24 = v345;
    if (!middleViewState2)
    {
      goto LABEL_175;
    }

LABEL_173:
    [(PHAudioCallViewController *)self hideOrShowKeypadBackgroundView];
    goto LABEL_175;
  }

  bottomBar13 = [(PHCallViewController *)self bottomBar];
  [bottomBar13 setCurrentState:22];

  features13 = [(PHAudioCallViewController *)self features];
  isDialPadEnabled3 = [features13 isDialPadEnabled];

  v23 = v492;
  if (isDialPadEnabled3)
  {
    goto LABEL_173;
  }

LABEL_175:
  buttonsViewController10 = [(PHAudioCallViewController *)self buttonsViewController];
  view21 = [buttonsViewController10 view];

  if (![(PHAudioCallViewController *)self middleViewState])
  {
    v481 = currentMiddleView;
    v487 = v22;
    callCenter = [(PHAudioCallViewController *)self callCenter];
    [callCenter currentCallGroups];
    v141 = v368 = self;

    v369 = [v141 count];
    callCenter2 = [(PHAudioCallViewController *)v368 callCenter];
    currentVideoCallCount = [callCenter2 currentVideoCallCount];

    callDisplayStyleManager11 = [(PHAudioCallViewController *)v368 callDisplayStyleManager];
    if ([callDisplayStyleManager11 callDisplayStyle] == 3)
    {
      selfCopy15 = v368;
      features14 = [(PHAudioCallViewController *)v368 features];
      isDominoEnabled6 = [features14 isDominoEnabled];

      if (isDominoEnabled6)
      {
        [view21 setAlpha:1.0];
        if (animatedCopy)
        {
          v375 = &v369[currentVideoCallCount] < 2;
          bottomBar14 = [(PHCallViewController *)selfCopy15 bottomBar];
          buttonsViewController11 = [(PHAudioCallViewController *)selfCopy15 buttonsViewController];
          v578[0] = _NSConcreteStackBlock;
          v578[1] = 3221225472;
          v578[2] = sub_1001279C4;
          v578[3] = &unk_1003569B0;
          v578[4] = selfCopy15;
          [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:bottomBar14 to:buttonsViewController11 allowRoll:v375 completion:v578];
        }

        else
        {
          bottomBar15 = [(PHCallViewController *)selfCopy15 bottomBar];
          [bottomBar15 setCurrentState:11 animated:0 animationCompletionBlock:0];

          [(PHAudioCallViewController *)selfCopy15 updateBottomBarAlphaWithCurrentState:[(PHCallViewController *)selfCopy15 currentState]];
        }

        v45 = 0;
        currentMiddleView = v481;
        v22 = v487;
LABEL_214:
        v23 = v492;
        goto LABEL_220;
      }
    }

    else
    {
      selfCopy15 = v368;
    }

    [view21 setAlpha:0.0];
    v576[0] = _NSConcreteStackBlock;
    v576[1] = 3221225472;
    v576[2] = sub_100127A30;
    v576[3] = &unk_100356988;
    view21 = view21;
    v577 = view21;
    v384 = objc_retainBlock(v576);
    callDisplayStyleManager12 = [(PHAudioCallViewController *)selfCopy15 callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager12 callDisplayStyle];

    v22 = v487;
    if (callDisplayStyle2)
    {
      v45 = objc_retainBlock(v384);
      currentMiddleView = v481;
    }

    else
    {
      v389 = sub_100004F84(v387);
      currentMiddleView = v481;
      if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v389, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
      }

      [(PHAudioCallViewController *)selfCopy15 setPendingMiddleViewAnimations:v384];
      v45 = 0;
    }

    goto LABEL_214;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 2)
  {
    participantsViewTopConstraint3 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v24[80] yParticipantsViewAdjustmentForKeypad];
    v358 = v357;
    [participantsViewTopConstraint3 constant];
    [participantsViewTopConstraint3 setConstant:v358 + v359];

    v360 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom2 = [v360 isIPadIdiom];

    if (isIPadIdiom2)
    {
      CGAffineTransformMakeScale(&v575, 1.20000005, 1.20000005);
      buf = v575;
      [view21 setTransform:&buf];
    }

    [view21 setAlpha:0.0];
    v572[0] = _NSConcreteStackBlock;
    v572[1] = 3221225472;
    v572[2] = sub_100127A3C;
    v572[3] = &unk_100357110;
    view21 = view21;
    v573 = view21;
    v362 = currentMiddleView;
    v574 = v362;
    v45 = objc_retainBlock(v572);
    v569[0] = _NSConcreteStackBlock;
    v569[1] = 3221225472;
    v569[2] = sub_100127AFC;
    v569[3] = &unk_100357E30;
    v570 = v362;
    v571 = v22;
    v321 = objc_retainBlock(v569);

    bottomBar16 = +[PHInCallUtilities sharedInstance];
    if ([bottomBar16 isIPadIdiom])
    {
      v364 = v22;
      callDisplayStyleManager13 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager13 callDisplayStyle] != 3)
      {

        v22 = v364;
        goto LABEL_203;
      }

      features15 = [(PHAudioCallViewController *)self features];
      isDominoEnabled7 = [features15 isDominoEnabled];

      v22 = v364;
      if (!isDominoEnabled7)
      {
        goto LABEL_204;
      }
    }

    else
    {
    }

    bottomBar16 = [(PHCallViewController *)self bottomBar];
    [bottomBar16 setAlpha:0.0];
LABEL_203:

LABEL_204:
    selfCopy15 = self;

    v141 = v573;
    goto LABEL_205;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 4)
  {
    callDisplayStyleManager14 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager14 callDisplayStyle] == 3)
    {
      features16 = [(PHAudioCallViewController *)self features];
      isDominoEnabled8 = [features16 isDominoEnabled];

      if (isDominoEnabled8)
      {
        bottomBar17 = [(PHCallViewController *)self bottomBar];
        buttonsViewController12 = [(PHAudioCallViewController *)self buttonsViewController];
        v568[0] = _NSConcreteStackBlock;
        v568[1] = 3221225472;
        v568[2] = sub_100127BA0;
        v568[3] = &unk_1003569B0;
        v568[4] = self;
        [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:bottomBar17 to:buttonsViewController12 allowRoll:1 completion:v568];

        v566[0] = _NSConcreteStackBlock;
        v566[1] = 3221225472;
        v566[2] = sub_100127C10;
        v566[3] = &unk_100356988;
        v567 = currentMiddleView;
        v45 = objc_retainBlock(v566);
        v383 = v567;
LABEL_219:

        v558[0] = _NSConcreteStackBlock;
        v558[1] = 3221225472;
        v558[2] = sub_100127CB0;
        v558[3] = &unk_100357978;
        v559 = currentMiddleView;
        v561 = v22;
        selfCopy15 = self;
        selfCopy13 = self;
        v23 = objc_retainBlock(v558);

        v141 = v559;
LABEL_220:

        self = selfCopy15;
        if (v45)
        {
          if (animatedCopy)
          {
            v401 = v23;
            v402 = +[PHInCallUtilities sharedInstance];
            isIPadIdiom3 = [v402 isIPadIdiom];

            if (isIPadIdiom3)
            {
              v496[0] = _NSConcreteStackBlock;
              v496[1] = 3221225472;
              v496[2] = sub_10012885C;
              v496[3] = &unk_100356D38;
              v45 = v45;
              v497 = v45;
              v23 = v401;
              [UIView animateWithDuration:v496 animations:v401 completion:0.200000003];
              v404 = v497;
            }

            else
            {
              view83 = [(PHAudioCallViewController *)self view];
              v498[0] = _NSConcreteStackBlock;
              v498[1] = 3221225472;
              v498[2] = sub_10012884C;
              v498[3] = &unk_100356D38;
              v45 = v45;
              v499 = v45;
              v23 = v401;
              [UIView transitionWithView:view83 duration:5242880 options:v498 animations:v401 completion:0.200000003];

              v404 = v499;
            }
          }

          else
          {
            (v45[2])(v45);
            if (v23)
            {
              (v23[2])(v23, 1);
            }
          }
        }

        goto LABEL_228;
      }
    }

    else
    {
    }

    participantsViewTopConstraint4 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v24[80] yParticipantsViewAdjustmentForKeypad];
    v392 = v391;
    [participantsViewTopConstraint4 constant];
    [participantsViewTopConstraint4 setConstant:v392 + v393];

    CGAffineTransformMakeScale(&v565, 1.20000005, 1.20000005);
    buf = v565;
    [view21 setTransform:&buf];
    [view21 setAlpha:0.0];
    v562[0] = _NSConcreteStackBlock;
    v562[1] = 3221225472;
    v562[2] = sub_100127C1C;
    v562[3] = &unk_100357110;
    v563 = view21;
    v564 = currentMiddleView;
    v394 = objc_retainBlock(v562);
    callDisplayStyleManager15 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle3 = [callDisplayStyleManager15 callDisplayStyle];

    if (callDisplayStyle3)
    {
      v45 = objc_retainBlock(v394);
    }

    else
    {
      v400 = sub_100004F84(v397);
      if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
      }

      [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:v394];
      v45 = 0;
    }

    v383 = v563;
    goto LABEL_219;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 3)
  {
    selfCopy15 = self;
    [view21 setAlpha:0.0];
    v555[0] = _NSConcreteStackBlock;
    v555[1] = 3221225472;
    v555[2] = sub_100127E60;
    v555[3] = &unk_100357110;
    v388 = currentMiddleView;
    v556 = v388;
    view21 = view21;
    v557 = view21;
    v45 = objc_retainBlock(v555);
    v552[0] = _NSConcreteStackBlock;
    v552[1] = 3221225472;
    v552[2] = sub_100127EA4;
    v552[3] = &unk_100357E30;
    v553 = v388;
    v554 = v22;
    v176 = objc_retainBlock(v552);

    v141 = v556;
    goto LABEL_61;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 5)
  {
    selfCopy15 = self;
    [view21 setAlpha:0.0];
    v549[0] = _NSConcreteStackBlock;
    v549[1] = 3221225472;
    v549[2] = sub_100127F08;
    v549[3] = &unk_100357110;
    v398 = currentMiddleView;
    v550 = v398;
    view21 = view21;
    v551 = view21;
    v45 = objc_retainBlock(v549);
    v546[0] = _NSConcreteStackBlock;
    v546[1] = 3221225472;
    v546[2] = sub_100127F4C;
    v546[3] = &unk_100357E30;
    v547 = v398;
    v548 = v22;
    v176 = objc_retainBlock(v546);

    v141 = v550;
    goto LABEL_61;
  }

LABEL_211:
  v45 = 0;
LABEL_228:
  self->_middleViewState = stateCopy;
  [(PHAudioCallViewController *)self updateDimmingView];
  [(PHAudioCallViewController *)self setCurrentMiddleView:view21];
  [(PHAudioCallViewController *)self refreshUseRTTButton];
  [(PHAudioCallViewController *)self refreshExtensionNumberButton];
  [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  topLeadingContainer2 = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:topLeadingContainer2];

  if (self->_waitOnHoldTipView && [(PHCallViewController *)self currentState]== 4 && ([(PHAudioCallViewController *)self middleViewState]== 2 || [(PHAudioCallViewController *)self middleViewState]== 1))
  {
    [(PHAudioCallViewController *)self displayWaitOnHoldTip];
  }

  features17 = [(PHAudioCallViewController *)self features];
  if ([features17 sharePlayInCallsEnabled])
  {
    screenSharingIndicatorView = self->_screenSharingIndicatorView;

    v411 = v488;
    if (screenSharingIndicatorView)
    {
      [(PHAudioCallViewController *)self displayScreenSharingIndicator];
      [(UIView *)self->_screenSharingIndicatorView setHidden:[(PHAudioCallViewController *)self middleViewState]!= 1];
    }
  }

  else
  {

    v411 = v488;
  }

LABEL_238:
  [(PHAudioCallViewController *)self updateDimmingValuesFor:stateCopy];
}

- (PHInCallKeypadViewController)keypadViewController
{
  keypadViewController = self->_keypadViewController;
  if (!keypadViewController)
  {
    v4 = objc_alloc_init(PHInCallKeypadViewController);
    v5 = self->_keypadViewController;
    self->_keypadViewController = v4;

    [(PHAudioCallViewController *)self addChildViewController:self->_keypadViewController];
    keypadViewController = self->_keypadViewController;
  }

  return keypadViewController;
}

- (id)screeningContainerView
{
  screeningBackgroundView = [(PHAudioCallViewController *)self screeningBackgroundView];
  if (screeningBackgroundView)
  {
    v4 = screeningBackgroundView;
    screeningBackgroundView2 = [(PHAudioCallViewController *)self screeningBackgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      screeningBackgroundView3 = [(PHAudioCallViewController *)self screeningBackgroundView];
LABEL_7:
      v12 = screeningBackgroundView3;
      contentView = [screeningBackgroundView3 contentView];

      goto LABEL_9;
    }
  }

  defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
  if (defaultBackgroundGradientView)
  {
    v9 = defaultBackgroundGradientView;
    defaultBackgroundGradientView2 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      screeningBackgroundView3 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      goto LABEL_7;
    }
  }

  contentView = [(PHAudioCallViewController *)self viewIfLoaded];
LABEL_9:

  return contentView;
}

- (double)screeningTextFieldPadding
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  if (bottomBar && (v4 = bottomBar, -[PHCallViewController bottomBar](self, "bottomBar"), v5 = objc_claimAutoreleasedReturnValue(), [v5 trackSize], v7 = v6, v5, v4, v7 > 0.0))
  {
    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 trackSize];
    v10 = v9;

    view = [(PHAudioCallViewController *)self view];
    [view bounds];
    v13 = (v12 - v10) * 0.5;

    if (v13 < 0.0)
    {
      return 0.0;
    }
  }

  else
  {
    bottomBar3 = [(PHCallViewController *)self bottomBar];
    mainButtonLayoutGuide = [bottomBar3 mainButtonLayoutGuide];

    if (mainButtonLayoutGuide)
    {
      bottomBar4 = [(PHCallViewController *)self bottomBar];
      mainButtonLayoutGuide2 = [bottomBar4 mainButtonLayoutGuide];
      [mainButtonLayoutGuide2 frame];
      v13 = v18;
    }

    else
    {
      return 0.0;
    }
  }

  return v13;
}

- (UIViewController)screeningViewController
{
  screeningViewController = self->_screeningViewController;
  if (!screeningViewController)
  {
    featureFlags = [(PHAudioCallViewController *)self featureFlags];
    if ([featureFlags receptionistEnabled])
    {
      [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:1];
    }

    else
    {
      featureFlags2 = [(PHAudioCallViewController *)self featureFlags];
      -[PHAudioCallViewController setIsShowingNewTranscriptsView:](self, "setIsShowingNewTranscriptsView:", [featureFlags2 LVMEverywhere]);
    }

    if ([(PHAudioCallViewController *)self isShowingNewTranscriptsView])
    {
      [(PHAudioCallViewController *)self screeningTextFieldPadding];
      v7 = v6;
      makeViewComposer = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
      frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
      v10 = [makeViewComposer composeWithCall:frontmostCall createTextField:1 liveReply:-[PHAudioCallViewController sendToLiveReply](self textFieldPadding:{"sendToLiveReply"), v7}];
      v11 = self->_screeningViewController;
      self->_screeningViewController = v10;

      [(PHAudioCallViewController *)self setSendToLiveReply:0];
    }

    else
    {
      makeViewComposer2 = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
      frontmostCall2 = [(PHAudioCallViewController *)self frontmostCall];
      v14 = [makeViewComposer2 composeWithCall:frontmostCall2];
      v15 = self->_screeningViewController;
      self->_screeningViewController = v14;
    }

    [(PHAudioCallViewController *)self addChildViewController:self->_screeningViewController];
    screeningViewController = self->_screeningViewController;
  }

  return screeningViewController;
}

- (PHAudioCallControlsSupplementalButton)mergeCallsButton
{
  mergeCallsButton = self->_mergeCallsButton;
  if (!mergeCallsButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_mergeCallsButton;
    self->_mergeCallsButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_mergeCallsButton addTarget:self action:"mergeCallsButtonTapped" forEvents:64];
    v6 = self->_mergeCallsButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MERGE" value:&stru_100361FD0 table:@"InCallService"];
    [(PHAudioCallControlsSupplementalButton *)v6 setTitle:v8 forState:0];

    v9 = self->_mergeCallsButton;
    v10 = [UIImage symbolImageNamed:@"arrow.trianglehead.merge"];
    [(PHAudioCallControlsSupplementalButton *)v9 setImage:v10 forState:0];

    mergeCallsButton = self->_mergeCallsButton;
  }

  return mergeCallsButton;
}

- (SOSEmergencyCallVoiceLoopManager)voiceLoopManager
{
  voiceLoopManager = self->_voiceLoopManager;
  if (!voiceLoopManager)
  {
    v4 = [[SOSEmergencyCallVoiceLoopManager alloc] initWithReason:2];
    v5 = self->_voiceLoopManager;
    self->_voiceLoopManager = v4;

    [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager setDelegate:self];
    voiceLoopManager = self->_voiceLoopManager;
  }

  return voiceLoopManager;
}

- (PHAudioCallVoiceLoopViewController)voiceLoopViewController
{
  voiceLoopViewController = self->_voiceLoopViewController;
  if (!voiceLoopViewController)
  {
    v4 = objc_alloc_init(PHAudioCallVoiceLoopViewController);
    v5 = self->_voiceLoopViewController;
    self->_voiceLoopViewController = v4;

    [(PHAudioCallViewController *)self addChildViewController:self->_voiceLoopViewController];
    [(PHAudioCallVoiceLoopViewController *)self->_voiceLoopViewController setDelegate:self];
    voiceLoopViewController = self->_voiceLoopViewController;
  }

  return voiceLoopViewController;
}

- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar
{
  barCopy = bar;
  bottomBar = [(PHCallViewController *)self bottomBar];

  if (bottomBar == barCopy)
  {
    [(PHAudioCallViewController *)self performBottomBarActionType:performed];
  }

  else
  {
    v10 = sub_100004F84(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      performedCopy = performed;
      v13 = 2112;
      v14 = barCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown bottom bar %@", &v11, 0x16u);
    }
  }
}

- (void)performBottomBarActionType:(int64_t)type
{
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    v7 = [bottomBar nameForActionType:type];
    *buf = 138412290;
    v135 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  v8 = [NSNumber numberWithInteger:4];
  v9 = [NSNumber numberWithInteger:6];
  v10 = [NSNumber numberWithInteger:5];
  v11 = [NSNumber numberWithInteger:1];
  v12 = [NSNumber numberWithInteger:3];
  v13 = [NSArray arrayWithObjects:v8, v9, v10, v11, v12, 0];

  v14 = [NSNumber numberWithInteger:type];
  LODWORD(v9) = [v13 containsObject:v14];

  if (v9)
  {
    v15 = +[TUCallCenter sharedInstance];
    v16 = [v15 callsPassingTest:&stru_100359D10];
    firstObject = [v16 firstObject];

    if (firstObject && !self->_shouldIgnoreWaitOnHoldSessionState)
    {
      v133[0] = _NSConcreteStackBlock;
      v133[1] = 3221225472;
      v133[2] = sub_10012A10C;
      v133[3] = &unk_100359238;
      v133[4] = self;
      v133[5] = type;
      v18 = objc_retainBlock(v133);
      displayName = [firstObject displayName];
      [(PHAudioCallViewController *)self presentWaitOnHoldEndForAnotherCallAlertWithCallerName:displayName completionHandler:v18];

      goto LABEL_104;
    }
  }

  switch(type)
  {
    case 1:
      goto LABEL_32;
    case 2:
      inCallRootViewController = [(PHAudioCallViewController *)self inCallRootViewController];
      [inCallRootViewController requestInCallSceneTransitionToFullScreen];

LABEL_32:
      frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
      if ([frontmostCall wantsHoldMusic])
      {
        [frontmostCall resetWantsHoldMusic];
        [(PHAudioCallViewController *)self updateCurrentState];
      }

      else
      {
        callCenter = [(PHAudioCallViewController *)self callCenter];
        screeningCall = [callCenter screeningCall];

        usesCompactMulticallUI = [(PHAudioCallViewController *)self usesCompactMulticallUI];
        if (usesCompactMulticallUI)
        {
          prioritizedCall = [(PHAudioCallViewController *)self prioritizedCall];
          v91 = [screeningCall isEqualToCall:prioritizedCall];

          v92 = v91 ^ 1;
        }

        else
        {
          v92 = 0;
        }

        if (!screeningCall || (v92 & 1) != 0)
        {
          callCenter2 = [(PHAudioCallViewController *)self callCenter];
          incomingCall = [callCenter2 incomingCall];

          v108 = sub_100004F84(v107);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v135 = incomingCall;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@", buf, 0xCu);
          }

          if (-[PHAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[PHAudioCallViewController callCenter](self, "callCenter"), v109 = objc_claimAutoreleasedReturnValue(), [v109 currentCallGroups], v110 = objc_claimAutoreleasedReturnValue(), v111 = objc_msgSend(v110, "count") > 1, v110, v109, v111))
          {
            callCenter4 = [(PHAudioCallViewController *)self answerRequestForCall:incomingCall];
            callCenter3 = [(PHAudioCallViewController *)self callCenter];
            v113 = callCenter3;
            if (screeningCall)
            {
              [callCenter3 endActiveOrHeldAndAnswerWithRequest:callCenter4];
            }

            else
            {
              [callCenter3 holdActiveAndAnswerWithRequest:callCenter4];
            }

            analyticsReporter = [(PHAudioCallViewController *)self analyticsReporter];
            [analyticsReporter reportMultipleCallsWaitingUIAction:3];
          }

          else
          {
            callCenter4 = [(PHAudioCallViewController *)self callCenter];
            analyticsReporter = [(PHAudioCallViewController *)self answerRequestForCall:incomingCall];
            [callCenter4 answerWithRequest:analyticsReporter];
          }
        }

        else
        {
          v103 = sub_100004F84(usesCompactMulticallUI);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v135 = screeningCall;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
          }

          incomingCall = [(PHAudioCallViewController *)self answerRequestForCall:screeningCall];
          [incomingCall setBehavior:4];
          callCenter4 = [(PHAudioCallViewController *)self callCenter];
          [callCenter4 answerWithRequest:incomingCall];
        }
      }

      goto LABEL_102;
    case 4:
      callCenter5 = [(PHAudioCallViewController *)self callCenter];
      incomingCall2 = [callCenter5 incomingCall];
      mostRecentlyDisconnectedAudioCall = [(PHAudioCallViewController *)self answerRequestForCall:incomingCall2];

      callCenter6 = [(PHAudioCallViewController *)self callCenter];
      activeVideoCall = [callCenter6 activeVideoCall];

      callCenter7 = [(PHAudioCallViewController *)self callCenter];
      analyticsReporter2 = callCenter7;
      if (activeVideoCall)
      {
        [callCenter7 endActiveOrHeldAndAnswerWithRequest:mostRecentlyDisconnectedAudioCall];
      }

      else
      {
        isEndAndAnswerAllowed = [callCenter7 isEndAndAnswerAllowed];

        v122 = sub_100004F84(v121);
        v123 = os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT);
        if (isEndAndAnswerAllowed)
        {
          if (v123)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "BottomBar: Ending active and answering incoming call", buf, 2u);
          }

          callCenter8 = [(PHAudioCallViewController *)self callCenter];
          [callCenter8 endActiveOrHeldAndAnswerWithRequest:mostRecentlyDisconnectedAudioCall];
        }

        else
        {
          if (v123)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "BottomBar: Disconnecting all calls", buf, 2u);
          }

          callCenter8 = [(PHAudioCallViewController *)self callCenter];
          [callCenter8 disconnectAllCalls];
        }

        analyticsReporter2 = [(PHAudioCallViewController *)self analyticsReporter];
        [analyticsReporter2 reportMultipleCallsWaitingUIAction:2];
      }

      goto LABEL_97;
    case 5:
      callCenter9 = [(PHAudioCallViewController *)self callCenter];
      callCenter10 = [(PHAudioCallViewController *)self callCenter];
      incomingCall3 = [callCenter10 incomingCall];
      v46 = [(PHAudioCallViewController *)self answerRequestForCall:incomingCall3];
      [callCenter9 endHeldAndAnswerWithRequest:v46];

      break;
    case 6:
      callCenter11 = [(PHAudioCallViewController *)self callCenter];
      callCenter12 = [(PHAudioCallViewController *)self callCenter];
      incomingCall4 = [callCenter12 incomingCall];
      v50 = [(PHAudioCallViewController *)self answerRequestForCall:incomingCall4];
      [callCenter11 holdActiveAndAnswerWithRequest:v50];

      analyticsReporter3 = [(PHAudioCallViewController *)self analyticsReporter];
      [analyticsReporter3 reportMultipleCallsWaitingUIAction:3];

      break;
    case 7:
      declineCallService = [(PHAudioCallViewController *)self declineCallService];
      [declineCallService declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:&stru_100359D30];

      break;
    case 10:
      frontmostCall2 = [(PHAudioCallViewController *)self frontmostCall];
      [(PHAudioCallViewController *)self showBlockAlertForCall:frontmostCall2];

      break;
    case 11:
      frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
      if (frontmostCall)
      {
        if ([(PHCallViewController *)self currentState]== 11 || [(PHCallViewController *)self currentState]== 12)
        {
          [(PHAudioCallViewController *)self setMiddleViewState:0];
        }

        if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:frontmostCall])
        {
          [(PHAudioCallViewController *)self endWaitOnHoldSession];
        }

        callCenter13 = [(PHAudioCallViewController *)self callCenter];
        [callCenter13 disconnectCall:frontmostCall withReason:2];
      }

      goto LABEL_102;
    case 14:
    case 19:
    case 37:
      [(PHAudioCallViewController *)self setCurrentState:0];
      break;
    case 15:
      if ([(PHCallViewController *)self currentState]!= 10)
      {
        goto LABEL_11;
      }

      [(PHAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
      break;
    case 16:
      callCenter14 = [(PHAudioCallViewController *)self callCenter];
      [callCenter14 disconnectAllCalls];

      break;
    case 17:
      [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1];
      break;
    case 18:
      v76 = +[UIApplication sharedApplication];
      delegate = [v76 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

      if (mostRecentlyDisconnectedAudioCall)
      {
        analyticsReporter2 = [(PHAudioCallViewController *)self callCenter];
        dialRequestForRedial = [mostRecentlyDisconnectedAudioCall dialRequestForRedial];
        [analyticsReporter2 launchAppForDialRequest:dialRequestForRedial completion:0];
      }

      else
      {
        analyticsReporter2 = sub_100004F84(v78);
        if (os_log_type_enabled(analyticsReporter2, OS_LOG_TYPE_ERROR))
        {
          sub_1002565D8();
        }
      }

      goto LABEL_97;
    case 22:
      callCenter15 = [(PHAudioCallViewController *)self callCenter];
      routeController = [callCenter15 routeController];
      areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

      if (areAuxiliaryRoutesAvailable)
      {
        v36 = +[UIApplication sharedApplication];
        delegate2 = [v36 delegate];
        currentInCallScene = [delegate2 currentInCallScene];
        [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceAudioRouteButtonPress"];

        [(PHAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:1];
      }

      else
      {
        callCenter16 = [(PHAudioCallViewController *)self callCenter];
        routeController2 = [callCenter16 routeController];
        pickedRoute = [routeController2 pickedRoute];
        isSpeaker = [pickedRoute isSpeaker];

        callCenter17 = [(PHAudioCallViewController *)self callCenter];
        routeController3 = [callCenter17 routeController];
        v99 = routeController3;
        if (isSpeaker)
        {
          mostRecentlyDisconnectedAudioCall = [routeController3 routeForSpeakerDisable];

          if (mostRecentlyDisconnectedAudioCall)
          {
            callCenter18 = [(PHAudioCallViewController *)self callCenter];
            routeController4 = [callCenter18 routeController];
            [routeController4 pickRoute:mostRecentlyDisconnectedAudioCall];

            analyticsReporter2 = [(PHAudioCallViewController *)self callParticipantsViewController];
            [analyticsReporter2 setBannerAudioRouteButtonSelected:0];
          }

          else
          {
            analyticsReporter2 = sub_100004F84(v100);
            if (os_log_type_enabled(analyticsReporter2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, analyticsReporter2, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker disable", buf, 2u);
            }
          }
        }

        else
        {
          mostRecentlyDisconnectedAudioCall = [routeController3 routeForSpeakerEnable];

          if (mostRecentlyDisconnectedAudioCall)
          {
            callCenter19 = [(PHAudioCallViewController *)self callCenter];
            routeController5 = [callCenter19 routeController];
            [routeController5 pickRoute:mostRecentlyDisconnectedAudioCall];

            analyticsReporter2 = [(PHAudioCallViewController *)self callParticipantsViewController];
            [analyticsReporter2 setBannerAudioRouteButtonSelected:1];
          }

          else
          {
            analyticsReporter2 = sub_100004F84(v126);
            if (os_log_type_enabled(analyticsReporter2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, analyticsReporter2, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker enable", buf, 2u);
            }
          }
        }

LABEL_97:
      }

      break;
    case 23:
      frontmostCall3 = [(PHAudioCallViewController *)self frontmostCall];
      [frontmostCall3 sendHardPauseDigits];

      break;
    case 24:
      callCenter20 = [(PHAudioCallViewController *)self callCenter];
      v66 = [callCenter20 currentCallCount] > 1;

      if (v66)
      {
        analyticsReporter4 = [(PHAudioCallViewController *)self analyticsReporter];
        [analyticsReporter4 reportMultipleCallsWaitingUIAction:4];
      }

      goto LABEL_39;
    case 25:
      featureFlags = [(PHAudioCallViewController *)self featureFlags];
      v54 = TUCallScreeningEnabledM3();

      if (!v54)
      {
        break;
      }

      usesCompactMulticallUI2 = [(PHAudioCallViewController *)self usesCompactMulticallUI];
      if (usesCompactMulticallUI2 && (-[PHAudioCallViewController callCenter](self, "callCenter"), v56 = objc_claimAutoreleasedReturnValue(), [v56 currentCallGroups], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "count") > 1, v57, v56, v58))
      {
        callCenter21 = [(PHAudioCallViewController *)self callCenter];
        v60 = [callCenter21 currentCallCount] > 1;

        if (v60)
        {
          analyticsReporter5 = [(PHAudioCallViewController *)self analyticsReporter];
          [analyticsReporter5 reportMultipleCallsWaitingUIAction:4];
        }

LABEL_39:
        callCenter22 = [(PHAudioCallViewController *)self callCenter];
        callCenter23 = [(PHAudioCallViewController *)self callCenter];
        incomingCall5 = [callCenter23 incomingCall];
        [callCenter22 disconnectCall:incomingCall5 withReason:2];
      }

      else
      {
        v114 = sub_100004F84(usesCompactMulticallUI2);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          frontmostCall4 = [(PHAudioCallViewController *)self frontmostCall];
          *buf = 138412290;
          v135 = frontmostCall4;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
        }

        frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
        if (frontmostCall)
        {
          v116 = +[UIApplication sharedApplication];
          delegate3 = [v116 delegate];
          answeringMachine = [delegate3 answeringMachine];
          callUUID = [frontmostCall callUUID];
          [answeringMachine screenCallWithUUID:callUUID manualScreening:1 completion:&stru_100359D50];
        }

LABEL_102:
      }

      break;
    case 26:
      featureFlags2 = [(PHAudioCallViewController *)self featureFlags];
      v84 = TUCallScreeningEnabledM3();

      if (v84)
      {
        objc_initWeak(buf, self);
        v85 = +[PHInCallUtilities sharedInstance];
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_10012A260;
        v129[3] = &unk_100356E98;
        objc_copyWeak(&v130, buf);
        [v85 requestPasscodeUnlockWithCompletion:v129];

        objc_destroyWeak(&v130);
        objc_destroyWeak(buf);
      }

      break;
    case 29:
      [(PHAudioCallViewController *)self _leaveMessage];
      break;
    case 32:
      callCenter24 = [(PHAudioCallViewController *)self callCenter];
      frontmostCall5 = [(PHAudioCallViewController *)self frontmostCall];
      [callCenter24 setTTYType:1 forCall:frontmostCall5];

      break;
    case 35:
      v20 = +[UIApplication sharedApplication];
      delegate4 = [v20 delegate];
      mostRecentlyDisconnectedAudioCall2 = [delegate4 mostRecentlyDisconnectedAudioCall];

      objc_initWeak(buf, self);
      inCallRootViewController2 = [(PHAudioCallViewController *)self inCallRootViewController];
      v131[0] = _NSConcreteStackBlock;
      v131[1] = 3221225472;
      v131[2] = sub_10012A20C;
      v131[3] = &unk_100356E98;
      objc_copyWeak(&v132, buf);
      [inCallRootViewController2 presentBlockAndReportAlertToBlockCall:mostRecentlyDisconnectedAudioCall2 forViewController:self completion:v131];

      objc_destroyWeak(&v132);
      objc_destroyWeak(buf);

      break;
    case 36:
      v25 = +[UIApplication sharedApplication];
      delegate5 = [v25 delegate];
      mostRecentlyDisconnectedAudioCall3 = [delegate5 mostRecentlyDisconnectedAudioCall];

      inCallRootViewController3 = [(PHAudioCallViewController *)self inCallRootViewController];
      handle = [mostRecentlyDisconnectedAudioCall3 handle];
      [inCallRootViewController3 presentCreateContactViewControllerWithHandle:handle forViewController:self];

      break;
    case 38:
      v30 = +[UIApplication sharedApplication];
      delegate6 = [v30 delegate];
      alertCoordinator = [delegate6 alertCoordinator];
      [alertCoordinator invokeAlertWithRequestUnlock:-[PHAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[PHAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];

      break;
    case 39:
LABEL_11:
      callCenter25 = [(PHAudioCallViewController *)self callCenter];
      [callCenter25 disconnectCurrentCall];

      break;
    case 40:
      [(PHAudioCallViewController *)self endWaitOnHoldSession];
      goto LABEL_54;
    case 41:
LABEL_54:
      v86 = +[CNKGameControllerManager shared];
      [v86 focus];

      break;
    default:
      break;
  }

  self->_shouldIgnoreWaitOnHoldSessionState = 0;
LABEL_104:
}

- (BOOL)shouldShowAnswerRTT
{
  frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
  if ([frontmostCall isRTT])
  {
    isTTY = 1;
  }

  else
  {
    isTTY = [frontmostCall isTTY];
  }

  return isTTY;
}

- (id)customizedTitleForItemInBar:(id)bar withActionType:(int64_t)type
{
  barCopy = bar;
  bottomBar = [(PHCallViewController *)self bottomBar];

  hardPauseDigitsDisplayString = 0;
  if (type == 23 && bottomBar == barCopy)
  {
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    if ([frontmostCall hardPauseDigitsState] == 2)
    {
      hardPauseDigitsDisplayString = [frontmostCall hardPauseDigitsDisplayString];
    }

    else
    {
      hardPauseDigitsDisplayString = &stru_100361FD0;
    }
  }

  return hardPauseDigitsDisplayString;
}

- (int64_t)bottomBarCallStateInBar:(id)bar
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  bottomBarCallState = [callCenter bottomBarCallState];

  return bottomBarCallState;
}

- (void)showBlockAlertForHandle:(id)handle
{
  handleCopy = handle;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A868;
  v15[3] = &unk_1003592E0;
  objc_copyWeak(&v17, &location);
  v10 = handleCopy;
  v16 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v15];
  [v7 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:&stru_100359DB0];
  [v7 addAction:v14];

  [(PHAudioCallViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)showBlockAlertForCall:(id)call
{
  callCopy = call;
  features = [(PHAudioCallViewController *)self features];
  lvm_stopEnabled = [features lvm_stopEnabled];

  if (callCopy && lvm_stopEnabled)
  {
    handle = [callCopy handle];
    if ([callCopy carrierAllowsReportVoiceCall])
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"BLOCK_REPORT_CARRIER_CALL_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
      carrierName = [callCopy carrierName];
      v11 = [NSString stringWithFormat:v9, carrierName];
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v11 = [v8 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    }

    objc_initWeak(location, self);
    v12 = [UIAlertController alertControllerWithTitle:v11 message:0 preferredStyle:0];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012AD74;
    v29[3] = &unk_100359328;
    objc_copyWeak(&v33, location);
    v15 = handle;
    v30 = v15;
    selfCopy = self;
    v16 = callCopy;
    v32 = v16;
    v17 = [UIAlertAction actionWithTitle:v14 style:2 handler:v29];
    [v12 addAction:v17];

    if ([v16 carrierAllowsReportVoiceCall])
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK_REPORT" value:&stru_100361FD0 table:@"InCallService"];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10012ADEC;
      v24[3] = &unk_100359328;
      objc_copyWeak(&v28, location);
      v25 = v15;
      v26 = v16;
      selfCopy2 = self;
      v20 = [UIAlertAction actionWithTitle:v19 style:2 handler:v24];
      [v12 addAction:v20];

      objc_destroyWeak(&v28);
    }

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&stru_100359DD0];
    [v12 addAction:v23];

    [(PHAudioCallViewController *)self presentViewController:v12 animated:1 completion:0];
    objc_destroyWeak(&v33);

    objc_destroyWeak(location);
  }
}

- (id)answerRequestForCall:(id)call
{
  callCopy = call;
  v5 = [[TUAnswerRequest alloc] initWithCall:callCopy];

  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

    goto LABEL_9;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];
  if (!isDominoEnabled || !pickedRoute)
  {

    if (!isDominoEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([(PHAudioCallViewController *)self isPickedRouteSpeaker])
  {

LABEL_8:
    [v5 setSourceIdentifier:TUCallSourceIdentifierSpeakerRoute];
    goto LABEL_9;
  }

  isPickedRouteReceiver = [(PHAudioCallViewController *)self isPickedRouteReceiver];

  if (isPickedRouteReceiver)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)_leaveMessage
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  LODWORD(delegate) = TUCallScreeningEnabled();

  if (delegate && !mostRecentlyDisconnectedAudioCall)
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    mostRecentlyDisconnectedAudioCall = [callCenter screeningCall];
  }

  handle = [mostRecentlyDisconnectedAudioCall handle];
  value = [handle value];

  v11 = sub_100004F84(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = mostRecentlyDisconnectedAudioCall;
    v20 = 2112;
    v21 = value;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call %@; Destination ID %@", &v18, 0x16u);
  }

  destinationIdIsPhoneNumber = [value destinationIdIsPhoneNumber];
  if (destinationIdIsPhoneNumber)
  {
    v13 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    if (!v13)
    {
      v13 = TUActiveCountryCode();
    }

    v14 = TUNetworkCountryCode();
    v15 = TUNumberToDial();

    value = v15;
  }

  if (value && (destinationIdIsPhoneNumber = [value length]) != 0)
  {
    v16 = objc_alloc_init(MFMessageComposeViewController);
    v17 = [NSArray arrayWithObject:value];
    [v16 setRecipients:v17];

    [v16 setBody:&stru_100361FD0];
    [v16 setMessageComposeDelegate:self];
    [v16 _setCanEditRecipients:0];
    [(PHAudioCallViewController *)self presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    v16 = sub_100004F84(destinationIdIsPhoneNumber);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10025660C();
    }
  }
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012B298;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  resolvedIncomingCall = [containerCopy resolvedIncomingCall];
  if (resolvedIncomingCall || [containerCopy currentCallCount] && -[PHAudioCallViewController isPickedRouteReceiver](self, "isPickedRouteReceiver"))
  {
    v6 = 1;
  }

  else
  {
    screeningCall = [containerCopy screeningCall];
    v6 = screeningCall != 0;
  }

  return v6;
}

- (void)setPrioritizedCall:(id)call
{
  callCopy = call;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  v6 = [WeakRetained isEqualToCall:callCopy];

  if ((v6 & 1) == 0)
  {
    v8 = sub_100004F84(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = callCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring our own call management, told to take in prioritizedCall %@", &v13, 0xCu);
    }

    v9 = objc_storeWeak(&self->_prioritizedCall, callCopy);
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setPrioritizedCall:callCopy];

    v10 = objc_loadWeakRetained(&self->_prioritizedCall);
    [(PHAudioButtonsViewControllerProtocol *)self->_buttonsViewController setPrioritizedCall:v10];

    [(PHAudioCallViewController *)self updateCurrentState];
    if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
      callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
      v12 = objc_loadWeakRetained(&self->_prioritizedCall);
      -[PHAudioCallViewController setCallForBackgroundImage:animated:callDisplayStyleChanged:](self, "setCallForBackgroundImage:animated:callDisplayStyleChanged:", callToUseForWallpaper, 1, [v12 status] == 4);
    }

    [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
  }
}

- (void)hardwareButtonEventNotification:(id)notification
{
  notificationCopy = notification;
  v6 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [notificationCopy userInfo];
    v37 = 138412290;
    *v38 = userInfo;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController received a hardware button event (%@)", &v37, 0xCu);
  }

  activeCall = [(PHAudioCallViewController *)self activeCall];
  isRTT = [activeCall isRTT];
  if ((isRTT & 1) != 0 || (isRTT = [activeCall isTTY], isRTT))
  {
    v10 = sub_10014265C(isRTT);
    isKindOfClass = v10;
    if (v10)
    {
      navigationController = [(PHAudioCallViewController *)self navigationController];
      visibleViewController = [navigationController visibleViewController];
      isKindOfClass = objc_opt_isKindOfClass();

      view = sub_100004F84(v14);
      if (os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 67109120;
        *v38 = isKindOfClass & 1;
        _os_log_impl(&_mh_execute_header, view, OS_LOG_TYPE_DEFAULT, "setting isShowingRTTConversationViewController: %d", &v37, 8u);
      }
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  isViewLoaded = [(PHAudioCallViewController *)self isViewLoaded];
  v16 = isViewLoaded;
  if (isViewLoaded)
  {
    view = [(PHAudioCallViewController *)self view];
    window = [view window];
    if ((window != 0) | isKindOfClass & 1)
    {

      goto LABEL_19;
    }
  }

  else if (isKindOfClass)
  {
    goto LABEL_19;
  }

  inCallRootViewController = [(PHAudioCallViewController *)self inCallRootViewController];
  isDisplayStyleMiniWindow = [inCallRootViewController isDisplayStyleMiniWindow];

  if (v16)
  {

    if ((isDisplayStyleMiniWindow & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    userInfo2 = [notificationCopy userInfo];
    v21 = [userInfo2 valueForKey:@"kPHHardwareButtonEventType"];

    callCenter = [(PHAudioCallViewController *)self callCenter];
    resolvedIncomingCall = [callCenter resolvedIncomingCall];

    if (v21 == @"kPHHardwareButtonEventTypeLockButton")
    {
      [(PHAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
    }

    else
    {
      if (v21 == @"kPHHardwareButtonEventTypeVolumeDownButton" || v21 == @"kPHHardwareButtonEventTypeVolumeUpButton")
      {
        v33 = sub_100004F84(v28);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeVolumeDownButton || kPHHardwareButtonEventTypeVolumeUpButton buttonType", &v37, 2u);
        }

        [resolvedIncomingCall suppressRingtone];
        goto LABEL_35;
      }

      if (v21 == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        v34 = sub_100004F84(v28);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          callCenter2 = [(PHAudioCallViewController *)self callCenter];
          incomingCall = [callCenter2 incomingCall];
          v37 = 138412546;
          *v38 = incomingCall;
          *&v38[8] = 2112;
          v39 = activeCall;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButton buttonType (incoming call = %@, active call = %@)", &v37, 0x16u);
        }

        callCenter3 = [(PHAudioCallViewController *)self callCenter];
        [callCenter3 handleActionForWiredHeadsetMiddleButtonPress];
        goto LABEL_34;
      }

      if (v21 == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        v29 = sub_100004F84(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          callCenter4 = [(PHAudioCallViewController *)self callCenter];
          incomingCall2 = [callCenter4 incomingCall];
          v37 = 138412290;
          *v38 = incomingCall2;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButtonLongPress buttonType (incoming call = %@)", &v37, 0xCu);
        }

        callCenter3 = [(PHAudioCallViewController *)self callCenter];
        [callCenter3 handleActionForWiredHeadsetMiddleButtonLongPress];
LABEL_34:
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (isDisplayStyleMiniWindow)
  {
    goto LABEL_19;
  }

LABEL_16:
  v21 = sub_100004F84(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    isViewLoaded2 = [(PHAudioCallViewController *)self isViewLoaded];
    view2 = [(PHAudioCallViewController *)self view];
    window2 = [view2 window];
    v37 = 67109376;
    *v38 = isViewLoaded2;
    *&v38[4] = 1024;
    *&v38[6] = window2 != 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController will not handle the hardware button event as the view is not loaded (viewLoaded = %d) or we have no window (window exists = %d)", &v37, 0xEu);
  }

LABEL_36:
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)type
{
  v26.receiver = self;
  v26.super_class = PHAudioCallViewController;
  [(PHCallViewController *)&v26 handleDeviceLockEventWithSourceType:?];
  activeCall = [(PHAudioCallViewController *)self activeCall];
  callCenter = [(PHAudioCallViewController *)self callCenter];
  resolvedIncomingCall = [callCenter resolvedIncomingCall];

  isPickedRouteReceiver = [(PHAudioCallViewController *)self isPickedRouteReceiver];
  v9 = isPickedRouteReceiver;
  v10 = sub_100004F84(isPickedRouteReceiver);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v28 = v9;
    v29 = 1024;
    v30 = activeCall != 0;
    v31 = 1024;
    v32 = resolvedIncomingCall != 0;
    v33 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling device lock event isPickedRouteReceiver=%d, activeCall=%d, incomingCall=%d, sourceType=%d", buf, 0x1Au);
  }

  if (type == 2)
  {
    if ((resolvedIncomingCall != 0) | v9 & 1)
    {
      declineCallService = [(PHAudioCallViewController *)self declineCallService];
      [declineCallService declineAnsweringCallDueToLockEventWithCurrentActiveCall:activeCall completionHandler:&stru_100359DF0];
LABEL_25:

      goto LABEL_26;
    }

LABEL_12:
    if (((activeCall != 0) & v9) == 1)
    {
      goto LABEL_13;
    }

LABEL_10:
    declineCallService2 = sub_100004F84(shouldSuppressRingtone);
    if (os_log_type_enabled(declineCallService2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, declineCallService2, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Not suppressing ringtone or declining call.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!resolvedIncomingCall)
  {
    goto LABEL_12;
  }

  if (([resolvedIncomingCall shouldSuppressRingtone] & 1) == 0)
  {
    v17 = +[UIApplication sharedApplication];
    delegate = [v17 delegate];
    currentInCallScene = [delegate currentInCallScene];
    delegate2 = [currentInCallScene delegate];
    callAnalyticsLogger = [delegate2 callAnalyticsLogger];
    uniqueProxyIdentifierUUID = [resolvedIncomingCall uniqueProxyIdentifierUUID];
    [callAnalyticsLogger ringerMutedForCallUUID:uniqueProxyIdentifierUUID];

    [resolvedIncomingCall suppressRingtone];
    goto LABEL_20;
  }

  shouldSuppressRingtone = [resolvedIncomingCall shouldSuppressRingtone];
  if ((shouldSuppressRingtone & 1) == 0 && ((activeCall != 0) & v9) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v14 = +[PHInCallUtilities sharedInstance];
  isLockToEndCallEnabled = [v14 isLockToEndCallEnabled];

  if (isLockToEndCallEnabled)
  {
    declineCallService2 = [(PHAudioCallViewController *)self declineCallService];
    [declineCallService2 declineAnsweringCallDueToLockEventWithCurrentActiveCall:activeCall completionHandler:&stru_100359E10];
LABEL_15:

    goto LABEL_20;
  }

  v23 = sub_100004F84(v16);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "... and requesting lock on next dismiss because Lock-to-End is disabled through accessibility setting.", buf, 2u);
  }

  +[PHInCallRootViewController setShouldLockDeviceOnNextDismiss];
LABEL_20:
  if (type == 1)
  {
    videoStreamingIsGoingOn = [(PHAudioCallViewController *)self videoStreamingIsGoingOn];
    if (videoStreamingIsGoingOn)
    {
      v25 = sub_100004F84(videoStreamingIsGoingOn);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when locking device", buf, 2u);
      }

      declineCallService = [(PHAudioCallViewController *)self emergencyCoordinator];
      [declineCallService handleDeviceLockEvent];
      goto LABEL_25;
    }
  }

LABEL_26:
}

- (BOOL)isPickedRouteSpeaker
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isSpeaker = [pickedRoute isSpeaker];

  return isSpeaker;
}

- (void)setViewsHiddenForAudioRoutes:(BOOL)routes animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10012BEB4;
    v11[3] = &unk_100356BB8;
    routesCopy = routes;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v9 animations:0.25];
    }

    else
    {
      (v9[2])(v9);
    }
  }
}

- (void)revealAudioRoutingDeviceListAnimated:(BOOL)animated
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Revealing audio routing device list", buf, 2u);
  }

  buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
  if ([buttonsViewController isViewLoaded])
  {
    buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
    view = [buttonsViewController2 view];
    window = [view window];

    if (window)
    {
      callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle] == 3)
      {
        features = [(PHAudioCallViewController *)self features];
        if ([features isDominoEnabled])
        {
          ambientAudioRoutesControlView = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];

          if (ambientAudioRoutesControlView)
          {
            ambientAudioRoutesControlView2 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
            button = [ambientAudioRoutesControlView2 button];
            goto LABEL_16;
          }

LABEL_14:
          currentMiddleView = [(PHAudioCallViewController *)self currentMiddleView];
          v22 = objc_opt_respondsToSelector();

          if ((v22 & 1) == 0)
          {
            v15 = 0;
LABEL_18:
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            interactions = [v15 interactions];
            v24 = [interactions countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v38;
LABEL_20:
              v27 = 0;
              while (1)
              {
                if (*v38 != v26)
                {
                  objc_enumerationMutation(interactions);
                }

                v28 = *(*(&v37 + 1) + 8 * v27);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                if (v25 == ++v27)
                {
                  v25 = [interactions countByEnumeratingWithState:&v37 objects:v41 count:16];
                  if (v25)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_26;
                }
              }

              buttonsViewController3 = v28;

              if (!buttonsViewController3)
              {
                goto LABEL_29;
              }

              [v15 bounds];
              v31 = v30;
              [v15 bounds];
              v33 = v31 + v32 * 0.5;
              [v15 bounds];
              v35 = v34;
              [v15 bounds];
              [buttonsViewController3 _presentMenuAtLocation:v33, v35 + v36 * 0.5];
            }

            else
            {
LABEL_26:

LABEL_29:
              buttonsViewController3 = sub_100004F84(v29);
              if (os_log_type_enabled(buttonsViewController3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v43 = v15;
                _os_log_impl(&_mh_execute_header, buttonsViewController3, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find menu interaction for audio routes button: %@", buf, 0xCu);
              }
            }

            goto LABEL_31;
          }

          ambientAudioRoutesControlView2 = [(PHAudioCallViewController *)self currentMiddleView];
          button = [ambientAudioRoutesControlView2 buttonForControlType:3];
LABEL_16:
          v15 = button;

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v15 = sub_100004F84(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    buttonsViewController3 = [(PHAudioCallViewController *)self buttonsViewController];
    isViewLoaded = [buttonsViewController3 isViewLoaded];
    buttonsViewController4 = [(PHAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController4 view];
    window2 = [view2 window];
    *buf = 67109378;
    *v43 = isViewLoaded;
    *&v43[4] = 2112;
    *&v43[6] = window2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not presenting audio routing device list since isViewLoaded: %d; window: %@", buf, 0x12u);

LABEL_31:
  }
}

- (id)audioRouteMenu
{
  routeListController = [(PHAudioCallViewController *)self routeListController];

  if (!routeListController)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(PHAudioCallViewController *)self setRouteListController:v4];
  }

  routeListController2 = [(PHAudioCallViewController *)self routeListController];
  menu = [routeListController2 menu];

  return menu;
}

- (id)routesForAudioRoutingMenuController:(id)controller
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  sortedRoutes = [routeController sortedRoutes];

  return sortedRoutes;
}

- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  callCenter = [(PHAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  [routeController pickRoute:routeCopy];

  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v9 = emergencyCoordinator;
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (!eedRTTState)
      {
        return;
      }

      features = [(PHAudioCallViewController *)self emergencyCoordinator];
      [features updateRTTAudioRouteButton];
    }
  }
}

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100004F84(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController get notified audio routes changed", v18, 2u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
  routeListController = [(PHAudioCallViewController *)self routeListController];
  [routeListController reload];

  v7 = +[UIApplication sharedApplication];
  delegate = [v7 delegate];
  currentInCallScene = [delegate currentInCallScene];
  delegate2 = [currentInCallScene delegate];
  callAnalyticsLogger = [delegate2 callAnalyticsLogger];
  pickedRoute = [controllerCopy pickedRoute];

  [callAnalyticsLogger audioRouteIsHandsfree:{objc_msgSend(pickedRoute, "isReceiver") ^ 1}];
  features = [(PHAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v15 = emergencyCoordinator;
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (!eedRTTState)
      {
        return;
      }

      features = [(PHAudioCallViewController *)self emergencyCoordinator];
      [features updateRTTAudioRouteButton];
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  v41.receiver = self;
  v41.super_class = PHAudioCallViewController;
  v7 = [PHCallViewController callDisplayStyleDidChangeFromStyle:"callDisplayStyleDidChangeFromStyle:toStyle:" toStyle:?];
  if (toStyle == 4)
  {
    callCenter = [(PHAudioCallViewController *)self callCenter];
    hasCurrentCalls = [callCenter hasCurrentCalls];

    if ((hasCurrentCalls & 1) == 0)
    {
      v10 = sub_100004F84(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController was dismissed with no current calls", buf, 2u);
      }

      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
      v7 = [(PHAudioCallViewController *)self setCurrentState:0];
    }
  }

  if (!style)
  {
    [(PHAudioCallViewController *)self resetParticipantsViewConstraints];
    pendingMiddleViewAnimations = [(PHAudioCallViewController *)self pendingMiddleViewAnimations];

    if (pendingMiddleViewAnimations)
    {
      pendingMiddleViewAnimations2 = [(PHAudioCallViewController *)self pendingMiddleViewAnimations];
      pendingMiddleViewAnimations2[2]();

      [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:0];
    }

    if ([(PHAudioCallViewController *)self waitingForFullScreenAudioRoutes])
    {
      callCenter2 = [(PHAudioCallViewController *)self callCenter];
      routeController = [callCenter2 routeController];
      areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

      if (areAuxiliaryRoutesAvailable)
      {
        objc_initWeak(buf, self);
        +[UIView _currentAnimationDuration];
        v17 = dispatch_time(0, (v16 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10012CC68;
        block[3] = &unk_100356F60;
        objc_copyWeak(&v39, buf);
        dispatch_after(v17, &_dispatch_main_q, block);
        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }
    }

    [(PHAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:0];
    v18 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [v18 isIPadIdiom];

    if (isIPadIdiom)
    {
      [(PHAudioCallViewController *)self fadeInBottomBar];
    }

    [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:[(PHCallViewController *)self currentState]];
    if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
      callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle] != 3)
      {
        goto LABEL_19;
      }

      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (!isDominoEnabled)
      {
        goto LABEL_20;
      }
    }

    callDisplayStyleManager = [(PHAudioCallViewController *)self frontmostCall];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:callDisplayStyleManager animated:0 callDisplayStyleChanged:1];
    [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
LABEL_19:
  }

LABEL_20:
  if (style == 1 || toStyle != 1)
  {
    if (style == 2 && toStyle == 4)
    {
      if ([(PHAudioCallViewController *)self videoStreamingIsGoingOn])
      {
        [(PHAudioCallViewController *)self audioCallControlsViewControllerDidTapVideoStreamingButton];
      }

      goto LABEL_32;
    }
  }

  else
  {
    v23 = sub_100004F84(v7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling lock event due to mini window attached", buf, 2u);
    }

    [(PHAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
  }

  if (style != 4)
  {
    if (toStyle != 4)
    {
      goto LABEL_41;
    }

LABEL_32:
    [(PHAudioCallViewController *)self handleViewWillDisappear:1];
    [(PHAudioCallViewController *)self handleViewDidDisappear:1];
    callCenter3 = [(PHAudioCallViewController *)self callCenter];
    incomingCall = [callCenter3 incomingCall];

    if (incomingCall)
    {
      provider = [incomingCall provider];
      if ([provider supportsDynamicSystemUI])
      {
        featureFlags = [(PHAudioCallViewController *)self featureFlags];
        if ([featureFlags groupConversations])
        {
          HasChinaSKU = TUDeviceHasChinaSKU();

          if (HasChinaSKU)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }
    }

LABEL_39:
    [(PHAudioCallViewController *)self suppressRingtoneForIncomingCall];
LABEL_40:

    goto LABEL_41;
  }

  [(PHAudioCallViewController *)self handleViewWillAppear:1];
  [(PHAudioCallViewController *)self handleViewDidAppear:1];
LABEL_41:
  v29 = +[UIDevice currentDevice];
  orientation = [v29 orientation];

  if (style || toStyle != 2 || (orientation - 3) > 1)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_51;
    }
  }

  else
  {
    v31 = +[UIDevice currentDevice];
    if ([v31 userInterfaceIdiom])
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

      if (!IsReduceMotionEnabled)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  view = [(PHAudioCallViewController *)self view];
  [ICSBannerTransitionAnimation performBannerToFullScreenCrossFadeAnimationWithView:view];

LABEL_51:
  [(PHAudioCallViewController *)self showCallDetailsIfNecessaryForDisplayStyle:toStyle];
  [(PHAudioCallViewController *)self refreshCallDetailsViewButton];
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(PHAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
  topLeadingContainer = [(PHAudioCallViewController *)self topLeadingContainer];
  middlePillContainer = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:topLeadingContainer pillContainer:middlePillContainer];

  topLeadingContainer2 = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:topLeadingContainer2];

  topLeadingContainer3 = [(PHAudioCallViewController *)self topLeadingContainer];
  [topLeadingContainer3 setHidden:toStyle != 2];
}

- (void)suppressRingtoneForIncomingCall
{
  callCenter = [(PHAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v4 = incomingCall;
  if (incomingCall)
  {
    shouldSuppressRingtone = [incomingCall shouldSuppressRingtone];
    v4 = incomingCall;
    if ((shouldSuppressRingtone & 1) == 0)
    {
      shouldSuppressRingtone = [incomingCall suppressRingtone];
      v4 = incomingCall;
    }
  }

  _objc_release_x1(shouldSuppressRingtone, v4);
}

- (void)showCallDetailsIfNecessaryForDisplayStyle:(int64_t)style
{
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];

  callDetailsCoordinator = [(PHAudioCallViewController *)self callDetailsCoordinator];
  if (callDetailsCoordinator && [bannerPresentationManager shouldShowCallDetailsWhenReady])
  {

    if (style != 2)
    {
      goto LABEL_9;
    }

    callDetailsCoordinator = [(PHAudioCallViewController *)self frontmostCall];
    callCenter = [(PHAudioCallViewController *)self callCenter];
    v9 = [callCenter activeConversationForCall:callDetailsCoordinator];

    activitySessions = [v9 activitySessions];
    v11 = [activitySessions count];

    if (v11)
    {
      callDetailsCoordinator2 = [(PHAudioCallViewController *)self callDetailsCoordinator];
      [callDetailsCoordinator2 startWithReason:@"Controls manager requested deferred call details presentation"];
    }

    else
    {
      [(PHAudioCallViewController *)self presentContactCard];
    }
  }

LABEL_9:
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setRotatedTargetSizeOfParent:{width, height}];

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 invalidateIntrinsicContentSize];
}

- (void)fadeInBottomBar
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10012CF60;
  v2[3] = &unk_100356988;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.5];
}

- (void)setMiddleViewButtonsIfNecessary
{
  if ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10012D088;
    v3[3] = &unk_100356E98;
    objc_copyWeak(&v4, &location);
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)callParticipantsViewController:(id)controller didPerformActionType:(int64_t)type
{
  controllerCopy = controller;
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == controllerCopy)
  {
    [(PHAudioCallViewController *)self performBottomBarActionType:type];
  }

  else
  {
    v9 = sub_100004F84(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      typeCopy = type;
      v12 = 2112;
      v13 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown call participants viewcontroller object %@", &v10, 0x16u);
    }
  }
}

- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == recognizerCopy)
  {
    callDetailsCoordinator = [(PHAudioCallViewController *)self callDetailsCoordinator];
    [callDetailsCoordinator startWithReason:@"Call participant view requested call details"];
  }

  else
  {
    callDetailsCoordinator = sub_100004F84(v6);
    if (os_log_type_enabled(callDetailsCoordinator, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = recognizerCopy;
      _os_log_impl(&_mh_execute_header, callDetailsCoordinator, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot handle call details disclosure button tap from unknown call participants viewcontroller object %@", &v8, 0xCu);
    }
  }
}

- (void)callParticipantsViewController:(id)controller willShowMultipleLabel:(BOOL)label
{
  controllerCopy = controller;
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController != controllerCopy)
  {
    return;
  }

  self->_participantsViewIsShowingMultipleLabel = label & ~[(PHAudioCallViewController *)self usesCompactMulticallUI];
  [(PHAudioCallViewController *)self _updatePosterNameAlpha];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  getParticipantsView_WaitingOrNot = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:?];
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_5;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:callDisplayStyleManager animated:1 callDisplayStyleChanged:0];
LABEL_5:
  }
}

- (void)callParticipantsViewController:(id)controller didShowMultipleLabel:(BOOL)label
{
  controllerCopy = controller;
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == controllerCopy)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(PHAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if ((isDominoEnabled & 1) != 0 || label)
      {
        return;
      }
    }

    else
    {

      if (label)
      {
        return;
      }
    }

    posterNameViewModel = [(PHAudioCallViewController *)self posterNameViewModel];

    if (posterNameViewModel)
    {

      [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)avatar
{
  avatarCopy = avatar;
  callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == avatarCopy)
  {
    shouldShowLargeAvatar = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
LABEL_6:
    v7 = shouldShowLargeAvatar;
    goto LABEL_7;
  }

  callWaitingParticipantsViewController = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];

  if (callWaitingParticipantsViewController == avatarCopy)
  {
    shouldShowLargeAvatar = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCallWaiting];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)shouldShowLargeAvatarForCall:(id)call
{
  callCopy = call;
  if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:callCopy]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callCopy])
  {
    v5 = [(PHAudioCallViewController *)self contactWallpaperForCall:callCopy];
    v6 = [(PHAudioCallViewController *)self wallpaperTypeForCNWallpaper:v5];
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callCopy];
    v6 = [(PHAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v5];
  }

  v7 = v6;

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    v11 = 0;
    goto LABEL_11;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (!isDominoEnabled)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
  if (v7 != CNWallpaperTypeMemoji && v7 != CNWallpaperTypeMonogram)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self contactImageForCall:callCopy];
    [callDisplayStyleManager size];
    v11 = v12 > 300.0;
LABEL_11:
  }

LABEL_13:

  return v11;
}

- (void)updateShouldShowLargeAvatar
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      return;
    }

    if ([(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel]|| [(PHAudioCallViewController *)self middleViewState]== 4)
    {

      [(PHAudioCallViewController *)self setShouldShowLargeAvatar:0];
      return;
    }

    if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      callDisplayStyleManager = [(PHAudioCallViewController *)self prioritizedCall];
      v6 = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:callDisplayStyleManager];
    }

    else
    {
      callParticipantsViewController = [(PHAudioCallViewController *)self callParticipantsViewController];
      currentCallGroups = [callParticipantsViewController currentCallGroups];
      firstObject = [currentCallGroups firstObject];
      calls = [firstObject calls];
      callDisplayStyleManager = [calls firstObject];

      v6 = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:callDisplayStyleManager];
    }

    [(PHAudioCallViewController *)self setShouldShowLargeAvatar:v6];
  }
}

- (id)customColorForStatusLabelWithCall:(id)call
{
  callCopy = call;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] != 3)
    {
      titleColor = 0;
      goto LABEL_7;
    }

    features = [(PHAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      titleColor = 0;
      goto LABEL_8;
    }
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callCopy];
  titleColor = [callDisplayStyleManager titleColor];
LABEL_7:

LABEL_8:

  return titleColor;
}

- (id)customColorForParticipantLabelWithCall:(id)call
{
  callCopy = call;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    titleColor = 0;
    goto LABEL_5;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callCopy];
    titleColor = [callDisplayStyleManager titleColor];
LABEL_5:

    goto LABEL_7;
  }

  titleColor = 0;
LABEL_7:

  return titleColor;
}

- (id)customFontForParticipantLabelWithCall:(id)call
{
  callCopy = call;
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    titleFont = 0;
    goto LABEL_5;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callDisplayStyleManager = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callCopy];
    titleFont = [callDisplayStyleManager titleFont];
LABEL_5:

    goto LABEL_7;
  }

  titleFont = 0;
LABEL_7:

  return titleFont;
}

- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)label
{
  if (self->_participantsViewShouldShowParticipantLabel != label)
  {
    labelCopy = label;
    self->_participantsViewShouldShowParticipantLabel = label;
    getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    [(PHAudioCallViewController *)self updateParticipantsLabelForView:getParticipantsView_NotWaiting isHidden:!labelCopy];
  }
}

- (void)updateParticipantsLabelForView:(id)view isHidden:(BOOL)hidden
{
  if (view)
  {
    v4 = !hidden;
    singleCallLabelView = [view singleCallLabelView];
    participantMarqueeLabel = [singleCallLabelView participantMarqueeLabel];
    [participantMarqueeLabel setAlpha:v4];
  }
}

- (void)startSuppressionOfSTKAlerts
{
  v2 = sub_100004F84(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting Suppression of STK Alerts", v3, 2u);
  }

  if ((byte_1003B0FE4 & 1) == 0 && !notify_register_check("MPInCallAlertStateChangeNotification", &dword_1003B0FE0))
  {
    byte_1003B0FE4 = 1;
    if (!notify_set_state(dword_1003B0FE0, 1uLL))
    {
      notify_post("MPInCallAlertStateChangeNotification");
    }
  }
}

- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)call
{
  callCopy = call;
  if (([callCopy isEmergency] & 1) == 0 && objc_msgSend(callCopy, "disconnectedReason") == 14 && objc_msgSend(callCopy, "service") == 1)
  {
    v4 = PHShouldShowWifiCallingAlert();
  }

  else
  {
    v4 = 0;
  }

  localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
  if (localSenderIdentityUUID)
  {
    v6 = [TUCallCapabilities senderIdentityCapabilitiesWithUUID:localSenderIdentityUUID];
    v7 = v6;
    LOBYTE(v8) = (v6 == 0) & v4;
    if (v6 && ((v4 ^ 1) & 1) == 0)
    {
      v8 = [v6 isWiFiCallingEnabled] ^ 1;
    }

    LOBYTE(v4) = v8;
  }

  return v4;
}

- (AVSpeechSynthesizer)speechSynthesizer
{
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(AVSpeechSynthesizer);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

- (void)alertWillInvoke
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAlertDisconnectingCallsNotification" object:0];
}

- (void)updatePresentationStateWithAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  shouldPresentAlertButton = [(PHAudioCallViewController *)self shouldPresentAlertButton];
  if (shouldPresentAlertButton != allowedCopy)
  {
    v6 = sub_100004F84(shouldPresentAlertButton);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = allowedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to %d", v7, 8u);
    }

    [(PHAudioCallViewController *)self setShouldPresentAlertButton:allowedCopy];
    [(PHAudioCallViewController *)self updateCurrentState];
    [(PHAudioCallViewController *)self triggerAutoCountdownIfAvailable];
  }
}

- (void)startAutoCountdownAlert
{
  [(PHAudioCallViewController *)self setShouldAutoCountdownAlert:1];

  [(PHAudioCallViewController *)self triggerAutoCountdownIfAvailable];
}

- (void)triggerAutoCountdownIfAvailable
{
  if ([(PHAudioCallViewController *)self shouldAutoCountdownAlert]&& ([(PHCallViewController *)self currentState]== 9 || [(PHCallViewController *)self currentState]== 8))
  {
    didTriggerAutoCountdownAlertBefore = [(PHAudioCallViewController *)self didTriggerAutoCountdownAlertBefore];
    if (didTriggerAutoCountdownAlertBefore)
    {
      v4 = sub_100004F84(didTriggerAutoCountdownAlertBefore);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Not triggering auto-countdown alert since we already triggered once before", buf, 2u);
      }
    }

    else
    {
      alertCountDownTimer = [(PHAudioCallViewController *)self alertCountDownTimer];

      if (!alertCountDownTimer)
      {
        v7 = sub_100004F84(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting auto-countdown for alert", buf, 2u);
        }

        [(PHAudioCallViewController *)self setDidTriggerAutoCountdownAlertBefore:1];
        *buf = 0;
        v25 = buf;
        v26 = 0x2020000000;
        +[_TtC13InCallService16AlertCoordinator countdownDuration];
        v27 = v8;
        v9 = +[UIApplication sharedApplication];
        delegate = [v9 delegate];
        alertCoordinator = [delegate alertCoordinator];
        isBackgroundCountdownRunning = [alertCoordinator isBackgroundCountdownRunning];

        if (isBackgroundCountdownRunning)
        {
          v13 = +[UIApplication sharedApplication];
          delegate2 = [v13 delegate];
          alertCoordinator2 = [delegate2 alertCoordinator];
          [alertCoordinator2 currentBackgroundCountdownDuration];
          *(v25 + 3) = v16;

          v17 = +[UIApplication sharedApplication];
          delegate3 = [v17 delegate];
          alertCoordinator3 = [delegate3 alertCoordinator];
          [alertCoordinator3 stopBackgroundCountdown];
        }

        objc_initWeak(&location, self);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10012E1FC;
        v21[3] = &unk_1003576D0;
        objc_copyWeak(&v22, &location);
        v21[4] = buf;
        v20 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v21 block:1.0];
        [(PHAudioCallViewController *)self setAlertCountDownTimer:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }
    }
  }
}

- (void)speakAlertUtteranceIfNecessary
{
  if ([(PHAudioCallViewController *)self shouldPresentAlertButton])
  {
    frontmostCall = [(PHAudioCallViewController *)self frontmostCall];
    if ([frontmostCall originatingUIType] == 11 && !-[PHAudioCallViewController didRequestToSpeakAlertUtterance](self, "didRequestToSpeakAlertUtterance"))
    {
      v4 = +[UIScreen _carScreen];

      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (v4)
      {
        v7 = @"ALERT_ACTION_TEXT_BUTTON_UTTERANCE_CARPLAY";
      }

      else
      {
        v7 = @"ALERT_ACTION_TEXT_BUTTON_UTTERANCE";
      }

      v8 = [v5 localizedStringForKey:v7 value:&stru_100361FD0 table:@"Localizable-Stewie"];

      v10 = sub_100004F84(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to speak alert utterance: %@", &v15, 0xCu);
      }

      v11 = +[UIScreen _carScreen];
      speechSynthesizer = [(PHAudioCallViewController *)self speechSynthesizer];
      [speechSynthesizer setUsesApplicationAudioSession:v11 != 0];

      v13 = [AVSpeechUtterance speechUtteranceWithString:v8];
      speechSynthesizer2 = [(PHAudioCallViewController *)self speechSynthesizer];
      [speechSynthesizer2 speakUtterance:v13];

      [(PHAudioCallViewController *)self setDidRequestToSpeakAlertUtterance:1];
    }
  }
}

- (BOOL)isReadyToShowCallDetails
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 2;

  return v3;
}

- (void)audioDeviceControllerMutedTalkerDidStart:(id)start
{
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    didNotifyMutedCaller = [(PHAudioCallViewController *)self didNotifyMutedCaller];
    v5 = didNotifyMutedCaller;
    mutedTalkerBannerViewController2 = sub_100004F84(didNotifyMutedCaller);
    v7 = os_log_type_enabled(mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, but banner was presented before, skips updating", v9, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, presenting banner", buf, 2u);
      }

      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:1];
      mutedTalkerBannerViewController = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController showBanner];

      mutedTalkerBannerViewController2 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController2 playBannerSound];
    }
  }
}

- (void)bannerDidGetTap
{
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
    [buttonsViewController handleMutedTalkerBannerTap];

    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle == 2)
    {
      mutedTalkerBannerViewController = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController dismissBanner];
    }
  }
}

- (void)contactDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_100004F84(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    wallpaper = [changeCopy wallpaper];
    v30 = 138412546;
    *v31 = changeCopy;
    *&v31[8] = 2112;
    v32 = wallpaper;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "contactDidChange: %@ wallpaper: %@", &v30, 0x16u);
  }

  shouldUpdateBackgroundForEmergencyCall = [(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall];
  if (shouldUpdateBackgroundForEmergencyCall)
  {
    v8 = sub_100004F84(shouldUpdateBackgroundForEmergencyCall);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "we are in emergency call, ignore contact change", &v30, 2u);
    }

    [(PHAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
    goto LABEL_25;
  }

  contactsCache = [(PHAudioCallViewController *)self contactsCache];
  identifier = [changeCopy identifier];
  v11 = [contactsCache objectForKey:identifier];

  v12 = +[UIApplication sharedApplication];
  delegate = [v12 delegate];
  isShowingIncomingNameUpdate = [delegate isShowingIncomingNameUpdate];

  presentedViewController = [(PHAudioCallViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController topViewController];
    if (topViewController)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    isKindOfClass = 0;
    topViewController = presentedViewController;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  contactsCache2 = [(PHAudioCallViewController *)self contactsCache];
  identifier2 = [changeCopy identifier];
  [contactsCache2 setObject:changeCopy forKey:identifier2];

  if ((isShowingIncomingNameUpdate | isKindOfClass))
  {
    v21 = sub_100004F84(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 67109376;
      *v31 = isShowingIncomingNameUpdate;
      *&v31[4] = 1024;
      *&v31[6] = isKindOfClass & 1;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SNAP: going to render poster again since contact did change, isBannerPresented = %d, isContactCardPresented = %d", &v30, 0xEu);
    }

    configurationCache = [(PHAudioCallViewController *)self configurationCache];
    [configurationCache removeAllObjects];

    [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  }

  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_21;
  }

  features = [(PHAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callToUseForWallpaper = [(PHAudioCallViewController *)self callToUseForWallpaper];
    callDisplayStyleManager = [(PHAudioCallViewController *)self contactImageDataForCall:callToUseForWallpaper];

    v27 = [[UIImage alloc] initWithData:callDisplayStyleManager];
    [(PHAudioCallViewController *)self setBackgroundImage:v27];

LABEL_21:
  }

LABEL_22:
  if (isShowingIncomingNameUpdate)
  {
    v28 = +[UIApplication sharedApplication];
    delegate2 = [v28 delegate];
    [delegate2 setIsShowingIncomingNameUpdate:0];
  }

LABEL_25:
}

- (void)presentDisconnectionAlert:(id)alert
{
  alertCopy = alert;
  v5 = +[CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v5 isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    emergencyCoordinator = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v8 = emergencyCoordinator;
      emergencyCoordinator2 = [(PHAudioCallViewController *)self emergencyCoordinator];
      videoStreamingIsOnScreen = [emergencyCoordinator2 videoStreamingIsOnScreen];

      if (videoStreamingIsOnScreen)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        [alertCopy setTitle:v12];

        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
        [alertCopy setMessage:v14];

        objc_initWeak(&location, self);
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"STOP_SHARING_CAMERA" value:&stru_100361FD0 table:@"InCallService"];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10012ECDC;
        v21 = &unk_100359390;
        objc_copyWeak(&v22, &location);
        v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v18];
        [alertCopy addAction:{v17, v18, v19, v20, v21}];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    [(PHAudioCallViewController *)self presentViewController:alertCopy animated:1 completion:0];
  }
}

- (BOOL)isShowSOSConfirmationSupported
{
  callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 2;

  return v3;
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  statusCopy = status;
  featureFlags = [(PHAudioCallViewController *)self featureFlags];
  screenSharingRemoteControlEnabled = [featureFlags screenSharingRemoteControlEnabled];

  v10 = sub_10000B2A0(v8, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (screenSharingRemoteControlEnabled)
  {
    if (v11)
    {
      v12 = @"NO";
      if (statusCopy)
      {
        v12 = @"YES";
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating layer mask for remote control, remote control state is %@", &v13, 0xCu);
    }

    [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  }

  else if (v11)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not updating layer mask for remote control, screen sharing remote control feature flag is disabled", &v13, 2u);
  }
}

- (void)handleCancelPressedInCallBufferScreen
{
  [(PHAudioCallViewController *)self pauseCallBufferTimer];
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10012F120;
  v20[3] = &unk_100358228;
  v20[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:v20];
  [v3 addAction:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"END_CALL_SOS" value:&stru_100361FD0 table:@"InCallService"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10012F1A0;
  v19[3] = &unk_100358228;
  v19[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v19];
  [v3 addAction:v9];

  [(PHAudioCallViewController *)self presentViewController:v3 animated:1 completion:0];
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10012F320;
  v15 = &unk_100358250;
  v10 = v3;
  v16 = v10;
  objc_copyWeak(&v17, &location);
  v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v12 block:5.0];
  [(PHAudioCallViewController *)self setConfirmationTimeoutTimer:v11, v12, v13, v14, v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (BOOL)shouldPlayAudioInCallBufferScreen
{
  v2 = +[PHInCallRootViewController dismissalAssertions];
  v3 = [v2 containsObject:@"PHSliderSwipeCallBufferScreenAssertionReason"];

  return v3 ^ 1;
}

- (void)startMessagePlayback
{
  [(PHAudioCallViewController *)self stopMessagePlayback];
  if (+[SOSUtilities shouldPlayAudioDuringCountdown])
  {
    voiceMessageManager = [(PHAudioCallViewController *)self voiceMessageManager];
    if (voiceMessageManager)
    {
    }

    else if ([(PHAudioCallViewController *)self shouldPlayAudioInCallBufferScreen])
    {
      v4 = [[SOSVoiceMessageManager alloc] initWithMessageType:101];
      [(PHAudioCallViewController *)self setVoiceMessageManager:v4];

      v6 = sub_100004F84(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "startMessagePlayback,starting call buffer voice message", v8, 2u);
      }

      voiceMessageManager2 = [(PHAudioCallViewController *)self voiceMessageManager];
      [voiceMessageManager2 startMessagePlayback];
    }
  }
}

- (void)stopMessagePlayback
{
  voiceMessageManager = [(PHAudioCallViewController *)self voiceMessageManager];

  if (voiceMessageManager)
  {
    v5 = sub_100004F84(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopMessagePlayback", v7, 2u);
    }

    voiceMessageManager2 = [(PHAudioCallViewController *)self voiceMessageManager];
    [voiceMessageManager2 stopMessagePlayback];

    [(PHAudioCallViewController *)self setVoiceMessageManager:0];
  }
}

- (void)startCallBufferScreenCountdown
{
  [(PHAudioCallViewController *)self stopCallBufferTimer];
  [(PHAudioCallViewController *)self startMessagePlayback];
  callBufferTimer = [(PHAudioCallViewController *)self callBufferTimer];

  if (!callBufferTimer)
  {
    objc_initWeak(&location, self);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10012F750;
    v5[3] = &unk_1003576D0;
    objc_copyWeak(&v6, &location);
    v5[4] = v7;
    v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:1.0];
    [(PHAudioCallViewController *)self setCallBufferTimer:v4];

    objc_destroyWeak(&v6);
    _Block_object_dispose(v7, 8);
    objc_destroyWeak(&location);
  }
}

- (void)stopCallBufferTimer
{
  callBufferTimer = [(PHAudioCallViewController *)self callBufferTimer];
  isValid = [callBufferTimer isValid];

  if (isValid)
  {
    v6 = sub_100004F84(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,stopCallBufferTimer", v8, 2u);
    }

    callBufferTimer2 = [(PHAudioCallViewController *)self callBufferTimer];
    [callBufferTimer2 invalidate];

    [(PHAudioCallViewController *)self setCallBufferTimer:0];
  }
}

- (void)restartCallBufferTimer
{
  [(PHAudioCallViewController *)self setShouldPauseSOSCallBufferTimer:0];

  [(PHAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)displayDialledNumberDetailsForCallBufferScreen
{
  if (!self->_bufferSingleCallLabelView)
  {
    v3 = [PHSingleCallParticipantLabelView alloc];
    callDisplayStyleManager = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v5 = [(PHSingleCallParticipantLabelView *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager];
    bufferSingleCallLabelView = self->_bufferSingleCallLabelView;
    self->_bufferSingleCallLabelView = v5;

    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setPreservesSuperviewLayoutMargins:1];
    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = sub_100004F84([(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setOverrideUserInterfaceStyle:2]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_bufferSingleCallLabelView;
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding a new single-participant view to the view hierarchy: %@", buf, 0xCu);
    }

    view = [(PHAudioCallViewController *)self view];
    [view addSubview:self->_bufferSingleCallLabelView];

    v41 = [UIFont phPreferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v10 = self->_bufferSingleCallLabelView;
    [v41 pointSize];
    v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(PHSingleCallParticipantLabelView *)v10 setParticipantMarqueeLabelFont:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"SOS_CALL_BUFFER_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self->_bufferSingleCallLabelView participantMarqueeLabel];
    [participantMarqueeLabel setText:v13];

    v15 = self->_bufferSingleCallLabelView;
    v16 = +[UIColor systemRedColor];
    [(PHSingleCallParticipantLabelView *)v15 setStatusLabelTextColor:v16];

    labelDescriptorFactory = self->_labelDescriptorFactory;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"SOS_CALL_BUFFER_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
    v20 = [(CNKCallParticipantLabelDescriptorFactory *)labelDescriptorFactory makeLabelWithString:v19];

    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setLabelDescriptor:v20];
    topAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView topAnchor];
    view2 = [(PHAudioCallViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

    centerXAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView centerXAnchor];
    view3 = [(PHAudioCallViewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    leadingAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView leadingAnchor];
    view4 = [(PHAudioCallViewController *)self view];
    readableContentGuide = [view4 readableContentGuide];
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView trailingAnchor];
    view5 = [(PHAudioCallViewController *)self view];
    readableContentGuide2 = [view5 readableContentGuide];
    trailingAnchor2 = [readableContentGuide2 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    v42[0] = v25;
    v42[1] = v29;
    v42[2] = v34;
    v42[3] = v39;
    v40 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v40];
  }
}

+ (BOOL)wallpaperContentIsSensitive:(id)sensitive
{
  sensitiveCopy = sensitive;
  v4 = +[_TtC13InCallService23SensitivityFeatureFlags isContactNudityDetectionEnabled];
  if (v4)
  {
    contentIsSensitive = [sensitiveCopy contentIsSensitive];
    v6 = sub_100004F84(contentIsSensitive);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = contentIsSensitive;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: IMWallpaper.contentIsSensitive returning %d", v8, 8u);
    }
  }

  else
  {
    v6 = sub_100004F84(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: IMWallpaper.contentIsSensitive not performing check", v8, 2u);
    }

    LOBYTE(contentIsSensitive) = 0;
  }

  return contentIsSensitive;
}

- (IMNicknameProvider)imNicknameProvider
{
  imNicknameProvider = self->_imNicknameProvider;
  if (!imNicknameProvider)
  {
    v4 = objc_alloc_init(IMNicknameProvider);
    v5 = self->_imNicknameProvider;
    self->_imNicknameProvider = v4;

    imNicknameProvider = self->_imNicknameProvider;
  }

  return imNicknameProvider;
}

- (void)addPosterBlurToPosterVC:(id)c nameLabelWrapper:(id)wrapper
{
  cCopy = c;
  wrapperCopy = wrapper;
  if (cCopy)
  {
    v19 = wrapperCopy;
    v7 = +[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled];
    v8 = sub_100004F84(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating posterSensitiveBlurView with isCommunicationSafetyEnabled: %d", buf, 8u);
    }

    v9 = [[_TtC13InCallService35PHContactWallpaperSensitiveBlurView alloc] initWithIsCommunicationSafety:v7];
    [(PHContactWallpaperSensitiveBlurView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((v7 & 1) == 0)
    {
      objc_initWeak(buf, v9);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100130360;
      v29[3] = &unk_100356F60;
      objc_copyWeak(&v30, buf);
      [(PHContactWallpaperSensitiveBlurView *)v9 setDidTapRevealButton:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    view = [cCopy view];
    [view addSubview:v9];

    topAnchor = [(PHContactWallpaperSensitiveBlurView *)v9 topAnchor];
    view2 = [cCopy view];
    topAnchor2 = [view2 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v25;
    bottomAnchor = [(PHContactWallpaperSensitiveBlurView *)v9 bottomAnchor];
    view3 = [cCopy view];
    bottomAnchor2 = [view3 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[1] = v21;
    trailingAnchor = [(PHContactWallpaperSensitiveBlurView *)v9 trailingAnchor];
    view4 = [cCopy view];
    trailingAnchor2 = [view4 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[2] = v13;
    leadingAnchor = [(PHContactWallpaperSensitiveBlurView *)v9 leadingAnchor];
    view5 = [cCopy view];
    leadingAnchor2 = [view5 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[3] = v17;
    v18 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    [TPIncomingCallMetricsProvider addCallerNameView:v19 toContainerView:v9];
    wrapperCopy = v19;
  }
}

- (UIStackView)middlePillContainer
{
  if (!self->_middlePillContainer)
  {
    v3 = objc_alloc_init(UIStackView);
    middlePillContainer = self->_middlePillContainer;
    self->_middlePillContainer = v3;

    [(UIStackView *)self->_middlePillContainer setSpacing:8.0];
    [(UIStackView *)self->_middlePillContainer setAxis:1];
    [(UIStackView *)self->_middlePillContainer setAlignment:0];
    [(UIStackView *)self->_middlePillContainer setDistribution:3];
    [(UIStackView *)self->_middlePillContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PHAudioCallViewController *)self view];
    [view addSubview:self->_middlePillContainer];

    v6 = objc_alloc_init(UIView);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [v6 heightAnchor];
    v8 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
    [v8 setActive:1];

    [(UIStackView *)self->_middlePillContainer addArrangedSubview:v6];
  }

  [(PHAudioCallViewController *)self setUpMiddlePillContainerConstraints];
  v9 = self->_middlePillContainer;

  return v9;
}

- (void)setUpMiddlePillContainerConstraints
{
  if (self->_middlePillContainer)
  {
    if (self->_middlePillContainerLayoutConstraints)
    {
      middlePillContainerLayoutConstraints = [(PHAudioCallViewController *)self middlePillContainerLayoutConstraints];
      [NSLayoutConstraint deactivateConstraints:middlePillContainerLayoutConstraints];
    }

    v4 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
    if (-[PHAudioCallViewController middleViewState](self, "middleViewState") == 2 && (-[PHAudioCallViewController keypadViewController](self, "keypadViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 view], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "superview"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
    {
      keypadViewController = [(PHAudioCallViewController *)self keypadViewController];
      view = [keypadViewController view];
      topAnchor = [view topAnchor];
      bottomAnchor = [(UIStackView *)self->_middlePillContainer bottomAnchor];
      v12 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
      [v4 addObject:v12];

      keypadViewController2 = [(PHAudioCallViewController *)self keypadViewController];
      view2 = [keypadViewController2 view];
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [(UIStackView *)self->_middlePillContainer trailingAnchor];
      v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
      [v4 addObject:v17];

      keypadViewController3 = [(PHAudioCallViewController *)self keypadViewController];
      view3 = [keypadViewController3 view];
      leadingAnchor = [view3 leadingAnchor];
      leadingAnchor2 = [(UIStackView *)self->_middlePillContainer leadingAnchor];
      v22 = 10.0;
    }

    else
    {
      buttonsViewController = [(PHAudioCallViewController *)self buttonsViewController];
      view4 = [buttonsViewController view];
      superview = [view4 superview];

      if (!superview)
      {
        keypadViewController3 = sub_100004F84(v26);
        if (os_log_type_enabled(keypadViewController3, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, keypadViewController3, OS_LOG_TYPE_DEFAULT, "[WARN] Setting middlePillContainer constraints but the buttonViewController was not in the view hierarchy", v46, 2u);
        }

        goto LABEL_13;
      }

      v27 = +[UIScreen mainScreen];
      [v27 bounds];
      v29 = v28;
      v31 = v30;

      if (v29 >= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32 * 0.102;
      trailingAnchor3 = [(UIStackView *)self->_middlePillContainer trailingAnchor];
      buttonsViewController2 = [(PHAudioCallViewController *)self buttonsViewController];
      view5 = [buttonsViewController2 view];
      trailingAnchor4 = [view5 trailingAnchor];
      v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:10.0 - v33];
      [v4 addObject:v38];

      leadingAnchor3 = [(UIStackView *)self->_middlePillContainer leadingAnchor];
      buttonsViewController3 = [(PHAudioCallViewController *)self buttonsViewController];
      view6 = [buttonsViewController3 view];
      leadingAnchor4 = [view6 leadingAnchor];
      v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v33 + -10.0];
      [v4 addObject:v43];

      keypadViewController3 = [(PHAudioCallViewController *)self buttonsViewController];
      view3 = [keypadViewController3 view];
      leadingAnchor = [view3 topAnchor];
      leadingAnchor2 = [(UIStackView *)self->_middlePillContainer bottomAnchor];
      v22 = 20.0;
    }

    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v22];
    [v4 addObject:v44];

LABEL_13:
    [(PHAudioCallViewController *)self setMiddlePillContainerLayoutConstraints:v4];
    middlePillContainerLayoutConstraints2 = [(PHAudioCallViewController *)self middlePillContainerLayoutConstraints];
    [NSLayoutConstraint activateConstraints:middlePillContainerLayoutConstraints2];
  }
}

- (BOOL)middlePillContainerIsShowing
{
  activeCall = [(PHAudioCallViewController *)self activeCall];
  recordingSession = [activeCall recordingSession];
  if ([recordingSession recordingState] == 1)
  {
    v5 = 1;
  }

  else
  {
    activeCall2 = [(PHAudioCallViewController *)self activeCall];
    recordingSession2 = [activeCall2 recordingSession];
    if ([recordingSession2 recordingState] == 2)
    {
      v5 = 1;
    }

    else
    {
      activeCall3 = [(PHAudioCallViewController *)self activeCall];
      recordingSession3 = [activeCall3 recordingSession];
      v5 = [recordingSession3 recordingState] == 3;
    }
  }

  arrangedSubviews = [(UIStackView *)self->_middlePillContainer arrangedSubviews];
  if ([arrangedSubviews containsObject:self->_screenSharingIndicatorView])
  {
    v11 = 1;
  }

  else
  {
    arrangedSubviews2 = [(UIStackView *)self->_middlePillContainer arrangedSubviews];
    v11 = (([arrangedSubviews2 containsObject:self->_waitOnHoldTipView] | v5) & 1) != 0 || self->_callRecordingCountdownShowing;
  }

  return v11;
}

- (void)updateTranslationBackgroundView:(BOOL)view
{
  viewCopy = view;
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    if (viewCopy)
    {
      translationBackgroundView = [(PHAudioCallViewController *)self translationBackgroundView];

      if (!translationBackgroundView)
      {
        createPosterBlurryBackgroundView = [(PHAudioCallViewController *)self createPosterBlurryBackgroundView];
        [(PHAudioCallViewController *)self setTranslationBackgroundView:createPosterBlurryBackgroundView];

        posterContainer = [(PHAudioCallViewController *)self posterContainer];
        [posterContainer frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        translationBackgroundView2 = [(PHAudioCallViewController *)self translationBackgroundView];
        [translationBackgroundView2 setFrame:{v10, v12, v14, v16}];
      }

      view = [(PHAudioCallViewController *)self view];
      translationBackgroundView3 = [(PHAudioCallViewController *)self translationBackgroundView];
      posterContainer2 = [(PHAudioCallViewController *)self posterContainer];
      [view insertSubview:translationBackgroundView3 above:posterContainer2];

      translationController = [(PHAudioCallViewController *)self translationController];
      translationBackgroundView4 = [(PHAudioCallViewController *)self translationBackgroundView];
      contentView = [translationBackgroundView4 contentView];
      [translationController updateContentView:contentView updateVisibility:0];

      [(PHAudioCallViewController *)self updateTranslationPosterName:1];
      translationBackgroundView5 = [(PHAudioCallViewController *)self translationBackgroundView];
      [translationBackgroundView5 setAlpha:0.0];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100130E54;
      v33[3] = &unk_100356988;
      v33[4] = self;
      [UIView animateWithDuration:4 delay:v33 options:&stru_100359E30 animations:0.200000003 completion:0.0];
    }

    else
    {
      [(PHAudioCallViewController *)self updateTranslationPosterName:0];
      getParticipantsView_NotWaiting = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
      [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:getParticipantsView_NotWaiting];
      translationBackgroundView6 = [(PHAudioCallViewController *)self translationBackgroundView];

      if (translationBackgroundView6)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100130EA0;
        v32[3] = &unk_100356988;
        v32[4] = self;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100130EE8;
        v30[3] = &unk_100359E58;
        v30[4] = self;
        v31 = 0;
        [UIView animateWithDuration:4 delay:v32 options:v30 animations:0.200000003 completion:0.0];
      }
    }
  }

  else
  {
    defaultBackgroundGradientView = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

    translationController2 = [(PHAudioCallViewController *)self translationController];
    if (defaultBackgroundGradientView)
    {
      [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    else
    {
      [(PHAudioCallViewController *)self view];
    }
    v28 = ;
    [translationController2 updateContentView:v28 updateVisibility:1];
  }
}

- (void)updateTranslationPosterName:(BOOL)name
{
  nameCopy = name;
  renderingViewController = [(PHAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    translationBackgroundView = [(PHAudioCallViewController *)self translationBackgroundView];

    if (translationBackgroundView)
    {
      if (nameCopy)
      {
        detachedPosterNameViewModel = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

        if (!detachedPosterNameViewModel)
        {
          translationBackgroundView2 = [(PHAudioCallViewController *)self translationBackgroundView];
          contentView = [translationBackgroundView2 contentView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:contentView];
        }
      }

      else
      {
        [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:0];
      }

      [(PHAudioCallViewController *)self _updatePosterNameAlpha];

      [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (PHInCallRootViewControllerProtocol)inCallRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  return WeakRetained;
}

- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  PHAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(v6, v8, sub_10016D3D8, v9);
}

- (BOOL)fetchLockState
{
  selfCopy = self;
  v3 = sub_100164A2C();

  return v3;
}

- (id)makeLockObserverWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  PHAudioCallViewController.makeLockObserver(with:)(sub_10016D3D8, v5, v9);

  sub_100008878(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005B2C(v9);

  return v7;
}

- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)manager callCenter:(id)center
{
  managerCopy = manager;
  centerCopy = center;
  selfCopy = self;
  sub_100164C38();
}

- (void)presentMoreMenu:(id)menu source:(id)source
{
  menuCopy = menu;
  sourceCopy = source;
  selfCopy = self;
  sub_1001657F0(menuCopy, source);
}

- (void)presentMoreMenu:(id)menu source:(id)source alongsideTransition:(id)transition
{
  v8 = _Block_copy(transition);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10016D258;
  }

  else
  {
    v9 = 0;
  }

  menuCopy = menu;
  sourceCopy = source;
  selfCopy = self;
  sub_100165888();
  sub_1000081F4(v8, v9);
}

- (id)createPosterBlurryBackgroundView
{
  selfCopy = self;
  v3 = sub_100166390();

  return v3;
}

- (void)updateTextFieldPadding:(id)padding padding:(double)a4
{
  paddingCopy = padding;
  selfCopy = self;
  sub_100166BC4(paddingCopy, a4);
}

- (void)presentShareCard:(id)card source:(id)source
{
  cardCopy = card;
  sourceCopy = source;
  selfCopy = self;
  sub_100166CE0(cardCopy, source);
}

- (void)startCallRecording
{
  selfCopy = self;
  sub_100167538();
}

- (void)stopCallRecording
{
  selfCopy = self;
  sub_100167638();
}

- (void)showAddParticipantSheet
{
  selfCopy = self;
  sub_100167728();
}

- (void)presentContactCard
{
  selfCopy = self;
  sub_100167824();
}

- (void)addDimmingView
{
  selfCopy = self;
  sub_1001684DC();
}

- (void)updateDimmingView
{
  selfCopy = self;
  sub_1001688C4();
}

- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)call
{
  callCopy = call;
  callCopy2 = call;
  selfCopy = self;
  LOBYTE(callCopy) = sub_100168C40(callCopy);

  return callCopy & 1;
}

- (id)readCachedLastSeenPosterDataForCall:(id)call
{
  selfCopy = self;
  callCopy = call;
  v6 = sub_100168D40(call);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100034FE0(v6, v8);
  }

  return isa;
}

- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v7 = sub_1001690A0(call);

  return v7;
}

- (void)deleteAllUnarchivedPosterDirectories
{
  selfCopy = self;
  sub_1001691DC();
}

- (BOOL)shouldShowMergeCalls
{
  selfCopy = self;
  sub_100169D94();
  v4 = v3;

  return v4 & 1;
}

- (void)blockWithHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_10016A860(handleCopy);
}

- (void)reportWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10016AB8C(callCopy);
}

- (void)createContactWithHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_10016AE2C(handleCopy);
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  PHAudioCallViewController.contactViewController(_:didCompleteWith:)(selfCopy, v10);
}

- (void)updateBackgroundForEmergencyCall
{
  selfCopy = self;
  sub_10016B6E0();
}

- (void)presentFullScreenPeoplePicker
{
  selfCopy = self;
  sub_10016B920();
}

- (void)dismissPeoplePicker
{
  selfCopy = self;
  sub_10016C570();
}

- (void)updateCallRecordingIfNeededWithButtonContainer:(id)container pillContainer:(id)pillContainer
{
  containerCopy = container;
  pillContainerCopy = pillContainer;
  v12.value.super.super.super.isa = self;
  isa = v12.value.super.super.super.isa;
  v11.value.super.super.super.isa = container;
  v11.is_nil = pillContainer;
  PHAudioCallViewController.updateCallRecordingIfNeeded(buttonContainer:pillContainer:)(v11, v12);
}

- (void)invertColorCallRecordingButtonColor:(BOOL)color
{
  selfCopy = self;
  PHAudioCallViewController.invertColorCallRecordingButtonColor(_:)(color);
}

- (void)addCallRecordingIfNeededWithButtonContainer:(id)container pillContainer:(id)pillContainer
{
  containerCopy = container;
  pillContainerCopy = pillContainer;
  selfCopy = self;
  sub_100170E54(container, pillContainer);
}

- (void)addRecordingIndicatorWithPillContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_100170FC4(container);
}

- (BOOL)callRecordingAllowed
{
  selfCopy = self;
  v3 = PHAudioCallViewController.callRecordingAllowed.getter();

  return v3 & 1;
}

- (BOOL)isCallRecordingActive
{
  selfCopy = self;
  v3 = PHAudioCallViewController.isCallRecordingActive.getter();

  return v3 & 1;
}

- (void)updateCallRecordingViewBackgroundMaterialType:(unint64_t)type
{
  selfCopy = self;
  PHAudioCallViewController.updateCallRecordingViewBackgroundMaterialType(_:)(type);
}

- (void)updatePosterDimmingAreaWith:(CGRect)with
{
  selfCopy = self;
  sub_1001C8A80();
}

- (void)updateDimmingValuesFor:(unsigned __int16)for
{
  selfCopy = self;
  sub_1001C8BA8(for);
}

- (void)insertBelowDimmingLayerWithNewView:(id)view containerView:(id)containerView
{
  viewCopy = view;
  containerViewCopy = containerView;
  selfCopy = self;
  sub_1001C8C9C(viewCopy, containerViewCopy);
}

- (void)createPosterContainerWithDimmingLayer
{
  selfCopy = self;
  sub_1001C8DC0();
}

- (void)addWebRTCViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001CC7EC();
}

- (void)removeWebRTCViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001CD1E8();
}

- (void)requestToEnableVideoStreamingButton
{
  selfCopy = self;
  sub_1001CD444();
}

- (void)requestToDisableVideoStreamingButton
{
  selfCopy = self;
  sub_1001CD604(&selRef_setShouldEnableVideoStreamingButton_, 0);
}

- (void)requestToEnableMediaUploadButton
{
  selfCopy = self;
  sub_1001CD604(&selRef_setShouldEnableShareMediaButton_, 1);
}

- (void)requestToDisableMediaUploadButton
{
  selfCopy = self;
  sub_1001CD604(&selRef_setShouldEnableShareMediaButton_, 0);
}

- (void)hideWebRTCViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001CD70C();
}

- (void)removeWebRTCViewControllerForPIP:(id)p
{
  pCopy = p;
  selfCopy = self;
  sub_1001CD8E0(pCopy);
}

- (void)addMediaRequestViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001CDA84();
}

- (void)removeMediaRequestViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001CDFF4();
}

- (void)insertWebViewUnderButtonControls:(id)controls
{
  controlsCopy = controls;
  selfCopy = self;
  sub_1001CE1DC();
}

- (void)bringWebRTCViewControllerToFront:(id)front
{
  frontCopy = front;
  selfCopy = self;
  sub_1001CE838(frontCopy);
}

- (void)requestAnimationToFullScreenWebView
{
  selfCopy = self;
  sub_1001CE9DC();
}

- (void)requestToRemoveEnhancedEmergencyIntermittentStateLabel
{
  selfCopy = self;
  sub_1001CEC18();
}

- (void)requestToPresentMediaUploadRequestBanner
{
  selfCopy = self;
  sub_1001CF0BC("EnhancedEmergency: PHAudioCallViewController trying to request mediaUploadRequest banner", &BannerPresentationManager.showEnhancedEmergenctMediaUploadHUD(), &BannerPresentationManager.showEnhancedEmergencyRTTMediaUploadHUD());
}

- (void)requestToPresentMediaUploadRequestBannerDuringStreaming
{
  selfCopy = self;
  sub_1001CEDC0();
}

- (void)requestHapticForRequest
{
  selfCopy = self;
  sub_1001CF000();
}

- (void)requestToPresentVideoStreamingRequestBanner
{
  selfCopy = self;
  sub_1001CF0BC("EnhancedEmergency: PHAudioCallViewController trying to request videoStreaming banner", &BannerPresentationManager.showEnhancedEmergenctVideoStreamingHUD(), &BannerPresentationManager.showEnhancedEmergencyRTTVideoStreamingHUD());
}

- (void)requestToAddErrorLabelWithRetryable:(BOOL)retryable
{
  selfCopy = self;
  sub_1001CF420();
}

- (void)requestToAddResumeCameraLabel
{
  selfCopy = self;
  sub_1001CF484();
}

- (void)requestToAddMitigationLabel
{
  selfCopy = self;
  sub_1001CF8E0(2, &unk_10035E560, sub_1001D1740, &unk_10035E578);
}

- (void)requestToAddPhotoMitigationLabel
{
  selfCopy = self;
  sub_1001CF8E0(3, &unk_10035E510, sub_1001D17F8, &unk_10035E528);
}

- (void)updateEnhancedEmergencyViewWhenKeypadPresented
{
  selfCopy = self;
  sub_1001CFC84();
}

- (void)addEnhancedEmergencyIntermittentStateLabelWithState:(int64_t)state
{
  selfCopy = self;
  sub_1001CFDA8(state);
}

- (void)removeEnhancedEmergencyIntermittentStateLabel
{
  selfCopy = self;
  sub_1001D0E64();
}

- (void)showCallControls
{
  selfCopy = self;
  sub_1001D0FA0();
}

- (void)hideCallControls
{
  selfCopy = self;
  sub_1001D114C();
}

- (id)getCurrentCall
{
  selfCopy = self;
  v3 = sub_1001D13E4();

  return v3;
}

- (void)showRTTConversation
{
  selfCopy = self;
  sub_1001D1460();
}

- (void)hideRTTConversationIfNeeded
{
  selfCopy = self;
  sub_1001D1578();
}

- (id)getAudioRouteMenu
{
  selfCopy = self;
  v3 = sub_1001D16B0();

  return v3;
}

- (void)setupCallHoldingObservers
{
  selfCopy = self;
  iPadAudioCallViewController.setupCallHoldingObservers()();
}

- (void)endWaitOnHoldSession
{
  selfCopy = self;
  PHAudioCallViewController.endWaitOnHoldSession()();
}

- (void)invertColorCallHoldingButtonColor:(BOOL)color
{
  selfCopy = self;
  PHAudioCallViewController.invertColorCallHoldingButtonColor(_:)(color);
}

- (void)handleCallRecordingCountdownNotificationWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  iPadAudioCallViewController.handleCallRecordingCountdownNotification(notification:)();

  (*(v5 + 8))(v7, v4);
}

- (void)tipKitStartWaitOnHoldObservation
{
  selfCopy = self;
  sub_10024E71C();
}

@end