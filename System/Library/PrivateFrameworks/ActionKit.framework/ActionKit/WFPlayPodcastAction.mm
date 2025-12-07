@interface WFPlayPodcastAction
- (BOOL)attemptContextualPlayback;
- (BOOL)canOfferSuggestionsForParameterWithKey:(id)key;
- (id)contentNotFoundError;
- (id)errorPlayingPodcast:(unsigned int)podcast;
- (id)genericPlayPodcastFailedError;
- (id)getPlaybackURLForContentItem:(id)item playbackOrder:(id)order;
- (id)serializedParametersForContextualActionMediaIntent:(id)intent;
- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values;
- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)key;
- (void)executePlayMediaIntent:(id)intent;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler;
- (void)playQueue:(_MRSystemAppPlaybackQueue *)queue onPlayerPath:(void *)path completion:(id)completion;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFPlayPodcastAction

- (void)executePlayMediaIntent:(id)intent
{
  v4 = MEMORY[0x277D7C538];
  intentCopy = intent;
  v6 = [[v4 alloc] initWithIntent:intentCopy donateInteraction:0 groupIdentifier:0];

  [v6 setSkipResolveAndConfirm:1];
  [(WFPlayPodcastAction *)self setExecutor:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WFPlayPodcastAction_executePlayMediaIntent___block_invoke;
  v7[3] = &unk_278C1AB80;
  v7[4] = self;
  [v6 startWithCompletionHandler:v7];
}

- (BOOL)attemptContextualPlayback
{
  v3 = [(WFPlayPodcastAction *)self parameterValueForKey:@"WFPodcastShow" ofClass:objc_opt_class()];
  intent = [v3 intent];

  if (intent)
  {
    intent2 = [v3 intent];
    [(WFPlayPodcastAction *)self executePlayMediaIntent:intent2];
  }

  return intent != 0;
}

- (id)serializedParametersForContextualActionMediaIntent:(id)intent
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C730];
  intentCopy = intent;
  v5 = [[v3 alloc] initWithIntent:intentCopy];

  v6 = [objc_alloc(MEMORY[0x277D7C740]) initWithValue:v5];
  v10 = @"WFPodcastShow";
  serializedRepresentation = [v6 serializedRepresentation];
  v11[0] = serializedRepresentation;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler
{
  v17[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  handlerCopy = handler;
  v8 = [(WFPlayPodcastAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:keyCopy];
  if (v8)
  {
    mEMORY[0x277D7C840] = [MEMORY[0x277D7C840] sharedDataSource];
    [mEMORY[0x277D7C840] loadEntriesFor:objc_opt_class() parameterKey:keyCopy limit:20 collectionIdentifier:v8 completionHandler:handlerCopy];
  }

  else
  {
    mEMORY[0x277D7C840] = WFLocalizedString(@"Suggestions Not Found");
    v10 = WFLocalizedString(@"The specified action has no suggestions available");
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D7CB30];
    v13 = *MEMORY[0x277CCA450];
    v16[0] = *MEMORY[0x277CCA470];
    v16[1] = v13;
    v17[0] = mEMORY[0x277D7C840];
    v17[1] = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v15 = [v11 errorWithDomain:v12 code:5 userInfo:v14];

    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (BOOL)canOfferSuggestionsForParameterWithKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy == @"WFPodcastShow")
  {
    v6 = 1;
  }

  else if (keyCopy)
  {
    v6 = [(__CFString *)keyCopy isEqualToString:@"WFPodcastShow"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WFPlayPodcastAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:v5];

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)key
{
  v3 = [(WFPlayPodcastAction *)self parameterStateForKey:@"WFPodcastShow"];
  variable = [v3 variable];
  if (variable)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = variable;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  collectionFilter = [v6 collectionFilter];

  namedQueryReference = [collectionFilter namedQueryReference];

  if (namedQueryReference)
  {
    topHitSystemEntityCollectionIdentifier = [namedQueryReference topHitSystemEntityCollectionIdentifier];
  }

  else
  {
    topHitSystemEntityCollectionIdentifier = 0;
  }

  return topHitSystemEntityCollectionIdentifier;
}

- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values
{
  v17[1] = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = intentCopy;
    _codableDescription = [v6 _codableDescription];
    v8 = [_codableDescription attributeByName:@"mediaContainer"];
    v9 = [(WFPlayPodcastAction *)self parameterForKey:@"WFPodcastShow"];
    mediaContainer = [v6 mediaContainer];
    definition = [v9 definition];
    v12 = [v8 wf_parameterStateForIntentValue:mediaContainer parameterDefinition:definition];
    serializedRepresentation = [v12 serializedRepresentation];

    if (serializedRepresentation)
    {
      v16 = @"WFPodcastShow";
      v17[0] = serializedRepresentation;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)errorPlayingPodcast:(unsigned int)podcast
{
  if (podcast)
  {
    if (podcast == 1)
    {
      [(WFPlayPodcastAction *)self contentNotFoundError];
    }

    else
    {
      [(WFPlayPodcastAction *)self genericPlayPodcastFailedError];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)genericPlayPodcastFailedError
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedString(@"Unable to Play Podcast");
  v3 = WFLocalizedString(@"Unable to play podcast because an unknown error occurred.");
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D7CB30];
  v6 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA470];
  v10[1] = v6;
  v11[0] = v2;
  v11[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 errorWithDomain:v5 code:5 userInfo:v7];

  return v8;
}

- (id)contentNotFoundError
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedString(@"Podcast Not Found");
  v3 = WFLocalizedString(@"The specified podcast could not be found.");
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D7CB30];
  v6 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA470];
  v10[1] = v6;
  v11[0] = v2;
  v11[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 errorWithDomain:v5 code:5 userInfo:v7];

  return v8;
}

- (id)getPlaybackURLForContentItem:(id)item playbackOrder:(id)order
{
  v13[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  orderCopy = order;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = @"storeTrackId";
    episode = [itemCopy episode];
    identifier = [episode identifier];
    v13[0] = identifier;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    episode = [itemCopy object];
    v9 = [episode podcastQueryDictionaryWithPlaybackOrder:orderCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v10 = [WFPodcastUtilities generatePlaybackQueueURL:@"playPodcast" withQueryDictionary:v9];

  return v10;
}

- (void)playQueue:(_MRSystemAppPlaybackQueue *)queue onPlayerPath:(void *)path completion:(id)completion
{
  completionCopy = completion;
  userInterface = [(WFPlayPodcastAction *)self userInterface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__WFPlayPodcastAction_playQueue_onPlayerPath_completion___block_invoke;
  v11[3] = &unk_278C1A740;
  queueCopy = queue;
  pathCopy = path;
  v12 = completionCopy;
  v10 = completionCopy;
  WFConfigureAudioRoutesForUserInterface(userInterface, v11);
}

void __57__WFPlayPodcastAction_playQueue_onPlayerPath_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  MRMediaRemoteSetAppPlaybackQueueForPlayer();
}

void __57__WFPlayPodcastAction_playQueue_onPlayerPath_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 firstObject];
  [v4 unsignedIntValue];
  (*(*(a1 + 32) + 16))();
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v7[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (![(WFPlayPodcastAction *)self attemptContextualPlayback])
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke;
    v6[3] = &unk_278C211D0;
    v6[4] = self;
    [inputCopy generateCollectionByCoercingToItemClasses:v5 completionHandler:v6];
  }
}

void __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 numberOfItems])
  {
    v4 = @"APPLICATION_DEFAULT";
    v5 = [*(a1 + 32) parameterValueForKey:@"WFPodcastPlaybackOrder" ofClass:objc_opt_class()];
    if ([v5 isEqualToString:@"Newest First"])
    {
      v6 = WFPodcastsPlaybackOrderNewestFirst;
    }

    else
    {
      if (![v5 isEqualToString:@"Oldest First"])
      {
        v8 = @"APPLICATION_DEFAULT";
        goto LABEL_9;
      }

      v6 = &WFPodcastsPlaybackOrderOldestFirst;
    }

    v8 = *v6;

LABEL_9:
    v9 = [v3 items];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke_2;
    v18[3] = &unk_278C1A6A0;
    v18[4] = *(a1 + 32);
    v19 = v8;
    v10 = v8;
    v7 = [v9 if_compactMap:v18];

    goto LABEL_10;
  }

  v5 = [WFPodcastUtilities generatePlaybackQueueURL:@"playPodcasts" withQueryDictionary:0];
  v20[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
LABEL_10:

  v11 = [WFPodcastUtilities createPlaybackQueueWithURLs:v7 setImmediatePlayback:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke_3;
  v14[3] = &unk_278C1A6F0;
  v12 = *(a1 + 32);
  v15 = v7;
  v16 = v12;
  v17 = v11;
  v13 = v7;
  [WFPodcastUtilities createPreferredPlayerPathWithCompletion:v14];
}

uint64_t __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke_3(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = getWFActionsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    *buf = 136315650;
    v17 = "[WFPlayPodcastAction runAsynchronouslyWithInput:]_block_invoke_3";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = a2;
    _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_INFO, "%s Attempting to play podcasts %@ on playback path %@...", buf, 0x20u);
  }

  v6 = a1[5];
  v7 = a1[6];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke_186;
  v12 = &unk_278C1A6C8;
  v14 = a2;
  v15 = v7;
  v13 = v6;
  return [v6 playQueue:? onPlayerPath:? completion:?];
}

void __50__WFPlayPodcastAction_runAsynchronouslyWithInput___block_invoke_186(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  CFRelease(*(a1 + 40));
  v4 = getWFActionsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[WFPlayPodcastAction runAsynchronouslyWithInput:]_block_invoke";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_INFO, "%s Finished attempting playback with MediaRemote status code %{public}u", &v7, 0x12u);
  }

  MRSystemAppPlaybackQueueDestroy();
  v5 = *(a1 + 32);
  v6 = [v5 errorPlayingPodcast:a2];
  [v5 finishRunningWithError:v6];
}

@end