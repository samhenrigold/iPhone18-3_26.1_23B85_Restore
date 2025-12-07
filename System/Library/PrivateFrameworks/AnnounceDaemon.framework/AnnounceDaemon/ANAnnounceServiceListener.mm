@interface ANAnnounceServiceListener
- (ANAnnounceServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_handleError:(int64_t)error request:(id)request requestSentCompletionHandler:(id)handler;
- (void)_handleError:(int64_t)error request:(id)request sentCompletionHandler:(id)handler;
- (void)_sendReplyRequest:(id)request completion:(id)completion;
- (void)_sendRequest:(id)request completion:(id)completion;
- (void)_translateSentHandlerResponseAnnouncement:(id)announcement request:(id)request error:(id)error toRequestSentHandler:(id)handler;
- (void)announcementForID:(id)d endpointID:(id)iD reply:(id)reply;
- (void)cleanForExit;
- (void)contextFromAnnouncement:(id)announcement reply:(id)reply;
- (void)getReceivedAnnouncementsForEndpointID:(id)d completionHandler:(id)handler;
- (void)getScanningDeviceCandidates:(id)candidates;
- (void)getUnplayedAnnouncementsForEndpointID:(id)d completionHandler:(id)handler;
- (void)homeNamesForContext:(id)context reply:(id)reply;
- (void)isAnnounceEnabledForAnyAccessoryInHome:(id)home reply:(id)reply;
- (void)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)home reply:(id)reply;
- (void)isEndpointWithUUID:(id)d inRoomWithName:(id)name reply:(id)reply;
- (void)isLocalDeviceInRoom:(id)room reply:(id)reply;
- (void)localParticipant:(id)participant;
- (void)mockAnnouncement:(id)announcement forHomeWithName:(id)name playbackDeadline:(id)deadline completion:(id)completion;
- (void)prewarm:(id)prewarm;
- (void)receivedAnnouncementIdentifiersForEndpointID:(id)d reply:(id)reply;
- (void)send:(ANAnnouncementRequest *)send connection:(NSXPCConnection *)connection completionHandler:(id)handler;
- (void)sendReply:(ANAnnouncementRequest *)reply connection:(NSXPCConnection *)connection completionHandler:(id)handler;
- (void)sendRequest:(id)request completion:(id)completion;
- (void)sendRequestLegacy:(id)legacy completion:(id)completion;
- (void)validateDestinationFromContext:(id)context reply:(id)reply;
@end

@implementation ANAnnounceServiceListener

- (ANAnnounceServiceListener)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ANAnnounceServiceListener;
  v2 = [(ANAnnounceServiceListener *)&v8 init];
  if (v2)
  {
    [MEMORY[0x277CEAB38] isAnnounceEnabled];
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEAA38]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v6 = ANLogHandleAnnounceServiceListener([(NSXPCListener *)v2->_listener resume]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Announce Service Listener Up!", buf, 0xCu);
    }
  }

  return v2;
}

- (void)cleanForExit
{
  listener = [(ANAnnounceServiceListener *)self listener];
  [listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandleAnnounceServiceListener(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  isAnnounceEnabled = [MEMORY[0x277CEAB38] isAnnounceEnabled];
  if ((isAnnounceEnabled & 1) == 0)
  {
    an_announceServiceInterface = ANLogHandleAnnounceServiceListener(isAnnounceEnabled);
    if (os_log_type_enabled(an_announceServiceInterface, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = &stru_2851BDB18;
      v23 = "%@Rejecting connection. Announce not enabled.";
      v24 = an_announceServiceInterface;
      v25 = 12;
LABEL_12:
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  hasAnnounceEntitlement = [connectionCopy hasAnnounceEntitlement];
  if ((hasAnnounceEntitlement & 1) == 0)
  {
    an_announceServiceInterface = ANLogHandleAnnounceServiceListener(hasAnnounceEntitlement);
    if (os_log_type_enabled(an_announceServiceInterface, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v34 = &stru_2851BDB18;
      v35 = 2112;
      v36 = v26;
      v23 = "%@Missing Announce Entitlement: %@";
      v24 = an_announceServiceInterface;
      v25 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  an_announceServiceInterface = [MEMORY[0x277CCAE90] an_announceServiceInterface];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_localParticipant_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_homeNamesForContext_reply_ argumentIndex:0 ofReply:0];
  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [an_announceServiceInterface setClasses:v16 forSelector:sel_homeNamesForContext_reply_ argumentIndex:0 ofReply:1];
  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [an_announceServiceInterface setClasses:v19 forSelector:sel_getReceivedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClasses:v19 forSelector:sel_getUnplayedAnnouncementsForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [an_announceServiceInterface setClasses:v20 forSelector:sel_announcementForID_endpointID_reply_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClasses:v20 forSelector:sel_mockAnnouncement_forHomeWithName_playbackDeadline_completion_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClasses:v20 forSelector:sel_contextFromAnnouncement_reply_ argumentIndex:0 ofReply:0];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_contextFromAnnouncement_reply_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_sendRequest_completion_ argumentIndex:0 ofReply:0];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_sendRequest_completion_ argumentIndex:0 ofReply:1];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_sendRequestLegacy_completion_ argumentIndex:0 ofReply:0];
  [an_announceServiceInterface setClass:objc_opt_class() forSelector:sel_sendRequestLegacy_completion_ argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:an_announceServiceInterface];
  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, connectionCopy);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v30[3] = &unk_278C86580;
  objc_copyWeak(&v31, &location);
  [connectionCopy setInterruptionHandler:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke_35;
  v28[3] = &unk_278C86580;
  objc_copyWeak(&v29, &location);
  [connectionCopy setInvalidationHandler:v28];
  v21 = ANLogHandleAnnounceServiceListener([connectionCopy resume]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = connectionCopy;
    _os_log_impl(&dword_23F525000, v21, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v22 = 1;
LABEL_14:

  return v22;
}

void __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412546;
    v5 = &stru_2851BDB18;
    v6 = 2112;
    v7 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v4, 0x16u);
  }
}

void __64__ANAnnounceServiceListener_listener_shouldAcceptNewConnection___block_invoke_35(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412546;
    v5 = &stru_2851BDB18;
    v6 = 2112;
    v7 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v4, 0x16u);
  }
}

- (void)localParticipant:(id)participant
{
  participantCopy = participant;
  v6 = +[ANAnnouncementCoordinator sharedCoordinator];
  localParticipant = [v6 localParticipant];
  (*(participant + 2))(participantCopy, localParticipant);
}

- (void)sendRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  destination = [requestCopy destination];
  type = [destination type];

  if (type < 2)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__ANAnnounceServiceListener_sendRequest_completion___block_invoke;
    v14[3] = &unk_278C865A8;
    v14[4] = self;
    v15 = requestCopy;
    v16 = completionCopy;
    [(ANAnnounceServiceListener *)self _sendRequest:v15 completion:v14];

    v10 = v15;
LABEL_6:

    goto LABEL_7;
  }

  if (type == 2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__ANAnnounceServiceListener_sendRequest_completion___block_invoke_2;
    v11[3] = &unk_278C865A8;
    v11[4] = self;
    v12 = requestCopy;
    v13 = completionCopy;
    [(ANAnnounceServiceListener *)self _sendReplyRequest:v12 completion:v11];

    v10 = v12;
    goto LABEL_6;
  }

  [(ANAnnounceServiceListener *)self _handleError:1045 request:requestCopy requestSentCompletionHandler:completionCopy];
LABEL_7:
}

- (void)sendRequestLegacy:(id)legacy completion:(id)completion
{
  legacyCopy = legacy;
  completionCopy = completion;
  destination = [legacyCopy destination];
  type = [destination type];

  if (type >= 2)
  {
    if (type == 2)
    {
      [(ANAnnounceServiceListener *)self _sendReplyRequest:legacyCopy completion:completionCopy];
    }

    else
    {
      [(ANAnnounceServiceListener *)self _handleError:1045 request:legacyCopy sentCompletionHandler:completionCopy];
    }
  }

  else
  {
    [(ANAnnounceServiceListener *)self _sendRequest:legacyCopy completion:completionCopy];
  }
}

- (void)mockAnnouncement:(id)announcement forHomeWithName:(id)name playbackDeadline:(id)deadline completion:(id)completion
{
  announcementCopy = announcement;
  deadlineCopy = deadline;
  completionCopy = completion;
  nameCopy = name;
  v12 = +[ANHomeManager shared];
  v13 = [v12 homeWithName:nameCopy];

  if (v13)
  {
    v14 = [MEMORY[0x277CEAB50] contentWithAudioFileURL:announcementCopy];
    v15 = MEMORY[0x277CEAB68];
    uniqueIdentifier = [v13 uniqueIdentifier];
    v17 = [v15 destinationWithHomeIdentifier:uniqueIdentifier];

    v18 = [MEMORY[0x277CEAB70] requestWithContent:v14 destination:v17];
    [v18 setClientID:@"Mock"];
    v19 = +[ANAnnouncementCoordinator sharedCoordinator];
    [v19 mockAnnouncement:v18 playbackDeadline:deadlineCopy sentHandler:completionCopy];

    completionCopy = v17;
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9D0]];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)receivedAnnouncementIdentifiersForEndpointID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  v9 = [v7 allAnnouncementsSortedByReceiptForEndpointID:dCopy];

  identifiers = [v9 identifiers];
  replyCopy[2](replyCopy, identifiers);
}

- (void)announcementForID:(id)d endpointID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  iDCopy = iD;
  dCopy = d;
  v10 = +[ANAnnouncementCoordinator sharedCoordinator];
  v11 = [v10 announcementForID:dCopy endpointID:iDCopy];

  replyCopy[2](replyCopy, v11);
}

- (void)getReceivedAnnouncementsForEndpointID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v7 resetAllTimersForEndpointID:dCopy];

  v8 = +[ANAnnouncementCoordinator sharedCoordinator];
  v10 = [v8 allAnnouncementsSortedByReceiptForEndpointID:dCopy];

  v9 = [MEMORY[0x277CEAB48] contextsFrom:v10];
  handlerCopy[2](handlerCopy, v9);
}

- (void)getUnplayedAnnouncementsForEndpointID:(id)d completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v7 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v7 resetAllTimersForEndpointID:dCopy];

  v8 = objc_opt_new();
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v10 = [v9 allAnnouncementsSortedByReceiptForEndpointID:dCopy];
  unplayedAnnouncements = [v10 unplayedAnnouncements];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = unplayedAnnouncements;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = MEMORY[0x277CEAB58];
        remoteSessionDictionary = [*(*(&v20 + 1) + 8 * v16) remoteSessionDictionary];
        v19 = [v17 contextFromDictionary:remoteSessionDictionary];
        [v8 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  handlerCopy[2](handlerCopy, v8);
}

- (void)getScanningDeviceCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v6 = +[ANAnnouncementCoordinator sharedCoordinator];
  scanningDeviceCandidates = [v6 scanningDeviceCandidates];
  (*(candidates + 2))(candidatesCopy, scanningDeviceCandidates);
}

- (void)contextFromAnnouncement:(id)announcement reply:(id)reply
{
  v6 = MEMORY[0x277CEAB58];
  replyCopy = reply;
  remoteSessionDictionary = [announcement remoteSessionDictionary];
  v8 = [v6 contextFromDictionary:remoteSessionDictionary];
  (*(reply + 2))(replyCopy, v8);
}

- (void)homeNamesForContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  contextCopy = context;
  v9 = +[ANHomeManager shared];
  v8 = [v9 homeNamesForContext:contextCopy];

  (*(reply + 2))(replyCopy, v8);
}

- (void)isLocalDeviceInRoom:(id)room reply:(id)reply
{
  replyCopy = reply;
  roomCopy = room;
  v9 = +[ANHomeManager shared];
  v8 = [v9 isLocalDeviceInRoom:roomCopy];

  (*(reply + 2))(replyCopy, v8);
}

- (void)isAnnounceEnabledForAnyAccessoryInHome:(id)home reply:(id)reply
{
  replyCopy = reply;
  homeCopy = home;
  v6 = +[ANHomeManager shared];
  v7 = [v6 homeWithName:homeCopy];

  if (v7)
  {
    isAnnounceEnabledForAnyAccessory = [v7 isAnnounceEnabledForAnyAccessory];
  }

  else
  {
    isAnnounceEnabledForAnyAccessory = 0;
  }

  replyCopy[2](replyCopy, isAnnounceEnabledForAnyAccessory);
}

- (void)isAnnounceEnabledForAnyAccessoryOrUserInHome:(id)home reply:(id)reply
{
  replyCopy = reply;
  homeCopy = home;
  v6 = +[ANHomeManager shared];
  v7 = [v6 homeWithName:homeCopy];

  if (v7)
  {
    isAnnounceEnabledForAnyAccessoryOrUser = [v7 isAnnounceEnabledForAnyAccessoryOrUser];
  }

  else
  {
    isAnnounceEnabledForAnyAccessoryOrUser = 0;
  }

  replyCopy[2](replyCopy, isAnnounceEnabledForAnyAccessoryOrUser);
}

- (void)isEndpointWithUUID:(id)d inRoomWithName:(id)name reply:(id)reply
{
  replyCopy = reply;
  nameCopy = name;
  dCopy = d;
  v12 = +[ANHomeManager shared];
  v11 = [v12 isEndpointWithUUID:dCopy inRoomWithName:nameCopy];

  (*(reply + 2))(replyCopy, v11);
}

- (void)prewarm:(id)prewarm
{
  prewarmCopy = prewarm;
  v4 = +[ANRapportConnection sharedConnection];
  [v4 activateLinkWithOptions:2 completion:prewarmCopy];
}

- (void)validateDestinationFromContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v6 = [ANValidationHelper performPreflightChecksForSendingAnnouncementToHomeContext:context];
  replyCopy[2](replyCopy, v6);
}

- (void)_sendRequest:(id)request completion:(id)completion
{
  v6 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  requestCopy = request;
  currentConnection = [v6 currentConnection];
  [(ANAnnounceServiceListener *)self send:requestCopy connection:currentConnection completionHandler:completionCopy];
}

- (void)_sendReplyRequest:(id)request completion:(id)completion
{
  v6 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  requestCopy = request;
  currentConnection = [v6 currentConnection];
  [(ANAnnounceServiceListener *)self sendReply:requestCopy connection:currentConnection completionHandler:completionCopy];
}

- (void)_handleError:(int64_t)error request:(id)request sentCompletionHandler:(id)handler
{
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CEA9D0];
  handlerCopy = handler;
  requestCopy = request;
  v12 = [v8 an_errorWithCode:error component:v9];
  (*(handler + 2))(handlerCopy, 0, v12);

  v16 = +[ANAnalytics shared];
  content = [requestCopy content];

  endpointIdentifier = [content endpointIdentifier];
  v15 = [ANAnalyticsContext contextWithEndpointID:endpointIdentifier];
  [v16 error:error context:v15];
}

- (void)_handleError:(int64_t)error request:(id)request requestSentCompletionHandler:(id)handler
{
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CEA9D0];
  handlerCopy = handler;
  requestCopy = request;
  v12 = [v8 an_errorWithCode:error component:v9];
  (*(handler + 2))(handlerCopy, 0, v12);

  v16 = +[ANAnalytics shared];
  content = [requestCopy content];

  endpointIdentifier = [content endpointIdentifier];
  v15 = [ANAnalyticsContext contextWithEndpointID:endpointIdentifier];
  [v16 error:error context:v15];
}

- (void)_translateSentHandlerResponseAnnouncement:(id)announcement request:(id)request error:(id)error toRequestSentHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  if (announcement)
  {
    v10 = MEMORY[0x277CEAB58];
    requestCopy = request;
    announcementCopy = announcement;
    remoteSessionDictionary = [announcementCopy remoteSessionDictionary];
    v14 = [v10 contextFromDictionary:remoteSessionDictionary];

    v15 = MEMORY[0x277CEAB68];
    homeName = [v14 homeName];
    zones = [v14 zones];
    allValues = [zones allValues];
    rooms = [v14 rooms];
    allValues2 = [rooms allValues];
    v21 = [v15 destinationWithHomeName:homeName zoneNames:allValues roomNames:allValues2];

    destination = [requestCopy destination];

    announcementIdentifier = [destination announcementIdentifier];
    [v21 setAnnouncementIdentifier:announcementIdentifier];

    v24 = MEMORY[0x277CEAB78];
    identifier = [announcementCopy identifier];

    v26 = [v24 resultWithAnnouncementID:identifier destination:v21];
  }

  else
  {
    v26 = 0;
  }

  handlerCopy[2](handlerCopy, v26, errorCopy);
}

- (void)send:(ANAnnouncementRequest *)send connection:(NSXPCConnection *)connection completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = send;
  v13[3] = connection;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23F5883B4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23F58E100;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23F58E108;
  v16[5] = v15;
  sendCopy = send;
  connectionCopy = connection;
  selfCopy = self;
  sub_23F57A118(0, 0, v11, &unk_23F58E110, v16);
}

- (void)sendReply:(ANAnnouncementRequest *)reply connection:(NSXPCConnection *)connection completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = reply;
  v13[3] = connection;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23F5883B4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23F58E0C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23F58D720;
  v16[5] = v15;
  replyCopy = reply;
  connectionCopy = connection;
  selfCopy = self;
  sub_23F57A118(0, 0, v11, &unk_23F58D728, v16);
}

@end