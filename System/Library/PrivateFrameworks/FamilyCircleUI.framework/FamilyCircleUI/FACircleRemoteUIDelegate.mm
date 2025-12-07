@interface FACircleRemoteUIDelegate
+ (BOOL)isInternalBuild;
- (FACircleRemoteUIDelegate)init;
- (FACircleRemoteUIDelegate)initWithContext:(id)context serverHookHandler:(id)handler pictureStore:(id)store;
- (FACircleRemoteUIDelegateDelegate)delegate;
- (id)getEmergencyContacts;
- (id)getIMessageHandlesForRecommendations;
- (id)getInviteSuggestionsDependencies;
- (id)getPresentationDecoratorWhenPendingMember:(id)member memberBeingViewed:(id)viewed page:(id)page;
- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal;
- (void)_notifyDelegateOfCompletionWithSuccess:(BOOL)success error:(id)error;
- (void)_reportRequestFailureWithResponse:(id)response;
- (void)_setUserInteractionForRUIPage:(id)page enabled:(BOOL)enabled;
- (void)_updateDismissInfo:(id)info;
- (void)configureHookHandlersForRUIController:(id)controller;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model;
- (void)remoteUIController:(id)controller loadResourcesForObjectModel:(id)model completion:(id)completion;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)setIMessageHandlesForRecommendations:(id)recommendations;
@end

@implementation FACircleRemoteUIDelegate

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[FACircleRemoteUIDelegate isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

uint64_t __43__FACircleRemoteUIDelegate_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalBuild = result;
  return result;
}

- (FACircleRemoteUIDelegate)init
{
  [(FACircleRemoteUIDelegate *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACircleRemoteUIDelegate)initWithContext:(id)context serverHookHandler:(id)handler pictureStore:(id)store
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  storeCopy = store;
  v36.receiver = self;
  v36.super_class = FACircleRemoteUIDelegate;
  v12 = [(FACircleRemoteUIDelegate *)&v36 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    v14 = objc_alloc_init(MEMORY[0x277D082E8]);
    requestConfigurator = v13->_requestConfigurator;
    v13->_requestConfigurator = v14;

    authContext = [contextCopy authContext];
    [(FARequestConfigurator *)v13->_requestConfigurator setAuthContext:authContext];

    objc_storeStrong(&v13->_serverHookHandler, handler);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectModelDecorators = v13->_objectModelDecorators;
    v13->_objectModelDecorators = v17;

    objc_storeStrong(&v13->_familyPictureStore, store);
    v19 = objc_alloc_init(MEMORY[0x277CBEA60]);
    recommendations = v13->_recommendations;
    v13->_recommendations = v19;

    v13->_proactiveModelUsed = 1;
    v21 = objc_alloc_init(MEMORY[0x277CBEA60]);
    emergencyContacts = v13->_emergencyContacts;
    v13->_emergencyContacts = v21;

    initForOneTapInvite = [objc_alloc(MEMORY[0x277D082B8]) initForOneTapInvite];
    suggester = v13->_suggester;
    v13->_suggester = initForOneTapInvite;

    v13->_accumulateDismissInfo = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    serverHooks = [handlerCopy serverHooks];
    v26 = [serverHooks countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v33;
      do
      {
        v29 = 0;
        do
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(serverHooks);
          }

          v30 = *(*(&v32 + 1) + 8 * v29);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 setRemoteUIDelegate:v13];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [serverHooks countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v27);
    }
  }

  return v13;
}

- (void)configureHookHandlersForRUIController:(id)controller
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  context = [(FACircleRemoteUIDelegate *)self context];
  eventType = [context eventType];
  v7 = [eventType isEqualToString:@"FACircleEventTypeFamilyPicker"];

  if (v7)
  {
    context2 = [(FACircleRemoteUIDelegate *)self context];
    ephemeralAuthResults = [context2 ephemeralAuthResults];
    v10 = +[_TtC14FamilyCircleUI19FAFamilyImageLoader shared];
    [v10 setAuthResults:ephemeralAuthResults];

    objc_initWeak(&location, self);
    v11 = objc_alloc_init(FAPickerSelectMemberHook);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke;
    v33[3] = &unk_2782F2C50;
    objc_copyWeak(&v34, &location);
    [(FAPickerSelectMemberHook *)v11 setActivateAction:v33];
    serverHooks = [(AAUIServerUIHookHandler *)self->_serverHookHandler serverHooks];
    v13 = [serverHooks mutableCopy];

    [v13 addObject:v11];
    v14 = [v13 copy];
    [(AAUIServerUIHookHandler *)self->_serverHookHandler setServerHooks:v14];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  context3 = [(FACircleRemoteUIDelegate *)self context];
  authContext = [context3 authContext];
  appProvidedContext = [authContext appProvidedContext];
  v18 = [appProvidedContext isEqualToString:*MEMORY[0x277CEFF40]];

  if (v18)
  {
    self->_accumulateDismissInfo = 1;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    serverHooks2 = [(AAUIServerUIHookHandler *)self->_serverHookHandler serverHooks];
    v20 = [serverHooks2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v20)
    {
      v21 = *v30;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(serverHooks2);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
            context4 = [(FACircleRemoteUIDelegate *)self context];
            ephemeralAuthResults2 = [context4 ephemeralAuthResults];
            [v24 setEphemeralAuthResults:ephemeralAuthResults2];

            [v24 setIsChildDevice:1];
            objc_initWeak(&location, self);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke_2;
            v27[3] = &unk_2782F2C78;
            objc_copyWeak(&v28, &location);
            [v24 setCompletionAction:v27];
            objc_destroyWeak(&v28);
            objc_destroyWeak(&location);

            goto LABEL_14;
          }
        }

        v20 = [serverHooks2 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

void __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientInfo];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDismissInfo:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _notifyDelegateOfCompletionWithSuccess:1 error:0];
}

void __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDismissInfo:v3];
}

- (void)_notifyDelegateOfCompletionWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v9 = _FALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109378;
      v14[1] = successCopy;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "FACircleRemoteUIDelegate We have a delegate - notifying completion success: %d error: %@", v14, 0x12u);
    }

    v10 = objc_alloc(MEMORY[0x277D08230]);
    dismissInfo = [(FACircleRemoteUIDelegate *)self dismissInfo];
    v12 = [v10 initWithLoadSuccess:successCopy error:errorCopy userInfo:dismissInfo];

    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 circleRemoteUIDelegate:self completedWithResponse:v12];
  }
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  v14 = [requestCopy copy];
  cachedRequest = self->_cachedRequest;
  self->_cachedRequest = v14;

  context = [(FACircleRemoteUIDelegate *)self context];
  ephemeralAuthResults = [context ephemeralAuthResults];

  if (ephemeralAuthResults)
  {
    requestConfigurator = self->_requestConfigurator;
    context2 = [(FACircleRemoteUIDelegate *)self context];
    ephemeralAuthResults2 = [context2 ephemeralAuthResults];
    [(FARequestConfigurator *)requestConfigurator updateWithEphemeralAuthResults:ephemeralAuthResults2];
  }

  objc_initWeak(&location, self);
  v21 = self->_requestConfigurator;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v24[3] = &unk_2782F2CA0;
  objc_copyWeak(&v27, &location);
  v22 = requestCopy;
  v25 = v22;
  v23 = handlerCopy;
  v26 = v23;
  [(FARequestConfigurator *)v21 addFresnoHeadersToRequest:v22 withCompletion:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained context];
    v10 = [v9 additionalParameters];

    if (v10)
    {
      v11 = [v8 context];
      v12 = [v11 additionalParameters];
      [v6 addEntriesFromDictionary:v12];
    }

    v13 = [v8[14] clientName];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D080A8]];

    v14 = [v8[14] clientBundleID];
    [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D080A0]];

    [MEMORY[0x277D082E8] addMessageEligibilityToPayload:v6];
    v15 = [*(a1 + 32) HTTPMethod];
    v16 = [v15 isEqualToString:@"POST"];

    if (v16)
    {
      WeakRetained = [v8[1] addFresnoPayloadToRequest:*(a1 + 32) additionalPayload:v6];
    }
  }

  v17 = _FALogSystem(WeakRetained);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1(a1, v17);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)getEmergencyContacts
{
  v2 = [objc_alloc(MEMORY[0x277CE4538]) initWithBlock:&__block_literal_global_71];

  return v2;
}

void __48__FACircleRemoteUIDelegate_getEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getHKHealthStoreClass_softClass;
  v20 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getHKHealthStoreClass_block_invoke;
    v15 = &unk_2782F2988;
    v16 = &v17;
    __getHKHealthStoreClass_block_invoke(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = objc_alloc_init(v3);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getHKMedicalIDStoreClass_softClass;
  v20 = getHKMedicalIDStoreClass_softClass;
  if (!getHKMedicalIDStoreClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getHKMedicalIDStoreClass_block_invoke;
    v15 = &unk_2782F2988;
    v16 = &v17;
    __getHKMedicalIDStoreClass_block_invoke(&v12);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [[v6 alloc] initWithHealthStore:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__FACircleRemoteUIDelegate_getEmergencyContacts__block_invoke_2;
  v10[3] = &unk_2782F2CE8;
  v11 = v2;
  v9 = v2;
  [v8 fetchMedicalIDEmergencyContactsWithCompletion:v10];
}

- (id)getIMessageHandlesForRecommendations
{
  v3 = objc_alloc_init(IDSRecommendationProvider);
  v4 = [[IMessageHandlesForPeopleRecommendations alloc] initWithProvider:v3];
  v5 = objc_alloc(MEMORY[0x277CE4538]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FACircleRemoteUIDelegate_getIMessageHandlesForRecommendations__block_invoke;
  v9[3] = &unk_2782F2D10;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)getInviteSuggestionsDependencies
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE4538];
  getIMessageHandlesForRecommendations = [(FACircleRemoteUIDelegate *)self getIMessageHandlesForRecommendations];
  v11[0] = getIMessageHandlesForRecommendations;
  getEmergencyContacts = [(FACircleRemoteUIDelegate *)self getEmergencyContacts];
  v11[1] = getEmergencyContacts;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7 = [v3 all:v6];
  then = [v7 then];
  v9 = (then)[2](then, &__block_literal_global_77);

  return v9;
}

id __60__FACircleRemoteUIDelegate_getInviteSuggestionsDependencies__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [MEMORY[0x277CBEB68] null];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:0];
  }

  v6 = [v2 objectAtIndexedSubscript:1];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v2 objectAtIndexedSubscript:1];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 setObject:v5 forKeyedSubscript:@"validIMessageHandles"];
  [v9 setObject:v8 forKeyedSubscript:@"emergencyContacts"];

  return v9;
}

- (void)setIMessageHandlesForRecommendations:(id)recommendations
{
  v41 = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_recommendations;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v25)
  {
    v24 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        contact = [v6 contact];
        emailAddressStrings = [contact emailAddressStrings];

        v9 = [emailAddressStrings countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(emailAddressStrings);
            }

            v13 = *(*(&v30 + 1) + 8 * v12);
            v14 = _IDSCopyIDForEmailAddress();
            v15 = [recommendationsCopy containsObject:v14];

            if (v15)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [emailAddressStrings countByEnumeratingWithState:&v30 objects:v39 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          contact2 = [v6 contact];
          emailAddressStrings = [contact2 phoneNumberStrings];

          v17 = [emailAddressStrings countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (!v17)
          {
            goto LABEL_24;
          }

          v18 = v17;
          v19 = *v27;
LABEL_16:
          v20 = 0;
          while (1)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(emailAddressStrings);
            }

            v13 = *(*(&v26 + 1) + 8 * v20);
            v21 = _IDSCopyIDForPhoneNumberWithOptions();
            v22 = [recommendationsCopy containsObject:v21];

            if (v22)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [emailAddressStrings countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v18)
              {
                goto LABEL_16;
              }

              goto LABEL_24;
            }
          }
        }

        [v6 setIMessageHandle:v13];
LABEL_24:
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v25);
  }
}

- (void)remoteUIController:(id)controller loadResourcesForObjectModel:(id)model completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];

  v11 = [FASuggestionsTableViewDecorator shouldShowSuggestionsInPage:firstObject];
  if (v11)
  {
    v12 = _FALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      suggester = self->_suggester;
      *buf = 138412290;
      v55 = suggester;
      _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "In shouldShowSuggestion, suggester is %@", buf, 0xCu);
    }

    clientInfo = [modelCopy clientInfo];
    v15 = [clientInfo objectForKeyedSubscript:@"useSuggester"];

    v17 = _FALogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v15;
      _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Reading suggester model from RUI: %@", buf, 0xCu);
    }

    v18 = [(FAInviteSuggestions *)self->_suggester fetchFamilyMemberSuggestions:&self->_proactiveModelUsed useSuggester:v15];
    recommendations = self->_recommendations;
    self->_recommendations = v18;

    v21 = _FALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      proactiveModelUsed = self->_proactiveModelUsed;
      *buf = 136315394;
      v55 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]";
      v56 = 2048;
      v57 = proactiveModelUsed;
      _os_log_impl(&dword_21BB35000, v21, OS_LOG_TYPE_DEFAULT, "%s: used proactive model %li for invite suggestions", buf, 0x16u);
    }

    v43 = [(NSArray *)self->_recommendations count];
    v23 = objc_alloc(MEMORY[0x277D082B0]);
    clientInfo2 = [modelCopy clientInfo];
    v25 = [v23 initWithResults:clientInfo2];

    v27 = _FALogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      maxFamilySuggestions = [v25 maxFamilySuggestions];
      v29 = self->_recommendations;
      *buf = 136315650;
      v55 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]";
      v56 = 2048;
      v57 = maxFamilySuggestions;
      v58 = 2112;
      v59 = v29;
      _os_log_impl(&dword_21BB35000, v27, OS_LOG_TYPE_DEFAULT, "%s: Recommendations for %li spots: %@", buf, 0x20u);
    }

    [(FAProfilePictureStore *)self->_familyPictureStore fetchProfilePicturesForRecommendedFamilyMembers:self->_recommendations];
    if ([(NSArray *)self->_recommendations count])
    {
      getInviteSuggestionsDependencies = [(FACircleRemoteUIDelegate *)self getInviteSuggestionsDependencies];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke;
      v49[3] = &unk_2782F2D58;
      v49[4] = self;
      v50 = v25;
      v52 = completionCopy;
      v53 = v43;
      v51 = v15;
      [getInviteSuggestionsDependencies onComplete:v49 onQueue:MEMORY[0x277D85CD0]];
    }

    else
    {
      v42 = v25;
      v32 = _FALogSystem(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v32, OS_LOG_TYPE_DEFAULT, "Recommendations are zero, no need to fetch dependencies", buf, 2u);
      }

      v33 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
      v34 = [(NSArray *)self->_recommendations count];
      feedbackContext = [(FAInviteSuggestions *)self->_suggester feedbackContext];
      peopleSuggesterPredictionContext = [feedbackContext peopleSuggesterPredictionContext];
      seedContactIdentifiers = [peopleSuggesterPredictionContext seedContactIdentifiers];
      v38 = [seedContactIdentifiers count] != 0;
      if (v15)
      {
        v39 = v15;
      }

      else
      {
        v39 = @"-";
      }

      [v33 sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:v43 familySuggestionsDisplayedCount:v34 hasBoostedContacts:v38 proactiveModelUsed:self->_proactiveModelUsed serverRequestedModel:v39];

      (*(completionCopy + 2))(completionCopy, 1, 0);
      v25 = v42;
    }

    if (+[FACircleRemoteUIDelegate isInternalBuild]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      tapToRadarButton = [MEMORY[0x277D461B8] tapToRadarButton];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_100;
      v46[3] = &unk_2782F2AF8;
      v41 = firstObject;
      v47 = v41;
      selfCopy = self;
      [tapToRadarButton setAction:v46];
      [v41 setLeftNavigationBarButtonItem:tapToRadarButton];
    }

LABEL_27:
    goto LABEL_28;
  }

  if ([FAProfilePictureTableViewDecorator shouldShowPicturesInPage:firstObject])
  {
    v15 = objc_opt_new();
    [v15 setCachePolicy:1];
    v31 = _FALogSystem([v15 setQualityOfService:33]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v31, OS_LOG_TYPE_DEFAULT, "Starting family request.", buf, 2u);
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_107;
    v44[3] = &unk_2782F2DF8;
    v44[4] = self;
    v45 = completionCopy;
    [v15 startRequestWithCompletionHandler:v44];

    goto LABEL_27;
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_28:
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_cold_1();
    }
  }

  v32 = v7;
  v9 = [v5 objectForKeyedSubscript:@"validIMessageHandles"];
  v10 = _FALogSystem([*(a1 + 32) setIMessageHandlesForRecommendations:v9]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 48);
    *buf = 136315394;
    v34 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]_block_invoke";
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%s: Recommendations before filtering: %@", buf, 0x16u);
  }

  v12 = +[FASuggestionsHelper filterAndTrimMessagesHandleSuggestions:maxSuggestions:](FASuggestionsHelper, "filterAndTrimMessagesHandleSuggestions:maxSuggestions:", *(*(a1 + 32) + 48), [*(a1 + 40) maxFamilySuggestions]);
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v12;

  v16 = _FALogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 48);
    *buf = 136315394;
    v34 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]_block_invoke";
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "%s: Final recommendations: %@", buf, 0x16u);
  }

  v18 = [v5 objectForKeyedSubscript:@"emergencyContacts"];
  v19 = _FALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 debugDescription];
    *buf = 138412290;
    v34 = v20;
    _os_log_impl(&dword_21BB35000, v19, OS_LOG_TYPE_DEFAULT, "EC returned from Health: %@", buf, 0xCu);
  }

  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  *(v21 + 64) = v18;
  v23 = v18;

  (*(*(a1 + 56) + 16))();
  v24 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
  v25 = *(a1 + 64);
  v26 = [*(*(a1 + 32) + 48) count];
  v27 = [*(*(a1 + 32) + 88) feedbackContext];
  v28 = [v27 peopleSuggesterPredictionContext];
  v29 = [v28 seedContactIdentifiers];
  v30 = [v29 count];
  if (*(a1 + 48))
  {
    v31 = *(a1 + 48);
  }

  else
  {
    v31 = @"-";
  }

  [v24 sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:v25 familySuggestionsDisplayedCount:v26 hasBoostedContacts:v30 != 0 proactiveModelUsed:*(*(a1 + 32) + 56) serverRequestedModel:v31];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_100(uint64_t a1)
{
  v2 = _FALogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v2, OS_LOG_TYPE_DEFAULT, "Suggestions tap-to-radar button tapped :(", buf, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277D75560]);
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  v7 = [v3 initWithSize:{v5, v6}];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_102;
  v10[3] = &unk_2782F2D80;
  v11 = *(a1 + 32);
  v8 = [v7 imageWithActions:v10];
  v9 = [[FamilySuggestionsTapToRadar alloc] initWithSuggestions:*(*(a1 + 40) + 48) screenshot:v8];
  [(FamilySuggestionsTapToRadar *)v9 open];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_102(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  [v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2;
  v10[3] = &unk_2782F2DD0;
  v11 = v6;
  v7 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v12 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _FALogSystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 32) == 0);
  }

  else
  {
    [*(*(a1 + 40) + 40) setFamilyCircle:*(a1 + 48)];
    v3 = *(*(a1 + 40) + 40);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108;
    v4[3] = &unk_2782F2DA8;
    v5 = *(a1 + 56);
    [v3 fetchProfileImagesWithCompletion:v4];
  }
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _FALogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  v35 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v9 = [allHeaderFields valueForKey:*MEMORY[0x277D080C8]];

  [MEMORY[0x277D08250] handleURLResponse:responseCopy];
  allHeaderFields2 = [responseCopy allHeaderFields];
  v11 = [allHeaderFields2 objectForKey:*MEMORY[0x277D080D8]];

  if (v11)
  {
    v13 = _FALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "FACircleRemoteUIDelegate - Family services have changed", buf, 2u);
    }

    [(FACircleRemoteUIDelegate *)self _broadcastServicesDidChangeNotification];
  }

  allHeaderFields3 = [responseCopy allHeaderFields];
  v15 = [allHeaderFields3 objectForKeyedSubscript:*MEMORY[0x277D08360]];

  v16 = [v15 length];
  if (v16)
  {
    v17 = _FALogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Received a command to teardown followup with an identifier: %@", buf, 0xCu);
    }

    [MEMORY[0x277D082A0] tearDownFollowupItemWithIdentifier:v15 completion:0];
  }

  if ([responseCopy statusCode] >= 400 && objc_msgSend(responseCopy, "statusCode") <= 505)
  {
    displayedPages = [controllerCopy displayedPages];
    firstObject = [displayedPages firstObject];

    v21 = _FALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      statusCode = [responseCopy statusCode];
      *buf = 134217984;
      v34 = statusCode;
      _os_log_impl(&dword_21BB35000, v21, OS_LOG_TYPE_DEFAULT, "Family Circle RemoteUI request failed with status %ld", buf, 0xCu);
    }

    if ([responseCopy statusCode] == 401 && firstObject)
    {
      v23 = _FALogSystem(401);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v23, OS_LOG_TYPE_DEFAULT, "Recieved a 401, attempting re-auth", buf, 2u);
      }

      p_cachedPage = &self->_cachedPage;
      if (firstObject == self->_cachedPage)
      {
        v28 = _FALogSystem(v24);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FACircleRemoteUIDelegate remoteUIController:didReceiveHTTPResponse:];
        }

        v27 = *p_cachedPage;
        *p_cachedPage = 0;
      }

      else
      {
        objc_storeStrong(&self->_cachedPage, firstObject);
        [(FACircleRemoteUIDelegate *)self _setUserInteractionForRUIPage:firstObject enabled:0];
        requestConfigurator = self->_requestConfigurator;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke;
        v29[3] = &unk_2782F2E20;
        v29[4] = self;
        v30 = firstObject;
        v31 = controllerCopy;
        v32 = responseCopy;
        [(FARequestConfigurator *)requestConfigurator renewCredentialsWithCompletion:v29];

        v27 = v30;
      }
    }

    else
    {
      [(FACircleRemoteUIDelegate *)self _reportRequestFailureWithResponse:responseCopy];
    }
  }
}

uint64_t __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  v5 = [*(a1 + 32) _setUserInteractionForRUIPage:*(a1 + 40) enabled:1];
  if (a2)
  {
    v6 = _FALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke_cold_1(v4, v6);
    }

    return [*(a1 + 48) loadRequest:*(*(a1 + 32) + 24) completion:0];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);

    return [v8 _reportRequestFailureWithResponse:v9];
  }
}

- (void)_setUserInteractionForRUIPage:(id)page enabled:(BOOL)enabled
{
  pageCopy = page;
  v6 = _FALogSystem(pageCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FACircleRemoteUIDelegate *)pageCopy _setUserInteractionForRUIPage:enabled enabled:v6];
  }

  if (pageCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__FACircleRemoteUIDelegate__setUserInteractionForRUIPage_enabled___block_invoke;
    v9[3] = &unk_2782F2E48;
    v10 = pageCopy;
    enabledCopy = enabled;
    dispatch_async(MEMORY[0x277D85CD0], v9);
    v8 = v10;
  }

  else
  {
    v8 = _FALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FACircleRemoteUIDelegate _setUserInteractionForRUIPage:enabled:];
    }
  }
}

uint64_t __66__FACircleRemoteUIDelegate__setUserInteractionForRUIPage_enabled___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) buttonItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setEnabled:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) view];
  [v7 setUserInteractionEnabled:*(a1 + 40)];

  return [*(a1 + 32) setLoading:*(a1 + 40) == 0];
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  if (errorCopy)
  {
    displayedPages = [controllerCopy displayedPages];
    v8 = [displayedPages count];

    if (!v8)
    {
      [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:0 error:errorCopy];
    }
  }
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  self->_isReplacing = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allPages = [modelCopy allPages];
  v11 = [allPages countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(allPages);
        }

        [*(*(&v15 + 1) + 8 * v14++) setHidesBottomBarWhenPushed:1];
      }

      while (v12 != v14);
      v12 = [allPages countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(FACircleRemoteUIDelegate *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:modallyCopy];
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 circleRemoteUIDelegateDidPresent:self];
  }
}

- (id)getPresentationDecoratorWhenPendingMember:(id)member memberBeingViewed:(id)viewed page:(id)page
{
  viewedCopy = viewed;
  pageCopy = page;
  tableViewOM = [pageCopy tableViewOM];
  tableView = [tableViewOM tableView];

  userInfo = [(FACircleContext *)self->_context userInfo];
  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D08370]];

  if (v12)
  {
    v13 = [FAProfileViewTableViewDecorator alloc];
    tableViewOM2 = [pageCopy tableViewOM];
    v15 = [(FAProfileViewTableViewDecorator *)v13 initWithTableView:tableView ruiTableView:tableViewOM2 forPerson:viewedCopy pictureStore:self->_familyPictureStore];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal
{
  modalCopy = modal;
  v47 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  v10 = _FALogSystem(modelCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [modelCopy identifier];
    *buf = 138412290;
    v46 = identifier;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "handleObjectModelChangeForController - %@", buf, 0xCu);
  }

  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];

  if ([firstObject hasTableView])
  {
    sourceURL = [modelCopy sourceURL];

    if (sourceURL)
    {
      tableViewOM = [firstObject tableViewOM];
      tableView = [tableViewOM tableView];

      userInfo = [(FACircleContext *)self->_context userInfo];
      v18 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D08370]];

      v44 = v18;
      v19 = [(FACircleRemoteUIDelegate *)self getPresentationDecoratorWhenPendingMember:modelCopy memberBeingViewed:v18 page:firstObject];
      if (v19)
      {
        v20 = [FAProfilePictureTableViewDecorator alloc];
        tableViewOM2 = [firstObject tableViewOM];
        v22 = [(FAProfilePictureTableViewDecorator *)v20 initWithTableView:v19 ruiTableView:tableViewOM2 pictureStore:self->_familyPictureStore];

        v23 = v22;
        v24 = v23;
      }

      else
      {
        if (![FAProfilePictureTableViewDecorator shouldShowPicturesInPage:firstObject])
        {
          v23 = 0;
          goto LABEL_10;
        }

        v25 = [FAProfilePictureTableViewDecorator alloc];
        tableViewOM3 = [firstObject tableViewOM];
        v24 = [(FAProfilePictureTableViewDecorator *)v25 initWithTableView:tableView ruiTableView:tableViewOM3 pictureStore:self->_familyPictureStore];

        objectModelDecorators = self->_objectModelDecorators;
        sourceURL2 = [modelCopy sourceURL];
        [(NSMutableDictionary *)objectModelDecorators setObject:v24 forKey:sourceURL2];

        v23 = 0;
      }

      tableView = v24;
LABEL_10:
      if ([FASuggestionsTableViewDecorator shouldShowSuggestionsInPage:firstObject])
      {
        v29 = objc_alloc(MEMORY[0x277D082B0]);
        [modelCopy clientInfo];
        v30 = v43 = v23;
        v31 = [v29 initWithResults:v30];

        v32 = [FASuggestionsTableViewDecorator alloc];
        tableViewOM4 = [firstObject tableViewOM];
        v34 = [(FASuggestionsTableViewDecorator *)v32 initWithTableView:tableView ruiTableView:tableViewOM4 pictureStore:self->_familyPictureStore recommendations:self->_recommendations proactiveModelUsed:self->_proactiveModelUsed emergencyContacts:self->_emergencyContacts context:v31 viewController:controllerCopy suggester:self->_suggester objectModel:modelCopy];

        v35 = self->_objectModelDecorators;
        sourceURL3 = [modelCopy sourceURL];
        [(NSMutableDictionary *)v35 setObject:v34 forKey:sourceURL3];

        tableView = v34;
        v23 = v43;
      }

      v37 = [_TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator alloc];
      tableViewOM5 = [firstObject tableViewOM];
      v39 = [(FASettingsPresetsTableViewDecorator *)v37 initWithTableView:tableView ruiTableView:tableViewOM5 parentViewController:firstObject];

      v40 = v39;
      v41 = self->_objectModelDecorators;
      sourceURL4 = [modelCopy sourceURL];
      [(NSMutableDictionary *)v41 setObject:v40 forKey:sourceURL4];
    }
  }

  [(AAUIServerUIHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:modalCopy];
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  _objectModels = [controller _objectModels];
  v6 = [_objectModels count];

  if (!v6)
  {

    [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
  objectModelDecorators = self->_objectModelDecorators;

  [(NSMutableDictionary *)objectModelDecorators removeAllObjects];
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  modelCopy = model;
  sourceURL = [modelCopy sourceURL];
  absoluteString = [sourceURL absoluteString];
  [absoluteString rangeOfString:*MEMORY[0x277D08098]];
  v11 = v10;

  if (v11)
  {
    *signal = 4;
LABEL_9:
    [(FACircleRemoteUIDelegate *)self _updateDismissInfo:0];
    goto LABEL_10;
  }

  if (*signal != 1)
  {
    goto LABEL_9;
  }

  [(AAUIServerUIHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:0];
  clientInfo = [modelCopy clientInfo];
  [(FACircleRemoteUIDelegate *)self _updateDismissInfo:clientInfo];

  dismissInfo = [(FACircleRemoteUIDelegate *)self dismissInfo];
  if (dismissInfo)
  {
    v14 = dismissInfo;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v18 = _FALogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [FACircleRemoteUIDelegate remoteUIController:v18 didReceiveObjectModel:? actionSignal:?];
      }

      v19 = MEMORY[0x277D08228];
      dismissInfo2 = [(FACircleRemoteUIDelegate *)self dismissInfo];
      [v19 broadcastRemoteUIWillDismissNotification:dismissInfo2];
    }
  }

LABEL_10:
  v21 = *signal;
  self->_isReplacing = *signal == 3;
  if (v21 == 7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 circleRemoteUIDelegateDidPresent:self];
    }
  }
}

- (void)_updateDismissInfo:(id)info
{
  infoCopy = info;
  v10 = infoCopy;
  if (self->_accumulateDismissInfo)
  {
    v5 = [(NSDictionary *)self->_dismissInfo mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v8 = v7;

    [(NSDictionary *)v8 addEntriesFromDictionary:v10];
  }

  else
  {
    v8 = infoCopy;
  }

  dismissInfo = self->_dismissInfo;
  self->_dismissInfo = v8;
}

- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  if (!self->_isReplacing)
  {
    displayedPages = [controllerCopy displayedPages];
    v8 = [displayedPages count];

    if (!v8)
    {
      [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
    }
  }

  sourceURL = [modelCopy sourceURL];

  if (sourceURL)
  {
    objectModelDecorators = self->_objectModelDecorators;
    sourceURL2 = [modelCopy sourceURL];
    [(NSMutableDictionary *)objectModelDecorators removeObjectForKey:sourceURL2];
  }
}

- (void)_reportRequestFailureWithResponse:(id)response
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D080B8];
  v10 = *MEMORY[0x277D080C0];
  v11[0] = response;
  v6 = MEMORY[0x277CBEAC0];
  responseCopy = response;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v4 errorWithDomain:v5 code:-1002 userInfo:v8];

  [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:0 error:v9];
}

- (FACircleRemoteUIDelegateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [v4 allHTTPHeaderFields];
  v6 = [*(a1 + 32) HTTPBody];
  v7 = 136381443;
  v8 = "[FACircleRemoteUIDelegate remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]_block_invoke";
  v9 = 2113;
  v10 = v4;
  v11 = 2113;
  v12 = v5;
  v13 = 2113;
  v14 = v6;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "%{private}s request: %{private}@, headers: %{private}@, body: %{private}@", &v7, 0x2Au);
}

void __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Family replaying RUI request %@", &v3, 0xCu);
}

- (void)_setUserInteractionForRUIPage:(os_log_t)log enabled:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = @"NO";
  v5 = "[FACircleRemoteUIDelegate _setUserInteractionForRUIPage:enabled:]";
  v4 = 136315650;
  v6 = 2112;
  v7 = a1;
  if (a2)
  {
    v3 = @"YES";
  }

  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&dword_21BB35000, log, OS_LOG_TYPE_DEBUG, "%s page:%@ enabled:%@", &v4, 0x20u);
}

@end