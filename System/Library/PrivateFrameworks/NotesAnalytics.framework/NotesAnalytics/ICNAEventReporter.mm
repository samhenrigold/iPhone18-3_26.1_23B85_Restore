@interface ICNAEventReporter
+ (BOOL)activityTypeHasUnknownShareFlow:(id)flow;
+ (BOOL)attachmentHasDeepLinkSafariHighlight:(id)highlight;
+ (id)analyticsTypeUTIAttachment:(id)attachment;
+ (id)filteredActivityType:(id)type;
+ (id)inlineAttachmentReportForModernNote:(id)note faultOutInlineAttachmentsAfterDone:(BOOL)done;
+ (id)maskString:(id)string withoutPrefix:(id)prefix withMask:(id)mask;
+ (void)faultOutObject:(id)object;
+ (void)resetNoteCreateApproachEnumInAppSuiteDefaults;
+ (void)setNoteCreateApproachEnumToAppSuiteDefaults:(int64_t)defaults;
- (ICNAEventReporter)initWithSubTrackerName:(id)name;
- (ICNAEventReporter)initWithSubTrackerName:(id)name view:(id)view;
- (ICNAEventReporter)initWithSubTrackerName:(id)name window:(id)window;
- (ICNAEventReporter)initWithSubTrackerName:(id)name windowScene:(id)scene;
- (ICNASubTracker)subTracker;
- (UIWindowScene)windowScene;
- (id)accountDataForHTMLAccount:(id)account;
- (id)accountDataForModernAccount:(id)account;
- (id)accountTypeForHTMLAccount:(id)account;
- (id)accountTypeForModernAccount:(id)account;
- (id)audioAttachmentDataForModernAttachment:(id)attachment;
- (id)audioRecordingDataForModernAttachment:(id)attachment appBackgroundOccurred:(BOOL)occurred noteMultitaskingOccurred:(BOOL)multitaskingOccurred audioAttachmentDuration:(id)duration;
- (id)audioTranscriptInteractionDataWithSummaryViewed:(BOOL)viewed transcriptViewed:(BOOL)transcriptViewed interactionTargets:(id)targets interactionTypes:(id)types;
- (id)bioAuthDataForModernNote:(id)note;
- (id)collaborationActionDataIsInviting:(BOOL)inviting inviteStep:(int64_t)step;
- (id)collaborationStatusForModernObject:(id)object;
- (id)collaborationTypeForModernObject:(id)object;
- (id)folderContentDataForNoteCollection:(id)collection;
- (id)folderContentDataForNoteContainer:(id)container;
- (id)folderContentDataForVirtualFolder:(id)folder context:(id)context;
- (id)folderDataForHTMLCollection:(id)collection;
- (id)folderDataForHTMLFolder:(id)folder;
- (id)folderDataForModernAccountProxy:(id)proxy;
- (id)folderDataForModernFolder:(id)folder;
- (id)folderDataForVirtualFolder:(id)folder;
- (id)folderViewEventDataObjectsForNoteCollection:(id)collection isInGridMode:(BOOL)mode;
- (id)folderViewEventDataObjectsForNoteContainer:(id)container isInGridMode:(BOOL)mode;
- (id)folderViewEventDataObjectsForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context;
- (id)initForAudioWithSubTrackerName:(id)name;
- (id)layoutDataForIsInGridMode:(BOOL)mode isTimelineView:(BOOL)view;
- (id)noteAccessDataForHTMLNote;
- (id)noteAccessDataForModernNote:(id)note;
- (id)noteCollapsibleSectionDataForHTMLNote:(id)note;
- (id)noteContentDataForHTMLNote:(id)note;
- (id)noteContentDataForModernNote:(id)note;
- (id)noteCreateDataFromAppSuiteDefaults;
- (id)noteDataForHTMLNote:(id)note;
- (id)noteDataForModernNote:(id)note;
- (id)noteEditDataForContextType:(int64_t)type;
- (id)noteEditorCallOutBarDataForButtonTypeValue:(int64_t)value;
- (id)noteViewEventDataObjectsForHTMLNote:(id)note;
- (id)noteViewEventDataObjectsForModernNote:(id)note;
- (id)objectDataForCloudSyncingObject:(id)object;
- (id)passwordDataForModernNote:(id)note;
- (id)passwordModeDataForContextPath:(int64_t)path fromMode:(signed __int16)mode toMode:(signed __int16)toMode;
- (id)searchRankingExperimentItemDataWithStrategyTypeEnum:(int64_t)enum rank:(unint64_t)rank;
- (id)searchSuggestionDataWithSearchSuggestionType:(unint64_t)type;
- (id)selectedResultAccountTypeForSearchResult:(id)result;
- (id)styleDataForStyleTypeValue:(int64_t)value;
- (id)tipDataForFeature:(id)feature;
- (id)tipImpressionEventDataObjectsForFeature:(id)feature andModernNote:(id)note;
- (id)tipLearnMoreClickEventDataObjectsForFeature:(id)feature learnMoreTipName:(id)name;
- (int64_t)addApproachEnumForAddApproach:(int64_t)approach;
- (int64_t)linkContentTypeEnumForURL:(id)l;
- (int64_t)weeksSinceDate:(id)date;
- (unint64_t)pencilStrokeCountForDrawing:(id)drawing;
- (void)aaSessionDidEnd:(id)end;
- (void)dealloc;
- (void)flushAllTimedData:(id)data;
- (void)popContextPathData;
- (void)popNoteCreateData;
- (void)popSearchData;
- (void)pushContextPathDataWithContextPathEnum:(int64_t)enum;
- (void)pushDocScanDataWithID:(id)d actionType:(int64_t)type stage:(int64_t)stage;
- (void)pushInlineDrawingDataForDrawingID:(id)d tool:(int64_t)tool;
- (void)pushNoteCreateDataWithCreateApproach:(int64_t)approach;
- (void)pushSearchDataWithSearchSessionID:(id)d;
- (void)pushStartDocScanPageCountData:(unint64_t)data;
- (void)pushStartTableDataWithStartColumns:(unint64_t)columns startRows:(unint64_t)rows;
- (void)reallySubmitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d gmRank:(unint64_t)rank queryLength:(unint64_t)length searchResultCountData:(id)data searchSuggestionData:(id)suggestionData;
- (void)setSubTracker:(id)tracker;
- (void)startActivityStreamSummaryEventForObject:(id)object;
- (void)startAttributionSideBarViewEventForNote:(id)note;
- (void)startAudioRecordingEvent;
- (void)startFindInNoteEvent;
- (void)startFolderListViewEventDurationTracking;
- (void)startFolderViewEventDurationTrackingForNoteCollection:(id)collection isInGridMode:(BOOL)mode;
- (void)startFolderViewEventDurationTrackingForNoteContainer:(id)container isInGridMode:(BOOL)mode;
- (void)startFolderViewEventDurationTrackingForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context;
- (void)startNoteViewEventDurationTrackingForHTMLNote:(id)note;
- (void)startNoteViewEventDurationTrackingForModernNote:(id)note reportCoreAnalytics:(BOOL)analytics;
- (void)startOnboardingScreenViewEventDurationTracking;
- (void)startTimedEventOfType:(Class)type;
- (void)startTipImpressionEventDurationTrackingForFeature:(id)feature andModernNote:(id)note;
- (void)submitActivityStreamSummaryEventForObject:(id)object halfHeightViewDuration:(double)duration fullHeightViewDuration:(double)viewDuration sideBarViewDuration:(double)barViewDuration minimizedViewDuration:(double)minimizedViewDuration;
- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach contentType:(int64_t)type isTokenized:(BOOL)tokenized noteData:(id *)data noteContentData:(id *)contentData noteAccessData:(id *)accessData;
- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach url:(id)url;
- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach url:(id)url noteData:(id *)data noteContentData:(id *)contentData noteAccessData:(id *)accessData;
- (void)submitAppReviewPromptRequestEvent;
- (void)submitAppSessionResignEvent;
- (void)submitAppSessionResumeEvent;
- (void)submitAttachmentAddEventForAttachment:(id)attachment;
- (void)submitAttachmentBrowserActionEventForType:(int64_t)type;
- (void)submitAttachmentBrowserTapEvent;
- (void)submitAttributionSideBarViewEventForNote:(id)note contextPath:(int64_t)path startState:(int64_t)state endState:(int64_t)endState;
- (void)submitAudioRecordingEventWithAttachment:(id)attachment appBackgroundOccurred:(BOOL)occurred noteMultitaskingOccurred:(BOOL)multitaskingOccurred audioAttachmentDuration:(id)duration;
- (void)submitAudioTranscriptInteractionEventSummaryViewed:(BOOL)viewed transcriptViewed:(BOOL)transcriptViewed interactionTargets:(id)targets interactionTypes:(id)types audioAttachment:(id)attachment;
- (void)submitBiometricsFailEventForModernNote:(id)note;
- (void)submitChangePasswordEventForModernAccount:(id)account isReset:(BOOL)reset;
- (void)submitChangePasswordModeEventForAccount:(id)account contextPath:(int64_t)path fromMode:(signed __int16)mode toMode:(signed __int16)toMode;
- (void)submitChecklistUsageEventForModernNote:(id)note countOfCheckedItems:(int64_t)items countOfTotalItems:(int64_t)totalItems checklistActionType:(int64_t)type;
- (void)submitCollabActivityBrowseEventForObject:(id)object contextPath:(int64_t)path clickContext:(int64_t)context mode:(int64_t)mode isCurrentUserMentioned:(BOOL)mentioned hasRecentUpdates:(BOOL)updates;
- (void)submitCollabNotificationEventWithAction:(int64_t)action;
- (void)submitCollabSummaryEventForObject:(id)object withUpdates:(BOOL)updates;
- (void)submitCollaborationActionEventForCloudSyncingObject:(id)object share:(id)share isInviting:(BOOL)inviting inviteStep:(int64_t)step;
- (void)submitDocScanEventForNote:(id)note pageCount:(unint64_t)count;
- (void)submitEverNoteImportEventWithCount:(unint64_t)count isSuccessful:(BOOL)successful intoAccount:(id)account;
- (void)submitFastSyncSessionEndForNote:(id)note sessionID:(id)d participantVersions:(id)versions numUniqueAccounts:(id)accounts numUniqueDevices:(id)devices errorCode:(id)code numIgnoredMessages:(id)messages;
- (void)submitFastSyncSessionStartForNote:(id)note sessionID:(id)d participantVersions:(id)versions numUniqueAccounts:(id)accounts numUniqueDevices:(id)devices;
- (void)submitFindInNoteEventWasSearchQueryEntered:(BOOL)entered htmlNote:(id)note;
- (void)submitFindInNoteEventWasSearchQueryEntered:(BOOL)entered modernNote:(id)note;
- (void)submitFindInTranscriptEventWasSearchQueryEntered:(BOOL)entered audioAttachment:(id)attachment;
- (void)submitFolderCreateEventForModernFolder:(id)folder creationApproach:(int64_t)approach filterSelection:(id)selection;
- (void)submitFolderDeleteEventForModernFolder:(id)folder;
- (void)submitFolderListViewEvent;
- (void)submitFolderViewEventForNoteCollection:(id)collection isInGridMode:(BOOL)mode;
- (void)submitFolderViewEventForNoteContainer:(id)container isInGridMode:(BOOL)mode;
- (void)submitFolderViewEventForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context;
- (void)submitFullscreenDrawingToInlineDrawingEventForNote:(id)note drawing:(id)drawing drawingID:(id)d method:(int64_t)method;
- (void)submitHashtagAddEventForNote:(id)note tokenContentIdentifier:(id)identifier viaAutoComplete:(BOOL)complete;
- (void)submitHashtagDeleteEvent:(id)event approachEnum:(int64_t)enum;
- (void)submitHashtagRenameEvent:(id)event approachEnum:(int64_t)enum;
- (void)submitInlineDrawingDataForDrawingDeletion:(id)deletion drawingID:(id)d forNote:(id)note;
- (void)submitLinkedNoteAcceleratorEndEvent:(id)event maxCharactersTyped:(unint64_t)typed endResultCount:(unint64_t)count;
- (void)submitLinkedNoteAcceleratorInitiateEvent:(id)event;
- (void)submitMentionAddEventForNote:(id)note mentionID:(id)d participantID:(id)iD viaAutoComplete:(BOOL)complete;
- (void)submitMentionDeleteEvent:(id)event;
- (void)submitMoveCheckedItemsToBottomSwitchEventWithNewState:(BOOL)state isInApp:(BOOL)app;
- (void)submitNoteActionMenuEventForNoteBrowserWithUsageType:(int64_t)type layout:(int64_t)layout activityType:(id)activityType isTimelineView:(BOOL)view;
- (void)submitNoteActionMenuEventForNoteEditorWithUsageType:(int64_t)type activityType:(id)activityType;
- (void)submitNoteCreateEventForHTMLNote:(id)note;
- (void)submitNoteCreateEventForHTMLNote:(id)note createApproach:(int64_t)approach;
- (void)submitNoteCreateEventForModernNote:(id)note;
- (void)submitNoteCreateEventForModernNote:(id)note createApproach:(int64_t)approach;
- (void)submitNoteCreateEventForSearchIndexableNote:(id)note createApproach:(int64_t)approach;
- (void)submitNoteDeleteEventForHTMLNote:(id)note;
- (void)submitNoteDeleteEventForModernNote:(id)note;
- (void)submitNoteEditEventForHTMLNote:(id)note;
- (void)submitNoteEditEventForModernNote:(id)note fromQuickNote:(BOOL)quickNote;
- (void)submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:(id)note buttonTypeValue:(int64_t)value;
- (void)submitNoteEditorCallOutBarButtonSelectionEventForModernNote:(id)note buttonTypeValue:(int64_t)value;
- (void)submitNotePinEventForModernNote:(id)note contextPath:(int64_t)path;
- (void)submitNoteSharrowEventForHTMLNote:(id)note activityType:(id)type contextPath:(int64_t)path;
- (void)submitNoteSharrowEventForModernNote:(id)note activityType:(id)type collaborationSelected:(BOOL)selected countOfCollaboratorsAdded:(int64_t)added countOfCollaboratorsRemoved:(int64_t)removed startInvitedCount:(int64_t)count startAcceptedCount:(int64_t)acceptedCount endInvitedCount:(int64_t)self0 endAcceptedCount:(int64_t)self1;
- (void)submitNoteViewEventForHTMLNote:(id)note;
- (void)submitNoteViewEventForModernNote:(id)note referringNote:(id)referringNote collapsibleSectionAffordanceExposures:(int64_t)exposures collapsibleSectionAffordanceUsages:(int64_t)usages;
- (void)submitNotesToPagesEventWithContextPath:(int64_t)path;
- (void)submitOnboardingScreenViewEventWithType:(int64_t)type;
- (void)submitPDFWorkflowEngagementSummary:(id)summary modernNote:(id)note;
- (void)submitPaletteEngagementEventForNote:(id)note startPosition:(int64_t)position endPosition:(int64_t)endPosition;
- (void)submitPasswordFailEventForModernNote:(id)note;
- (void)submitPasswordProtectEventForModernNote:(id)note;
- (void)submitPasswordSuccessEventForModernNote:(id)note;
- (void)submitPendingInlineDrawingDataForNote:(id)note;
- (void)submitSearchAttemptEvent;
- (void)submitSearchInitiateEventWithSearchSessionID:(id)d searchSuggestionType:(unint64_t)type;
- (void)submitSearchResultExposureSummaryEventWithSearchResultExposureData:(id)data searchSessionID:(id)d;
- (void)submitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d gmRank:(unint64_t)rank;
- (void)submitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d queryLength:(unint64_t)length topHitResultCount:(unint64_t)count noteResultCount:(unint64_t)resultCount attachmentResultCount:(unint64_t)attachmentResultCount gmRank:(unint64_t)rank;
- (void)submitSnapshotCompletionEventIsSuccessful:(BOOL)successful;
- (void)submitSnapshotRegisterEventIsSuccessful:(BOOL)successful;
- (void)submitSnapshotTriggeredEvent;
- (void)submitStyleFormatEventForHTMLNote:(id)note styleTypeValue:(int64_t)value;
- (void)submitStyleFormatEventForModernNote:(id)note styleTypeValue:(int64_t)value;
- (void)submitTableCreateEventForAttachment:(id)attachment inNote:(id)note;
- (void)submitTableEditEventForNote:(id)note endColumns:(unint64_t)columns endRows:(unint64_t)rows;
- (void)submitTableRemoveEventForAttachment:(id)attachment inNote:(id)note;
- (void)submitTagBrowserSelectionEventWithSelectedTagCount:(unint64_t)count isAllTagsSelected:(BOOL)selected;
- (void)submitTimedEventOfTypeIfPossible:(Class)possible;
- (void)submitTipImpressionEventForFeature:(id)feature andModernNote:(id)note;
- (void)submitTipLearnMoreClickEventForFeature:(id)feature learnMoreTipName:(id)name;
@end

@implementation ICNAEventReporter

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAEventReporter;
  [(ICNAEventReporter *)&v4 dealloc];
}

- (ICNAEventReporter)initWithSubTrackerName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ICNAEventReporter;
  v5 = [(ICNAOptedInObject *)&v13 init];
  if (v5)
  {
    v6 = [[ICNASubTracker alloc] initWithName:nameCopy];
    subTracker = v5->_subTracker;
    v5->_subTracker = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    timedDataTrackingSet = v5->_timedDataTrackingSet;
    v5->_timedDataTrackingSet = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = +[ICNAController sharedController];
    [defaultCenter addObserver:v5 selector:sel_flushAllTimedData_ name:@"ICNASessionFlushTimedDataNotification" object:v11];
  }

  return v5;
}

- (id)initForAudioWithSubTrackerName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ICNAEventReporter;
  v5 = [(ICNAOptedInObject *)&v14 init];
  if (v5)
  {
    v6 = [ICNASubTracker alloc];
    v7 = +[ICNAController sharedController];
    aaTrackerForAudio = [v7 aaTrackerForAudio];
    v9 = [(ICNASubTracker *)v6 initWithName:nameCopy parentAATracker:aaTrackerForAudio];
    subTracker = v5->_subTracker;
    v5->_subTracker = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    timedDataTrackingSet = v5->_timedDataTrackingSet;
    v5->_timedDataTrackingSet = v11;
  }

  return v5;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)name windowScene:(id)scene
{
  nameCopy = name;
  sceneCopy = scene;
  if (sceneCopy)
  {
    v24.receiver = self;
    v24.super_class = ICNAEventReporter;
    v9 = [(ICNAOptedInObject *)&v24 init];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_windowScene, sceneCopy);
      objc_storeStrong(&v10->_subTrackerName, name);
      session = [sceneCopy session];
      persistentIdentifier = [session persistentIdentifier];

      v13 = +[ICNAController sharedController];
      v14 = [v13 aaTrackerForWindowSceneIdentifier:persistentIdentifier];

      if (v14)
      {
        v15 = [[ICNASubTracker alloc] initWithName:nameCopy parentAATracker:v14];
        subTracker = v10->_subTracker;
        v10->_subTracker = v15;
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      timedDataTrackingSet = v10->_timedDataTrackingSet;
      v10->_timedDataTrackingSet = v17;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel_flushAllTimedData_ name:@"ICNASessionFlushTimedDataNotification" object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v10 selector:sel_aaSessionDidEnd_ name:@"ICNASessionDidEndNotification" object:0];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v22 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:windowScene:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)name window:(id)window
{
  nameCopy = name;
  if (window)
  {
    windowScene = [window windowScene];
    self = [(ICNAEventReporter *)self initWithSubTrackerName:nameCopy windowScene:windowScene];

    selfCopy = self;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:window:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ICNAEventReporter)initWithSubTrackerName:(id)name view:(id)view
{
  nameCopy = name;
  if (view)
  {
    window = [view window];
    windowScene = [window windowScene];
    self = [(ICNAEventReporter *)self initWithSubTrackerName:nameCopy windowScene:windowScene];

    selfCopy = self;
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter initWithSubTrackerName:view:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ICNASubTracker)subTracker
{
  subTracker = self->_subTracker;
  if (!subTracker)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    session = [WeakRetained session];
    persistentIdentifier = [session persistentIdentifier];

    v7 = +[ICNAController sharedController];
    v8 = [v7 aaTrackerForWindowSceneIdentifier:persistentIdentifier];

    if (v8)
    {
      v9 = [[ICNASubTracker alloc] initWithName:self->_subTrackerName parentAATracker:v8];
      v10 = self->_subTracker;
      self->_subTracker = v9;
    }

    subTracker = self->_subTracker;
  }

  return subTracker;
}

- (void)setSubTracker:(id)tracker
{
  trackerCopy = tracker;
  if (self->_subTracker != trackerCopy)
  {
    v8 = trackerCopy;
    v6 = NSStringFromSelector(sel_subTracker);
    [(ICNAEventReporter *)self willChangeValueForKey:v6];

    objc_storeStrong(&self->_subTracker, tracker);
    v7 = NSStringFromSelector(sel_subTracker);
    [(ICNAEventReporter *)self didChangeValueForKey:v7];

    trackerCopy = v8;
  }
}

- (void)startTimedEventOfType:(Class)type
{
  objc_initWeak(&location, self);
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ICNAEventReporter_startTimedEventOfType___block_invoke;
  v7[3] = &unk_2799AFA98;
  objc_copyWeak(v8, &location);
  v8[1] = type;
  [v5 trackTimedEventType:type subTracker:subTracker synchronousTaskBeforeStarting:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __43__ICNAEventReporter_startTimedEventOfType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = NSStringFromClass(*(a1 + 40));
    v4 = [v5 timedDataTrackingSet];
    [v4 addObject:v3];

    WeakRetained = v5;
  }
}

- (void)submitTimedEventOfTypeIfPossible:(Class)possible
{
  objc_initWeak(&location, self);
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke;
  v7[3] = &unk_2799AFAC0;
  objc_copyWeak(v8, &location);
  v8[1] = possible;
  [v5 submitEventOfType:possible subTracker:subTracker synchronousTaskBeforeSubmitting:v7];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

uint64_t __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = NSStringFromClass(*(a1 + 40));
    v4 = [WeakRetained timedDataTrackingSet];
    v5 = [v4 containsObject:v3];

    v6 = [WeakRetained timedDataTrackingSet];
    [v6 removeObject:v3];
  }

  else
  {
    v5 = 1;
  }

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke_cold_1(a1, v5, v7);
  }

  return v5;
}

- (void)flushAllTimedData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  object = [dataCopy object];
  v6 = ICDynamicCast();

  session = [v6 session];
  persistentIdentifier = [session persistentIdentifier];

  windowScene = [(ICNAEventReporter *)self windowScene];
  v10 = windowScene;
  if (persistentIdentifier)
  {
    session2 = [windowScene session];
    persistentIdentifier2 = [session2 persistentIdentifier];
    v13 = [persistentIdentifier isEqual:persistentIdentifier2];

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    objc_initWeak(&location, self);
    v14 = +[ICNAController sharedController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__ICNAEventReporter_flushAllTimedData___block_invoke;
    v15[3] = &unk_2799AF408;
    objc_copyWeak(&v16, &location);
    [v14 performOnInstrumentationQueueWaitUntilDone:0 block:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_6:
}

void __39__ICNAEventReporter_flushAllTimedData___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [WeakRetained timedDataTrackingSet];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = +[ICNAController sharedController];
          v10 = NSClassFromString(v8);
          v11 = [v2 subTracker];
          [v9 _immediatelySubmitEventOfType:v10 subTracker:v11];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v12 = [v2 timedDataTrackingSet];
    [v12 removeAllObjects];
  }
}

- (void)aaSessionDidEnd:(id)end
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICNAEventReporterLostSessionNotification" object:self];
}

- (void)submitAppSessionResignEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:subTracker];
}

- (void)submitAppSessionResumeEvent
{
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:subTracker];
}

- (void)startOnboardingScreenViewEventDurationTracking
{
  v10 = [[ICASOnboardingScreenType alloc] initWithOnboardingScreenType:0];
  v3 = [[ICASOnboardingUserAction alloc] initWithOnboardingUserAction:0];
  v4 = [[ICASOnboardingScreenData alloc] initWithOnboardingScreenType:v10 onboardingUserAction:v3];
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObject:v4 unique:1 onlyOnce:0 subTracker:subTracker];

  v7 = +[ICNAController sharedController];
  v8 = objc_opt_class();
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v7 trackTimedEventType:v8 subTracker:subTracker2];
}

- (void)submitOnboardingScreenViewEventWithType:(int64_t)type
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASOnboardingScreenType alloc] initWithOnboardingScreenType:type];
  v5 = [ICASOnboardingScreenData alloc];
  v6 = [[ICASOnboardingUserAction alloc] initWithOnboardingUserAction:1];
  v7 = [(ICASOnboardingScreenData *)v5 initWithOnboardingScreenType:v4 onboardingUserAction:v6];

  v8 = +[ICNAController sharedController];
  v9 = objc_opt_class();
  v12[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 submitEventOfType:v9 pushThenPopDataObjects:v10 subTracker:subTracker];
}

- (void)submitNoteCreateEventForModernNote:(id)note
{
  v17[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  folder = [noteCopy folder];
  v7 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [noteCopy account];

  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  noteCreateDataFromAppSuiteDefaults = [(ICNAEventReporter *)self noteCreateDataFromAppSuiteDefaults];
  if (noteCreateDataFromAppSuiteDefaults)
  {
    v11 = +[ICNAController sharedController];
    subTracker = [(ICNAEventReporter *)self subTracker];
    [v11 pushDataObject:noteCreateDataFromAppSuiteDefaults unique:0 onlyOnce:1 subTracker:subTracker];
  }

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v17[0] = v5;
  v17[1] = v7;
  v17[2] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:subTracker2];
}

- (void)submitNoteCreateEventForModernNote:(id)note createApproach:(int64_t)approach
{
  v19[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v8 = [ICASNoteCreateData alloc];
  v9 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:approach];
  v10 = [(ICASNoteCreateData *)v8 initWithNoteCreateApproach:v9];

  folder = [noteCopy folder];
  v12 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [noteCopy account];

  v14 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v19[0] = v7;
  v19[1] = v10;
  v19[2] = v12;
  v19[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:subTracker];
}

- (void)submitNoteCreateEventForHTMLNote:(id)note
{
  v17[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];
  folder = [noteCopy folder];
  v7 = [(ICNAEventReporter *)self folderDataForHTMLFolder:folder];

  account = [noteCopy account];

  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  noteCreateDataFromAppSuiteDefaults = [(ICNAEventReporter *)self noteCreateDataFromAppSuiteDefaults];
  if (noteCreateDataFromAppSuiteDefaults)
  {
    v11 = +[ICNAController sharedController];
    subTracker = [(ICNAEventReporter *)self subTracker];
    [v11 pushDataObject:noteCreateDataFromAppSuiteDefaults unique:0 onlyOnce:1 subTracker:subTracker];
  }

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v17[0] = v5;
  v17[1] = v7;
  v17[2] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:subTracker2];
}

- (void)submitNoteCreateEventForHTMLNote:(id)note createApproach:(int64_t)approach
{
  v19[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];
  v8 = [ICASNoteCreateData alloc];
  v9 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:approach];
  v10 = [(ICASNoteCreateData *)v8 initWithNoteCreateApproach:v9];

  folder = [noteCopy folder];
  v12 = [(ICNAEventReporter *)self folderDataForHTMLFolder:folder];

  account = [noteCopy account];

  v14 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v19[0] = v7;
  v19[1] = v10;
  v19[2] = v12;
  v19[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:subTracker];
}

- (void)submitNoteCreateEventForSearchIndexableNote:(id)note createApproach:(int64_t)approach
{
  noteCopy = note;
  objc_opt_class();
  v8 = ICDynamicCast();
  v7 = ICProtocolCast();

  if (v8)
  {
    [(ICNAEventReporter *)self submitNoteCreateEventForModernNote:v8 createApproach:approach];
  }

  else if (v7)
  {
    [(ICNAEventReporter *)self submitNoteCreateEventForHTMLNote:v7 createApproach:approach];
  }
}

- (void)submitNoteDeleteEventForModernNote:(id)note
{
  noteCopy = note;
  v13 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v5 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v6 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v8 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, v5, v6, v8, 0}];
  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v9 subTracker:subTracker];
}

- (void)submitNoteDeleteEventForHTMLNote:(id)note
{
  noteCopy = note;
  v13 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];
  v5 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:noteCopy];
  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  account = [noteCopy account];

  v8 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, v5, noteAccessDataForHTMLNote, v8, 0}];
  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v9 subTracker:subTracker];
}

- (void)submitNoteSharrowEventForModernNote:(id)note activityType:(id)type collaborationSelected:(BOOL)selected countOfCollaboratorsAdded:(int64_t)added countOfCollaboratorsRemoved:(int64_t)removed startInvitedCount:(int64_t)count startAcceptedCount:(int64_t)acceptedCount endInvitedCount:(int64_t)self0 endAcceptedCount:(int64_t)self1
{
  selectedCopy = selected;
  typeCopy = type;
  noteCopy = note;
  v50 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v18 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  folder = [noteCopy folder];
  v51 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [noteCopy account];
  v49 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v48 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];

  v47 = [objc_opt_class() filteredActivityType:typeCopy];
  v21 = [[ICASSharrowContextData alloc] initWithSharrowSelectedItem:v47];
  if ([typeCopy isEqualToString:@"com.apple.notes.sharing.initiate"])
  {
    v22 = 0;
  }

  else if ([typeCopy isEqualToString:@"com.apple.notes.sharing.cancel"])
  {
    v22 = 3;
  }

  else
  {
    v23 = [objc_opt_class() activityTypeHasUnknownShareFlow:typeCopy];
    v24 = 1;
    if (selectedCopy)
    {
      v24 = 2;
    }

    if (v23)
    {
      v22 = 3;
    }

    else
    {
      v22 = v24;
    }
  }

  v46 = [[ICASShareFlowType alloc] initWithShareFlowType:v22];
  v44 = [[ICASShareFlowData alloc] initWithShareFlowType:v46];
  v25 = [ICASCollaboratorData alloc];
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(added)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(removed)];
  v43 = [(ICASCollaboratorData *)v25 initWithCountOfCollaboratorAdded:v26 countOfCollaboratorRemoved:v27];

  v28 = [ICASStartCollaborationCollaboratorData alloc];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(acceptedCount)];
  v45 = [(ICASStartCollaborationCollaboratorData *)v28 initWithStartInvitedCount:v29 startAcceptedCount:v30];

  v31 = [ICASEndCollaborationCollaboratorData alloc];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(invitedCount)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(endAcceptedCount)];
  v34 = [(ICASEndCollaborationCollaboratorData *)v31 initWithEndInvitedCount:v32 endAcceptedCount:v33];

  v35 = v21;
  v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v50, v18, v51, v21, v49, v48, v44, v43, v45, v34, 0}];
  v37 = [ICASContextPathData alloc];
  v38 = [[ICASContextPath alloc] initWithContextPath:1];
  v39 = [(ICASContextPathData *)v37 initWithContextPath:v38];

  [v36 addObject:v39];
  v40 = objc_opt_class();
  v41 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v41 submitEventOfType:v40 pushThenPopDataObjects:v36 subTracker:subTracker];
}

- (void)submitNoteSharrowEventForHTMLNote:(id)note activityType:(id)type contextPath:(int64_t)path
{
  typeCopy = type;
  noteCopy = note;
  v8 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];
  v9 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:noteCopy];
  folder = [noteCopy folder];

  v11 = [(ICNAEventReporter *)self folderDataForHTMLFolder:folder];
  v12 = [ICASSharrowContextData alloc];
  v13 = [objc_opt_class() filteredActivityType:typeCopy];
  v36 = [(ICASSharrowContextData *)v12 initWithSharrowSelectedItem:v13];

  v32 = folder;
  account = [folder account];
  v35 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  if ([typeCopy isEqualToString:@"com.apple.notes.sharing.initiate"])
  {
    v15 = 0;
  }

  else if ([objc_opt_class() activityTypeHasUnknownShareFlow:typeCopy])
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  v16 = [[ICASShareFlowType alloc] initWithShareFlowType:v15];
  v17 = [[ICASShareFlowData alloc] initWithShareFlowType:v16];
  v18 = [[ICASCollaboratorData alloc] initWithCountOfCollaboratorAdded:&unk_286E61B70 countOfCollaboratorRemoved:&unk_286E61B70];
  v19 = [[ICASStartCollaborationCollaboratorData alloc] initWithStartInvitedCount:&unk_286E61B70 startAcceptedCount:&unk_286E61B70];
  v20 = [[ICASEndCollaborationCollaboratorData alloc] initWithEndInvitedCount:&unk_286E61B70 endAcceptedCount:&unk_286E61B70];
  v31 = v11;
  v33 = v9;
  v29 = v9;
  v21 = v8;
  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, v29, v11, v36, v35, noteAccessDataForHTMLNote, v17, v18, v19, v20, 0}];
  if (path)
  {
    v23 = [ICASContextPathData alloc];
    v24 = [[ICASContextPath alloc] initWithContextPath:path];
    v25 = [(ICASContextPathData *)v23 initWithContextPath:v24];

    [v22 addObject:v25];
  }

  v26 = objc_opt_class();
  v27 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v27 submitEventOfType:v26 pushThenPopDataObjects:v22 subTracker:subTracker];
}

- (void)pushContextPathDataWithContextPathEnum:(int64_t)enum
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASContextPathData alloc];
  v6 = [[ICASContextPath alloc] initWithContextPath:enum];
  v7 = [(ICASContextPathData *)v5 initWithContextPath:v6];

  v8 = +[ICNAController sharedController];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 pushDataObjects:v9 unique:0 onlyOnce:0 subTracker:subTracker];
}

- (void)popContextPathData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:subTracker];
}

- (void)submitCollaborationActionEventForCloudSyncingObject:(id)object share:(id)share isInviting:(BOOL)inviting inviteStep:(int64_t)step
{
  invitingCopy = inviting;
  shareCopy = share;
  objectCopy = object;
  objc_opt_class();
  v11 = ICDynamicCast();
  objc_opt_class();
  v12 = ICDynamicCast();

  if (v11 | v12)
  {
    v36 = objc_opt_class();
    if (v11)
    {
      account = [v11 account];
      v14 = 1;
    }

    else
    {
      account = [v12 account];
      v14 = 2;
    }

    v37 = account;
    v15 = [(ICNAEventReporter *)self accountDataForModernAccount:account];
    v34 = [[ICASCollaborationItemType alloc] initWithCollaborationItemType:v14];
    v16 = [[ICASCollaborationItemData alloc] initWithCollaborationItemType:v34];
    v17 = [(ICNAEventReporter *)self collaborationActionDataIsInviting:invitingCopy inviteStep:step];
    v35 = v15;
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v15, v16, v17, 0}];
    if (v11)
    {
      v19 = [(ICNAEventReporter *)self noteDataForModernNote:v11];
      [v18 ic_addNonNilObject:v19];
      v20 = [(ICNAEventReporter *)self noteContentDataForModernNote:v11];
      [v18 ic_addNonNilObject:v20];
    }

    v21 = +[ICNAController sharedController];
    ic_isOwnedByCurrentUser = [shareCopy ic_isOwnedByCurrentUser];
    if (shareCopy && !ic_isOwnedByCurrentUser)
    {
      goto LABEL_14;
    }

    ic_nonOwnerInvitedParticipantsCount = [shareCopy ic_nonOwnerInvitedParticipantsCount];
    ic_nonOwnerAcceptedParticipantsCount = [shareCopy ic_nonOwnerAcceptedParticipantsCount];
    if (step == 3)
    {
      v33 = [ICASEndCollaborationCollaboratorData alloc];
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(ic_nonOwnerInvitedParticipantsCount)];
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(ic_nonOwnerAcceptedParticipantsCount)];
      v27 = [(ICASEndCollaborationCollaboratorData *)v33 initWithEndInvitedCount:v29 endAcceptedCount:v30];

      [v18 addObject:v27];
    }

    else
    {
      if (step != 1)
      {
LABEL_14:
        subTracker = [(ICNAEventReporter *)self subTracker];
        [v21 submitEventOfType:v36 pushThenPopDataObjects:v18 subTracker:subTracker];

        goto LABEL_15;
      }

      v32 = [ICASStartCollaborationCollaboratorData alloc];
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(ic_nonOwnerInvitedParticipantsCount)];
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(ic_nonOwnerAcceptedParticipantsCount)];
      v27 = [(ICASStartCollaborationCollaboratorData *)v32 initWithStartInvitedCount:v25 startAcceptedCount:v26];

      subTracker2 = [(ICNAEventReporter *)self subTracker];
      [v21 pushDataObject:v27 unique:1 onlyOnce:0 subTracker:subTracker2];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)submitCollabNotificationEventWithAction:(int64_t)action
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASCollabNotificationAction alloc] initWithCollabNotificationAction:action];
  v5 = [[ICASCollabNotificationData alloc] initWithCollabNotificationAction:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:subTracker];
}

- (void)submitEverNoteImportEventWithCount:(unint64_t)count isSuccessful:(BOOL)successful intoAccount:(id)account
{
  successfulCopy = successful;
  v41[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v9 = [[ICASImportFileType alloc] initWithImportFileType:5];
  v10 = [ICASImportItemData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v12 = [(ICASImportItemData *)v10 initWithImportFileType:v9 importItemCount:v11];

  v13 = [ICASImportData alloc];
  v41[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v15 = [(ICASImportData *)v13 initWithImportSummary:v14];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  managedObjectContext = [accountCopy managedObjectContext];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __81__ICNAEventReporter_submitEverNoteImportEventWithCount_isSuccessful_intoAccount___block_invoke;
  v30 = &unk_2799AF078;
  v33 = &v34;
  selfCopy = self;
  v17 = accountCopy;
  v32 = v17;
  [managedObjectContext performBlockAndWait:&v27];

  v18 = [ICASResultType alloc];
  if (successfulCopy)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  selfCopy = [(ICASResultType *)v18 initWithResultType:v19, v27, v28, v29, v30, selfCopy];
  v21 = [[ICASResultData alloc] initWithResultType:selfCopy];
  v22 = +[ICNAController sharedController];
  v23 = objc_opt_class();
  v24 = v35[5];
  v40[0] = v15;
  v40[1] = v24;
  v40[2] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v22 submitEventOfType:v23 pushThenPopDataObjects:v25 subTracker:subTracker];

  _Block_object_dispose(&v34, 8);
}

uint64_t __81__ICNAEventReporter_submitEverNoteImportEventWithCount_isSuccessful_intoAccount___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) accountDataForModernAccount:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)noteViewEventDataObjectsForModernNote:(id)note
{
  v14[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v6 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy, v5];
  v14[1] = v6;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  v14[2] = v7;
  folder = [noteCopy folder];
  v9 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];
  v14[3] = v9;
  account = [noteCopy account];

  v11 = [(ICNAEventReporter *)self accountDataForModernAccount:account];
  v14[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];

  return v12;
}

- (id)noteViewEventDataObjectsForHTMLNote:(id)note
{
  v15[6] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];
  v15[0] = v5;
  v6 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:noteCopy];
  v15[1] = v6;
  v7 = [(ICNAEventReporter *)self noteCollapsibleSectionDataForHTMLNote:noteCopy];
  v15[2] = v7;
  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v15[3] = noteAccessDataForHTMLNote;
  folder = [noteCopy folder];
  v10 = [(ICNAEventReporter *)self folderDataForHTMLFolder:folder];
  v15[4] = v10;
  account = [noteCopy account];

  v12 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];
  v15[5] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];

  return v13;
}

- (void)startNoteViewEventDurationTrackingForModernNote:(id)note reportCoreAnalytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  v18[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v9 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  folder = [noteCopy folder];
  v11 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [noteCopy account];
  v13 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v14 = +[ICNAController sharedController];
  v18[0] = v7;
  v18[1] = v8;
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v14 pushDataObjects:v15 unique:1 onlyOnce:0 subTracker:subTracker];

  if (analyticsCopy)
  {
    v17 = +[ICNACoreAnalyticsReporter sharedReporter];
    [v17 fireNoteViewEventWithNote:noteCopy noteData:v7 noteContentData:v8];
  }
}

- (void)submitNoteViewEventForModernNote:(id)note referringNote:(id)referringNote collapsibleSectionAffordanceExposures:(int64_t)exposures collapsibleSectionAffordanceUsages:(int64_t)usages
{
  referringNoteCopy = referringNote;
  v10 = [(ICNAEventReporter *)self noteViewEventDataObjectsForModernNote:note];
  v11 = [v10 mutableCopy];

  v12 = [ICASCollapsibleSectionData alloc];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:exposures];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:usages];
  v15 = [(ICASCollapsibleSectionData *)v12 initWithSectionAffordanceExposures:v13 sectionAffordanceUsages:v14];

  [v11 addObject:v15];
  if (referringNoteCopy)
  {
    v16 = +[ICNAIdentityManager sharedManager];
    identifier = [referringNoteCopy identifier];
    v18 = [v16 saltedID:identifier forClass:objc_opt_class()];

    v19 = [[ICASViewRefData alloc] initWithLinkedNoteId:v18];
    [v11 addObject:v19];
  }

  v20 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v20 pushDataObjects:v11 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)startNoteViewEventDurationTrackingForHTMLNote:(id)note
{
  noteCopy = note;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v7 = [(ICNAEventReporter *)self noteViewEventDataObjectsForHTMLNote:noteCopy];

  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitNoteViewEventForHTMLNote:(id)note
{
  v6 = [(ICNAEventReporter *)self noteViewEventDataObjectsForHTMLNote:note];
  v4 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v4 pushDataObjects:v6 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)pushSearchDataWithSearchSessionID:(id)d
{
  dCopy = d;
  v5 = [ICASSearchData alloc];
  v6 = [dCopy copy];

  v9 = [(ICASSearchData *)v5 initWithSearchSessionID:v6];
  v7 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)popSearchData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:subTracker];
}

- (void)submitTableCreateEventForAttachment:(id)attachment inNote:(id)note
{
  v22[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  attachmentCopy = attachment;
  v19 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v21 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v20 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  tableModel = [attachmentCopy tableModel];

  table = [tableModel table];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(table, "rowCount"))}];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(table, "columnCount"))}];
  v13 = [[ICASStartTableData alloc] initWithStartingRowCount:v11 startingColumnCount:v12];
  v14 = [[ICASEndTableData alloc] initWithEndingRowCount:v11 endingColumnCount:v12];
  v15 = +[ICNAController sharedController];
  v16 = objc_opt_class();
  v22[0] = v19;
  v22[1] = v21;
  v22[2] = v20;
  v22[3] = v13;
  v22[4] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v15 submitEventOfType:v16 pushThenPopDataObjects:v17 subTracker:subTracker];
}

- (void)pushStartTableDataWithStartColumns:(unint64_t)columns startRows:(unint64_t)rows
{
  v7 = [ICASStartTableData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(rows)];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(columns)];
  v12 = [(ICASStartTableData *)v7 initWithStartingRowCount:v8 startingColumnCount:v9];

  v10 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 pushDataObject:v12 unique:1 onlyOnce:1 subTracker:subTracker];
}

- (void)submitTableEditEventForNote:(id)note endColumns:(unint64_t)columns endRows:(unint64_t)rows
{
  v21[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v10 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v12 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v13 = [ICASEndTableData alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(rows)];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(columns)];
  v16 = [(ICASEndTableData *)v13 initWithEndingRowCount:v14 endingColumnCount:v15];

  v17 = +[ICNAController sharedController];
  v18 = objc_opt_class();
  v21[0] = v9;
  v21[1] = v10;
  v21[2] = v12;
  v21[3] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v17 submitEventOfType:v18 pushThenPopDataObjects:v19 subTracker:subTracker];
}

- (void)submitTableRemoveEventForAttachment:(id)attachment inNote:(id)note
{
  v21[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  attachmentCopy = attachment;
  v8 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v20 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v19 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  tableModel = [attachmentCopy tableModel];

  table = [tableModel table];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(table, "rowCount"))}];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(table, "columnCount"))}];
  v13 = [[ICASStartTableData alloc] initWithStartingRowCount:v18 startingColumnCount:v12];
  v14 = +[ICNAController sharedController];
  v15 = objc_opt_class();
  v21[0] = v8;
  v21[1] = v20;
  v21[2] = v19;
  v21[3] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v14 submitEventOfType:v15 pushThenPopDataObjects:v16 subTracker:subTracker];
}

- (void)submitNotePinEventForModernNote:(id)note contextPath:(int64_t)path
{
  noteCopy = note;
  v6 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v8 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v9 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v10 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v6, v8, v9, v10, 0}];
  if (path)
  {
    v12 = [ICASContextPathData alloc];
    v13 = [[ICASContextPath alloc] initWithContextPath:path];
    v14 = [(ICASContextPathData *)v12 initWithContextPath:v13];

    [v11 addObject:v14];
  }

  [noteCopy isPinned];
  v15 = objc_opt_class();
  v16 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v16 submitEventOfType:v15 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)submitFolderCreateEventForModernFolder:(id)folder creationApproach:(int64_t)approach filterSelection:(id)selection
{
  selectionCopy = selection;
  v8 = MEMORY[0x277CBEB18];
  folderCopy = folder;
  array = [v8 array];
  v11 = [(ICNAEventReporter *)self folderDataForModernFolder:folderCopy];
  [array addObject:v11];
  account = [folderCopy account];
  v13 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  [array addObject:v13];
  LODWORD(account) = [folderCopy isSmartFolder];

  if (account)
  {
    v14 = [[ICASFolderCreationApproach alloc] initWithFolderCreationApproach:approach];
    objc_opt_class();
    v15 = [selectionCopy filterTypeSelectionForFilterType:0];
    v16 = ICDynamicCast();

    if (selectionCopy)
    {
      filterTypeSelections = [selectionCopy filterTypeSelections];
      v18 = [filterTypeSelections ic_compactMap:&__block_literal_global_3];

      joinOperator = [selectionCopy joinOperator];
      if (joinOperator == 1)
      {
        v20 = 2;
      }

      else
      {
        v20 = joinOperator == 0;
      }
    }

    else
    {
      v20 = 0;
      v18 = MEMORY[0x277CBEBF8];
    }

    v21 = [ICASSmartFolderCreationData alloc];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v16, "selectedTagCount"))}];
    v23 = [[ICASFilterCondition alloc] initWithFilterCondition:v20];
    v24 = [(ICASSmartFolderCreationData *)v21 initWithFolderCreationApproach:v14 countOfTags:v22 filterCondition:v23 enabledFiltersArray:v18];

    [array addObject:v24];
  }

  v25 = +[ICNAController sharedController];
  v26 = objc_opt_class();
  v27 = [array copy];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v25 submitEventOfType:v26 pushThenPopDataObjects:v27 subTracker:subTracker];
}

ICASEnabledFiltersArrayData *__93__ICNAEventReporter_submitFolderCreateEventForModernFolder_creationApproach_filterSelection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ICASEnabledFiltersArrayData alloc];
  [v2 filterType];
  v4 = NSStringFromICFilterType();
  v5 = [v2 rawFilterValue];

  v6 = [(ICASEnabledFiltersArrayData *)v3 initWithFilterType:v4 filterValue:v5];

  return v6;
}

- (id)folderViewEventDataObjectsForNoteContainer:(id)container isInGridMode:(BOOL)mode
{
  containerCopy = container;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  managedObjectContext = [containerCopy managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ICNAEventReporter_folderViewEventDataObjectsForNoteContainer_isInGridMode___block_invoke;
  v12[3] = &unk_2799AFB08;
  v8 = containerCopy;
  v13 = v8;
  selfCopy = self;
  modeCopy = mode;
  v15 = &v17;
  [managedObjectContext performBlockAndWait:v12];

  v9 = v18[5];
  if (!v9)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __77__ICNAEventReporter_folderViewEventDataObjectsForNoteContainer_isInGridMode___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = ICDynamicCast();
  v3 = [*(a1 + 32) noteContainerAccount];
  v4 = [v3 accountProxy];

  v5 = *(a1 + 40);
  if (v2)
  {
    [v5 folderDataForModernFolder:v2];
  }

  else
  {
    [v5 folderDataForModernAccountProxy:v4];
  }
  v6 = ;
  v7 = [*(a1 + 40) folderContentDataForNoteContainer:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) noteContainerAccount];
  v10 = [v8 accountDataForModernAccount:v9];

  v11 = [*(a1 + 40) layoutDataForIsInGridMode:*(a1 + 56) isTimelineView:{objc_msgSend(*(a1 + 32), "isShowingDateHeaders")}];
  v15[0] = v6;
  v15[1] = v7;
  v15[2] = v10;
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)folderViewEventDataObjectsForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context
{
  folderCopy = folder;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ICNAEventReporter_folderViewEventDataObjectsForVirtualFolder_isInGridMode_context___block_invoke;
  v15[3] = &unk_2799AFB30;
  v10 = folderCopy;
  v16 = v10;
  v11 = contextCopy;
  selfCopy = self;
  v19 = &v21;
  v17 = v11;
  modeCopy = mode;
  [v11 performBlockAndWait:v15];
  v12 = v22[5];
  if (!v12)
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __85__ICNAEventReporter_folderViewEventDataObjectsForVirtualFolder_isInGridMode_context___block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountObjectID];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) accountObjectID];
    v5 = [v3 objectWithID:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [ICASAccountData alloc];
  v7 = [[ICASAccountType alloc] initWithAccountType:0];
  v8 = [(ICASAccountData *)v6 initWithAccountType:v7 accountID:&stru_286E361B0];

  v9 = [*(a1 + 48) folderDataForVirtualFolder:*(a1 + 32)];
  v16[0] = v9;
  v10 = [*(a1 + 48) folderContentDataForVirtualFolder:*(a1 + 32) context:*(a1 + 40)];
  v16[1] = v10;
  if (v5)
  {
    v11 = [*(a1 + 48) accountDataForModernAccount:v5];
  }

  else
  {
    v11 = v8;
  }

  v16[2] = v11;
  v12 = [*(a1 + 48) layoutDataForIsInGridMode:*(a1 + 64) isTimelineView:{objc_msgSend(*(a1 + 32), "isShowingDateHeaders")}];
  v16[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v5)
  {
  }
}

- (id)folderViewEventDataObjectsForNoteCollection:(id)collection isInGridMode:(BOOL)mode
{
  modeCopy = mode;
  v15[4] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v7 = ICProtocolCast();
  v8 = [(ICNAEventReporter *)self folderDataForHTMLCollection:collectionCopy];
  v9 = [(ICNAEventReporter *)self folderContentDataForNoteCollection:collectionCopy];
  if (v7)
  {
    [v7 account];
  }

  else
  {
    ICCheckedProtocolCast();
  }
  v10 = ;
  v11 = [(ICNAEventReporter *)self accountDataForHTMLAccount:v10];

  v12 = [(ICNAEventReporter *)self layoutDataForIsInGridMode:modeCopy isTimelineView:0];
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v11;
  v15[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];

  return v13;
}

- (void)startFolderViewEventDurationTrackingForNoteContainer:(id)container isInGridMode:(BOOL)mode
{
  modeCopy = mode;
  containerCopy = container;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v9 = [(ICNAEventReporter *)self folderViewEventDataObjectsForNoteContainer:containerCopy isInGridMode:modeCopy];

  v7 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObjects:v9 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitFolderViewEventForNoteContainer:(id)container isInGridMode:(BOOL)mode
{
  v7 = [(ICNAEventReporter *)self folderViewEventDataObjectsForNoteContainer:container isInGridMode:mode];
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)startFolderViewEventDurationTrackingForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context
{
  modeCopy = mode;
  contextCopy = context;
  folderCopy = folder;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v12 = [(ICNAEventReporter *)self folderViewEventDataObjectsForVirtualFolder:folderCopy isInGridMode:modeCopy context:contextCopy];

  v10 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 pushDataObjects:v12 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitFolderViewEventForVirtualFolder:(id)folder isInGridMode:(BOOL)mode context:(id)context
{
  v8 = [(ICNAEventReporter *)self folderViewEventDataObjectsForVirtualFolder:folder isInGridMode:mode context:context];
  v6 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 pushDataObjects:v8 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)startFolderViewEventDurationTrackingForNoteCollection:(id)collection isInGridMode:(BOOL)mode
{
  modeCopy = mode;
  collectionCopy = collection;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v9 = [(ICNAEventReporter *)self folderViewEventDataObjectsForNoteCollection:collectionCopy isInGridMode:modeCopy];

  v7 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObjects:v9 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitFolderViewEventForNoteCollection:(id)collection isInGridMode:(BOOL)mode
{
  v7 = [(ICNAEventReporter *)self folderViewEventDataObjectsForNoteCollection:collection isInGridMode:mode];
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (void)startFolderListViewEventDurationTracking
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

- (void)submitFolderListViewEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:v3];
}

- (void)submitFolderDeleteEventForModernFolder:(id)folder
{
  v13[3] = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  v5 = [(ICNAEventReporter *)self folderDataForModernFolder:folderCopy];
  account = [folderCopy account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v8 = [(ICNAEventReporter *)self folderContentDataForNoteContainer:folderCopy];

  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v5;
  v13[1] = v8;
  v13[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)pushInlineDrawingDataForDrawingID:(id)d tool:(int64_t)tool
{
  dCopy = d;
  pendingInlineDrawingInformation = [(ICNAEventReporter *)self pendingInlineDrawingInformation];

  if (!pendingInlineDrawingInformation)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ICNAEventReporter *)self setPendingInlineDrawingInformation:dictionary];
  }

  pendingInlineDrawingInformation2 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
  v9 = [pendingInlineDrawingInformation2 objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(ICInlineDrawingAnalyticsInformation);
    [(ICInlineDrawingAnalyticsInformation *)v9 setStartFingerStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setStartPencilStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setEndFingerStrokeCount:0];
    [(ICInlineDrawingAnalyticsInformation *)v9 setEndPencilStrokeCount:0];
    pendingInlineDrawingInformation3 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
    [pendingInlineDrawingInformation3 setObject:v9 forKey:dCopy];
  }

  if (tool == 1)
  {
    [(ICInlineDrawingAnalyticsInformation *)v9 setAddedPencilStrokeCount:[(ICInlineDrawingAnalyticsInformation *)v9 addedPencilStrokeCount]+ 1];
  }

  else
  {
    [(ICInlineDrawingAnalyticsInformation *)v9 setAddedFingerStrokeCount:[(ICInlineDrawingAnalyticsInformation *)v9 addedFingerStrokeCount]+ 1];
  }

  [(ICInlineDrawingAnalyticsInformation *)v9 setLastUsedTool:tool];
}

- (void)submitPendingInlineDrawingDataForNote:(id)note
{
  v58 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (noteCopy)
  {
    pendingInlineDrawingInformation = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
    v5 = [pendingInlineDrawingInformation count];

    if (v5)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
      v51 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v51)
      {
        v6 = 0x277D35000uLL;
        v7 = 0x277D35000uLL;
        v50 = *v53;
        selfCopy = self;
        do
        {
          v8 = 0;
          do
          {
            if (*v53 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v52 + 1) + 8 * v8);
            v10 = *(v6 + 3584);
            sharedContext = [*(v7 + 3888) sharedContext];
            managedObjectContext = [sharedContext managedObjectContext];
            v13 = [v10 attachmentWithIdentifier:v9 context:managedObjectContext];

            if (v13 && ([v13 markedForDeletion] & 1) == 0)
            {
              [(ICNAEventReporter *)self pendingInlineDrawingInformation];
              v14 = v46 = v13;
              v15 = [v14 objectForKeyedSubscript:v9];

              startPencilStrokeCount = [v15 startPencilStrokeCount];
              if (startPencilStrokeCount + [v15 startFingerStrokeCount])
              {
                v17 = 2;
              }

              else
              {
                v17 = 1;
              }

              v18 = +[ICNAIdentityManager sharedManager];
              v48 = [v18 saltedID:v9 forClass:objc_opt_class()];

              v19 = [ICASDrawingData alloc];
              v20 = [[ICASDrawingActionType alloc] initWithDrawingActionType:v17];
              v21 = -[ICASDrawingTool initWithDrawingTool:]([ICASDrawingTool alloc], "initWithDrawingTool:", [v15 lastUsedTool]);
              v49 = [(ICASDrawingData *)v19 initWithDrawingActionType:v20 drawingTool:v21 drawingID:v48];

              v22 = [ICASStartDrawingStrokeData alloc];
              v23 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "startPencilStrokeCount"))}];
              v24 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "startFingerStrokeCount"))}];
              v47 = [(ICASStartDrawingStrokeData *)v22 initWithStartPencilStrokeCount:v23 startFingerStrokeCount:v24];

              v25 = [ICASEndDrawingStrokeData alloc];
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "endPencilStrokeCount"))}];
              v27 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v15, "endFingerStrokeCount"))}];
              v45 = [(ICASEndDrawingStrokeData *)v25 initWithEndPencilStrokeCount:v26 endFingerStrokeCount:v27];

              v43 = [(ICNAEventReporter *)selfCopy noteDataForModernNote:noteCopy];
              v44 = [(ICNAEventReporter *)selfCopy noteContentDataForModernNote:noteCopy];
              v28 = [(ICNAEventReporter *)selfCopy noteAccessDataForModernNote:noteCopy];
              account = [noteCopy account];
              v30 = [(ICNAEventReporter *)selfCopy accountDataForModernAccount:account];

              v31 = +[ICNAController sharedController];
              v32 = objc_opt_class();
              v56[0] = v43;
              v56[1] = v44;
              v56[2] = v28;
              v56[3] = v30;
              v56[4] = v49;
              v56[5] = v47;
              v56[6] = v45;
              v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:7];
              subTracker = [(ICNAEventReporter *)selfCopy subTracker];
              [v31 submitEventOfType:v32 pushThenPopDataObjects:v33 subTracker:subTracker];

              self = selfCopy;
              endPencilStrokeCount = [v15 endPencilStrokeCount];
              v36 = endPencilStrokeCount > [v15 startPencilStrokeCount];
              v37 = +[ICNACoreAnalyticsReporter sharedReporter];
              v38 = v36;
              v6 = 0x277D35000;
              [v37 fireUpdateHandWritingContentEventWithNoteData:v43 pencilIsUsed:v38];

              v7 = 0x277D35000;
              v13 = v46;
            }

            ++v8;
          }

          while (v51 != v8);
          v51 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v51);
      }

      pendingInlineDrawingInformation2 = [(ICNAEventReporter *)self pendingInlineDrawingInformation];
      [pendingInlineDrawingInformation2 removeAllObjects];
    }
  }
}

- (void)submitInlineDrawingDataForDrawingDeletion:(id)deletion drawingID:(id)d forNote:(id)note
{
  v38[7] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  dCopy = d;
  deletionCopy = deletion;
  v11 = +[ICNAIdentityManager sharedManager];
  v37 = [v11 saltedID:dCopy forClass:objc_opt_class()];

  v12 = [ICASDrawingData alloc];
  v13 = [[ICASDrawingActionType alloc] initWithDrawingActionType:3];
  v14 = [[ICASDrawingTool alloc] initWithDrawingTool:0];
  v36 = [(ICASDrawingData *)v12 initWithDrawingActionType:v13 drawingTool:v14 drawingID:v37];

  v15 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:deletionCopy];
  strokes = [deletionCopy strokes];

  v17 = [strokes count] - v15;
  v18 = [ICASStartDrawingStrokeData alloc];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v15)];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v17)];
  v35 = [(ICASStartDrawingStrokeData *)v18 initWithStartPencilStrokeCount:v19 startFingerStrokeCount:v20];

  v21 = [ICASEndDrawingStrokeData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v15)];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v17)];
  v24 = [(ICASEndDrawingStrokeData *)v21 initWithEndPencilStrokeCount:v22 endFingerStrokeCount:v23];

  v34 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v25 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v26 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v28 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v29 = +[ICNAController sharedController];
  v30 = objc_opt_class();
  v38[0] = v34;
  v38[1] = v25;
  v38[2] = v26;
  v38[3] = v28;
  v38[4] = v36;
  v38[5] = v35;
  v38[6] = v24;
  v31 = v24;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:7];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v29 submitEventOfType:v30 pushThenPopDataObjects:v32 subTracker:subTracker];
}

- (void)submitFullscreenDrawingToInlineDrawingEventForNote:(id)note drawing:(id)drawing drawingID:(id)d method:(int64_t)method
{
  v37[6] = *MEMORY[0x277D85DE8];
  dCopy = d;
  drawingCopy = drawing;
  noteCopy = note;
  v13 = +[ICNAIdentityManager sharedManager];
  v36 = [v13 saltedID:dCopy forClass:objc_opt_class()];

  v14 = [ICASDrawingData alloc];
  v15 = [[ICASDrawingActionType alloc] initWithDrawingActionType:1];
  v16 = [[ICASDrawingTool alloc] initWithDrawingTool:0];
  v17 = [(ICASDrawingData *)v14 initWithDrawingActionType:v15 drawingTool:v16 drawingID:v36];

  v18 = [(ICNAEventReporter *)self pencilStrokeCountForDrawing:drawingCopy];
  strokes = [drawingCopy strokes];

  v20 = [strokes count] - v18;
  v21 = [ICASStartDrawingStrokeData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v18)];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v20)];
  v24 = [(ICASStartDrawingStrokeData *)v21 initWithStartPencilStrokeCount:v22 startFingerStrokeCount:v23];

  v25 = [ICASDrawingConversionData alloc];
  v26 = [[ICASConversionMethod alloc] initWithConversionMethod:method];
  v27 = [(ICASDrawingConversionData *)v25 initWithConversionMethod:v26];

  v28 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v29 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v31 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v37[0] = v28;
  v37[1] = v29;
  v37[2] = v31;
  v37[3] = v17;
  v37[4] = v24;
  v37[5] = v27;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:subTracker];
}

- (void)submitPaletteEngagementEventForNote:(id)note startPosition:(int64_t)position endPosition:(int64_t)endPosition
{
  v24[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v10 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];

  v12 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v13 = [ICASPaletteEngagementData alloc];
  v14 = [[ICASPaletteEngagementType alloc] initWithPaletteEngagementType:1];
  v15 = [(ICASPaletteEngagementData *)v13 initWithPaletteEngagementType:v14];

  v16 = [ICASPalettePositionData alloc];
  v17 = [[ICASPalettePosition alloc] initWithPalettePosition:position];
  v18 = [[ICASPalettePosition alloc] initWithPalettePosition:endPosition];
  v19 = [(ICASPalettePositionData *)v16 initWithPaletteStartPosition:v17 paletteEndPosition:v18];

  v20 = +[ICNAController sharedController];
  v21 = objc_opt_class();
  v24[0] = v9;
  v24[1] = v10;
  v24[2] = v12;
  v24[3] = v15;
  v24[4] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v20 submitEventOfType:v21 pushThenPopDataObjects:v22 subTracker:subTracker];
}

- (void)submitAttachmentAddEventForAttachment:(id)attachment
{
  v62[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__4;
  v59 = __Block_byref_object_dispose__4;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__4;
  v53 = __Block_byref_object_dispose__4;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [attachmentCopy managedObjectContext];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __59__ICNAEventReporter_submitAttachmentAddEventForAttachment___block_invoke;
  v22 = &unk_2799AFB58;
  v24 = &v55;
  v6 = attachmentCopy;
  v23 = v6;
  v25 = &v49;
  v26 = &v43;
  objc_copyWeak(&v29, &location);
  v27 = &v37;
  v28 = &v31;
  [managedObjectContext performBlockAndWait:&v19];

  v7 = [ICNAIdentityManager sharedManager:v19];
  v8 = [v7 saltedID:v56[5] forClass:objc_opt_class()];

  v9 = [ICASAttachmentItemTypeData alloc];
  v10 = [(ICASAttachmentItemTypeData *)v9 initWithAttachmentID:v8 attachmentUTI:v50[5]];
  v11 = [ICASAttachmentData alloc];
  v62[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v13 = [(ICASAttachmentData *)v11 initWithAttachmentSummary:v12];

  v14 = +[ICNAController sharedController];
  v15 = objc_opt_class();
  v16 = v38[5];
  v61[0] = v44[5];
  v61[1] = v16;
  v61[2] = v32[5];
  v61[3] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v14 submitEventOfType:v15 pushThenPopDataObjects:v17 subTracker:subTracker];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
}

void __59__ICNAEventReporter_submitAttachmentAddEventForAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:*(a1 + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v21 = [*(a1 + 32) note];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = [WeakRetained noteDataForModernNote:v21];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = objc_loadWeakRetained((a1 + 80));
  v13 = [v12 noteContentDataForModernNote:v21];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = objc_loadWeakRetained((a1 + 80));
  v17 = [v21 account];
  v18 = [v16 accountDataForModernAccount:v17];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

- (void)pushStartDocScanPageCountData:(unint64_t)data
{
  v5 = [ICASStartDocScanPageData alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(data)];
  v9 = [(ICASStartDocScanPageData *)v5 initWithStartPageCount:v6];

  v7 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)pushDocScanDataWithID:(id)d actionType:(int64_t)type stage:(int64_t)stage
{
  dCopy = d;
  v15 = [[ICASDocScanActionType alloc] initWithDocScanActionType:type];
  v9 = [[ICASDocScanStage alloc] initWithDocScanStage:stage];
  v10 = +[ICNAIdentityManager sharedManager];
  v11 = [v10 saltedID:dCopy forClass:objc_opt_class()];

  v12 = [[ICASDocScanData alloc] initWithDocScanID:v11 docScanActionType:v15 docScanStage:v9];
  v13 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v13 pushDataObject:v12 unique:0 onlyOnce:1 subTracker:subTracker];
}

- (void)submitDocScanEventForNote:(id)note pageCount:(unint64_t)count
{
  v17[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  account = [noteCopy account];

  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v10 = [ICASEndDocScanPageData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v12 = [(ICASEndDocScanPageData *)v10 initWithEndPageCount:v11];

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:subTracker];
}

- (void)submitPasswordProtectEventForModernNote:(id)note
{
  v15[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v10 = [(ICNAEventReporter *)self passwordDataForModernNote:noteCopy];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:subTracker];
}

- (void)submitChangePasswordEventForModernAccount:(id)account isReset:(BOOL)reset
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [(ICNAEventReporter *)self accountDataForModernAccount:account];
  v6 = objc_opt_class();
  v7 = +[ICNAController sharedController];
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 submitEventOfType:v6 pushThenPopDataObjects:v8 subTracker:subTracker];
}

- (void)submitPasswordFailEventForModernNote:(id)note
{
  v14[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v8 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v9 = [(ICNAEventReporter *)self passwordDataForModernNote:noteCopy];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:subTracker];
}

- (void)submitPasswordSuccessEventForModernNote:(id)note
{
  v15[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v8 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v9 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v10 = [(ICNAEventReporter *)self passwordDataForModernNote:noteCopy];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:subTracker];
}

- (void)submitBiometricsFailEventForModernNote:(id)note
{
  v14[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v7 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v8 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v9 = [(ICNAEventReporter *)self bioAuthDataForModernNote:noteCopy];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:subTracker];
}

- (void)submitChangePasswordModeEventForAccount:(id)account contextPath:(int64_t)path fromMode:(signed __int16)mode toMode:(signed __int16)toMode
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = [(ICNAEventReporter *)self passwordModeDataForContextPath:path fromMode:mode toMode:toMode];
  v8 = +[ICNAController sharedController];
  v9 = objc_opt_class();
  v12[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 submitEventOfType:v9 pushThenPopDataObjects:v10 subTracker:subTracker];
}

- (void)submitFastSyncSessionStartForNote:(id)note sessionID:(id)d participantVersions:(id)versions numUniqueAccounts:(id)accounts numUniqueDevices:(id)devices
{
  v28[5] = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  accountsCopy = accounts;
  versionsCopy = versions;
  dCopy = d;
  noteCopy = note;
  v17 = +[ICNAIdentityManager sharedManager];
  v18 = [v17 saltedID:dCopy forClass:objc_opt_class()];

  v19 = [[ICASFastSyncData alloc] initWithFastSyncSessionId:v18 participantVersions:versionsCopy];
  v20 = [[ICASFastSyncParticipantData alloc] initWithCountOfUniqueAccounts:accountsCopy countOfUniqueDevices:devicesCopy];

  v21 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  v22 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v23 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];

  v24 = +[ICNAController sharedController];
  v25 = objc_opt_class();
  v28[0] = v19;
  v28[1] = v20;
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v24 submitEventOfType:v25 pushThenPopDataObjects:v26 subTracker:subTracker];
}

- (void)submitFastSyncSessionEndForNote:(id)note sessionID:(id)d participantVersions:(id)versions numUniqueAccounts:(id)accounts numUniqueDevices:(id)devices errorCode:(id)code numIgnoredMessages:(id)messages
{
  v40[6] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  codeCopy = code;
  devicesCopy = devices;
  accountsCopy = accounts;
  versionsCopy = versions;
  dCopy = d;
  noteCopy = note;
  v22 = +[ICNAIdentityManager sharedManager];
  v39 = [v22 saltedID:dCopy forClass:objc_opt_class()];

  v38 = [versionsCopy ic_map:&__block_literal_global_417];

  v23 = [[ICASFastSyncData alloc] initWithFastSyncSessionId:v39 participantVersions:v38];
  v24 = [[ICASFastSyncParticipantData alloc] initWithCountOfUniqueAccounts:accountsCopy countOfUniqueDevices:devicesCopy];

  v25 = [ICASFastSyncErrorData alloc];
  if (codeCopy)
  {
    v26 = codeCopy;
  }

  else
  {
    v26 = &unk_286E61B70;
  }

  if (messagesCopy)
  {
    v27 = messagesCopy;
  }

  else
  {
    v27 = &unk_286E61B70;
  }

  v28 = [(ICASFastSyncErrorData *)v25 initWithErrorCode:v26 countOfIgnoredMessages:v27, self];

  v29 = [v37 noteAccessDataForModernNote:noteCopy];
  v30 = [v37 noteContentDataForModernNote:noteCopy];
  v31 = [v37 noteDataForModernNote:noteCopy];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v40[0] = v23;
  v40[1] = v24;
  v40[2] = v28;
  v40[3] = v29;
  v40[4] = v30;
  v40[5] = v31;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:6];
  subTracker = [v37 subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:subTracker];
}

- (void)submitNoteEditEventForModernNote:(id)note fromQuickNote:(BOOL)quickNote
{
  v17[5] = *MEMORY[0x277D85DE8];
  if (quickNote)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteEditDataForContextType:v5];
  v8 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v10 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v11 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];
  v12 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v17[0] = v8;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v7;
  v17[4] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v15 subTracker:subTracker];
}

- (void)submitNoteEditEventForHTMLNote:(id)note
{
  v15[5] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self noteEditDataForContextType:1];
  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  account = [noteCopy account];
  v8 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  v9 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:noteCopy];
  v10 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v15[0] = noteAccessDataForHTMLNote;
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v5;
  v15[4] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:subTracker];
}

- (void)submitChecklistUsageEventForModernNote:(id)note countOfCheckedItems:(int64_t)items countOfTotalItems:(int64_t)totalItems checklistActionType:(int64_t)type
{
  v24[3] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v11 = [ICASChecklistItemsData alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(items)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(totalItems)];
  v14 = [(ICASChecklistItemsData *)v11 initWithCountOfCheckedItems:v12 countOfTotalItems:v13];

  v15 = [[ICASChecklistAction alloc] initWithChecklistAction:type];
  if ([MEMORY[0x277D36968] checklistAutoSortEnabled])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = [[ICASMoveCheckedItemsToBottomSwitchSetting alloc] initWithMoveCheckedItemsToBottomSwitchSetting:v16];
  v18 = [[ICASChecklistUsageData alloc] initWithChecklistAction:v15 moveCheckedItemsToBottomSwitchSetting:v17];
  v19 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];

  v20 = +[ICNAController sharedController];
  v21 = objc_opt_class();
  v24[0] = v14;
  v24[1] = v18;
  v24[2] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v20 submitEventOfType:v21 pushThenPopDataObjects:v22 subTracker:subTracker];
}

- (void)submitStyleFormatEventForHTMLNote:(id)note styleTypeValue:(int64_t)value
{
  v16[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  account = [noteCopy account];
  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  v10 = [(ICNAEventReporter *)self noteDataForHTMLNote:noteCopy];

  v11 = [(ICNAEventReporter *)self styleDataForStyleTypeValue:value];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = noteAccessDataForHTMLNote;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitStyleFormatEventForModernNote:(id)note styleTypeValue:(int64_t)value
{
  v16[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v10 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];

  v11 = [(ICNAEventReporter *)self styleDataForStyleTypeValue:value];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitNoteEditorCallOutBarButtonSelectionEventForModernNote:(id)note buttonTypeValue:(int64_t)value
{
  v16[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:noteCopy];
  account = [noteCopy account];
  v9 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v10 = [(ICNAEventReporter *)self noteEditorCallOutBarDataForButtonTypeValue:value];
  v11 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];

  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:(id)note buttonTypeValue:(int64_t)value
{
  v16[4] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  account = [noteCopy account];
  v9 = [(ICNAEventReporter *)self accountDataForHTMLAccount:account];

  v10 = [(ICNAEventReporter *)self noteEditorCallOutBarDataForButtonTypeValue:value];
  v11 = [(ICNAEventReporter *)self noteContentDataForHTMLNote:noteCopy];

  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = noteAccessDataForHTMLNote;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitMoveCheckedItemsToBottomSwitchEventWithNewState:(BOOL)state isInApp:(BOOL)app
{
  appCopy = app;
  v16[2] = *MEMORY[0x277D85DE8];
  if (state)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [[ICASSwitchSelectionType alloc] initWithSwitchSelectionType:v6];
  v8 = [[ICASSwitchSelectionData alloc] initWithSwitchSelectionType:v7];
  if (appCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [[ICASSwitchSelectionContext alloc] initWithSwitchSelectionContext:v9];
  v11 = [[ICASSwitchSelectionContextData alloc] initWithSwitchSelectionContext:v10];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = v8;
  v16[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitAttachmentBrowserTapEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 pushThenPopDataObjects:MEMORY[0x277CBEBF8] subTracker:subTracker];
}

- (void)submitAttachmentBrowserActionEventForType:(int64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASActionType alloc] initWithActionType:type];
  v5 = [[ICASAttachmentActionData alloc] initWithActionType:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:subTracker];
}

- (void)submitSearchAttemptEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:subTracker];
}

- (void)startFindInNoteEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

- (void)submitFindInNoteEventWasSearchQueryEntered:(BOOL)entered modernNote:(id)note
{
  enteredCopy = entered;
  v60[6] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [ICASFindInNoteData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enteredCopy];
  v9 = [(ICASFindInNoteData *)v7 initWithWasSearchQueryEntered:v8];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  managedObjectContext = [noteCopy managedObjectContext];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __75__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_modernNote___block_invoke;
  v22 = &unk_2799AFBA0;
  v25 = &v54;
  selfCopy = self;
  v11 = noteCopy;
  v24 = v11;
  v26 = &v48;
  v27 = &v42;
  v28 = &v36;
  v29 = &v30;
  [managedObjectContext performBlockAndWait:&v19];

  v12 = [ICNAController sharedController:v19];
  v13 = objc_opt_class();
  v14 = v55[5];
  v60[0] = v9;
  v60[1] = v14;
  v15 = v43[5];
  v60[2] = v49[5];
  v60[3] = v15;
  v16 = v31[5];
  v60[4] = v37[5];
  v60[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v17 subTracker:subTracker];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
}

void __75__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_modernNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteAccessDataForModernNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) noteContentDataForModernNote:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) folder];
  v13 = [v11 folderDataForModernFolder:v12];
  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(a1 + 32);
  v20 = [*(a1 + 40) account];
  v17 = [v16 accountDataForModernAccount:v20];
  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

- (void)submitFindInNoteEventWasSearchQueryEntered:(BOOL)entered htmlNote:(id)note
{
  enteredCopy = entered;
  v49[6] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v7 = [ICASFindInNoteData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enteredCopy];
  v9 = [(ICASFindInNoteData *)v7 initWithWasSearchQueryEntered:v8];

  noteAccessDataForHTMLNote = [(ICNAEventReporter *)self noteAccessDataForHTMLNote];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  managedObjectContext = [noteCopy managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_htmlNote___block_invoke;
  v19[3] = &unk_2799AFBC8;
  v21 = &v43;
  v19[4] = self;
  v12 = noteCopy;
  v20 = v12;
  v22 = &v37;
  v23 = &v31;
  v24 = &v25;
  [managedObjectContext performBlockAndWait:v19];

  v13 = +[ICNAController sharedController];
  v14 = objc_opt_class();
  v49[0] = v9;
  v49[1] = noteAccessDataForHTMLNote;
  v15 = v38[5];
  v49[2] = v44[5];
  v49[3] = v15;
  v16 = v26[5];
  v49[4] = v32[5];
  v49[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:6];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v13 submitEventOfType:v14 pushThenPopDataObjects:v17 subTracker:subTracker];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

void __73__ICNAEventReporter_submitFindInNoteEventWasSearchQueryEntered_htmlNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteContentDataForHTMLNote:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) noteDataForHTMLNote:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) folder];
  v10 = [v8 folderDataForHTMLFolder:v9];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);
  v17 = [*(a1 + 40) account];
  v14 = [v13 accountDataForHTMLAccount:v17];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (void)submitSearchInitiateEventWithSearchSessionID:(id)d searchSuggestionType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [ICASSearchData alloc];
  v8 = [dCopy copy];

  v9 = [(ICASSearchData *)v7 initWithSearchSessionID:v8];
  v10 = [(ICNAEventReporter *)self searchSuggestionDataWithSearchSuggestionType:type];
  v11 = v10;
  if (v10)
  {
    v20 = v9;
    v21 = v10;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v20;
    v14 = 2;
  }

  else
  {
    v19 = v9;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v19;
    v14 = 1;
  }

  v15 = [v12 arrayWithObjects:v13 count:{v14, v19, v20, v21, v22}];
  v16 = +[ICNAController sharedController];
  v17 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v16 submitEventOfType:v17 pushThenPopDataObjects:v15 subTracker:subTracker];
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d gmRank:(unint64_t)rank
{
  dCopy = d;
  resultCopy = result;
  v10 = [[ICASSearchResultCountData alloc] initWithTopHitCount:&unk_286E61B70 notesCount:&unk_286E61B70 attachmentsCount:&unk_286E61B70];
  [(ICNAEventReporter *)self reallySubmitSearchResultSelectEventWithSearchResult:resultCopy searchSessionID:dCopy gmRank:rank queryLength:0 searchResultCountData:v10 searchSuggestionData:0];
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d queryLength:(unint64_t)length topHitResultCount:(unint64_t)count noteResultCount:(unint64_t)resultCount attachmentResultCount:(unint64_t)attachmentResultCount gmRank:(unint64_t)rank
{
  resultCopy = result;
  dCopy = d;
  v16 = [ICASSearchResultCountData alloc];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(resultCount)];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(attachmentResultCount)];
  v20 = [(ICASSearchResultCountData *)v16 initWithTopHitCount:v17 notesCount:v18 attachmentsCount:v19];

  configuration = [resultCopy configuration];
  searchSuggestionType = [configuration searchSuggestionType];

  if (searchSuggestionType)
  {
    configuration2 = [resultCopy configuration];
    v24 = -[ICNAEventReporter searchSuggestionDataWithSearchSuggestionType:](self, "searchSuggestionDataWithSearchSuggestionType:", [configuration2 searchSuggestionType]);
  }

  else
  {
    v24 = 0;
  }

  [(ICNAEventReporter *)self reallySubmitSearchResultSelectEventWithSearchResult:resultCopy searchSessionID:dCopy gmRank:rank queryLength:length searchResultCountData:v20 searchSuggestionData:v24];
}

- (void)reallySubmitSearchResultSelectEventWithSearchResult:(id)result searchSessionID:(id)d gmRank:(unint64_t)rank queryLength:(unint64_t)length searchResultCountData:(id)data searchSuggestionData:(id)suggestionData
{
  v49[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  suggestionDataCopy = suggestionData;
  dCopy = d;
  resultCopy = result;
  v16 = [ICASSearchData alloc];
  v17 = [dCopy copy];

  v43 = [(ICASSearchData *)v16 initWithSearchSessionID:v17];
  selfCopy = self;
  v48 = [(ICNAEventReporter *)self selectedResultAccountTypeForSearchResult:resultCopy];
  object = [resultCopy object];
  searchResultType = [object searchResultType];

  if (searchResultType)
  {
    v20 = 2 * (searchResultType == 1);
  }

  else
  {
    v20 = 1;
  }

  v42 = [[ICASSelectedResultType alloc] initWithSelectedResultType:v20];
  v47 = [[ICASGmRankingStrategyType alloc] initWithGmRankingStrategyType:2];
  v21 = +[ICNAIdentityManager sharedManager];
  object2 = [resultCopy object];
  contentIdentifier = [object2 contentIdentifier];
  v24 = [v21 saltedID:contentIdentifier forClass:objc_opt_class()];

  v25 = [ICASSearchSelectionData alloc];
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(rank)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(length)];
  v28 = MEMORY[0x277CCABB0];
  configuration = [resultCopy configuration];
  foundAttachmentObjectID = [configuration foundAttachmentObjectID];
  v31 = [v28 numberWithInt:foundAttachmentObjectID != 0];
  v32 = MEMORY[0x277CCABB0];
  configuration2 = [resultCopy configuration];

  v34 = [v32 numberWithBool:{objc_msgSend(configuration2, "isTopHit")}];
  v35 = [(ICASSearchSelectionData *)v25 initWithSelectedResultID:v24 selectedResultAccountType:v48 selectedResultType:v42 gmRankingStrategyType:v47 gmRank:v26 searchRankingExperimentSummary:0 gmRankIOS13:0 charLengthOfQueryString:v27 isNoteFoundByAttachment:v31 isTopHit:v34];

  v49[0] = v43;
  v49[1] = v35;
  v49[2] = dataCopy;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  v37 = v36;
  if (suggestionDataCopy)
  {
    v38 = [v36 arrayByAddingObject:suggestionDataCopy];

    v37 = v38;
  }

  v39 = +[ICNAController sharedController];
  v40 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)selfCopy subTracker];
  [v39 submitEventOfType:v40 pushThenPopDataObjects:v37 subTracker:subTracker];
}

- (void)submitSearchResultExposureSummaryEventWithSearchResultExposureData:(id)data searchSessionID:(id)d
{
  v13[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v8 = [[ICASSearchData alloc] initWithSearchSessionID:dCopy];

  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v8;
  v13[1] = dataCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (id)tipImpressionEventDataObjectsForFeature:(id)feature andModernNote:(id)note
{
  noteCopy = note;
  v7 = MEMORY[0x277CBEB18];
  featureCopy = feature;
  v9 = [v7 alloc];
  v10 = [(ICNAEventReporter *)self tipDataForFeature:featureCopy];

  v11 = [v9 initWithObjects:{v10, 0}];
  if (noteCopy)
  {
    v12 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
    [v11 addObject:v12];
  }

  v13 = [v11 copy];

  return v13;
}

- (void)startTipImpressionEventDurationTrackingForFeature:(id)feature andModernNote:(id)note
{
  noteCopy = note;
  featureCopy = feature;
  [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
  v10 = [(ICNAEventReporter *)self tipImpressionEventDataObjectsForFeature:featureCopy andModernNote:noteCopy];

  v8 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 pushDataObjects:v10 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitTipImpressionEventForFeature:(id)feature andModernNote:(id)note
{
  v7 = [(ICNAEventReporter *)self tipImpressionEventDataObjectsForFeature:feature andModernNote:note];
  v5 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 pushDataObjects:v7 unique:1 onlyOnce:1 subTracker:subTracker];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
}

- (id)tipLearnMoreClickEventDataObjectsForFeature:(id)feature learnMoreTipName:(id)name
{
  nameCopy = name;
  featureCopy = feature;
  v7 = [[ICASTipLearnMoreData alloc] initWithLearnMoreTipName:nameCopy tipFeature:featureCopy];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v7, 0}];
  v9 = [v8 copy];

  return v9;
}

- (void)submitTipLearnMoreClickEventForFeature:(id)feature learnMoreTipName:(id)name
{
  v8 = [(ICNAEventReporter *)self tipLearnMoreClickEventDataObjectsForFeature:feature learnMoreTipName:name];
  v5 = +[ICNAController sharedController];
  v6 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v6 pushThenPopDataObjects:v8 subTracker:subTracker];
}

- (void)submitSnapshotRegisterEventIsSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASResultType alloc];
  if (successfulCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(ICASResultType *)v5 initWithResultType:v6];
  v8 = [[ICASResultData alloc] initWithResultType:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)submitSnapshotTriggeredEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:subTracker];
}

- (void)submitSnapshotCompletionEventIsSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [ICASResultType alloc];
  if (successfulCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(ICASResultType *)v5 initWithResultType:v6];
  v8 = [[ICASResultData alloc] initWithResultType:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)submitNoteActionMenuEventForNoteEditorWithUsageType:(int64_t)type activityType:(id)activityType
{
  v16[1] = *MEMORY[0x277D85DE8];
  activityTypeCopy = activityType;
  v7 = [[ICASActionMenuUsageType alloc] initWithActionMenuUsageType:type];
  v8 = [[ICASActionMenuContextType alloc] initWithActionMenuContextType:1];
  v9 = [ICASActionMenuData alloc];
  v10 = [objc_opt_class() filteredActivityType:activityTypeCopy];

  v11 = [(ICASActionMenuData *)v9 initWithActionMenuUsageType:v7 actionMenuContextType:v8 actionMenuSelection:v10];
  v12 = +[ICNAController sharedController];
  v13 = objc_opt_class();
  v16[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v14 subTracker:subTracker];
}

- (void)submitNoteActionMenuEventForNoteBrowserWithUsageType:(int64_t)type layout:(int64_t)layout activityType:(id)activityType isTimelineView:(BOOL)view
{
  viewCopy = view;
  v24[2] = *MEMORY[0x277D85DE8];
  activityTypeCopy = activityType;
  v11 = [[ICASActionMenuUsageType alloc] initWithActionMenuUsageType:type];
  v12 = [[ICASActionMenuContextType alloc] initWithActionMenuContextType:2];
  v13 = [ICASActionMenuData alloc];
  v14 = [objc_opt_class() filteredActivityType:activityTypeCopy];

  v15 = [(ICASActionMenuData *)v13 initWithActionMenuUsageType:v11 actionMenuContextType:v12 actionMenuSelection:v14];
  v16 = [ICASLayoutData alloc];
  v17 = [[ICASLayoutType alloc] initWithLayoutType:layout];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:viewCopy];
  v19 = [(ICASLayoutData *)v16 initWithLayoutType:v17 isTimelineView:v18];

  v20 = +[ICNAController sharedController];
  v21 = objc_opt_class();
  v24[0] = v15;
  v24[1] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v20 submitEventOfType:v21 pushThenPopDataObjects:v22 subTracker:subTracker];
}

- (void)submitTagBrowserSelectionEventWithSelectedTagCount:(unint64_t)count isAllTagsSelected:(BOOL)selected
{
  selectedCopy = selected;
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = [ICASTagBrowserSelectionData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:selectedCopy];
  v10 = [(ICASTagBrowserSelectionData *)v7 initWithCountOfSelectedTags:v8 isAllTagsSelected:v9];

  v11 = +[ICNAController sharedController];
  v12 = objc_opt_class();
  v15[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v11 submitEventOfType:v12 pushThenPopDataObjects:v13 subTracker:subTracker];
}

- (void)submitMentionAddEventForNote:(id)note mentionID:(id)d participantID:(id)iD viaAutoComplete:(BOOL)complete
{
  dCopy = d;
  iDCopy = iD;
  objectID = [note objectID];
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__ICNAEventReporter_submitMentionAddEventForNote_mentionID_participantID_viaAutoComplete___block_invoke;
  v17[3] = &unk_2799AFBF0;
  v18 = objectID;
  v19 = iDCopy;
  completeCopy = complete;
  v20 = dCopy;
  selfCopy = self;
  v14 = dCopy;
  v15 = iDCopy;
  v16 = objectID;
  [mEMORY[0x277D35F30] performBackgroundTask:v17];
}

void __90__ICNAEventReporter_submitMentionAddEventForNote_mentionID_participantID_viaAutoComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35F28] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = v3;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v3 inlineAttachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if ([v10 isMentionAttachment])
          {
            v11 = *(a1 + 40);
            v12 = [v10 tokenContentIdentifier];
            if ([v11 isEqualToString:v12])
            {
              v13 = [v10 identifier];
              v14 = [v13 isEqualToString:*(a1 + 48)];

              if (!v14)
              {
                v7 = 1;
                goto LABEL_14;
              }
            }

            else
            {
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

LABEL_14:

    v15 = [ICASMentionAddApproach alloc];
    if (*(a1 + 64))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [(ICASMentionAddApproach *)v15 initWithMentionAddApproach:v16];
    v18 = [ICASMentionAddData alloc];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v20 = [(ICASMentionAddData *)v18 initWithIsExistingMention:v19 mentionAddApproach:v17];

    v21 = [*(a1 + 56) noteDataForModernNote:v4];
    v22 = +[ICNAController sharedController];
    v23 = objc_opt_class();
    v30[0] = v21;
    v30[1] = v20;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v25 = [*(a1 + 56) subTracker];
    [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:v25];
  }
}

- (void)submitMentionDeleteEvent:(id)event
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNAEventReporter *)self noteDataForModernNote:event];
  v5 = +[ICNAController sharedController];
  v6 = objc_opt_class();
  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v6 pushThenPopDataObjects:v7 subTracker:subTracker];
}

- (void)submitCollabSummaryEventForObject:(id)object withUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self objectDataForCloudSyncingObject:object];
  v7 = [ICASStreamUpdateData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:updatesCopy];
  v9 = [(ICASStreamUpdateData *)v7 initWithHasUpdates:v8];

  v10 = +[ICNAController sharedController];
  v11 = objc_opt_class();
  v14[0] = v6;
  v14[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v10 submitEventOfType:v11 pushThenPopDataObjects:v12 subTracker:subTracker];
}

- (void)submitCollabActivityBrowseEventForObject:(id)object contextPath:(int64_t)path clickContext:(int64_t)context mode:(int64_t)mode isCurrentUserMentioned:(BOOL)mentioned hasRecentUpdates:(BOOL)updates
{
  updatesCopy = updates;
  mentionedCopy = mentioned;
  v26[2] = *MEMORY[0x277D85DE8];
  v14 = [(ICNAEventReporter *)self objectDataForCloudSyncingObject:object];
  v15 = [ICASCollabActivityData alloc];
  v16 = [[ICASCollabActivityContextPath alloc] initWithCollabActivityContextPath:path];
  v17 = [[ICASClickContext alloc] initWithClickContext:context];
  v18 = [[ICASMode alloc] initWithMode:mode];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:mentionedCopy];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:updatesCopy];
  v21 = [(ICASCollabActivityData *)v15 initWithCollabActivityContextPath:v16 clickContext:v17 mode:v18 isUserMentioned:v19 hasRecentUpdates:v20];

  v22 = +[ICNAController sharedController];
  v23 = objc_opt_class();
  v26[0] = v14;
  v26[1] = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:subTracker];
}

- (void)startAttributionSideBarViewEventForNote:(id)note
{
  v29[2] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (noteCopy)
  {
    v5 = [[ICASCollabActivityContextPath alloc] initWithCollabActivityContextPath:0];
    v6 = [ICASEditorCallOutData alloc];
    v7 = [[ICASStartState alloc] initWithStartState:0];
    v8 = [[ICASEndState alloc] initWithEndState:0];
    v9 = [(ICASEditorCallOutData *)v6 initWithCollabActivityContextPath:v5 startState:v7 endState:v8];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__4;
    v27 = __Block_byref_object_dispose__4;
    v28 = 0;
    managedObjectContext = [noteCopy managedObjectContext];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __61__ICNAEventReporter_startAttributionSideBarViewEventForNote___block_invoke;
    v19 = &unk_2799AF078;
    v22 = &v23;
    selfCopy = self;
    v21 = noteCopy;
    [managedObjectContext performBlockAndWait:&v16];

    if (v24[5])
    {
      v11 = [ICNAController sharedController:v16];
      v12 = v24[5];
      v29[0] = v9;
      v29[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      subTracker = [(ICNAEventReporter *)self subTracker];
      [v11 pushDataObjects:v13 unique:1 onlyOnce:0 subTracker:subTracker];

      [(ICNAEventReporter *)self startTimedEventOfType:objc_opt_class()];
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter startAttributionSideBarViewEventForNote:];
      }
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [ICNAEventReporter startAttributionSideBarViewEventForNote:];
    }
  }
}

uint64_t __61__ICNAEventReporter_startAttributionSideBarViewEventForNote___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)submitAttributionSideBarViewEventForNote:(id)note contextPath:(int64_t)path startState:(int64_t)state endState:(int64_t)endState
{
  v35[2] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (noteCopy)
  {
    v11 = [[ICASCollabActivityContextPath alloc] initWithCollabActivityContextPath:path];
    v12 = [ICASEditorCallOutData alloc];
    v13 = [[ICASStartState alloc] initWithStartState:state];
    v14 = [[ICASEndState alloc] initWithEndState:endState];
    v15 = [(ICASEditorCallOutData *)v12 initWithCollabActivityContextPath:v11 startState:v13 endState:v14];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__4;
    v33 = __Block_byref_object_dispose__4;
    v34 = 0;
    managedObjectContext = [noteCopy managedObjectContext];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __94__ICNAEventReporter_submitAttributionSideBarViewEventForNote_contextPath_startState_endState___block_invoke;
    v25 = &unk_2799AF078;
    v28 = &v29;
    selfCopy = self;
    v27 = noteCopy;
    [managedObjectContext performBlockAndWait:&v22];

    if (v15)
    {
      if (v30[5])
      {
        v17 = [ICNAController sharedController:v22];
        v18 = v30[5];
        v35[0] = v15;
        v35[1] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        subTracker = [(ICNAEventReporter *)self subTracker];
        [v17 pushDataObjects:v19 unique:1 onlyOnce:0 subTracker:subTracker];

        [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
LABEL_12:

        _Block_object_dispose(&v29, 8);
        goto LABEL_13;
      }

      v21 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
      }
    }

    else
    {
      v21 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
      }
    }

    goto LABEL_12;
  }

  v11 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
  {
    [ICNAEventReporter submitAttributionSideBarViewEventForNote:contextPath:startState:endState:];
  }

LABEL_13:
}

uint64_t __94__ICNAEventReporter_submitAttributionSideBarViewEventForNote_contextPath_startState_endState___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) noteDataForModernNote:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)startActivityStreamSummaryEventForObject:(id)object
{
  v4 = MEMORY[0x277CCABB0];
  objectCopy = object;
  serverShareCheckingParent = [objectCopy serverShareCheckingParent];
  v13 = [v4 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(serverShareCheckingParent, "ic_nonOwnerInvitedParticipantsCount"))}];

  v7 = MEMORY[0x277CCABB0];
  serverShareCheckingParent2 = [objectCopy serverShareCheckingParent];

  v9 = [v7 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(serverShareCheckingParent2, "ic_nonOwnerAcceptedParticipantsCount"))}];

  v10 = [[ICASStartCollaborationCollaboratorData alloc] initWithStartInvitedCount:v13 startAcceptedCount:v9];
  v11 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v11 pushDataObject:v10 unique:1 onlyOnce:0 subTracker:subTracker];
}

- (void)submitActivityStreamSummaryEventForObject:(id)object halfHeightViewDuration:(double)duration fullHeightViewDuration:(double)viewDuration sideBarViewDuration:(double)barViewDuration minimizedViewDuration:(double)minimizedViewDuration
{
  objectCopy = object;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  managedObjectContext = [objectCopy managedObjectContext];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __151__ICNAEventReporter_submitActivityStreamSummaryEventForObject_halfHeightViewDuration_fullHeightViewDuration_sideBarViewDuration_minimizedViewDuration___block_invoke;
  v33 = &unk_2799AFC18;
  v14 = objectCopy;
  v36 = &v44;
  v37 = &v38;
  v34 = v14;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:&v30];

  v15 = [ICASActivityStreamDurationSummaryData alloc];
  v16 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(duration * 1000.0);
  v17 = [v16 numberWithDouble:{v30, v31, v32, v33}];
  v18 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(viewDuration * 1000.0);
  v19 = [v18 numberWithDouble:?];
  v20 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(barViewDuration * 1000.0);
  v21 = [v20 numberWithDouble:?];
  v22 = MEMORY[0x277CCABB0];
  ICNARoundTo2SigFigs(minimizedViewDuration * 1000.0);
  v23 = [v22 numberWithDouble:?];
  v24 = [(ICASActivityStreamDurationSummaryData *)v15 initWithHalfHeightViewDuration:v17 fullHeightViewDuration:v19 sideBarViewDuration:v21 minimizedViewDuration:v23];

  v25 = [MEMORY[0x277CBEB18] ic_arrayFromNonNilObject:v45[5]];
  [v25 ic_addNonNilObject:v39[5]];
  [v25 ic_addNonNilObject:v24];
  v26 = +[ICNAController sharedController];
  v27 = objc_opt_class();
  v28 = [v25 copy];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v26 submitEventOfType:v27 pushThenPopDataObjects:v28 subTracker:subTracker];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void __151__ICNAEventReporter_submitActivityStreamSummaryEventForObject_halfHeightViewDuration_fullHeightViewDuration_sideBarViewDuration_minimizedViewDuration___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) serverShareCheckingParent];
  v13 = [v2 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v3, "ic_nonOwnerInvitedParticipantsCount"))}];

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) serverShareCheckingParent];
  v6 = [v4 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v5, "ic_nonOwnerAcceptedParticipantsCount"))}];

  v7 = [[ICASEndCollaborationCollaboratorData alloc] initWithEndInvitedCount:v13 endAcceptedCount:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 40) objectDataForCloudSyncingObject:*(a1 + 32)];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)submitHashtagAddEventForNote:(id)note tokenContentIdentifier:(id)identifier viaAutoComplete:(BOOL)complete
{
  identifierCopy = identifier;
  objectID = [note objectID];
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ICNAEventReporter_submitHashtagAddEventForNote_tokenContentIdentifier_viaAutoComplete___block_invoke;
  v13[3] = &unk_2799AFC40;
  v14 = objectID;
  v15 = identifierCopy;
  completeCopy = complete;
  selfCopy = self;
  v11 = identifierCopy;
  v12 = objectID;
  [mEMORY[0x277D35F30] performBackgroundTask:v13];
}

void __89__ICNAEventReporter_submitHashtagAddEventForNote_tokenContentIdentifier_viaAutoComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D35F28] ic_existingObjectWithID:*(a1 + 32) context:a2];
  v4 = v3;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v3 inlineAttachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if ([v10 isHashtagAttachment])
          {
            v11 = [v10 tokenContentIdentifier];
            v12 = [v11 isEqualToString:*(a1 + 40)];

            if (v12)
            {
              v7 = 1;
              goto LABEL_13;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v13 = [ICASTagAddApproach alloc];
    if (*(a1 + 56))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = [(ICASTagAddApproach *)v13 initWithTagAddApproach:v14];
    v16 = [MEMORY[0x277D35EE8] shouldAutoConvertToTag];
    v17 = [ICASTagAddData alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v20 = [(ICASTagAddData *)v17 initWithIsExistingTag:v18 tagAddApproach:v15 isAutoConversionEnabled:v19];

    v21 = [*(a1 + 48) noteDataForModernNote:v4];
    v22 = +[ICNAController sharedController];
    v23 = objc_opt_class();
    v30[0] = v20;
    v30[1] = v21;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v25 = [*(a1 + 48) subTracker];
    [v22 submitEventOfType:v23 pushThenPopDataObjects:v24 subTracker:v25];
  }
}

- (void)submitHashtagDeleteEvent:(id)event approachEnum:(int64_t)enum
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self noteDataForModernNote:event];
  v7 = [[ICASTagDeleteApproach alloc] initWithTagDeleteApproach:enum];
  v8 = [[ICASTagDeleteData alloc] initWithTagDeleteApproach:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v6;
  v13[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)submitHashtagRenameEvent:(id)event approachEnum:(int64_t)enum
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = [(ICNAEventReporter *)self noteDataForModernNote:event];
  v7 = [[ICASTagRenameApproach alloc] initWithTagRenameApproach:enum];
  v8 = [[ICASTagRenameData alloc] initWithTagRenameApproach:v7];
  v9 = +[ICNAController sharedController];
  v10 = objc_opt_class();
  v13[0] = v6;
  v13[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v9 submitEventOfType:v10 pushThenPopDataObjects:v11 subTracker:subTracker];
}

- (void)submitAppReviewPromptRequestEvent
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 submitEventOfType:v3 subTracker:subTracker];
}

- (void)submitNotesToPagesEventWithContextPath:(int64_t)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [[ICASNotesToPagesContextPath alloc] initWithNotesToPagesContextPath:path];
  v5 = [[ICASNotesToPagesContextPathData alloc] initWithNotesToPagesContextPath:v4];
  v6 = +[ICNAController sharedController];
  v7 = objc_opt_class();
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v6 submitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:subTracker];
}

- (int64_t)addApproachEnumForAddApproach:(int64_t)approach
{
  if ((approach - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_25C72AD78[approach - 1];
  }
}

- (int64_t)linkContentTypeEnumForURL:(id)l
{
  lCopy = l;
  if ([MEMORY[0x277D35DF0] isShowNoteURL:lCopy] & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowHTMLNoteURL:", lCopy) & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowLegacyNoteURL:", lCopy))
  {
    v4 = 1;
  }

  else if ([MEMORY[0x277D35DF0] isShowFolderURL:lCopy] & 1) != 0 || (objc_msgSend(MEMORY[0x277D35DF0], "isShowHTMLFolderURL:", lCopy))
  {
    v4 = 2;
  }

  else if ([lCopy ic_isWebURL])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4 * (lCopy != 0);
  }

  return v4;
}

- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach contentType:(int64_t)type isTokenized:(BOOL)tokenized noteData:(id *)data noteContentData:(id *)contentData noteAccessData:(id *)accessData
{
  tokenizedCopy = tokenized;
  v34[4] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16 = [[ICASLinkAddApproach alloc] initWithLinkAddApproach:[(ICNAEventReporter *)self addApproachEnumForAddApproach:approach]];
  v17 = [[ICASLinkContentType alloc] initWithLinkContentType:type];
  v18 = [ICASLinkAddData alloc];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:tokenizedCopy];
  v31 = v17;
  v32 = v16;
  v33 = [(ICASLinkAddData *)v18 initWithLinkAddApproach:v16 linkContentType:v17 isTokenizedLink:v19];

  if (data && (v20 = *data) != 0)
  {
    if (!contentData)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = [(ICNAEventReporter *)self noteDataForModernNote:eventCopy];
    if (!contentData)
    {
LABEL_7:
      v21 = [(ICNAEventReporter *)self noteContentDataForModernNote:eventCopy];
      goto LABEL_8;
    }
  }

  v21 = *contentData;
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!accessData || (v22 = *accessData) == 0)
  {
    v22 = [(ICNAEventReporter *)self noteAccessDataForModernNote:eventCopy];
  }

  v23 = eventCopy;
  v24 = +[ICNAController sharedController];
  v25 = objc_opt_class();
  v34[0] = v33;
  v34[1] = v20;
  v34[2] = v21;
  v34[3] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v24 submitEventOfType:v25 pushThenPopDataObjects:v26 subTracker:subTracker];

  if (data)
  {
    v28 = v20;
    *data = v20;
  }

  if (contentData)
  {
    v29 = v21;
    *contentData = v21;
  }

  if (accessData)
  {
    v30 = v22;
    *accessData = v22;
  }
}

- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach url:(id)url
{
  eventCopy = event;
  [(ICNAEventReporter *)self submitAddLinkEvent:eventCopy addApproach:approach contentType:[(ICNAEventReporter *)self linkContentTypeEnumForURL:url] isTokenized:0];
}

- (void)submitAddLinkEvent:(id)event addApproach:(int64_t)approach url:(id)url noteData:(id *)data noteContentData:(id *)contentData noteAccessData:(id *)accessData
{
  eventCopy = event;
  [(ICNAEventReporter *)self submitAddLinkEvent:eventCopy addApproach:approach contentType:[(ICNAEventReporter *)self linkContentTypeEnumForURL:url] isTokenized:0 noteData:data noteContentData:contentData noteAccessData:accessData];
}

- (void)submitLinkedNoteAcceleratorInitiateEvent:(id)event
{
  v12[3] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(ICNAEventReporter *)self noteDataForModernNote:eventCopy];
  v6 = [(ICNAEventReporter *)self noteContentDataForModernNote:eventCopy];
  v7 = [(ICNAEventReporter *)self noteAccessDataForModernNote:eventCopy];

  v8 = +[ICNAController sharedController];
  v9 = objc_opt_class();
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v8 submitEventOfType:v9 pushThenPopDataObjects:v10 subTracker:subTracker];
}

- (void)submitLinkedNoteAcceleratorEndEvent:(id)event maxCharactersTyped:(unint64_t)typed endResultCount:(unint64_t)count
{
  v20[4] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v9 = [ICASAcceleratorUsageData alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(typed)];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(count)];
  v12 = [(ICASAcceleratorUsageData *)v9 initWithMaxNumCharTyped:v10 endResultCount:v11];

  v13 = [(ICNAEventReporter *)self noteDataForModernNote:eventCopy];
  v14 = [(ICNAEventReporter *)self noteContentDataForModernNote:eventCopy];
  v15 = [(ICNAEventReporter *)self noteAccessDataForModernNote:eventCopy];

  v16 = +[ICNAController sharedController];
  v17 = objc_opt_class();
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v16 submitEventOfType:v17 pushThenPopDataObjects:v18 subTracker:subTracker];
}

- (void)submitPDFWorkflowEngagementSummary:(id)summary modernNote:(id)note
{
  v44[7] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  summaryCopy = summary;
  v43 = [(ICNAEventReporter *)self noteDataForModernNote:noteCopy];
  v41 = [(ICNAEventReporter *)self noteContentDataForModernNote:noteCopy];

  v40 = -[ICASPdfState initWithPdfState:]([ICASPdfState alloc], "initWithPdfState:", [summaryCopy startState]);
  v39 = -[ICASPdfState initWithPdfState:]([ICASPdfState alloc], "initWithPdfState:", [summaryCopy endState]);
  v8 = [ICASPdfStateData alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasSmallStateUsage")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasMediumStateUsage")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasLargeStateUsage")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasFullscreenStateUsage")}];
  v38 = [(ICASPdfStateData *)v8 initWithPdfStartState:v40 pdfEndState:v39 hasSmallStateUsage:v9 hasMediumStateUsage:v10 hasLargeStateUsage:v11 hasFullScreenStateUsage:v12];

  v13 = [ICASPdfPageData alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(summaryCopy, "startPageCount"))}];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(summaryCopy, "endPageCount"))}];
  v16 = [(ICASPdfPageData *)v13 initWithStartPageCount:v14 endPageCount:v15];

  v17 = [ICASPdfAttachmentData alloc];
  attachmentIdentifier = [summaryCopy attachmentIdentifier];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasActivity")}];
  v20 = [(ICASPdfAttachmentData *)v17 initWithAttachmentID:attachmentIdentifier hasActivity:v19];

  v21 = [ICASPdfCollabIxData alloc];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasCollabView")}];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasCollabEdit")}];
  v37 = [(ICASPdfCollabIxData *)v21 initWithHasCollabView:v22 hasCollabEdit:v23];

  v24 = [ICASPdfNavIxData alloc];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasGestures")}];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasScroll")}];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasPagination")}];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(summaryCopy, "hasPinchZoom")}];
  v29 = MEMORY[0x277CCABB0];
  hasPinchToExpandState = [summaryCopy hasPinchToExpandState];

  v31 = [v29 numberWithBool:hasPinchToExpandState];
  v36 = [(ICASPdfNavIxData *)v24 initWithHasGestures:v25 hasScroll:v26 hasPagination:v27 hasPinchZoom:v28 hasPinchToExpandState:v31];

  v32 = +[ICNAController sharedController];
  v33 = objc_opt_class();
  v44[0] = v43;
  v44[1] = v41;
  v44[2] = v38;
  v44[3] = v16;
  v44[4] = v20;
  v44[5] = v37;
  v44[6] = v36;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:7];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v32 submitEventOfType:v33 pushThenPopDataObjects:v34 subTracker:subTracker];
}

- (void)startAudioRecordingEvent
{
  v3 = objc_opt_class();

  [(ICNAEventReporter *)self startTimedEventOfType:v3];
}

- (void)submitAudioRecordingEventWithAttachment:(id)attachment appBackgroundOccurred:(BOOL)occurred noteMultitaskingOccurred:(BOOL)multitaskingOccurred audioAttachmentDuration:(id)duration
{
  multitaskingOccurredCopy = multitaskingOccurred;
  occurredCopy = occurred;
  durationCopy = duration;
  attachmentCopy = attachment;
  v12 = [(ICNAEventReporter *)self audioAttachmentDataForModernAttachment:attachmentCopy];
  v13 = [(ICNAEventReporter *)self audioRecordingDataForModernAttachment:attachmentCopy appBackgroundOccurred:occurredCopy noteMultitaskingOccurred:multitaskingOccurredCopy audioAttachmentDuration:durationCopy];

  note = [attachmentCopy note];
  v15 = [(ICNAEventReporter *)self noteContentDataForModernNote:note];

  note2 = [attachmentCopy note];
  v17 = [(ICNAEventReporter *)self noteDataForModernNote:note2];

  note3 = [attachmentCopy note];
  v19 = [(ICNAEventReporter *)self noteAccessDataForModernNote:note3];

  note4 = [attachmentCopy note];
  folder = [note4 folder];
  v22 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [attachmentCopy account];

  v24 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v33 = v12;
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, v13, v15, v17, v19, v22, v24, 0}];
  v26 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v26 pushDataObjects:v25 unique:1 onlyOnce:1 subTracker:subTracker];

  v28 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [ICNAEventReporter submitAudioRecordingEventWithAttachment:appBackgroundOccurred:noteMultitaskingOccurred:audioAttachmentDuration:];
  }

  v29 = +[ICNAController sharedController];
  subTracker2 = [(ICNAEventReporter *)self subTracker];
  [v29 enterGroupWithSubtracker:subTracker2];

  [(ICNAEventReporter *)self submitTimedEventOfTypeIfPossible:objc_opt_class()];
  v31 = +[ICNAController sharedController];
  subTracker3 = [(ICNAEventReporter *)self subTracker];
  [v31 leaveGroupWithSubtracker:subTracker3];
}

- (void)submitAudioTranscriptInteractionEventSummaryViewed:(BOOL)viewed transcriptViewed:(BOOL)transcriptViewed interactionTargets:(id)targets interactionTypes:(id)types audioAttachment:(id)attachment
{
  transcriptViewedCopy = transcriptViewed;
  viewedCopy = viewed;
  attachmentCopy = attachment;
  v29 = [(ICNAEventReporter *)self audioTranscriptInteractionDataWithSummaryViewed:viewedCopy transcriptViewed:transcriptViewedCopy interactionTargets:targets interactionTypes:types];
  v13 = [(ICNAEventReporter *)self audioAttachmentDataForModernAttachment:attachmentCopy];
  note = [attachmentCopy note];
  v15 = [(ICNAEventReporter *)self noteContentDataForModernNote:note];

  note2 = [attachmentCopy note];
  v17 = [(ICNAEventReporter *)self noteDataForModernNote:note2];

  note3 = [attachmentCopy note];
  v19 = [(ICNAEventReporter *)self noteAccessDataForModernNote:note3];

  note4 = [attachmentCopy note];
  folder = [note4 folder];
  v22 = [(ICNAEventReporter *)self folderDataForModernFolder:folder];

  account = [attachmentCopy account];

  v24 = [(ICNAEventReporter *)self accountDataForModernAccount:account];

  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v29, v13, v15, v17, v19, v22, v24, 0}];
  v26 = +[ICNAController sharedController];
  v27 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v26 submitEventOfType:v27 pushThenPopDataObjects:v25 subTracker:subTracker];
}

- (void)submitFindInTranscriptEventWasSearchQueryEntered:(BOOL)entered audioAttachment:(id)attachment
{
  enteredCopy = entered;
  v60[6] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v7 = [ICASFindInTranscriptData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enteredCopy];
  v9 = [(ICASFindInTranscriptData *)v7 initWithWasSearchQueryEntered:v8];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  managedObjectContext = [attachmentCopy managedObjectContext];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __86__ICNAEventReporter_submitFindInTranscriptEventWasSearchQueryEntered_audioAttachment___block_invoke;
  v22 = &unk_2799AFC68;
  v11 = attachmentCopy;
  v23 = v11;
  selfCopy = self;
  v25 = &v54;
  v26 = &v48;
  v27 = &v42;
  v28 = &v36;
  v29 = &v30;
  [managedObjectContext performBlockAndWait:&v19];

  v12 = [ICNAController sharedController:v19];
  v13 = objc_opt_class();
  v14 = v55[5];
  v60[0] = v9;
  v60[1] = v14;
  v15 = v43[5];
  v60[2] = v49[5];
  v60[3] = v15;
  v16 = v31[5];
  v60[4] = v37[5];
  v60[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v12 submitEventOfType:v13 pushThenPopDataObjects:v17 subTracker:subTracker];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
}

void __86__ICNAEventReporter_submitFindInTranscriptEventWasSearchQueryEntered_audioAttachment___block_invoke(uint64_t a1)
{
  v21 = [*(a1 + 32) note];
  v2 = [*(a1 + 40) noteAccessDataForModernNote:v21];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) noteContentDataForModernNote:v21];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) noteDataForModernNote:v21];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 40);
  v12 = [v21 folder];
  v13 = [v11 folderDataForModernFolder:v12];
  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(a1 + 40);
  v17 = [v21 account];
  v18 = [v16 accountDataForModernAccount:v17];
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

+ (void)setNoteCreateApproachEnumToAppSuiteDefaults:(int64_t)defaults
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:defaults];
  [mEMORY[0x277D36180] setObject:v4 forKey:@"analyticsNoteCreateApproachEnumValue"];
}

+ (void)resetNoteCreateApproachEnumInAppSuiteDefaults
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] removeObjectForKey:@"analyticsNoteCreateApproachEnumValue"];
}

- (id)noteCreateDataFromAppSuiteDefaults
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [mEMORY[0x277D36180] objectForKey:@"analyticsNoteCreateApproachEnumValue"];

  if (v3)
  {
    v4 = [ICASNoteCreateData alloc];
    v5 = -[ICASNoteCreateApproach initWithNoteCreateApproach:]([ICASNoteCreateApproach alloc], "initWithNoteCreateApproach:", [v3 integerValue]);
    v6 = [(ICASNoteCreateData *)v4 initWithNoteCreateApproach:v5];

    +[ICNAEventReporter resetNoteCreateApproachEnumInAppSuiteDefaults];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pushNoteCreateDataWithCreateApproach:(int64_t)approach
{
  v5 = [ICASNoteCreateData alloc];
  v6 = [[ICASNoteCreateApproach alloc] initWithNoteCreateApproach:approach];
  v9 = [(ICASNoteCreateData *)v5 initWithNoteCreateApproach:v6];

  v7 = +[ICNAController sharedController];
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v7 pushDataObject:v9 unique:0 onlyOnce:1 subTracker:subTracker];
}

- (void)popNoteCreateData
{
  v5 = +[ICNAController sharedController];
  v3 = objc_opt_class();
  subTracker = [(ICNAEventReporter *)self subTracker];
  [v5 popDataObjectWithType:v3 subTracker:subTracker];
}

- (id)collaborationActionDataIsInviting:(BOOL)inviting inviteStep:(int64_t)step
{
  if (inviting)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[ICASCollaborationActionType alloc] initWithCollaborationActionType:v5];
  v7 = [[ICASCollaborationInviteStep alloc] initWithCollaborationInviteStep:step];
  v8 = [[ICASCollaborationActionData alloc] initWithCollaborationActionType:v6 collaborationInviteStep:v7 collaborationMethod:0];

  return v8;
}

- (id)objectDataForCloudSyncingObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICNAEventReporter *)self noteDataForModernNote:objectCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICNAEventReporter *)self folderDataForModernFolder:objectCopy];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)noteDataForModernNote:(id)note
{
  noteCopy = note;
  v4 = [[ICASNoteType alloc] initWithNoteType:1];
  v5 = +[ICNAIdentityManager sharedManager];
  identifier = [noteCopy identifier];
  v7 = [v5 saltedID:identifier forClass:objc_opt_class()];

  isSystemPaper = [noteCopy isSystemPaper];
  v9 = [ICASNoteData alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:isSystemPaper];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController handwritingAutoRefineEnabled](ICNAController, "handwritingAutoRefineEnabled")}];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioTranscriptEnabled](ICNAController, "audioTranscriptEnabled")}];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNAController audioSummaryEnabled](ICNAController, "audioSummaryEnabled")}];
  v14 = [(ICASNoteData *)v9 initWithNoteID:v7 noteType:v4 isScrapPaper:v10 isHandwritingAutoRefineEnabled:v11 isAudioTranscriptEnabled:v12 isAudioSummaryEnabled:v13];

  return v14;
}

- (id)noteDataForHTMLNote:(id)note
{
  noteCopy = note;
  v4 = [[ICASNoteType alloc] initWithNoteType:2];
  v5 = +[ICNAIdentityManager sharedManager];
  identifier = [noteCopy identifier];

  v7 = [v5 saltedID:identifier forClass:objc_opt_class()];

  v8 = [ICASNoteData alloc];
  v9 = [(ICASNoteData *)v8 initWithNoteID:v7 noteType:v4 isScrapPaper:MEMORY[0x277CBEC28] isHandwritingAutoRefineEnabled:MEMORY[0x277CBEC28] isAudioTranscriptEnabled:MEMORY[0x277CBEC28] isAudioSummaryEnabled:MEMORY[0x277CBEC28]];

  return v9;
}

- (id)passwordDataForModernNote:(id)note
{
  noteCopy = note;
  if ([MEMORY[0x277D35E90] shouldAuthenticateWithCustomPasswordForObject:noteCopy])
  {
    v4 = 1;
  }

  else if ([MEMORY[0x277D35E90] shouldAuthenticateWithDevicePasswordForObject:noteCopy])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASPasswordType alloc] initWithPasswordType:v4];
  passwordHint = [noteCopy passwordHint];
  if (passwordHint)
  {
    v7 = 1;
  }

  else
  {
    account = [noteCopy account];
    passwordHint2 = [account passwordHint];
    v7 = passwordHint2 != 0;
  }

  v10 = [ICASPasswordData alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v12 = [(ICASPasswordData *)v10 initWithPasswordType:v5 hasHint:v11];

  return v12;
}

- (id)bioAuthDataForModernNote:(id)note
{
  v3 = [MEMORY[0x277D366E0] promptForIntent:0 object:note];
  if ([v3 allowsBiometricAuthentication] && objc_msgSend(MEMORY[0x277D35F08], "biometricsType") == 2)
  {
    v4 = 1;
  }

  else if ([v3 allowsBiometricAuthentication])
  {
    v4 = 2 * ([MEMORY[0x277D35F08] biometricsType] == 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASBioAuthType alloc] initWithBioAuthType:v4];
  v6 = [[ICASBioAuthData alloc] initWithBioAuthType:v5];

  return v6;
}

- (id)passwordModeDataForContextPath:(int64_t)path fromMode:(signed __int16)mode toMode:(signed __int16)toMode
{
  toModeCopy = toMode;
  modeCopy = mode;
  v7 = toMode == 2;
  v8 = mode == 2;
  v9 = [[ICASPwdModeChangeContextPath alloc] initWithPwdModeChangeContextPath:path];
  if (modeCopy == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * v8;
  }

  v11 = [[ICASStartMode alloc] initWithStartMode:v10];
  if (toModeCopy == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * v7;
  }

  v13 = [[ICASEndMode alloc] initWithEndMode:v12];
  v14 = [[ICASPasswordModeData alloc] initWithPwdModeChangeContextPath:v9 startMode:v11 endMode:v13];

  return v14;
}

- (id)collaborationStatusForModernObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isOwnedByCurrentUser])
  {
    v4 = 1;
  }

  else if ([objectCopy isSharedReadOnly])
  {
    v4 = 3;
  }

  else if ([objectCopy isSharedViaICloud])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:v4];

  return v5;
}

- (id)collaborationTypeForModernObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isSharedViaICloud])
  {
    if ([objectCopy isSharedRootObject])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = [[ICASCollaborationType alloc] initWithCollaborationType:v4];

  return v5;
}

- (id)folderDataForModernFolder:(id)folder
{
  folderCopy = folder;
  v5 = [[ICASFolderType alloc] initWithFolderType:1];
  if ([folderCopy isDefaultFolderForAccount])
  {
    v6 = 2;
  }

  else if ([folderCopy isTrashFolder])
  {
    v6 = 3;
  }

  else if ([folderCopy isSmartFolder])
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v6];
  v8 = folderCopy;
  v9 = v8;
  v28 = v7;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      account = [v9 account];
      defaultFolder = [account defaultFolder];
      v14 = defaultFolder;
      if (v11 == defaultFolder)
      {
        break;
      }

      account2 = [v9 account];
      trashFolder = [account2 trashFolder];

      if (v11 != trashFolder)
      {
        ++v10;
        parent = [v11 parent];

        v11 = parent;
        if (parent)
        {
          continue;
        }
      }

      v18 = v5;
      goto LABEL_16;
    }

    v18 = v5;
  }

  else
  {
    v18 = v5;
    v11 = 0;
    v10 = 0;
  }

LABEL_16:
  v19 = [(ICNAEventReporter *)self collaborationStatusForModernObject:v9];
  v20 = [(ICNAEventReporter *)self collaborationTypeForModernObject:v9];
  v21 = +[ICNAIdentityManager sharedManager];
  identifier = [v9 identifier];
  v23 = [v21 saltedID:identifier forClass:objc_opt_class()];

  v24 = [ICASFolderData alloc];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v10)];
  v26 = [(ICASFolderData *)v24 initWithFolderID:v23 folderType:v18 folderLabelType:v28 subFolderLevel:v25 collaborationStatus:v19 collaborationType:v20];

  return v26;
}

- (id)folderDataForModernAccountProxy:(id)proxy
{
  proxyCopy = proxy;
  v4 = +[ICNAIdentityManager sharedManager];
  account = [proxyCopy account];

  identifier = [account identifier];
  v7 = [v4 saltedID:identifier forClass:objc_opt_class()];

  v8 = [ICASFolderData alloc];
  v9 = [[ICASFolderType alloc] initWithFolderType:1];
  v10 = [[ICASFolderLabelType alloc] initWithFolderLabelType:1];
  v11 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v12 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v13 = [(ICASFolderData *)v8 initWithFolderID:v7 folderType:v9 folderLabelType:v10 subFolderLevel:&unk_286E61B70 collaborationStatus:v11 collaborationType:v12];

  return v13;
}

- (id)folderDataForVirtualFolder:(id)folder
{
  folderCopy = folder;
  if ([folderCopy isEqual:*MEMORY[0x277D36678]])
  {
    v4 = 6;
  }

  else if ([folderCopy isEqual:*MEMORY[0x277D36670]])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  v5 = [ICASFolderData alloc];
  v6 = +[ICNAIdentityManager sharedManager];
  identifier = [folderCopy identifier];
  v8 = [v6 saltedID:identifier forClass:objc_opt_class()];
  v9 = [[ICASFolderType alloc] initWithFolderType:1];
  v10 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v4];
  v11 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:0];
  v12 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v13 = [(ICASFolderData *)v5 initWithFolderID:v8 folderType:v9 folderLabelType:v10 subFolderLevel:&unk_286E61B70 collaborationStatus:v11 collaborationType:v12];

  return v13;
}

- (id)folderDataForHTMLFolder:(id)folder
{
  folderCopy = folder;
  v24 = [[ICASFolderType alloc] initWithFolderType:2];
  account = [folderCopy account];
  defaultFolder = [account defaultFolder];

  if (defaultFolder == folderCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  v7 = [[ICASFolderLabelType alloc] initWithFolderLabelType:v6];
  v8 = folderCopy;
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      account2 = [v9 account];
      defaultFolder2 = [account2 defaultFolder];

      if (v11 == defaultFolder2)
      {
        break;
      }

      ++v10;
      parentFolder = [v11 parentFolder];

      v11 = parentFolder;
    }

    while (parentFolder);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v15 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v16 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v17 = +[ICNAIdentityManager sharedManager];
  externalIdentifier = [v9 externalIdentifier];
  v19 = [v17 saltedID:externalIdentifier forClass:objc_opt_class()];

  v20 = [ICASFolderData alloc];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v10)];
  v22 = [(ICASFolderData *)v20 initWithFolderID:v19 folderType:v24 folderLabelType:v7 subFolderLevel:v21 collaborationStatus:v15 collaborationType:v16];

  return v22;
}

- (id)folderDataForHTMLCollection:(id)collection
{
  collectionCopy = collection;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = [(ICNAEventReporter *)self folderDataForHTMLFolder:v5];
  }

  else
  {
    v7 = [[ICASFolderType alloc] initWithFolderType:2];
    v8 = [[ICASFolderLabelType alloc] initWithFolderLabelType:1];
    v9 = +[ICNAIdentityManager sharedManager];
    basicAccountIdentifier = [collectionCopy basicAccountIdentifier];
    v11 = [v9 saltedID:basicAccountIdentifier forClass:objc_opt_class()];

    v12 = [ICASFolderData alloc];
    v13 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
    v14 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
    v6 = [(ICASFolderData *)v12 initWithFolderID:v11 folderType:v7 folderLabelType:v8 subFolderLevel:&unk_286E61B70 collaborationStatus:v13 collaborationType:v14];
  }

  return v6;
}

- (id)folderContentDataForNoteContainer:(id)container
{
  containerCopy = container;
  v4 = [ICASFolderContentData alloc];
  v5 = MEMORY[0x277CCABB0];
  visibleNotesCount = [containerCopy visibleNotesCount];

  v7 = [v5 numberWithInteger:ICNARoundTo2SigFigsInt(visibleNotesCount)];
  v8 = [(ICASFolderContentData *)v4 initWithNoteCount:v7];

  return v8;
}

- (id)folderContentDataForVirtualFolder:(id)folder context:(id)context
{
  contextCopy = context;
  folderCopy = folder;
  v7 = [ICASFolderContentData alloc];
  v8 = MEMORY[0x277CCABB0];
  v9 = [folderCopy visibleNoteCountInContext:contextCopy];

  v10 = [v8 numberWithInteger:ICNARoundTo2SigFigsInt(v9)];
  v11 = [(ICASFolderContentData *)v7 initWithNoteCount:v10];

  return v11;
}

- (id)folderContentDataForNoteCollection:(id)collection
{
  v3 = [MEMORY[0x277D35930] countOfVisibleNotesInCollection:collection];
  v4 = [ICASFolderContentData alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v3)];
  v6 = [(ICASFolderContentData *)v4 initWithNoteCount:v5];

  return v6;
}

- (id)layoutDataForIsInGridMode:(BOOL)mode isTimelineView:(BOOL)view
{
  viewCopy = view;
  modeCopy = mode;
  v6 = [ICASLayoutType alloc];
  if (modeCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(ICASLayoutType *)v6 initWithLayoutType:v7];
  v9 = [ICASLayoutData alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:viewCopy];
  v11 = [(ICASLayoutData *)v9 initWithLayoutType:v8 isTimelineView:v10];

  return v11;
}

- (id)accountDataForModernAccount:(id)account
{
  accountCopy = account;
  v5 = +[ICNAIdentityManager sharedManager];
  identifier = [accountCopy identifier];
  v7 = [v5 saltedID:identifier forClass:objc_opt_class()];

  v8 = [(ICNAEventReporter *)self accountTypeForModernAccount:accountCopy];

  v9 = [[ICASAccountData alloc] initWithAccountType:v8 accountID:v7];

  return v9;
}

- (id)accountDataForHTMLAccount:(id)account
{
  accountCopy = account;
  v5 = +[ICNAIdentityManager sharedManager];
  accountIdentifier = [accountCopy accountIdentifier];
  v7 = [v5 saltedID:accountIdentifier forClass:objc_opt_class()];

  v8 = [(ICNAEventReporter *)self accountTypeForHTMLAccount:accountCopy];

  v9 = [[ICASAccountData alloc] initWithAccountType:v8 accountID:v7];

  return v9;
}

- (id)noteAccessDataForModernNote:(id)note
{
  noteCopy = note;
  v5 = [(ICNAEventReporter *)self collaborationStatusForModernObject:noteCopy];
  v6 = [(ICNAEventReporter *)self collaborationTypeForModernObject:noteCopy];
  v7 = [ICASNoteAccessData alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(noteCopy, "isPasswordProtected")}];
  v9 = MEMORY[0x277CCABB0];
  isPinned = [noteCopy isPinned];

  v11 = [v9 numberWithBool:isPinned];
  v12 = [(ICASNoteAccessData *)v7 initWithIsPasswordProtected:v8 isPinned:v11 collaborationStatus:v5 collaborationType:v6];

  return v12;
}

- (id)noteAccessDataForHTMLNote
{
  v2 = [[ICASCollaborationStatus alloc] initWithCollaborationStatus:1];
  v3 = [[ICASCollaborationType alloc] initWithCollaborationType:1];
  v4 = [ICASNoteAccessData alloc];
  v5 = [(ICASNoteAccessData *)v4 initWithIsPasswordProtected:MEMORY[0x277CBEC28] isPinned:MEMORY[0x277CBEC28] collaborationStatus:v2 collaborationType:v3];

  return v5;
}

- (id)noteContentDataForModernNote:(id)note
{
  noteCopy = note;
  textStorageWithoutCreating = [noteCopy textStorageWithoutCreating];
  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v140 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__4;
  v81 = __Block_byref_object_dispose__4;
  v82 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__4;
  v71 = __Block_byref_object_dispose__4;
  v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (textStorageWithoutCreating)
  {
    v6 = [textStorageWithoutCreating length];
    string = [textStorageWithoutCreating string];
    v8 = [string paragraphRangeForRange:{0, 0}];
    v10 = v9;

    ic_range = [textStorageWithoutCreating ic_range];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke;
    v66[3] = &unk_2799AFC90;
    v66[6] = v8;
    v66[7] = v10;
    v66[4] = &v141;
    v66[5] = &v145;
    [textStorageWithoutCreating enumerateAttributesInRange:ic_range options:v12 usingBlock:{0, v66}];
    ic_range2 = [textStorageWithoutCreating ic_range];
    v14 = *MEMORY[0x277D740E8];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_2;
    v65[3] = &unk_2799AFCB8;
    v65[4] = self;
    v65[5] = &v83;
    v65[6] = &v77;
    v65[7] = &v73;
    v65[8] = &v67;
    [textStorageWithoutCreating enumerateAttribute:v14 inRange:ic_range2 options:v15 usingBlock:{0, v65}];
  }

  else
  {
    v6 = 0;
  }

  visibleAttachments = [noteCopy visibleAttachments];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_3;
  v64[3] = &unk_2799AFCE0;
  v64[4] = &v131;
  v64[5] = v139;
  v64[6] = &v127;
  v64[7] = &v123;
  v64[8] = &v135;
  v64[9] = &v107;
  v64[10] = &v119;
  v64[11] = &v115;
  v64[12] = &v103;
  v64[13] = &v99;
  v64[14] = &v91;
  v64[15] = &v95;
  v64[16] = &v87;
  v64[17] = &v111;
  [visibleAttachments enumerateObjectsUsingBlock:v64];
  v42 = textStorageWithoutCreating;

  v17 = [objc_opt_class() inlineAttachmentReportForModernNote:noteCopy faultOutInlineAttachmentsAfterDone:0];
  countOfTags = [v17 countOfTags];
  countOfTags2 = [v17 countOfTags];
  countOfDistinctTags = [v17 countOfDistinctTags];
  countOfMentions = [v17 countOfMentions];
  countOfMentions2 = [v17 countOfMentions];
  countOfDistinctMentions = [v17 countOfDistinctMentions];
  countOfNoteLinks = [v17 countOfNoteLinks];
  v84[3] += countOfNoteLinks;
  v40 = [v78[5] count];
  countOfDistinctNoteLinks = [v17 countOfDistinctNoteLinks];
  countOfFolderLinks = [v17 countOfFolderLinks];
  v74[3] += countOfFolderLinks;
  v25 = [v68[5] count];
  countOfDistinctFolderLinks = [v17 countOfDistinctFolderLinks];
  v63 = noteCopy;
  v37 = [ICASNoteContentData alloc];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v6)];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:*(v146 + 24)];
  v59 = [MEMORY[0x277CCABB0] numberWithBool:*(v142 + 24)];
  v58 = [MEMORY[0x277CCABB0] numberWithBool:*(v136 + 24)];
  v57 = [MEMORY[0x277CCABB0] numberWithBool:*(v132 + 24)];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:*(v128 + 24)];
  v55 = [MEMORY[0x277CCABB0] numberWithBool:*(v124 + 24)];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:*(v112 + 24)];
  v53 = [MEMORY[0x277CCABB0] numberWithBool:*(v108 + 24)];
  v26 = MEMORY[0x277CCABB0];
  creationDate = [noteCopy creationDate];
  v52 = [v26 numberWithInteger:{ICNARoundTo2SigFigsInt(-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", creationDate))}];
  v51 = [MEMORY[0x277CCABB0] numberWithBool:*(v120 + 24)];
  v50 = [MEMORY[0x277CCABB0] numberWithBool:*(v116 + 24)];
  v49 = [MEMORY[0x277CCABB0] numberWithBool:countOfTags != 0];
  v48 = [MEMORY[0x277CCABB0] numberWithBool:*(v104 + 24)];
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(countOfTags2)];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(countOfDistinctTags)];
  v44 = [MEMORY[0x277CCABB0] numberWithBool:countOfMentions != 0];
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(countOfMentions2)];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(countOfDistinctMentions)];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v100 + 24)];
  v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v96 + 24)];
  v30 = [MEMORY[0x277CCABB0] numberWithBool:*(v92 + 24)];
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v84[3])];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v40 + countOfDistinctNoteLinks)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v74[3])];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(countOfDistinctFolderLinks + v25)];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v88[3])];
  v41 = [(ICASNoteContentData *)v37 initWithCharacterCount:v61 hasChecklist:v60 hasStyleFormatting:v59 hasTable:v58 hasAttachmentInlineDrawingV1:v57 hasAttachmentInlineDrawingV2:v56 hasAttachmentFullscreenDrawing:v55 hasAttachmentOther:v54 hasAttachedPhoto:v53 weeksSinceCreation:v52 hasAttachmentRichUrl:v51 hasAttachmentMapLink:v50 hasTags:v49 hasScannedDoc:v48 countOfTags:v47 countOfDistinctTags:v46 hasMentions:v44 countOfMentions:v43 countOfDistinctMentions:v27 hasPaperKitDrawing:v28 hasPaperDocument:v29 hasPdf:v30 countOfNoteLinks:v31 countOfDistinctNoteLinks:v32 countOfFolderLinks:v33 countOfDistinctFolderLinks:v34 countOfAudioAttachments:v35];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(v139, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v145, 8);

  return v41;
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v8 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  v9 = a3 + a4;
  v10 = a1[6] + a1[7] + 1;
  v11 = [v8 style];
  if (v9 > v10)
  {
    if (v11 == 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(*(a1[4] + 8) + 24) = 1;
    goto LABEL_8;
  }

  if (v11 && [v8 style] != 1 && objc_msgSend(v8, "style") != 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ([v8 style] == 103)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v12 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D88]];
    v13 = [v12 intValue];

    v14 = MEMORY[0x277D35D98];
    v15 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
    v16 = [v15 intValue];

    v17 = [v29 objectForKeyedSubscript:*v14];
    v18 = [v17 intValue];

    v19 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DC0]];
    v20 = [v19 BOOLValue];

    v21 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
    v22 = [v21 BOOLValue];

    v23 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DB8]];
    v24 = [v23 intValue];

    v25 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35D90]];

    v26 = [v29 objectForKeyedSubscript:*MEMORY[0x277D35DA0]];

    if (v13 || (v16 & 1) != 0 || (v18 & 2) != 0 || (v20 & 1) != 0 || (v22 & 1) != 0 || v24 || v25 || v26)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[4] + 8) + 24) == 1)
  {
    *v28 = 1;
  }
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v3 = [MEMORY[0x277CBEBC0] URLWithString:v8];
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = [*(a1 + 32) linkContentTypeEnumForURL:v3];
  if (v5 == 1)
  {
    v6 = 48;
    v7 = 40;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = 64;
    v7 = 56;
  }

  ++*(*(*(a1 + v7) + 8) + 24);
  [*(*(*(a1 + v6) + 8) + 40) ic_addNonNilObject:v4];
LABEL_12:
}

void __50__ICNAEventReporter_noteContentDataForModernNote___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  v5 = [ICNAEventReporter analyticsTypeUTIAttachment:?];
  if ([v5 isEqualToString:*MEMORY[0x277D35BD8]])
  {
    v6 = a1[4];
LABEL_5:
    *(*(v6 + 8) + 24) = 1;
    v7 = a1[5];
LABEL_6:
    v8 = *(v7 + 8);
LABEL_24:
    *(v8 + 24) = 1;
    goto LABEL_25;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BD0]])
  {
    v6 = a1[6];
    goto LABEL_5;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35BC0]])
  {
    v9 = a1[7];
LABEL_23:
    v8 = *(v9 + 8);
    goto LABEL_24;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D35C08]])
  {
    v9 = a1[8];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 3)
  {
    v9 = a1[9];
    goto LABEL_23;
  }

  v10 = [*MEMORY[0x277CE1E90] identifier];
  v11 = [v5 isEqualToString:v10];

  if (v11)
  {
    v9 = a1[10];
    goto LABEL_23;
  }

  if ([v5 isEqualToString:@"com.apple.notes.analytics.appleMaps"])
  {
    v9 = a1[11];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 11)
  {
    v9 = a1[12];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 13)
  {
    v9 = a1[13];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 6)
  {
    v9 = a1[14];
    goto LABEL_23;
  }

  if ([v14 attachmentType] == 14)
  {
    v12 = a1[14];
LABEL_34:
    *(*(v12 + 8) + 24) = 1;
    v7 = a1[15];
    goto LABEL_6;
  }

  if ([v14 attachmentType] == 15)
  {
    v12 = a1[12];
    goto LABEL_34;
  }

  if ([v14 attachmentType] != 4)
  {
    v9 = a1[17];
    goto LABEL_23;
  }

  v13 = [v14 parentAttachment];

  if (!v13)
  {
    ++*(*(a1[16] + 8) + 24);
  }

LABEL_25:
  if (((*(*(a1[6] + 8) + 24) & *(*(a1[4] + 8) + 24) & *(*(a1[7] + 8) + 24) & *(*(a1[8] + 8) + 24) & *(*(a1[9] + 8) + 24) & *(*(a1[10] + 8) + 24) & *(*(a1[11] + 8) + 24)) & (*(*(a1[12] + 8) + 24) & *(*(a1[13] + 8) + 24) & *(*(a1[17] + 8) + 24))) != 0)
  {
    *a3 = 1;
  }
}

+ (id)inlineAttachmentReportForModernNote:(id)note faultOutInlineAttachmentsAfterDone:(BOOL)done
{
  doneCopy = done;
  v66 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v6 = objc_alloc_init(ICNANoteInlineAttachmentReport);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  visibleInlineAttachments = [noteCopy visibleInlineAttachments];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__ICNAEventReporter_inlineAttachmentReportForModernNote_faultOutInlineAttachmentsAfterDone___block_invoke;
  v20[3] = &unk_2799AFD08;
  v20[4] = &v61;
  v20[5] = &v33;
  v20[6] = &v57;
  v20[7] = &v27;
  v20[8] = &v53;
  v20[9] = &v21;
  v20[10] = &v49;
  v20[11] = &v45;
  v20[12] = &v39;
  [visibleInlineAttachments enumerateObjectsUsingBlock:v20];

  v8 = [v34[5] count];
  v9 = [v28[5] count];
  v10 = [v22[5] count];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfTags:v62[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctTags:v8];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfMentions:v58[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctMentions:v9];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfNoteLinks:v54[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctNoteLinks:v10];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfFolderLinks:0];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfDistinctFolderLinks:0];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfCalculateResults:v50[3]];
  [(ICNANoteInlineAttachmentReport *)v6 setCountOfCalculateGraphExpressions:v46[3]];
  if (doneCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v40[5];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v65 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [objc_opt_class() faultOutObject:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v65 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  return v6;
}

void __92__ICNAEventReporter_inlineAttachmentReportForModernNote_faultOutInlineAttachmentsAfterDone___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  if ([v10 isHashtagAttachment])
  {
    ++*(*(a1[4] + 8) + 24);
    v3 = a1[5];
LABEL_7:
    v4 = *(*(v3 + 8) + 40);
    v5 = [v10 tokenContentIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"???";
    }

    [v4 ic_addNonNilObject:v7];

    goto LABEL_11;
  }

  if ([v10 isMentionAttachment])
  {
    ++*(*(a1[6] + 8) + 24);
    v3 = a1[7];
    goto LABEL_7;
  }

  if ([v10 isLinkAttachment])
  {
    ++*(*(a1[8] + 8) + 24);
    v3 = a1[9];
    goto LABEL_7;
  }

  if ([v10 isCalculateResultAttachment])
  {
    ++*(*(a1[10] + 8) + 24);
LABEL_11:
    v8 = v10;
    goto LABEL_12;
  }

  v9 = [v10 isCalculateGraphExpressionAttachment];
  v8 = v10;
  if (v9)
  {
    ++*(*(a1[11] + 8) + 24);
  }

LABEL_12:
  [*(*(a1[12] + 8) + 40) ic_addNonNilObject:v8];
}

- (int64_t)weeksSinceDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v3 date];
  [date timeIntervalSinceDate:dateCopy];
  v7 = v6;

  return llround(v7 / 60.0 / 60.0 / 24.0 / 7.0);
}

- (id)noteCollapsibleSectionDataForHTMLNote:(id)note
{
  v3 = [[ICASCollapsibleSectionData alloc] initWithSectionAffordanceExposures:&unk_286E61B70 sectionAffordanceUsages:&unk_286E61B70];

  return v3;
}

- (id)noteContentDataForHTMLNote:(id)note
{
  noteCopy = note;
  v5 = [ICASNoteContentData alloc];
  v6 = MEMORY[0x277CCABB0];
  contentAsPlainText = [noteCopy contentAsPlainText];
  v8 = [v6 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(contentAsPlainText, "length"))}];
  v9 = MEMORY[0x277CCABB0];
  creationDate = [noteCopy creationDate];

  v11 = [v9 numberWithInteger:{ICNARoundTo2SigFigsInt(-[ICNAEventReporter weeksSinceDate:](self, "weeksSinceDate:", creationDate))}];
  v12 = [(ICASNoteContentData *)v5 initWithCharacterCount:v8 hasChecklist:MEMORY[0x277CBEC28] hasStyleFormatting:MEMORY[0x277CBEC28] hasTable:MEMORY[0x277CBEC28] hasAttachmentInlineDrawingV1:MEMORY[0x277CBEC28] hasAttachmentInlineDrawingV2:MEMORY[0x277CBEC28] hasAttachmentFullscreenDrawing:MEMORY[0x277CBEC28] hasAttachmentOther:MEMORY[0x277CBEC28] hasAttachedPhoto:MEMORY[0x277CBEC28] weeksSinceCreation:v11 hasAttachmentRichUrl:MEMORY[0x277CBEC28] hasAttachmentMapLink:MEMORY[0x277CBEC28] hasTags:MEMORY[0x277CBEC28] hasScannedDoc:MEMORY[0x277CBEC28] countOfTags:&unk_286E61B70 countOfDistinctTags:&unk_286E61B70 hasMentions:MEMORY[0x277CBEC28] countOfMentions:&unk_286E61B70 countOfDistinctMentions:&unk_286E61B70 hasPaperKitDrawing:MEMORY[0x277CBEC28] hasPaperDocument:MEMORY[0x277CBEC28] hasPdf:MEMORY[0x277CBEC28] countOfNoteLinks:&unk_286E61B70 countOfDistinctNoteLinks:&unk_286E61B70 countOfFolderLinks:&unk_286E61B70 countOfDistinctFolderLinks:&unk_286E61B70 countOfAudioAttachments:&unk_286E61B70];

  return v12;
}

- (id)selectedResultAccountTypeForSearchResult:(id)result
{
  object = [result object];
  v4 = ICProtocolCast();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v4)
      {
        account = [v4 account];
        if (account)
        {
          v6 = [ICNAController accountTypeEnumForHTMLAccount:account];
          account2 = 0;
          goto LABEL_4;
        }
      }

      else
      {
        account = 0;
      }

      account2 = 0;
LABEL_29:
      v12 = 0;
      goto LABEL_30;
    }

    note = [object note];
    account2 = [note account];

    if (account2)
    {
      goto LABEL_3;
    }

LABEL_23:
    account = 0;
    goto LABEL_29;
  }

  account2 = [object account];
  if (!account2)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = [ICNAController accountTypeEnumForModernAccount:account2];
  account = 0;
LABEL_4:
  v8 = 5;
  v9 = 6;
  if (v6 != 10)
  {
    v9 = 0;
  }

  if (v6 != 9)
  {
    v8 = v9;
  }

  if ((v6 - 4) >= 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 4;
  }

  if (v6 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  if (v6 == 2)
  {
    v11 = 2;
  }

  if (v6 == 1)
  {
    v11 = 1;
  }

  if (v6 <= 3)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

LABEL_30:
  v14 = [[ICASSelectedResultAccountType alloc] initWithSelectedResultAccountType:v12];

  return v14;
}

- (id)searchSuggestionDataWithSearchSuggestionType:(unint64_t)type
{
  if (type - 1 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25C72ADB0[type - 1];
  }

  v4 = [ICASSearchSuggestionData alloc];
  v5 = [[ICASSearchSuggestionType alloc] initWithSearchSuggestionType:v3];
  v6 = [(ICASSearchSuggestionData *)v4 initWithSearchSuggestionType:v5];

  return v6;
}

- (id)tipDataForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [[ICASTipData alloc] initWithTipFeature:featureCopy];

  return v4;
}

- (id)audioAttachmentDataForModernAttachment:(id)attachment
{
  attachmentCopy = attachment;
  parentAttachment = [attachmentCopy parentAttachment];
  v5 = parentAttachment;
  if (parentAttachment)
  {
    v6 = parentAttachment;
  }

  else
  {
    v6 = attachmentCopy;
  }

  v7 = v6;

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  managedObjectContext = [v7 managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__ICNAEventReporter_audioAttachmentDataForModernAttachment___block_invoke;
  v25[3] = &unk_2799AF158;
  v27 = &v28;
  v9 = v7;
  v26 = v9;
  [managedObjectContext performBlockAndWait:v25];

  v10 = +[ICNAIdentityManager sharedManager];
  v11 = [v10 saltedID:v29[5] forClass:objc_opt_class()];
  v24 = attachmentCopy;

  v12 = [objc_alloc(MEMORY[0x277D35E08]) initWithAttachment:v9];
  v13 = [ICASAudioAttachmentData alloc];
  v14 = MEMORY[0x277CCABB0];
  audioDocument = [v12 audioDocument];
  transcriptAsPlainText = [audioDocument transcriptAsPlainText];
  v17 = [v14 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(transcriptAsPlainText, "length"))}];
  v18 = MEMORY[0x277CCABB0];
  audioDocument2 = [v12 audioDocument];
  recordingSummaryAsPlainText = [audioDocument2 recordingSummaryAsPlainText];
  v21 = [v18 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(recordingSummaryAsPlainText, "length"))}];
  v22 = [(ICASAudioAttachmentData *)v13 initWithAudioAttachmentID:v11 transcriptCharacterCount:v17 summaryCharacterCount:v21];

  _Block_object_dispose(&v28, 8);

  return v22;
}

uint64_t __60__ICNAEventReporter_audioAttachmentDataForModernAttachment___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) identifier];

  return MEMORY[0x2821F96F8]();
}

- (id)audioRecordingDataForModernAttachment:(id)attachment appBackgroundOccurred:(BOOL)occurred noteMultitaskingOccurred:(BOOL)multitaskingOccurred audioAttachmentDuration:(id)duration
{
  multitaskingOccurredCopy = multitaskingOccurred;
  occurredCopy = occurred;
  durationCopy = duration;
  attachmentCopy = attachment;
  parentAttachment = [attachmentCopy parentAttachment];
  v12 = parentAttachment;
  if (parentAttachment)
  {
    v13 = parentAttachment;
  }

  else
  {
    v13 = attachmentCopy;
  }

  v14 = v13;

  v15 = [objc_alloc(MEMORY[0x277D35E08]) initWithAttachment:v14];
  audioDocument = [v15 audioDocument];
  orderedFragmentUUIDs = [audioDocument orderedFragmentUUIDs];
  v18 = [orderedFragmentUUIDs count];

  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [[ICASRecordingActionType alloc] initWithRecordingActionType:v19];
  v21 = [ICASAudioRecordingData alloc];
  v22 = MEMORY[0x277CCABB0];
  intValue = [durationCopy intValue];

  v24 = [v22 numberWithInteger:ICNARoundTo2SigFigsInt(intValue)];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:occurredCopy];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:multitaskingOccurredCopy];
  v27 = [(ICASAudioRecordingData *)v21 initWithTotalRecordingTime:v24 recordingActionType:v20 didAppBackgroundOccur:v25 didNoteMultitaskingOccur:v26];

  return v27;
}

- (id)audioTranscriptInteractionDataWithSummaryViewed:(BOOL)viewed transcriptViewed:(BOOL)transcriptViewed interactionTargets:(id)targets interactionTypes:(id)types
{
  transcriptViewedCopy = transcriptViewed;
  viewedCopy = viewed;
  targetsCopy = targets;
  typesCopy = types;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([targetsCopy count])
  {
    v10 = 0;
    do
    {
      if (v10 >= [typesCopy count])
      {
        break;
      }

      v11 = [targetsCopy objectAtIndexedSubscript:v10];
      v12 = [typesCopy objectAtIndexedSubscript:v10];
      if ([v11 isEqual:@"audioTranscript"])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isEqual:@"audioSummary"] ? 2 : 0;
      }

      if ([v12 isEqual:@"fullInsertToNote"])
      {
        v14 = 1;
      }

      else if ([v12 isEqual:@"partialInsertToNote"])
      {
        v14 = 2;
      }

      else
      {
        v14 = [v12 isEqual:@"copy"] ? 3 : 0;
      }

      v15 = [[ICASTranscriptInteractionTarget alloc] initWithTranscriptInteractionTarget:v13];
      v16 = [[ICASTranscriptActionType alloc] initWithTranscriptActionType:v14];
      v17 = [[ICASTranscriptInteractionItemData alloc] initWithTranscriptInteractionTarget:v15 transcriptActionType:v16];
      [v9 addObject:v17];

      ++v10;
    }

    while (v10 < [targetsCopy count]);
  }

  v18 = [ICASAudioTranscriptInteractionData alloc];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:transcriptViewedCopy];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:viewedCopy];
  v21 = [(ICASAudioTranscriptInteractionData *)v18 initWithWasTranscriptViewed:v19 wasSummaryViewed:v20 transcriptInteractionSummaryArray:v9];

  return v21;
}

- (id)accountTypeForModernAccount:(id)account
{
  accountCopy = account;
  v4 = [ICASAccountType alloc];
  v5 = [ICNAController accountTypeEnumForModernAccount:accountCopy];

  v6 = [(ICASAccountType *)v4 initWithAccountType:v5];

  return v6;
}

- (id)accountTypeForHTMLAccount:(id)account
{
  accountCopy = account;
  v4 = [ICASAccountType alloc];
  v5 = [ICNAController accountTypeEnumForHTMLAccount:accountCopy];

  v6 = [(ICASAccountType *)v4 initWithAccountType:v5];

  return v6;
}

- (id)noteEditDataForContextType:(int64_t)type
{
  v3 = [[ICASNoteEditContext alloc] initWithNoteEditContext:type];
  v4 = [[ICASNoteEditData alloc] initWithNoteEditContext:v3];

  return v4;
}

- (id)styleDataForStyleTypeValue:(int64_t)value
{
  v3 = [[ICASStyleType alloc] initWithStyleType:value];
  v4 = [[ICASStyleData alloc] initWithStyleType:v3];

  return v4;
}

- (id)noteEditorCallOutBarDataForButtonTypeValue:(int64_t)value
{
  v3 = [[ICASNoteEditorCallOutBarButtonType alloc] initWithNoteEditorCallOutBarButtonType:value];
  v4 = [[ICASNoteEditorCallOutBarData alloc] initWithNoteEditorCallOutBarButtonType:v3];

  return v4;
}

- (unint64_t)pencilStrokeCountForDrawing:(id)drawing
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  strokes = [drawing strokes];
  v4 = [strokes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(strokes);
        }

        if ([*(*(&v10 + 1) + 8 * i) _inputType] == 1)
        {
          ++v6;
        }
      }

      v5 = [strokes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)searchRankingExperimentItemDataWithStrategyTypeEnum:(int64_t)enum rank:(unint64_t)rank
{
  v5 = [[ICASRankingStrategyType alloc] initWithRankingStrategyType:enum];
  v6 = [ICASSearchRankingExperimentItemData alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(rank)];
  v8 = [(ICASSearchRankingExperimentItemData *)v6 initWithRankingStrategyType:v5 rank:v7];

  return v8;
}

+ (id)analyticsTypeUTIAttachment:(id)attachment
{
  attachmentCopy = attachment;
  typeUTI = [attachmentCopy typeUTI];
  v5 = [typeUTI copy];

  if ([attachmentCopy isMap])
  {
    v6 = @"com.apple.notes.analytics.appleMaps";
  }

  else
  {
    if ([attachmentCopy attachmentType] != 6)
    {
      goto LABEL_6;
    }

    v6 = *MEMORY[0x277D35BE0];
  }

  v5 = v6;
LABEL_6:

  return v5;
}

+ (id)filteredActivityType:(id)type
{
  v3 = [self maskString:type withoutPrefix:@"com.apple." withMask:@"other"];
  if ([(__CFString *)v3 hasPrefix:@"com.apple.UIKit.activity.PostTo"])
  {

    v3 = @"other";
  }

  return v3;
}

+ (id)maskString:(id)string withoutPrefix:(id)prefix withMask:(id)mask
{
  stringCopy = string;
  prefixCopy = prefix;
  maskCopy = mask;
  if (stringCopy && ((v10 = [stringCopy length], v10 < objc_msgSend(prefixCopy, "length")) || (objc_msgSend(stringCopy, "hasPrefix:", prefixCopy) & 1) == 0))
  {
    v11 = [maskCopy copy];
  }

  else
  {
    v11 = stringCopy;
  }

  v12 = v11;

  return v12;
}

+ (BOOL)activityTypeHasUnknownShareFlow:(id)flow
{
  v3 = activityTypeHasUnknownShareFlow__onceToken;
  flowCopy = flow;
  if (v3 != -1)
  {
    +[ICNAEventReporter activityTypeHasUnknownShareFlow:];
  }

  v5 = [activityTypeHasUnknownShareFlow__unknownActivityTypes containsObject:flowCopy];

  return v5;
}

uint64_t __53__ICNAEventReporter_activityTypeHasUnknownShareFlow___block_invoke()
{
  activityTypeHasUnknownShareFlow__unknownActivityTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D54778], *MEMORY[0x277D54730], *MEMORY[0x277D54720], *MEMORY[0x277D54780], *MEMORY[0x277D54718], @"com.apple.DocumentManagerUICore.SaveToFiles", @"com.apple.mobilenotes.PagesHandoff", @"com.apple.mobilenotes.findInNote", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (void)faultOutObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    managedObjectContext = [objectCopy managedObjectContext];
    [managedObjectContext refreshObject:objectCopy mergeChanges:0];
  }
}

+ (BOOL)attachmentHasDeepLinkSafariHighlight:(id)highlight
{
  highlightCopy = highlight;
  synapseData = [highlightCopy synapseData];

  if (synapseData)
  {
    synapseData = objc_alloc(MEMORY[0x277D6B790]);
    synapseData2 = [highlightCopy synapseData];
    v6 = [synapseData initWithData:synapseData2 error:0];

    userActivity = [v6 userActivity];
    _linkContextInfo = [userActivity _linkContextInfo];
    LOBYTE(synapseData) = _linkContextInfo != 0;
  }

  return synapseData;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

void __54__ICNAEventReporter_submitTimedEventOfTypeIfPossible___block_invoke_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_25C6BF000, log, OS_LOG_TYPE_DEBUG, "%@ is possible to submit: %d", &v4, 0x12u);
}

@end