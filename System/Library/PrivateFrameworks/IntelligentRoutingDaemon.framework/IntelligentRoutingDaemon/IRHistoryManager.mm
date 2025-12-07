@interface IRHistoryManager
- (IRHistoryManager)initWithStore:(id)store miloFeedback:(id)feedback;
- (IRMiLoFeedbackProvider)miloFeedback;
- (id)_labelMiLoIfNeeded:(id)needed lastMiLoLabel:(id)label shouldLabelEventWithMilo:(BOOL)milo;
- (void)addEvent:(id)event forCandidateIdentifier:(id)identifier withSystemState:(id)state andMiloPrediction:(id)prediction;
- (void)synchronizeAndFetchFromDBOnDisk;
@end

@implementation IRHistoryManager

- (IRHistoryManager)initWithStore:(id)store miloFeedback:(id)feedback
{
  storeCopy = store;
  feedbackCopy = feedback;
  v11.receiver = self;
  v11.super_class = IRHistoryManager;
  v8 = [(IRHistoryManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRHistoryManager *)v8 setStore:storeCopy];
    [(IRHistoryManager *)v9 setMiloFeedback:feedbackCopy];
    [(IRHistoryManager *)v9 synchronizeAndFetchFromDBOnDisk];
  }

  return v9;
}

- (void)addEvent:(id)event forCandidateIdentifier:(id)identifier withSystemState:(id)state andMiloPrediction:(id)prediction
{
  v78 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  identifierCopy = identifier;
  stateCopy = state;
  predictionCopy = prediction;
  LODWORD(prediction) = [eventCopy isUserIntentionEvent];
  LODWORD(state) = [stateCopy isContinuityDisplay] ^ 1;
  v14 = [predictionCopy canLabel] & prediction & state;
  predictionId = [predictionCopy predictionId];
  lastMiLoLabel = [(IRHistoryManager *)self lastMiLoLabel];
  v17 = [(IRHistoryManager *)self _labelMiLoIfNeeded:predictionId lastMiLoLabel:lastMiLoLabel shouldLabelEventWithMilo:v14];
  [(IRHistoryManager *)self setLastMiLoLabel:v17];

  v60 = predictionCopy;
  if (v14 == 1)
  {
    predictionId2 = [predictionCopy predictionId];
    predictionId3 = [predictionCopy predictionId];
    v61 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:predictionId2 predictionId:predictionId3];
  }

  else
  {
    v61 = [IRMiLoPredictionEventDO miLoPredictionEventDOWithLabel:0 predictionId:0];
  }

  v20 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v21 = *MEMORY[0x277D21268];
  if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [eventCopy name];
    v58 = stateCopy;
    v24 = v23 = identifierCopy;
    v25 = [MEMORY[0x277D212B0] eventTypeStringEventDO:eventCopy];
    v26 = [MEMORY[0x277D212B0] eventSubTypeStringEventDO:eventCopy];
    label = [v61 label];
    v28 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    *buf = 136316930;
    v63 = "#history-manager, ";
    v64 = 2112;
    v65 = v20;
    v66 = 2112;
    v67 = v24;
    v68 = 2112;
    v69 = v25;
    v70 = 2112;
    v71 = v26;
    v72 = 2112;
    v73 = v23;
    v74 = 2112;
    v75 = label;
    v76 = 2112;
    v77 = v28;
    _os_log_impl(&dword_25543D000, v22, OS_LOG_TYPE_DEFAULT, "%s[%@], Adding event (%@) type:%@, subtype:%@ to candidate:%@, miloLabel:%@, shouldLabelEventWithMilo:%@", buf, 0x52u);

    identifierCopy = v23;
    stateCopy = v58;
  }

  v29 = [MEMORY[0x277CBEAA8] now];
  bundleID = [eventCopy bundleID];
  v31 = IRAVInitialRouteSharingPolicyForBundleIdentifier(bundleID);
  v32 = [IRHistoryEventDO historyEventDOWithDate:v29 candidateIdentifier:identifierCopy event:eventCopy miloPredictionEvent:v61 systemState:stateCopy sharingPolicy:v31];

  v33 = MEMORY[0x277CBEB18];
  historyEventsContainer = [(IRHistoryManager *)self historyEventsContainer];
  historyEvents = [historyEventsContainer historyEvents];
  v36 = [v33 arrayWithArray:historyEvents];

  [v36 addObject:v32];
  v37 = [v36 count];
  v38 = +[IRPreferences shared];
  numberOfHistoryEventsInCache = [v38 numberOfHistoryEventsInCache];
  unsignedIntValue = [numberOfHistoryEventsInCache unsignedIntValue];

  if (v37 > unsignedIntValue)
  {
    [v36 removeObjectAtIndex:0];
  }

  v41 = [[IRHistoryEventsContainerDO alloc] initWithHistoryEvents:v36];
  [(IRHistoryManager *)self setHistoryEventsContainer:v41];

  v42 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v43 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v44 = MEMORY[0x277CCABB0];
    v45 = v43;
    historyEventsContainer2 = [(IRHistoryManager *)self historyEventsContainer];
    [historyEventsContainer2 historyEvents];
    v59 = v32;
    v47 = eventCopy;
    v48 = stateCopy;
    v50 = v49 = identifierCopy;
    v51 = [v44 numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
    *buf = 136315650;
    v63 = "#history-manager, ";
    v64 = 2112;
    v65 = v42;
    v66 = 2112;
    v67 = v51;
    _os_log_impl(&dword_25543D000, v45, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of History events: %@", buf, 0x20u);

    identifierCopy = v49;
    stateCopy = v48;
    eventCopy = v47;
    v32 = v59;
  }

  store = [(IRHistoryManager *)self store];
  v53 = +[IRPreferences shared];
  numberOfEventsToSaveInDisk = [v53 numberOfEventsToSaveInDisk];
  v55 = [store addHistoryEvent:v32 withLimit:{objc_msgSend(numberOfEventsToSaveInDisk, "unsignedIntegerValue")}];

  if ((v55 & 1) == 0)
  {
    v56 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v57 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v63 = "#history-manager, ";
      v64 = 2112;
      v65 = v56;
      _os_log_impl(&dword_25543D000, v57, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - History manager save event error] Could not save new history event", buf, 0x16u);
    }
  }
}

- (id)_labelMiLoIfNeeded:(id)needed lastMiLoLabel:(id)label shouldLabelEventWithMilo:(BOOL)milo
{
  miloCopy = milo;
  neededCopy = needed;
  labelCopy = label;
  v10 = labelCopy;
  v11 = labelCopy;
  if (neededCopy)
  {
    v11 = labelCopy;
    if (miloCopy)
    {
      v11 = labelCopy;
      if (([neededCopy isEqual:labelCopy] & 1) == 0)
      {
        v11 = neededCopy;

        miloFeedback = [(IRHistoryManager *)self miloFeedback];
        [miloFeedback addLabelWithName:v11];
      }
    }
  }

  return v11;
}

- (void)synchronizeAndFetchFromDBOnDisk
{
  v22 = *MEMORY[0x277D85DE8];
  store = [(IRHistoryManager *)self store];
  v4 = +[IRPreferences shared];
  numberOfHistoryEventsInCache = [v4 numberOfHistoryEventsInCache];
  v6 = [store fetchHistoryEventsContainerWithLimit:{objc_msgSend(numberOfHistoryEventsInCache, "unsignedIntegerValue")}];
  [(IRHistoryManager *)self setHistoryEventsContainer:v6];

  historyEventsContainer = [(IRHistoryManager *)self historyEventsContainer];

  v8 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v9 = *MEMORY[0x277D21260];
  v10 = *MEMORY[0x277D21260];
  if (historyEventsContainer)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      historyEventsContainer2 = [(IRHistoryManager *)self historyEventsContainer];
      historyEvents = [historyEventsContainer2 historyEvents];
      v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(historyEvents, "count")}];
      v16 = 136315650;
      v17 = "#history-manager, ";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_DEFAULT, "%s[%@], Loading history Events container from store with %@ events", &v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "#history-manager, ";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - History manager fetch events error] Could not fetch history events container", &v16, 0x16u);
  }
}

- (IRMiLoFeedbackProvider)miloFeedback
{
  WeakRetained = objc_loadWeakRetained(&self->_miloFeedback);

  return WeakRetained;
}

@end