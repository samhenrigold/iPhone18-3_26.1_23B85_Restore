@interface PublicKeyCredentialManager
+ (id)asTransportsFromWKTransports:(id)transports;
+ (id)wkSecurityKeyTransportsFromASTransports:(id)transports;
- (BOOL)deleteAllPasskeysForRelyingParty:(id)party error:(id *)error;
- (BOOL)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d error:(id *)error;
- (BOOL)passkeyExistsForRelyingParty:(id)party username:(id)username;
- (id)_allowedCredentialsForAssertionOptions:(id)options;
- (id)_asToWKCredentialAssertionOptions:(id)options;
- (id)_asToWKCredentialCreationOptions:(id)options forCredentialKind:(unint64_t)kind;
- (id)_createCredentialOfKind:(unint64_t)kind withOptions:(id)options authenticatedLAContext:(id)context delegate:(id)delegate webFrameIdentifier:(id)identifier parentActivity:(id)activity isConditionalRegistration:(BOOL)registration testOptions:(id)self0;
- (id)_newOperationWithRelyingPartyIdentifier:(id)identifier delegate:(id)delegate sourceApplicationIdentifier:(id)applicationIdentifier webFrameIdentifier:(id)frameIdentifier shouldRequireUserVerification:(BOOL)verification parentActivity:(id)activity testOptions:(id)options;
- (id)_newPanelForOperation:(id)operation;
- (id)_operationForApplicationIdentifierIfExists:(id)exists;
- (id)_operationForPanel:(id)panel;
- (id)_operationForPanelIfExists:(id)exists;
- (id)_operationForUUID:(id)d;
- (id)_operationForUUIDIfExists:(id)exists;
- (id)_operationForWebFrameIdentifier:(id)identifier;
- (id)autoFillOperationUUIDForApplicationIdentifier:(id)identifier;
- (id)autoFillOperationUUIDForWebFrameIdentifier:(id)identifier;
- (id)autoFillPasskeysForOperationUUID:(id)d;
- (id)beginAssertionsWithOptions:(id)options forProcessWithApplicationIdentifier:(id)identifier delegate:(id)delegate requestStyle:(int64_t)style webFrameIdentifier:(id)frameIdentifier parentActivity:(id)activity testOptions:(id)testOptions;
- (id)browserPasskeysForRelyingParty:(id)party testOptions:(id)options;
- (id)encodeGetAssertionCommandWithOptions:(id)options authenticatorUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions;
- (id)encodeMakeCredentialCommandWithOptions:(id)options authenticatorUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions;
- (id)initForTesting:(BOOL)testing;
- (id)internalErrorToWKErrorIfApplicable:(id)applicable;
- (void)_completeAssertionWithExternalPasskeyForOperation:(id)operation usingCredential:(id)credential;
- (void)_finishAssertionForOperationWithUUID:(id)d identifier:(id)identifier authenticatedContext:(id)context savedAccountContext:(id)accountContext;
- (void)_getExternalPasskeyRequestForOperation:(id)operation relyingPartyIdentifier:(id)identifier credentialID:(id)d completionHandler:(id)handler;
- (void)_getPasskeyAssertionRequestParametersForOperation:(id)operation completionHandler:(id)handler;
- (void)_queryExternalLoginChoicesForOperation:(id)operation completionHandler:(id)handler;
- (void)_tearDownOperationWithUUID:(id)d;
- (void)_updateLastUsedDateForPasskeySavedAccountWithAssertion:(id)assertion relyingParty:(id)party context:(id)context;
- (void)assertUsingPlatformCredentialForLoginChoice:(id)choice authenticatedContext:(id)context;
- (void)assertUsingSecurityKeyCredentialForLoginChoice:(id)choice;
- (void)cancelOperationIfNecessaryWithUUID:(id)d overrideError:(id)error;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier usingCredential:(id)credential;
- (void)completeAssertionWithExternalPasskeyForUUID:(id)d usingCredential:(id)credential;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier usingCredential:(id)credential;
- (void)computeClientDataIfNeededForAssertionOptions:(id)options;
- (void)computeClientDataIfNeededForCreationOptions:(id)options;
- (void)computeUserVerificationForAssertionOptions:(id)options;
- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler;
- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler;
- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)identifier orApplicationIdentifier:(id)applicationIdentifier completionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)identifier completionHandler:(id)handler;
- (void)operation:(id)operation selectAssertionResponse:(id)response source:(int64_t)source completionHandler:(id)handler;
- (void)operation:(id)operation updateWebAuthenticationPanel:(int64_t)panel;
- (void)panel:(id)panel dismissWebAuthenticationPanelWithResult:(int64_t)result;
- (void)panel:(id)panel requestLAContextForUserVerificationWithCompletionHandler:(id)handler;
- (void)panel:(id)panel requestNewPINWithMinLength:(unint64_t)length completionHandler:(id)handler;
- (void)panel:(id)panel requestPINWithRemainingRetries:(unint64_t)retries completionHandler:(id)handler;
- (void)panel:(id)panel selectAssertionResponse:(id)response source:(int64_t)source completionHandler:(id)handler;
- (void)panel:(id)panel updateWebAuthenticationPanel:(int64_t)authenticationPanel;
- (void)presentCABLESheetForOperationUUID:(id)d withCompletionHandler:(id)handler;
- (void)test_getAssertionWithMediationRequirement:(int64_t)requirement clientDataJSON:(NSData *)n options:(_WKPublicKeyCredentialRequestOptions *)options operation:(PublicKeyCredentialOperation *)operation completionHandler:(id)handler;
- (void)test_getBrowserPasskeysForRelyingParty:(NSString *)party completionHandler:(id)handler;
- (void)test_makeCredentialWithMediationRequirement:(int64_t)requirement clientDataHash:(NSData *)hash options:(_WKPublicKeyCredentialCreationOptions *)options testOptions:(_TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions *)testOptions clientDataJSON:(NSData *)n completionHandler:(id)handler;
@end

@implementation PublicKeyCredentialManager

- (id)initForTesting:(BOOL)testing
{
  v19.receiver = self;
  v19.super_class = PublicKeyCredentialManager;
  v4 = [(PublicKeyCredentialManager *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_isForTesting = testing;
    v4->_operationsLock._os_unfair_lock_opaque = 0;
    v6 = +[NSMutableDictionary dictionary];
    uuidToOperation = v5->_uuidToOperation;
    v5->_uuidToOperation = v6;

    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    panelToWeakOperation = v5->_panelToWeakOperation;
    v5->_panelToWeakOperation = v8;

    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    applicationIdentifierToWeakOperation = v5->_applicationIdentifierToWeakOperation;
    v5->_applicationIdentifierToWeakOperation = v10;

    v12 = +[NSMapTable strongToWeakObjectsMapTable];
    webFrameIdentifierToWeakOperationForBrowser = v5->_webFrameIdentifierToWeakOperationForBrowser;
    v5->_webFrameIdentifierToWeakOperationForBrowser = v12;

    v14 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v16 = sub_10000A644(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000200B0();
    }

    v17 = v5;
  }

  return v5;
}

- (void)panel:(id)panel updateWebAuthenticationPanel:(int64_t)authenticationPanel
{
  v6 = [(PublicKeyCredentialManager *)self _operationForPanel:panel];
  if (v6)
  {
    [(PublicKeyCredentialManager *)self operation:v6 updateWebAuthenticationPanel:authenticationPanel];
  }

  _objc_release_x1();
}

- (void)operation:(id)operation updateWebAuthenticationPanel:(int64_t)panel
{
  operationCopy = operation;
  delegate = [operationCopy delegate];
  v8 = delegate;
  if (panel > 5)
  {
    if (panel > 8)
    {
      switch(panel)
      {
        case 9:
          v9 = 20;
          goto LABEL_26;
        case 10:
          v9 = 21;
          goto LABEL_26;
        case 11:
          [delegate didEnterCorrectPIN];
          break;
      }
    }

    else
    {
      if (panel == 6)
      {
        activity = [operationCopy activity];
        os_activity_apply(activity, &stru_1000312B0);

        v9 = 7;
        goto LABEL_26;
      }

      if (panel != 7)
      {
        v9 = 13;
        goto LABEL_26;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002EBC;
      v11[3] = &unk_1000312D8;
      v12 = delegate;
      [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:operationCopy completionHandler:v11];
    }
  }

  else
  {
    if (panel > 2)
    {
      if (panel == 3)
      {
        v9 = 9;
      }

      else if (panel == 4)
      {
        v9 = 8;
      }

      else
      {
        v9 = 6;
      }

      goto LABEL_26;
    }

    switch(panel)
    {
      case 0:
        v9 = 4;
        goto LABEL_26;
      case 1:
        v9 = 5;
        goto LABEL_26;
      case 2:
        v9 = 10;
LABEL_26:
        [v8 didReceiveError:v9];
        break;
    }
  }
}

- (void)panel:(id)panel selectAssertionResponse:(id)response source:(int64_t)source completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v12 = [(PublicKeyCredentialManager *)self _operationForPanel:panel];
  if (v12)
  {
    v13 = [responseCopy safari_mapObjectsUsingBlock:&stru_100031318];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003038;
    v14[3] = &unk_100031340;
    v15 = handlerCopy;
    [(PublicKeyCredentialManager *)self operation:v12 selectAssertionResponse:v13 source:source completionHandler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)operation:(id)operation selectAssertionResponse:(id)response source:(int64_t)source completionHandler:(id)handler
{
  operationCopy = operation;
  responseCopy = response;
  handlerCopy = handler;
  delegate = [operationCopy delegate];
  uuid = [operationCopy uuid];
  if (source == 1)
  {
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [responseCopy count]);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100003914;
    v28 = v27[3] = &unk_1000313E0;
    v29 = uuid;
    v17 = v28;
    v21 = [responseCopy safari_mapAndFilterObjectsUsingBlock:v27];
    [operationCopy mergeIdentifiersToAssertionResponses:v17];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000039D8;
    v25 = &unk_100031340;
    v26 = handlerCopy;
    [operationCopy setSecurityKeyAssertionSelectionCallback:&v22];
    [delegate didFetchSecurityKeyLoginChoices:{v21, v22, v23, v24, v25}];

    v20 = v28;
    goto LABEL_5;
  }

  if (!source)
  {
    v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [responseCopy count]);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100003400;
    v37[3] = &unk_100031368;
    v37[4] = self;
    v16 = operationCopy;
    v38 = v16;
    v39 = v15;
    v40 = uuid;
    v17 = v15;
    v18 = [responseCopy safari_mapAndFilterObjectsUsingBlock:v37];
    [v16 mergeIdentifiersToAssertionResponses:v17];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100003720;
    v35[3] = &unk_100031340;
    v36 = handlerCopy;
    [v16 setPlatformAssertionSelectionCallback:v35];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000037E0;
    v30[3] = &unk_1000313B8;
    v31 = delegate;
    v32 = v18;
    v33 = v16;
    selfCopy = self;
    v19 = v18;
    [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v33 completionHandler:v30];

    v20 = v38;
LABEL_5:
  }
}

- (void)panel:(id)panel dismissWebAuthenticationPanelWithResult:(int64_t)result
{
  panelCopy = panel;
  v7 = [(PublicKeyCredentialManager *)self _operationForPanelIfExists:panelCopy];
  v9 = v7;
  if (v7)
  {
    activity = [v7 activity];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100003C10;
    v17 = &unk_100031408;
    v11 = v9;
    v18 = v11;
    resultCopy = result;
    os_activity_apply(activity, &v14);

    uuid = [v11 uuid];
    [(PublicKeyCredentialManager *)self cancelOperationIfNecessaryWithUUID:uuid overrideError:0];
  }

  else
  {
    v13 = sub_10000A644(0, v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v21 = panelCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Operation for panel %p already dismissed.", buf, 0xCu);
    }
  }
}

- (void)panel:(id)panel requestLAContextForUserVerificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PublicKeyCredentialManager *)self _operationForPanel:panel];
  v8 = v7;
  if (v7)
  {
    activity = [v7 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003DFC;
    block[3] = &unk_100031148;
    v10 = v8;
    v13 = v10;
    os_activity_apply(activity, block);

    authenticatedLAContext = [v10 authenticatedLAContext];
    handlerCopy[2](handlerCopy, authenticatedLAContext);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)panel:(id)panel requestPINWithRemainingRetries:(unint64_t)retries completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(PublicKeyCredentialManager *)self _operationForPanel:panel];
  v10 = v9;
  if (v9)
  {
    activity = [v9 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004000;
    block[3] = &unk_100031148;
    v12 = v10;
    v15 = v12;
    os_activity_apply(activity, block);

    delegate = [v12 delegate];
    [delegate requestPINWithRemainingRetries:retries completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, &stru_100031CE0);
  }
}

- (void)panel:(id)panel requestNewPINWithMinLength:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(PublicKeyCredentialManager *)self _operationForPanel:panel];
  v10 = v9;
  if (v9)
  {
    activity = [v9 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000041DC;
    block[3] = &unk_100031148;
    v12 = v10;
    v15 = v12;
    os_activity_apply(activity, block);

    delegate = [v12 delegate];
    [delegate requestNewPINWithMinLength:length completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, &stru_100031CE0);
  }
}

- (id)beginAssertionsWithOptions:(id)options forProcessWithApplicationIdentifier:(id)identifier delegate:(id)delegate requestStyle:(int64_t)style webFrameIdentifier:(id)frameIdentifier parentActivity:(id)activity testOptions:(id)testOptions
{
  optionsCopy = options;
  identifierCopy = identifier;
  delegateCopy = delegate;
  frameIdentifierCopy = frameIdentifier;
  activityCopy = activity;
  testOptionsCopy = testOptions;
  v52 = optionsCopy;
  v15 = [optionsCopy objectAtIndexedSubscript:0];
  [(PublicKeyCredentialManager *)self computeClientDataIfNeededForAssertionOptions:v15];

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_100004980;
  v78 = sub_100004990;
  v79 = 0;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100004998;
  v73[3] = &unk_100031430;
  v73[4] = self;
  v73[5] = &v74;
  v16 = optionsCopy;
  v17 = [optionsCopy safari_mapObjectsUsingBlock:v73];
  [(PublicKeyCredentialManager *)self computeUserVerificationForAssertionOptions:optionsCopy];
  v18 = [v17 objectAtIndexedSubscript:0];
  relyingPartyIdentifier = [v18 relyingPartyIdentifier];
  v53 = -[PublicKeyCredentialManager _newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:](self, "_newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:", relyingPartyIdentifier, delegateCopy, identifierCopy, frameIdentifierCopy, [v18 userVerification] == 0, activityCopy, testOptionsCopy);
  firstObject = [v16 firstObject];
  [v53 setAssertionOptions:firstObject];
  v46 = relyingPartyIdentifier;

  v21 = +[NSMutableArray array];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v22 = v17;
  v23 = 0;
  v24 = 0;
  v25 = [v22 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = *v70;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v70 != v26)
      {
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v69 + 1) + 8 * i);
      authenticatorAttachment = [v28 authenticatorAttachment];
      if (authenticatorAttachment == 1)
      {
        allowCredentials = [v28 allowCredentials];
        [v21 safari_addObjectsFromArrayUnlessNil:allowCredentials];
        v24 = 1;
      }

      else
      {
        if (authenticatorAttachment != 2)
        {
          continue;
        }

        allowCredentials = [v28 allowCredentials];
        [v21 safari_addObjectsFromArrayUnlessNil:allowCredentials];
        v23 = 1;
      }
    }

    v25 = [v22 countByEnumeratingWithState:&v69 objects:v80 count:16];
  }

  while (v25);
LABEL_13:

  [v53 setRequestUsedNonEmptyAllowList:{objc_msgSend(v21, "count") != 0}];
  if (v24)
  {
    v31 = (v24 & v23 & 1) == 0;
  }

  else
  {
    v31 = 2;
  }

  if ((v24 | v23))
  {
    if (v75[5])
    {
      [v18 setExtensionsCBOR:0];
      v32 = objc_alloc_init(_WKAuthenticationExtensionsClientInputs);
      [v32 setAppid:v75[5]];
      [v18 setExtensions:v32];
    }

    [v18 setAuthenticatorAttachment:v31];
    if ([v21 count])
    {
      [v18 setAllowCredentials:v21];
    }

    v33 = [v52 objectAtIndexedSubscript:0];
    clientDataJSON = [v33 clientDataJSON];

    [v53 setClientDataJSONForApps:clientDataJSON];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100004A58;
    v66[3] = &unk_100031478;
    v35 = v53;
    v67 = v35;
    v36 = delegateCopy;
    v68 = v36;
    v37 = objc_retainBlock(v66);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DFC;
    block[3] = &unk_1000314C8;
    styleCopy = style;
    v57 = v52;
    v58 = testOptionsCopy;
    selfCopy = self;
    activity3 = clientDataJSON;
    v60 = activity3;
    v61 = v18;
    v39 = v35;
    v62 = v39;
    v40 = v37;
    v64 = v40;
    v63 = v46;
    dispatch_async(&_dispatch_main_q, block);
    if (v24)
    {
      if ((+[_WKWebAuthenticationPanel isUserVerifyingPlatformAuthenticatorAvailable]& 1) == 0)
      {
        activity = [v39 activity];
        os_activity_apply(activity, &stru_100031508);

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1000052F8;
        v54[3] = &unk_1000312D8;
        v55 = v36;
        [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v39 completionHandler:v54];
      }
    }

    else
    {
      activity2 = [v39 activity];
      os_activity_apply(activity2, &stru_1000314E8);

      [v36 didFetchPlatformLoginChoices:0];
    }

    uuid = [v39 uuid];
  }

  else
  {
    activity3 = [v53 activity];
    os_activity_apply(activity3, &stru_100031450);
    uuid = 0;
  }

  _Block_object_dispose(&v74, 8);

  return uuid;
}

- (void)assertUsingPlatformCredentialForLoginChoice:(id)choice authenticatedContext:(id)context
{
  contextCopy = context;
  choiceCopy = choice;
  publicKeyCredentialOperationUUID = [choiceCopy publicKeyCredentialOperationUUID];
  identifier = [choiceCopy identifier];

  v9 = +[WBSSavedAccountContext defaultContext];
  [(PublicKeyCredentialManager *)self _finishAssertionForOperationWithUUID:publicKeyCredentialOperationUUID identifier:identifier authenticatedContext:contextCopy savedAccountContext:v9];
}

- (void)_finishAssertionForOperationWithUUID:(id)d identifier:(id)identifier authenticatedContext:(id)context savedAccountContext:(id)accountContext
{
  identifierCopy = identifier;
  contextCopy = context;
  accountContextCopy = accountContext;
  v13 = [(PublicKeyCredentialManager *)self _operationForUUID:d];
  v14 = v13;
  if (v13)
  {
    identifiersToAssertionResponses = [v13 identifiersToAssertionResponses];
    v16 = [identifiersToAssertionResponses objectForKeyedSubscript:identifierCopy];

    if (v16)
    {
      relyingPartyIdentifier = [v14 relyingPartyIdentifier];
      if (([relyingPartyIdentifier isEqualToString:@"apple.com"] & 1) == 0)
      {
        [(PublicKeyCredentialManager *)self _updateLastUsedDateForPasskeySavedAccountWithAssertion:v16 relyingParty:relyingPartyIdentifier context:accountContextCopy];
      }

      [v16 setLaContext:contextCopy];
      [v14 selectPlatformAssertion:v16];
    }

    else
    {
      activity = [v14 activity];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005578;
      block[3] = &unk_100031148;
      v20 = identifierCopy;
      os_activity_apply(activity, block);
    }
  }
}

- (void)_updateLastUsedDateForPasskeySavedAccountWithAssertion:(id)assertion relyingParty:(id)party context:(id)context
{
  contextCopy = context;
  partyCopy = party;
  assertionCopy = assertion;
  v13 = +[NSDate now];
  userHandle = [assertionCopy userHandle];
  v11 = [userHandle base64EncodedStringWithOptions:0];
  group = [assertionCopy group];

  [NSURLCredentialStorage safari_setLastUsedDate:v13 forPasskeyWithUserHandle:v11 relyingPartyID:partyCopy groupID:group context:contextCopy];
}

- (id)autoFillOperationUUIDForApplicationIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:?];
    v4 = v3;
    if (v3)
    {
      uuid = [v3 uuid];
    }

    else
    {
      uuid = 0;
    }
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (id)autoFillOperationUUIDForWebFrameIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:?];
    uuid = [v3 uuid];
  }

  else
  {
    v5 = sub_10000A644(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100020280(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    uuid = 0;
  }

  return uuid;
}

- (id)autoFillPasskeysForOperationUUID:(id)d
{
  dCopy = d;
  v5 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:dCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 hasSelectedAssertion])
  {
    activity = [v6 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005BF8;
    block[3] = &unk_100031148;
    v44 = dCopy;
    os_activity_apply(activity, block);

    v8 = [[WBSPair alloc] initWithFirst:&__NSArray0__struct second:0];
    goto LABEL_8;
  }

  v9 = +[ASFeatureManager sharedManager];
  isDeviceConfiguredToAllowPasskeys = [v9 isDeviceConfiguredToAllowPasskeys];

  if ((isDeviceConfiguredToAllowPasskeys & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = +[SFCredentialProviderExtensionManager sharedManager];
  if ([v11 atLeastOneEnabledExtensionSupportsPasskeys])
  {
    v12 = +[SFAutoFillFeatureManager sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [v12 shouldAutoFillPasswordsFromKeychain];

    if ((shouldAutoFillPasswordsFromKeychain & 1) == 0)
    {
LABEL_7:
      v8 = [[WBSPair alloc] initWithFirst:&__NSArray0__struct second:0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  identifiersToAssertionResponses = [v6 identifiersToAssertionResponses];
  relyingPartyIdentifier = [v6 relyingPartyIdentifier];
  shouldRequireUserVerification = [v6 shouldRequireUserVerification];
  v35 = v6;
  requestUsedNonEmptyAllowList = [v6 requestUsedNonEmptyAllowList];
  v17 = identifiersToAssertionResponses;
  v40 = relyingPartyIdentifier;
  v36 = dCopy;
  v41 = dCopy;
  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      v42 = v20;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * v22)];
        if ([v23 synchronizable])
        {
          userHandle = [v23 userHandle];
          v25 = [userHandle base64EncodedStringWithOptions:0];

          group = [v23 group];
          v27 = [NSURLCredentialStorage safari_customTitleForPasskeyWithUserHandle:v25 relyingPartyID:v40 groupID:group];

          v28 = [WBSAutoFillPasskey alloc];
          name = [v23 name];
          v30 = sub_100003680(v23);
          LOBYTE(v34) = requestUsedNonEmptyAllowList;
          v31 = [v28 initWithUsername:name customTitle:v27 relyingPartyIdentifier:v40 identifier:v30 operationUUID:v41 shouldRequireUserVerification:shouldRequireUserVerification requestUsedNonEmptyAllowList:v34];

          [v39 addObject:v31];
          v20 = v42;
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v20);
  }

  v32 = [v39 copy];
  if (+[_ASDevice isCABLEClient])
  {
    v33 = [[WBSPasskeyAutoFillFromNearbyDeviceOptions alloc] initWithOperationUUID:v41];
  }

  else
  {
    v33 = 0;
  }

  v6 = v35;
  dCopy = v36;
  v8 = [[WBSPair alloc] initWithFirst:v32 second:v33];

LABEL_8:

  return v8;
}

- (void)presentCABLESheetForOperationUUID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = sub_10000A644(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 138543362;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asked to present caBLE for AutoFill operation %{public}@", &v15, 0xCu);
  }

  v10 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:dCopy];
  v12 = v10;
  if (v10)
  {
    delegate = [v10 delegate];
    [delegate presentCABLESheetWithCompletionHandler:handlerCopy];
  }

  else
  {
    v14 = sub_10000A644(0, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not find operation.", &v15, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)assertUsingSecurityKeyCredentialForLoginChoice:(id)choice
{
  choiceCopy = choice;
  publicKeyCredentialOperationUUID = [choiceCopy publicKeyCredentialOperationUUID];
  v6 = [(PublicKeyCredentialManager *)self _operationForUUID:publicKeyCredentialOperationUUID];

  if (v6)
  {
    identifiersToAssertionResponses = [v6 identifiersToAssertionResponses];
    identifier = [choiceCopy identifier];
    v9 = [identifiersToAssertionResponses objectForKeyedSubscript:identifier];

    if (v9)
    {
      [v6 selectSecurityKeyAssertion:v9];
    }

    else
    {
      activity = [v6 activity];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005F74;
      block[3] = &unk_100031148;
      v12 = choiceCopy;
      os_activity_apply(activity, block);
    }
  }
}

- (void)cancelOperationIfNecessaryWithUUID:(id)d overrideError:(id)error
{
  dCopy = d;
  errorCopy = error;
  v8 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:dCopy];
  v9 = v8;
  if (v8)
  {
    activity = [v8 activity];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000060E4;
    v16 = &unk_100031290;
    v11 = dCopy;
    v17 = v11;
    v12 = errorCopy;
    v18 = v12;
    os_activity_apply(activity, &v13);

    if (v12)
    {
      [v9 setOverrideError:{v12, v13, v14, v15, v16, v17}];
    }

    [(PublicKeyCredentialManager *)self _tearDownOperationWithUUID:v11, v13, v14, v15, v16];
  }
}

- (id)encodeMakeCredentialCommandWithOptions:(id)options authenticatorUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions
{
  optionsCopy = options;
  extensionsCopy = extensions;
  if (availability == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = availability == 1;
  }

  v11 = [(PublicKeyCredentialManager *)self _asToWKCredentialCreationOptions:optionsCopy forCredentialKind:1];
  clientDataJSON = [optionsCopy clientDataJSON];
  if (!clientDataJSON)
  {
    challenge = [optionsCopy challenge];
    relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
    v15 = [@"https://" stringByAppendingString:relyingPartyIdentifier];
    clientDataJSON = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:0 challenge:challenge origin:v15];
  }

  clientDataHash = [optionsCopy clientDataHash];
  if (objc_opt_respondsToSelector())
  {
    if (clientDataHash)
    {
      [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataHash:clientDataHash options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:extensionsCopy];
    }

    else
    {
      [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataJSON:clientDataJSON options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:extensionsCopy];
    }
  }

  else if (clientDataHash)
  {
    [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataHash:clientDataHash options:v11 userVerificationAvailability:v10];
  }

  else
  {
    [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataJSON:clientDataJSON options:v11 userVerificationAvailability:v10];
  }
  v17 = ;
  v18 = v17;
  v19 = [(PublicKeyCredentialManager *)self encodeExtensionsIfNeededForCTAPRegistrationCommand:v17 registrationOptions:optionsCopy];

  v20 = [[WBSPair alloc] initWithFirst:clientDataJSON second:v19];

  return v20;
}

- (id)encodeGetAssertionCommandWithOptions:(id)options authenticatorUserVerificationAvailability:(unint64_t)availability authenticatorSupportedExtensions:(id)extensions
{
  optionsCopy = options;
  extensionsCopy = extensions;
  if (availability == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = availability == 1;
  }

  v11 = [(PublicKeyCredentialManager *)self _asToWKCredentialAssertionOptions:optionsCopy];
  clientDataJSON = [optionsCopy clientDataJSON];
  if (!clientDataJSON)
  {
    challenge = [optionsCopy challenge];
    relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
    v15 = [@"https://" stringByAppendingString:relyingPartyIdentifier];
    clientDataJSON = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:1 challenge:challenge origin:v15];
  }

  clientDataHash = [optionsCopy clientDataHash];
  if (objc_opt_respondsToSelector())
  {
    if (clientDataHash)
    {
      [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataHash:clientDataHash options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:extensionsCopy];
    }

    else
    {
      [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataJSON:clientDataJSON options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:extensionsCopy];
    }
  }

  else if (clientDataHash)
  {
    [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataHash:clientDataHash options:v11 userVerificationAvailability:v10];
  }

  else
  {
    [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataJSON:clientDataJSON options:v11 userVerificationAvailability:v10];
  }
  v17 = ;
  v18 = v17;
  v19 = [(PublicKeyCredentialManager *)self encodeExtensionsIfNeededForCTAPAssertionCommand:v17 assertionOptions:optionsCopy];

  v20 = [[WBSPair alloc] initWithFirst:clientDataJSON second:v19];

  return v20;
}

- (id)browserPasskeysForRelyingParty:(id)party testOptions:(id)options
{
  partyCopy = party;
  optionsCopy = options;
  v8 = dispatch_group_create();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2810000000;
  v30 = "";
  v31 = 0;
  v9 = +[NSMutableArray array];
  if (optionsCopy)
  {
    dispatch_group_enter(v8);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100006880;
    v23[3] = &unk_100031530;
    v26 = &v27;
    v10 = v9;
    v24 = v10;
    v25 = v8;
    [(PublicKeyCredentialManager *)self test_getBrowserPasskeysForRelyingParty:partyCopy completionHandler:v23];

    v11 = v24;
  }

  else
  {
    v11 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:partyCopy];
    os_unfair_lock_lock(v28 + 8);
    v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&stru_100031570];
    v10 = [NSMutableArray arrayWithArray:v12];

    os_unfair_lock_unlock(v28 + 8);
  }

  dispatch_group_enter(v8);
  v32 = partyCopy;
  v13 = [NSArray arrayWithObjects:&v32 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100006A3C;
  v19[3] = &unk_100031530;
  v22 = &v27;
  v14 = v10;
  v20 = v14;
  v15 = v8;
  v21 = v15;
  [SFSafariCredentialStore getExternalPasskeyCredentialIdentitiesForDomains:v13 completionHandler:v19];

  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v21;
  v17 = v14;

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (BOOL)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d error:(id *)error
{
  partyCopy = party;
  dCopy = d;
  v9 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:partyCopy];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100006E48;
  v20 = &unk_100031598;
  v10 = dCopy;
  v21 = v10;
  v11 = [v9 safari_containsObjectPassingTest:&v17];
  v13 = v11;
  if (v11)
  {
    [_WKWebAuthenticationPanel deleteLocalAuthenticatorCredentialWithID:v10, v17, v18, v19, v20];
  }

  else
  {
    v14 = sub_10000A644(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100020394();
    }

    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = @"Could not find expected passkey.";
    v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1, v17, v18, v19, v20];
    *error = [NSError errorWithDomain:ASAuthorizationErrorDomain code:1004 userInfo:v15];
  }

  return v13;
}

- (BOOL)deleteAllPasskeysForRelyingParty:(id)party error:(id *)error
{
  partyCopy = party;
  v6 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:partyCopy];
  v7 = [v6 count];
  v9 = sub_10000A644(v7, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v10)
    {
      *buf = 138543362;
      v35 = partyCopy;
      v25 = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found no passkeys for %{public}@.", buf, 0xCu);
      goto LABEL_18;
    }

LABEL_17:
    v25 = 1;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = v9;
    *buf = 134349056;
    v35 = [v6 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting %{public}ld passkeys.", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v16 = _WKLocalAuthenticatorCredentialIDKey;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v27 + 1) + 8 * i) safari_dataForKey:{v16, v27}];
        [_WKWebAuthenticationPanel deleteLocalAuthenticatorCredentialWithID:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v14);
  }

  v6 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:partyCopy];

  v19 = [v6 count];
  if (!v19)
  {
    goto LABEL_17;
  }

  v21 = sub_10000A644(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    v23 = [v6 count];
    *buf = 134349056;
    v35 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Could not delete %{public}ld passkeys.", buf, 0xCu);
  }

  v31 = NSLocalizedFailureReasonErrorKey;
  v32 = @"Unable to delete some passkeys.";
  v24 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1, v27];
  *error = [NSError errorWithDomain:ASAuthorizationErrorDomain code:1000 userInfo:v24];

  v25 = 0;
LABEL_18:

  return v25;
}

- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler
{
  partyIdentifierCopy = partyIdentifier;
  dCopy = d;
  handlerCopy = handler;
  identifierCopy = identifier;
  v14 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:identifierCopy];

  v15 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v14];

  if (v15)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000072E4;
    v19[3] = &unk_1000315C0;
    v20 = handlerCopy;
    [(PublicKeyCredentialManager *)self _getExternalPasskeyRequestForOperation:v15 relyingPartyIdentifier:partyIdentifierCopy credentialID:dCopy completionHandler:v19];
  }

  else
  {
    v18 = sub_10000A644(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100020418();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler
{
  partyIdentifierCopy = partyIdentifier;
  dCopy = d;
  handlerCopy = handler;
  v14 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:identifier];
  if (v14)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000741C;
    v16[3] = &unk_1000315C0;
    v17 = handlerCopy;
    [(PublicKeyCredentialManager *)self _getExternalPasskeyRequestForOperation:v14 relyingPartyIdentifier:partyIdentifierCopy credentialID:dCopy completionHandler:v16];
  }

  else
  {
    v15 = sub_10000A644(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100020418();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_getExternalPasskeyRequestForOperation:(id)operation relyingPartyIdentifier:(id)identifier credentialID:(id)d completionHandler:(id)handler
{
  operationCopy = operation;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007538;
  v15[3] = &unk_1000315E8;
  identifierCopy = identifier;
  dCopy = d;
  v18 = operationCopy;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = operationCopy;
  v13 = dCopy;
  v14 = identifierCopy;
  [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v12 completionHandler:v15];
}

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier usingCredential:(id)credential
{
  credentialCopy = credential;
  identifierCopy = identifier;
  v8 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:identifierCopy];

  v9 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v8];

  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v9 usingCredential:credentialCopy];
}

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier usingCredential:(id)credential
{
  credentialCopy = credential;
  v7 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:identifier];
  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v7 usingCredential:credentialCopy];
}

- (void)completeAssertionWithExternalPasskeyForUUID:(id)d usingCredential:(id)credential
{
  credentialCopy = credential;
  v7 = [(PublicKeyCredentialManager *)self _operationForUUID:d];
  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v7 usingCredential:credentialCopy];
}

- (void)_completeAssertionWithExternalPasskeyForOperation:(id)operation usingCredential:(id)credential
{
  operationCopy = operation;
  credentialCopy = credential;
  uuid = [operationCopy uuid];
  v8 = [NSError safari_errorWithDomain:ASCAuthorizationErrorDomain code:12 privacyPreservingDescription:@"Operation performed with external passkey"];
  [(PublicKeyCredentialManager *)self cancelOperationIfNecessaryWithUUID:uuid overrideError:v8];

  clientDataJSONForApps = [operationCopy clientDataJSONForApps];

  if (clientDataJSONForApps)
  {
    clientDataJSONForApps2 = [operationCopy clientDataJSONForApps];
    [credentialCopy setRawClientDataJSON:clientDataJSONForApps2];
  }

  delegate = [operationCopy delegate];
  [delegate didCompleteAssertionWithCredential:credentialCopy error:0];
}

- (void)_queryExternalLoginChoicesForOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  assertionOptions = [operationCopy assertionOptions];

  if (assertionOptions)
  {
    assertionOptions2 = [operationCopy assertionOptions];
    allowedCredentials = [assertionOptions2 allowedCredentials];
    v12 = [allowedCredentials safari_mapObjectsUsingBlock:&stru_100031628];

    v13 = [v12 count] != 0;
    relyingPartyIdentifier = [operationCopy relyingPartyIdentifier];
    v23 = relyingPartyIdentifier;
    v15 = [NSArray arrayWithObjects:&v23 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100007CA4;
    v18[3] = &unk_100031678;
    v22 = v13;
    v19 = v12;
    v20 = operationCopy;
    v21 = handlerCopy;
    v16 = v12;
    [SFSafariCredentialStore getExternalPasskeyCredentialIdentitiesForDomains:v15 completionHandler:v18];
  }

  else
  {
    v17 = sub_10000A644(v8, v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000204DC();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:identifierCopy];

  v9 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v8];

  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v9 completionHandler:handlerCopy];
}

- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:identifier];
  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v7 completionHandler:handlerCopy];
}

- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_operationsLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_uuidToOperation allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        delegate = [v9 delegate];
        isCABLEAuthenticatorRequest = [delegate isCABLEAuthenticatorRequest];

        if (isCABLEAuthenticatorRequest)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_operationsLock);
  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v6 completionHandler:handlerCopy];
}

- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)identifier orApplicationIdentifier:(id)applicationIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    handlerCopy = handler;
    v9 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:identifierCopy];
    handlerCopy2 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v9];
    (*(handler + 2))(handlerCopy, handlerCopy2 != 0);
  }

  else
  {
    handlerCopy2 = handler;
    v9 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:applicationIdentifier];
    (*(handler + 2))(handlerCopy2, v9 != 0);
  }
}

- (void)_getPasskeyAssertionRequestParametersForOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v7 = +[SFCredentialProviderExtensionManager sharedManager];
  atLeastOneEnabledExtensionSupportsPasskeys = [v7 atLeastOneEnabledExtensionSupportsPasskeys];

  if ((atLeastOneEnabledExtensionSupportsPasskeys & 1) == 0)
  {
    v19 = sub_10000A644(v9, v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100020510();
    }

    goto LABEL_10;
  }

  if (!operationCopy)
  {
    v20 = sub_10000A644(v9, v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100020578();
    }

LABEL_10:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_17;
  }

  assertionOptions = [operationCopy assertionOptions];
  v13 = assertionOptions;
  if (assertionOptions)
  {
    allowedCredentials = [assertionOptions allowedCredentials];
    v15 = [allowedCredentials safari_mapObjectsUsingBlock:&stru_1000316B8];

    assertionOptions2 = [operationCopy assertionOptions];
    extensions = [assertionOptions2 extensions];

    if (extensions)
    {
      v18 = [[ASPasskeyAssertionCredentialExtensionInput alloc] initWithCoreExtensions:extensions];
    }

    else
    {
      v18 = 0;
    }

    v22 = [ASPasskeyCredentialRequestParameters alloc];
    relyingPartyIdentifier = [operationCopy relyingPartyIdentifier];
    clientDataHash = [v13 clientDataHash];
    userVerificationPreference = [v13 userVerificationPreference];
    v26 = [v22 initWithRelyingPartyIdentifier:relyingPartyIdentifier clientDataHash:clientDataHash userVerificationPreference:userVerificationPreference allowedCredentials:v15 extensionInput:v18];

    (handlerCopy)[2](handlerCopy, v26);
  }

  else
  {
    v21 = sub_10000A644(0, v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100020544();
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_17:
}

- (id)_asToWKCredentialCreationOptions:(id)options forCredentialKind:(unint64_t)kind
{
  optionsCopy = options;
  supportedAlgorithmIdentifiers = [optionsCopy supportedAlgorithmIdentifiers];
  v7 = [supportedAlgorithmIdentifiers safari_mapObjectsUsingBlock:&stru_1000316F8];

  relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
  v9 = [[_WKPublicKeyCredentialRelyingPartyEntity alloc] initWithName:relyingPartyIdentifier];
  [v9 setIdentifier:relyingPartyIdentifier];
  v10 = [_WKPublicKeyCredentialUserEntity alloc];
  userName = [optionsCopy userName];
  userIdentifier = [optionsCopy userIdentifier];
  userDisplayName = [optionsCopy userDisplayName];
  v14 = [v10 initWithName:userName identifier:userIdentifier displayName:userDisplayName];

  v31 = v7;
  v15 = [[_WKPublicKeyCredentialCreationOptions alloc] initWithRelyingParty:v9 user:v14 publicKeyCredentialParamaters:v7];
  v16 = objc_alloc_init(_WKAuthenticatorSelectionCriteria);
  v17 = v16;
  if (kind == 1)
  {
    v20 = 1;
    [v16 setAuthenticatorAttachment:1];
    attestationPreference = [optionsCopy attestationPreference];
    if (![attestationPreference length])
    {
      goto LABEL_11;
    }

    v20 = 1;
    if (sub_100008824(attestationPreference) != 3)
    {
      goto LABEL_11;
    }

    v19 = 3;
  }

  else
  {
    if (kind != 2)
    {
      v20 = 0;
      goto LABEL_12;
    }

    [v16 setAuthenticatorAttachment:2];
    attestationPreference = [optionsCopy attestationPreference];
    if (![attestationPreference length])
    {
      v20 = 0;
      goto LABEL_11;
    }

    v19 = sub_100008824(attestationPreference);
    v20 = 0;
  }

  [v15 setAttestation:v19];
LABEL_11:

LABEL_12:
  residentKeyPreference = [optionsCopy residentKeyPreference];
  if (residentKeyPreference >= 4)
  {
    v24 = sub_10000A644(residentKeyPreference, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000205AC();
    }

    v23 = 0;
  }

  else
  {
    v23 = qword_1000251E0[residentKeyPreference];
  }

  [v17 setResidentKey:v23];
  excludedCredentials = [optionsCopy excludedCredentials];
  if ([excludedCredentials count])
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100008948;
    v32[3] = &unk_100031718;
    v33 = v20;
    v26 = [excludedCredentials safari_mapObjectsUsingBlock:v32];
    [v15 setExcludeCredentials:v26];
  }

  userVerificationPreference = [optionsCopy userVerificationPreference];
  if ([userVerificationPreference length])
  {
    [v17 setUserVerification:sub_100008A30(userVerificationPreference)];
  }

  [v15 setAuthenticatorSelection:v17];
  timeout = [optionsCopy timeout];
  if (timeout)
  {
    [v15 setTimeout:timeout];
  }

  extensionsCBORForWebKit = [optionsCopy extensionsCBORForWebKit];
  if (extensionsCBORForWebKit)
  {
    [v15 setExtensionsCBOR:extensionsCBORForWebKit];
  }

  return v15;
}

- (id)_asToWKCredentialAssertionOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(_WKPublicKeyCredentialRequestOptions);
  relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
  [v5 setRelyingPartyIdentifier:relyingPartyIdentifier];
  credentialKind = [optionsCopy credentialKind];
  if (credentialKind == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (credentialKind == 2);
  }

  [v5 setAuthenticatorAttachment:v8];
  v9 = [(PublicKeyCredentialManager *)self _allowedCredentialsForAssertionOptions:optionsCopy];
  if ([v9 count])
  {
    [v5 setAllowCredentials:v9];
  }

  userVerificationPreference = [optionsCopy userVerificationPreference];
  if ([userVerificationPreference length])
  {
    [v5 setUserVerification:sub_100008A30(userVerificationPreference)];
  }

  timeout = [optionsCopy timeout];
  if (timeout)
  {
    [v5 setTimeout:timeout];
  }

  extensionsCBORForWebKit = [optionsCopy extensionsCBORForWebKit];
  if (extensionsCBORForWebKit)
  {
    [v5 setExtensionsCBOR:extensionsCBORForWebKit];
  }

  return v5;
}

- (id)_allowedCredentialsForAssertionOptions:(id)options
{
  optionsCopy = options;
  v4 = +[NSMutableArray array];
  credentialKind = [optionsCopy credentialKind];
  if (credentialKind == 1)
  {
    v6 = &stru_100031758;
  }

  else
  {
    if (credentialKind != 2)
    {
      goto LABEL_6;
    }

    v6 = &stru_100031778;
  }

  allowedCredentials = [optionsCopy allowedCredentials];
  v8 = [allowedCredentials safari_mapObjectsUsingBlock:v6];
  [v4 addObjectsFromArray:v8];

LABEL_6:

  return v4;
}

- (id)_createCredentialOfKind:(unint64_t)kind withOptions:(id)options authenticatedLAContext:(id)context delegate:(id)delegate webFrameIdentifier:(id)identifier parentActivity:(id)activity isConditionalRegistration:(BOOL)registration testOptions:(id)self0
{
  optionsCopy = options;
  delegateCopy = delegate;
  testOptionsCopy = testOptions;
  activityCopy = activity;
  identifierCopy = identifier;
  contextCopy = context;
  [(PublicKeyCredentialManager *)self computeClientDataIfNeededForCreationOptions:optionsCopy];
  relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
  v21 = [(PublicKeyCredentialManager *)self _asToWKCredentialCreationOptions:optionsCopy forCredentialKind:kind];
  authenticatorSelection = [v21 authenticatorSelection];
  v23 = -[PublicKeyCredentialManager _newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:](self, "_newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:", relyingPartyIdentifier, delegateCopy, 0, identifierCopy, [authenticatorSelection userVerification] == 0, activityCopy, testOptionsCopy);

  [v23 setAuthenticatedLAContext:contextCopy];
  [v23 setCreationOptions:optionsCopy];
  clientDataJSON = [optionsCopy clientDataJSON];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100009048;
  v49[3] = &unk_1000317C0;
  v25 = v23;
  v51 = delegateCopy;
  kindCopy = kind;
  v50 = v25;
  v38 = delegateCopy;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093F0;
  block[3] = &unk_100031810;
  block[4] = self;
  v40 = v25;
  registrationCopy = registration;
  v41 = testOptionsCopy;
  v42 = optionsCopy;
  v43 = v21;
  v44 = clientDataJSON;
  v46 = objc_retainBlock(v49);
  kindCopy2 = kind;
  v45 = relyingPartyIdentifier;
  v26 = relyingPartyIdentifier;
  v27 = v46;
  v28 = clientDataJSON;
  v29 = v21;
  v30 = optionsCopy;
  v31 = testOptionsCopy;
  v32 = v25;
  dispatch_async(&_dispatch_main_q, block);
  uuid = [v32 uuid];

  return uuid;
}

- (id)_newPanelForOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = objc_alloc_init(_WKWebAuthenticationPanel);
  [v5 setDelegate:self];
  [operationCopy setPanel:v5];
  activity = [operationCopy activity];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000098B0;
  v15 = &unk_100031290;
  v7 = v5;
  v16 = v7;
  v17 = operationCopy;
  v8 = operationCopy;
  os_activity_apply(activity, &v12);

  [(NSMapTable *)self->_panelToWeakOperation setObject:v8 forKey:v7, v12, v13, v14, v15];
  os_unfair_lock_unlock(&self->_operationsLock);
  v9 = v17;
  v10 = v7;

  return v10;
}

- (id)_newOperationWithRelyingPartyIdentifier:(id)identifier delegate:(id)delegate sourceApplicationIdentifier:(id)applicationIdentifier webFrameIdentifier:(id)frameIdentifier shouldRequireUserVerification:(BOOL)verification parentActivity:(id)activity testOptions:(id)options
{
  verificationCopy = verification;
  applicationIdentifierCopy = applicationIdentifier;
  frameIdentifierCopy = frameIdentifier;
  optionsCopy = options;
  activityCopy = activity;
  delegateCopy = delegate;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_operationsLock);
  v21 = [[PublicKeyCredentialOperation alloc] initWithRelyingPartyIdentifier:identifierCopy delegate:delegateCopy parentActivity:activityCopy];

  [(PublicKeyCredentialOperation *)v21 setSourceApplicationIdentifier:applicationIdentifierCopy];
  [(PublicKeyCredentialOperation *)v21 setShouldRequireUserVerification:verificationCopy];
  [(PublicKeyCredentialOperation *)v21 setTestOptions:optionsCopy];

  activity = [(PublicKeyCredentialOperation *)v21 activity];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100009B6C;
  v33 = &unk_100031290;
  v23 = v21;
  v34 = v23;
  v24 = applicationIdentifierCopy;
  v35 = v24;
  os_activity_apply(activity, &v30);

  uuidToOperation = self->_uuidToOperation;
  v26 = [(PublicKeyCredentialOperation *)v23 uuid:v30];
  [(NSMutableDictionary *)uuidToOperation setObject:v23 forKeyedSubscript:v26];

  if (frameIdentifierCopy)
  {
    [(NSMapTable *)self->_webFrameIdentifierToWeakOperationForBrowser setObject:v23 forKey:frameIdentifierCopy];
  }

  if (v24)
  {
    [(NSMapTable *)self->_applicationIdentifierToWeakOperation setObject:v23 forKey:v24];
  }

  os_unfair_lock_unlock(&self->_operationsLock);
  v27 = v35;
  v28 = v23;

  return v28;
}

- (void)_tearDownOperationWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMutableDictionary *)self->_uuidToOperation objectForKeyedSubscript:dCopy];
  activity = [v5 activity];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D34;
  block[3] = &unk_100031148;
  v9 = dCopy;
  v7 = dCopy;
  os_activity_apply(activity, block);

  [v5 tearDownIfNecessary];
  [(NSMutableDictionary *)self->_uuidToOperation setObject:0 forKeyedSubscript:v7];
  os_unfair_lock_unlock(&self->_operationsLock);
}

- (id)_operationForPanelIfExists:(id)exists
{
  existsCopy = exists;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_panelToWeakOperation objectForKey:existsCopy];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForPanel:(id)panel
{
  panelCopy = panel;
  v5 = [(PublicKeyCredentialManager *)self _operationForPanelIfExists:panelCopy];
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v9 = sub_10000A644(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100020684();
    }
  }

  return v7;
}

- (id)_operationForUUIDIfExists:(id)exists
{
  existsCopy = exists;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMutableDictionary *)self->_uuidToOperation objectForKeyedSubscript:existsCopy];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForUUID:(id)d
{
  dCopy = d;
  v5 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:dCopy];
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v9 = sub_10000A644(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1000206EC();
    }
  }

  return v7;
}

- (id)_operationForApplicationIdentifierIfExists:(id)exists
{
  existsCopy = exists;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_applicationIdentifierToWeakOperation objectForKey:existsCopy];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForWebFrameIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_webFrameIdentifierToWeakOperationForBrowser objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (void)computeClientDataIfNeededForCreationOptions:(id)options
{
  optionsCopy = options;
  clientDataJSON = [optionsCopy clientDataJSON];
  if (clientDataJSON)
  {
    goto LABEL_2;
  }

  clientDataHash = [optionsCopy clientDataHash];

  if (!clientDataHash)
  {
    clientDataJSON = [optionsCopy challenge];
    relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
    v9 = [@"https://" stringByAppendingString:relyingPartyIdentifier];
    v10 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:0 challenge:clientDataJSON origin:v9];
    [optionsCopy setClientDataJSON:v10];

LABEL_2:
  }

  clientDataHash2 = [optionsCopy clientDataHash];

  if (!clientDataHash2)
  {
    v6 = [NSMutableData dataWithLength:32];
    clientDataJSON2 = [optionsCopy clientDataJSON];
    CC_SHA256([clientDataJSON2 bytes], objc_msgSend(clientDataJSON2, "length"), objc_msgSend(v6, "mutableBytes"));
    [optionsCopy setClientDataHash:v6];
  }
}

- (void)computeClientDataIfNeededForAssertionOptions:(id)options
{
  optionsCopy = options;
  clientDataJSON = [optionsCopy clientDataJSON];
  if (clientDataJSON)
  {
    goto LABEL_2;
  }

  clientDataHash = [optionsCopy clientDataHash];

  if (!clientDataHash)
  {
    clientDataJSON = [optionsCopy challenge];
    relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
    v9 = [@"https://" stringByAppendingString:relyingPartyIdentifier];
    v10 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:1 challenge:clientDataJSON origin:v9];
    [optionsCopy setClientDataJSON:v10];

LABEL_2:
  }

  clientDataHash2 = [optionsCopy clientDataHash];

  if (!clientDataHash2)
  {
    v6 = [NSMutableData dataWithLength:32];
    clientDataJSON2 = [optionsCopy clientDataJSON];
    CC_SHA256([clientDataJSON2 bytes], objc_msgSend(clientDataJSON2, "length"), objc_msgSend(v6, "mutableBytes"));
    [optionsCopy setClientDataHash:v6];
  }
}

- (id)internalErrorToWKErrorIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  if ([applicableCopy safari_matchesErrorDomain:ASCAuthorizationErrorDomain andCode:7])
  {
    v7 = NSLocalizedDescriptionKey;
    v8 = @"At least one credential matches an entry of the excludeCredentials list in the platform attached authenticator.";
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = [NSError errorWithDomain:WKErrorDomain code:8 userInfo:v4];
  }

  else
  {
    v5 = applicableCopy;
  }

  return v5;
}

- (void)test_makeCredentialWithMediationRequirement:(int64_t)requirement clientDataHash:(NSData *)hash options:(_WKPublicKeyCredentialCreationOptions *)options testOptions:(_TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions *)testOptions clientDataJSON:(NSData *)n completionHandler:(id)handler
{
  v15 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = requirement;
  v19[3] = hash;
  v19[4] = options;
  v19[5] = testOptions;
  v19[6] = n;
  v19[7] = v18;
  v19[8] = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_100025538;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100025540;
  v22[5] = v21;
  hashCopy = hash;
  optionsCopy = options;
  testOptionsCopy = testOptions;
  nCopy = n;
  selfCopy = self;
  sub_100013898(0, 0, v17, &unk_100025548, v22);
}

- (void)test_getAssertionWithMediationRequirement:(int64_t)requirement clientDataJSON:(NSData *)n options:(_WKPublicKeyCredentialRequestOptions *)options operation:(PublicKeyCredentialOperation *)operation completionHandler:(id)handler
{
  v13 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = requirement;
  v17[3] = n;
  v17[4] = options;
  v17[5] = operation;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000254C8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1000254D0;
  v20[5] = v19;
  nCopy = n;
  optionsCopy = options;
  operationCopy = operation;
  selfCopy = self;
  sub_100013898(0, 0, v15, &unk_1000254D8, v20);
}

- (void)test_getBrowserPasskeysForRelyingParty:(NSString *)party completionHandler:(id)handler
{
  v7 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = party;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100025460;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100025470;
  v14[5] = v13;
  partyCopy = party;
  selfCopy = self;
  sub_100013898(0, 0, v9, &unk_100025480, v14);
}

- (BOOL)passkeyExistsForRelyingParty:(id)party username:(id)username
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = PublicKeyCredentialManager.passkeyExists(relyingParty:username:)(v12, v13);

  return v8 & 1;
}

+ (id)asTransportsFromWKTransports:(id)transports
{
  sub_10001F88C(0, &qword_100035A28, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001E4F4(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)wkSecurityKeyTransportsFromASTransports:(id)transports
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001E990(v3);

  sub_10001F88C(0, &qword_100035A28, NSNumber_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)computeUserVerificationForAssertionOptions:(id)options
{
  sub_10001F88C(0, &qword_100035A50, ASCPublicKeyCredentialAssertionOptions_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100010EA8(v4);
}

@end