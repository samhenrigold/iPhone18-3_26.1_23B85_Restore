@interface WFNextStaccatoActionStreamObserver
- (BOOL)isObserving;
- (WFNextStaccatoActionStreamObserver)init;
- (WFNextStaccatoActionStreamObserverDelegate)delegate;
- (void)didReceiveNextAction:(id)action baseAction:(id)baseAction forAppWithBundleIdentifier:(id)identifier associatedLiveActivityIdentifier:(id)activityIdentifier;
- (void)observingProviderObservationDidInterrupted:(id)interrupted;
- (void)removeTrackingActivityID:(id)d;
- (void)startObservingWithCompletion:(id)completion;
- (void)stopObservingWithCompletion:(id)completion;
@end

@implementation WFNextStaccatoActionStreamObserver

- (WFNextStaccatoActionStreamObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observingProviderObservationDidInterrupted:(id)interrupted
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[WFNextStaccatoActionStreamObserver observingProviderObservationDidInterrupted:]";
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Next Action Observation Stream interrupted", &v9, 0xCu);
  }

  delegate = [(WFNextStaccatoActionStreamObserver *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69ACD10] code:1001 userInfo:0];
    delegate2 = [(WFNextStaccatoActionStreamObserver *)self delegate];
    [delegate2 nextActionStreamObserver:self didStopObservingWithError:v7];
  }
}

- (void)didReceiveNextAction:(id)action baseAction:(id)baseAction forAppWithBundleIdentifier:(id)identifier associatedLiveActivityIdentifier:(id)activityIdentifier
{
  v63 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  baseActionCopy = baseAction;
  identifierCopy = identifier;
  activityIdentifierCopy = activityIdentifier;
  v14 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v62 = "[WFNextStaccatoActionStreamObserver didReceiveNextAction:baseAction:forAppWithBundleIdentifier:associatedLiveActivityIdentifier:]";
    _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Received Next Action entry", buf, 0xCu);
  }

  baseAction = [(WFNextStaccatoActionStreamObserver *)self baseAction];

  if (!baseAction)
  {
    goto LABEL_16;
  }

  baseAction2 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  associatedBundleIdentifier = [baseAction2 associatedBundleIdentifier];
  v18 = [associatedBundleIdentifier isEqualToString:identifierCopy];

  if (!v18)
  {
    goto LABEL_25;
  }

  if (activityIdentifierCopy)
  {
    trackingActivityIDs = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
    if ([trackingActivityIDs containsObject:activityIdentifierCopy])
    {

LABEL_16:
      delegate = [(WFNextStaccatoActionStreamObserver *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        metadataProvider = [(WFNextStaccatoActionStreamObserver *)self metadataProvider];
        identifier = [actionCopy identifier];
        v60 = 0;
        v32 = [metadataProvider actionForBundleIdentifier:identifierCopy andActionIdentifier:identifier error:&v60];
        v33 = v60;

        if (v32)
        {
          v58 = baseActionCopy;
          v34 = +[VCVoiceShortcutClient standardClient];
          v59 = v33;
          v35 = [v34 serializedParametersForLinkAction:actionCopy actionMetadata:v32 error:&v59];
          v36 = v59;

          if (v35)
          {
            v52 = v36;
            v54 = v34;
            if (activityIdentifierCopy)
            {
              trackingActivityIDs2 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
              v38 = [trackingActivityIDs2 containsObject:activityIdentifierCopy];

              if ((v38 & 1) == 0)
              {
                trackingActivityIDs3 = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
                [trackingActivityIDs3 addObject:activityIdentifierCopy];
              }
            }

            v40 = objc_alloc(MEMORY[0x1E696E730]);
            identifier2 = [actionCopy identifier];
            v56 = actionCopy;
            v42 = [v40 initWithAppBundleIdentifier:identifierCopy appIntentIdentifier:identifier2 serializedParameters:v35];

            title = [v32 title];
            v44 = [title localizedStringForLocaleIdentifier:0];

            v45 = [WFConfiguredActionButtonIntentAction alloc];
            baseAction3 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
            previewIcon = [baseAction3 previewIcon];
            v48 = [(WFConfiguredStaccatoIntentAction *)v45 initWithIntent:v42 named:v44 previewIcon:previewIcon appShortcutIdentifier:0 templateParameterValues:0 contextualParameters:0 shortcutsMetadata:0 colorScheme:0];

            delegate2 = [(WFNextStaccatoActionStreamObserver *)self delegate];
            [delegate2 nextActionStreamObserver:self didReceiveNextAction:v48 associatedLiveActivityIdentifier:activityIdentifierCopy];

            v34 = v54;
            actionCopy = v56;
            v36 = v52;
          }

          v33 = v36;
          baseActionCopy = v58;
        }
      }

      goto LABEL_25;
    }

    v53 = trackingActivityIDs;
    v55 = actionCopy;
    v57 = baseActionCopy;
  }

  else
  {
    v55 = actionCopy;
    v57 = baseActionCopy;
  }

  baseAction4 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
  intent = [baseAction4 intent];
  appIntentIdentifier = [intent appIntentIdentifier];
  identifier3 = [v57 identifier];
  if ([appIntentIdentifier isEqualToString:identifier3])
  {
    v24 = 0;
  }

  else
  {
    baseAction5 = [(WFNextStaccatoActionStreamObserver *)self baseAction];
    intent2 = [baseAction5 intent];
    [intent2 appIntentIdentifier];
    v26 = v51 = baseAction4;
    identifier4 = [v55 identifier];
    v24 = [v26 isEqualToString:identifier4] ^ 1;

    baseAction4 = v51;
  }

  if (activityIdentifierCopy)
  {
  }

  actionCopy = v55;
  baseActionCopy = v57;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:
}

- (void)removeTrackingActivityID:(id)d
{
  dCopy = d;
  trackingActivityIDs = [(WFNextStaccatoActionStreamObserver *)self trackingActivityIDs];
  [trackingActivityIDs removeObject:dCopy];
}

- (void)stopObservingWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  observingProvider = [(WFNextStaccatoActionStreamObserver *)self observingProvider];

  if (observingProvider)
  {
    v6 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Stopping Next Action Observation", buf, 0xCu);
    }

    observingProvider2 = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
    connectionUUID = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__WFNextStaccatoActionStreamObserver_stopObservingWithCompletion___block_invoke;
    v9[3] = &unk_1E7B02B00;
    v9[4] = self;
    v10 = completionCopy;
    [observingProvider2 stopObservingNextActionStreamWithConnectionUUID:connectionUUID completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __66__WFNextStaccatoActionStreamObserver_stopObservingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFStaccatoLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_ERROR, "%s Failed to stop Next Action Observation: %@", &v10, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[WFNextStaccatoActionStreamObserver stopObservingWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_INFO, "%s Next Action Observation stopped successfully", &v10, 0xCu);
    }

    [*(a1 + 32) setObservingProvider:0];
    [*(a1 + 32) setConnectionUUID:0];
    v7 = [*(a1 + 32) delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 nextActionStreamObserver:*(a1 + 32) didStopObservingWithError:0];
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

- (void)startObservingWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69AD060]) initWithObserver:self];
  [(WFNextStaccatoActionStreamObserver *)self setObservingProvider:v5];

  v6 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Starting Next Action Observation", buf, 0xCu);
  }

  observingProvider = [(WFNextStaccatoActionStreamObserver *)self observingProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__WFNextStaccatoActionStreamObserver_startObservingWithCompletion___block_invoke;
  v9[3] = &unk_1E7B01C88;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [observingProvider startObservingNextActionStreamWithCompletion:v9];
}

void __67__WFNextStaccatoActionStreamObserver_startObservingWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setConnectionUUID:a2];
  v6 = [*(a1 + 32) connectionUUID];

  v7 = getWFStaccatoLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]_block_invoke";
      v9 = "%s Next Action Observation started successfully";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1B1DE3000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "[WFNextStaccatoActionStreamObserver startObservingWithCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v9 = "%s Failed to start Next Action Observation: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v13, v14);
}

- (WFNextStaccatoActionStreamObserver)init
{
  v9.receiver = self;
  v9.super_class = WFNextStaccatoActionStreamObserver;
  v2 = [(WFNextStaccatoActionStreamObserver *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
    metadataProvider = v2->_metadataProvider;
    v2->_metadataProvider = v3;

    v5 = objc_opt_new();
    trackingActivityIDs = v2->_trackingActivityIDs;
    v2->_trackingActivityIDs = v5;

    v7 = v2;
  }

  return v2;
}

- (BOOL)isObserving
{
  connectionUUID = [(WFNextStaccatoActionStreamObserver *)self connectionUUID];
  v3 = connectionUUID != 0;

  return v3;
}

@end