@interface MobileCalDAVSharingResponse
+ (id)responseWithCalendarID:(id)d consumer:(id)consumer account:(id)account;
- (DAEventsCalendarSharingResponseConsumer)consumer;
- (MobileCalDAVSharingResponse)initWithCalendarID:(id)d consumer:(id)consumer account:(id)account;
- (id)_createReplyGroupForShareInviteResponse:(int64_t)response toCalendar:(id)calendar;
- (id)_remAccount;
- (void)_deleteSharingInvitationWithUID:(id)d;
- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)block;
- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)respondToSharingRequestWithResponse:(int64_t)response;
@end

@implementation MobileCalDAVSharingResponse

+ (id)responseWithCalendarID:(id)d consumer:(id)consumer account:(id)account
{
  accountCopy = account;
  consumerCopy = consumer;
  dCopy = d;
  v10 = [[MobileCalDAVSharingResponse alloc] initWithCalendarID:dCopy consumer:consumerCopy account:accountCopy];

  return v10;
}

- (MobileCalDAVSharingResponse)initWithCalendarID:(id)d consumer:(id)consumer account:(id)account
{
  dCopy = d;
  consumerCopy = consumer;
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = MobileCalDAVSharingResponse;
  v12 = [(MobileCalDAVSharingResponse *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendarID, d);
    objc_storeWeak(&v13->_consumer, consumerCopy);
    objc_storeStrong(&v13->_account, account);
    v14 = +[NSString da_newGUID];
    responseID = v13->_responseID;
    v13->_responseID = v14;

    v16 = [[DACoreDAVTaskManager alloc] initWithAccount:v13->_account];
    taskManager = v13->_taskManager;
    v13->_taskManager = v16;
  }

  return v13;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_1035C();
  }

  [(CoreDAVTaskGroup *)self->_currentOperation cancelTaskGroup];
  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVSharingResponse;
  [(MobileCalDAVSharingResponse *)&v3 dealloc];
}

- (void)_deleteSharingInvitationWithUID:(id)d
{
  dCopy = d;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_7FBC;
  v89 = sub_7FCC;
  v90 = 0;
  _remAccount = [(MobileCalDAVSharingResponse *)self _remAccount];
  v84 = 0;
  v7 = [_remAccount fetchListsIncludingSpecialContainersWithError:&v84];
  v8 = v84;
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_7FD4;
  v83[3] = &unk_206D0;
  v83[4] = &v85;
  [v7 enumerateObjectsUsingBlock:v83];

  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      accountID = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      responseID = self->_responseID;
      localizedDescription = [v8 localizedDescription];
      *buf = 138413058;
      v92 = accountID;
      v93 = 2112;
      v94 = dCopy;
      v95 = 2112;
      v96 = responseID;
      v97 = 2112;
      v98 = localizedDescription;
      _os_log_impl(&dword_0, v9, v10, "MobileCalDAVSharingResponse: ERROR: Failed to fetch lists in account for _deleteSharingInvitationWithUID {accountID: %@, uid: %@, responseID: %@, error: %@}", buf, 0x2Au);
    }

LABEL_4:

    _Block_object_dispose(&v85, 8);
LABEL_5:
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v14, v15))
    {
      accountID2 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      calendarID = self->_calendarID;
      v18 = self->_responseID;
      *buf = 138413058;
      v92 = dCopy;
      v93 = 2112;
      v94 = accountID2;
      v95 = 2112;
      v96 = calendarID;
      v97 = 2112;
      v98 = v18;
      _os_log_impl(&dword_0, v14, v15, "MobileCalDAVSharingResponse: Didn't send a delete for the sharing invitation for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
    }

    [(MobileCalDAVSharingResponse *)self finishWithError:0];
    goto LABEL_8;
  }

  if (!v86[5])
  {
    v9 = DALoggingwithCategory();
    v43 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v9, v43))
    {
      accountID3 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v45 = self->_responseID;
      *buf = 138412802;
      v92 = accountID3;
      v93 = 2112;
      v94 = dCopy;
      v95 = 2112;
      v96 = v45;
      _os_log_impl(&dword_0, v9, v43, "MobileCalDAVSharingResponse: LOOKATME: Failed to fetch the notification calendar for _deleteSharingInvitationWithUID {accountID: %@, uid: %@, responseID: %@}", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_7FBC;
  v81 = sub_7FCC;
  v82 = 0;
  calDAVNotificationContext = [v86[5] calDAVNotificationContext];
  calDAVNotifications = [calDAVNotificationContext calDAVNotifications];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_804C;
  v74[3] = &unk_206F8;
  v65 = dCopy;
  v75 = v65;
  v76 = &v77;
  [calDAVNotifications enumerateObjectsUsingBlock:v74];

  if (v78[5])
  {
    v21 = DALoggingwithCategory();
    v22 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v21, v22))
    {
      objectID = [v78[5] objectID];
      accountID4 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v25 = self->_calendarID;
      v26 = self->_responseID;
      *buf = 138413314;
      v92 = v65;
      v93 = 2112;
      v94 = objectID;
      v95 = 2112;
      v96 = accountID4;
      v97 = 2112;
      v98 = v25;
      v99 = 2112;
      v100 = v26;
      _os_log_impl(&dword_0, v21, v22, "MobileCalDAVSharingResponse: Matched invitation notification for _deleteSharingInvitationWithUID with {uid: %@, objectID: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x34u);
    }

    externalIdentifier = [v78[5] externalIdentifier];
    v67 = externalIdentifier != 0;
    if (externalIdentifier)
    {
      mainPrincipal = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
      notificationCollectionURL = [mainPrincipal notificationCollectionURL];
      v30 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:notificationCollectionURL];

      v66 = [[CoreDAVDeleteTask alloc] initWithURL:v30];
      objc_initWeak(&location, v66);
      mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
      [v66 setAccountInfoProvider:mainPrincipal2];

      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_80E4;
      v69[3] = &unk_20720;
      v32 = v30;
      v70 = v32;
      objc_copyWeak(&v72, &location);
      selfCopy = self;
      [v66 setCompletionBlock:v69];
      taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
      [taskManager submitQueuedCoreDAVTask:v66];

      rem_saveRequest = [(MobileCalDAVDaemonAccount *)self->_account rem_saveRequest];
      v63 = [rem_saveRequest updateList:v86[5]];
      calDAVNotificationContext2 = [v63 calDAVNotificationContext];
      if (!calDAVNotificationContext2)
      {
        v56 = +[NSAssertionHandler currentHandler];
        [v56 handleFailureInMethod:a2 object:self file:@"MobileCalDAVSharingSupport.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"notificationContext"}];
      }

      [calDAVNotificationContext2 removeCalDAVNotication:v78[5]];
      v68 = 0;
      v35 = [rem_saveRequest saveSynchronouslyWithError:&v68];
      v36 = v68;
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        v38 = DALoggingwithCategory();
        if (os_log_type_enabled(v38, v22))
        {
          v61 = v32;
          objectID2 = [v78[5] objectID];
          accountID5 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
          v41 = self->_calendarID;
          v42 = self->_responseID;
          *buf = 138413314;
          v92 = objectID2;
          v93 = 2112;
          v94 = v65;
          v95 = 2112;
          v96 = accountID5;
          v97 = 2112;
          v98 = v41;
          v99 = 2112;
          v100 = v42;
          _os_log_impl(&dword_0, v38, v22, "MobileCalDAVSharingResponse: Successfully removed invite notification at _deleteSharingInvitationWithUID: {objectID: %@, uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x34u);

          v32 = v61;
        }
      }

      else
      {
        v38 = DALoggingwithCategory();
        v54 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v38, v54))
        {
          v62 = v32;
          objectID3 = [v78[5] objectID];
          accountID6 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
          v57 = self->_calendarID;
          v58 = self->_responseID;
          localizedDescription2 = [v36 localizedDescription];
          *buf = 138413570;
          v92 = objectID3;
          v93 = 2112;
          v94 = v65;
          v95 = 2112;
          v96 = accountID6;
          v97 = 2112;
          v98 = v57;
          v99 = 2112;
          v100 = v58;
          v101 = 2112;
          v102 = localizedDescription2;
          _os_log_impl(&dword_0, v38, v54, "MobileCalDAVSharingResponse: ERROR: Remove invite notification failed when trying to _deleteSharingInvitationWithUID: {objectID: %@, uid: %@, accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x3Eu);

          v32 = v62;
        }
      }

      objc_destroyWeak(&v72);
      objc_destroyWeak(&location);
    }

    else
    {
      v32 = DALoggingwithCategory();
      v50 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v32, v50))
      {
        accountID7 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
        v52 = self->_calendarID;
        v53 = self->_responseID;
        *buf = 138413058;
        v92 = v65;
        v93 = 2112;
        v94 = accountID7;
        v95 = 2112;
        v96 = v52;
        v97 = 2112;
        v98 = v53;
        _os_log_impl(&dword_0, v32, v50, "MobileCalDAVSharingResponse: LOOKATME: Couldn't get an external ID from the invite notification for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
      }
    }
  }

  else
  {
    externalIdentifier = DALoggingwithCategory();
    v46 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(externalIdentifier, v46))
    {
      accountID8 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v48 = self->_calendarID;
      v49 = self->_responseID;
      *buf = 138413058;
      v92 = v65;
      v93 = 2112;
      v94 = accountID8;
      v95 = 2112;
      v96 = v48;
      v97 = 2112;
      v98 = v49;
      _os_log_impl(&dword_0, externalIdentifier, v46, "MobileCalDAVSharingResponse: LOOKATME: Couldn't find a sharing invite notification for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
    }

    v67 = 0;
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v85, 8);

  if (!v67)
  {
    goto LABEL_5;
  }

LABEL_8:
}

- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)block
{
  blockCopy = block;
  _remAccount = [(MobileCalDAVSharingResponse *)self _remAccount];
  calendarID = self->_calendarID;
  v35 = 0;
  v6 = [_remAccount fetchListIncludingSpecialContainerWithExternalIdentifier:calendarID error:&v35];
  v30 = v35;

  if (v30)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v7, v8))
    {
      accountID = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v10 = self->_calendarID;
      responseID = self->_responseID;
      localizedDescription = [v30 localizedDescription];
      *buf = 138413058;
      v37 = accountID;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = responseID;
      v42 = 2112;
      v43 = localizedDescription;
      _os_log_impl(&dword_0, v7, v8, "MobileCalDAVSharingResponse: ERROR: Failed to fetch an REMList to _reallyRespondToSharingRequestWithCreateReplyGroupBlock {accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x2Au);
    }
  }

  if (!v6)
  {
    daExternalIdentificationTag = 0;
LABEL_19:
    v14 = [NSError errorWithDomain:DAErrorDomain code:12 userInfo:0];
    [(MobileCalDAVSharingResponse *)self finishWithError:v14];
    goto LABEL_20;
  }

  daExternalIdentificationTag = [v6 daExternalIdentificationTag];
  if (daExternalIdentificationTag)
  {
    v14 = blockCopy[2](blockCopy, v6);
  }

  else
  {
    v14 = 0;
  }

  rem_saveRequest = [(MobileCalDAVDaemonAccount *)self->_account rem_saveRequest];
  v16 = [rem_saveRequest updateList:v6];
  [v16 removeFromParent];
  v34 = 0;
  v17 = [rem_saveRequest saveSynchronouslyWithError:&v34];
  v18 = v34;
  if (v18)
  {
    v17 = 0;
  }

  v19 = DALoggingwithCategory();
  v20 = v19;
  if (v17)
  {
    v21 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v19, v21))
    {
      objectID = [v6 objectID];
      accountID2 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      localizedDescription2 = [v30 localizedDescription];
      *buf = 138413058;
      v37 = objectID;
      v38 = 2112;
      v39 = daExternalIdentificationTag;
      v40 = 2112;
      v41 = accountID2;
      v42 = 2112;
      v43 = localizedDescription2;
      _os_log_impl(&dword_0, v20, v21, "MobileCalDAVSharingResponse: SUCCESS: _reallyRespondToSharingRequestWithCreateReplyGroupBlock: Deleted shared invite-pending calendar {objectID: %@, listGUID: %@, account: %@, error: %@}", buf, 0x2Au);
    }
  }

  else
  {
    v23 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v19, v23))
    {
      objectID2 = [v6 objectID];
      accountID3 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      localizedDescription3 = [v30 localizedDescription];
      *buf = 138413058;
      v37 = objectID2;
      v38 = 2112;
      v39 = daExternalIdentificationTag;
      v40 = 2112;
      v41 = accountID3;
      v42 = 2112;
      v43 = localizedDescription3;
      _os_log_impl(&dword_0, v20, v23, "MobileCalDAVSharingResponse: ERROR: Failed to save delete of the shared invite-pending calendar when _reallyRespondToSharingRequestWithCreateReplyGroupBlock {objectID: %@, listGUID: %@, account: %@, error: %@}", buf, 0x2Au);
    }
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  objc_initWeak(buf, v14);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_8724;
  v31[3] = &unk_20748;
  objc_copyWeak(&v33, buf);
  v31[4] = self;
  daExternalIdentificationTag = daExternalIdentificationTag;
  v32 = daExternalIdentificationTag;
  [v14 setCompletionBlock:v31];
  [(MobileCalDAVSharingResponse *)self setCurrentOperation:v14];
  [v14 startTaskGroup];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
LABEL_20:
}

- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v19 = transactionId;
    _os_log_impl(&dword_0, v6, v7, "MobileCalDAVSharingResponse: DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    *buf = 138412290;
    v19 = WeakRetained;
    _os_log_impl(&dword_0, v9, v10, "MobileCalDAVSharingResponse: Waiting on the gatekeeper before responding to a calendar share request {consumer: %@}", buf, 0xCu);
  }

  self->_waitingForGatekeeper = 1;
  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_8A88;
  v15[3] = &unk_20770;
  v16 = v5;
  v17 = blockCopy;
  v15[4] = self;
  v13 = v5;
  v14 = blockCopy;
  [v12 registerWaiter:self forDataclassLocks:4 completionHandler:v15];
}

- (void)respondToSharingRequestWithResponse:(int64_t)response
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8BCC;
  v3[3] = &unk_20798;
  v3[4] = self;
  v3[5] = response;
  [(MobileCalDAVSharingResponse *)self _doSharingRequestResponseWithCreateReplyGroupBlock:v3];
}

- (id)_createReplyGroupForShareInviteResponse:(int64_t)response toCalendar:(id)calendar
{
  calendarCopy = calendar;
  externalIdentifier = [calendarCopy externalIdentifier];
  if (externalIdentifier)
  {
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    calendarHomeURL = [mainPrincipal calendarHomeURL];
    v10 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

    relativePath = [v10 relativePath];
    v12 = [NSURL URLWithString:relativePath];
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  daExternalIdentificationTag = [calendarCopy daExternalIdentificationTag];
  name = [calendarCopy name];

  v15 = 0;
  if (daExternalIdentificationTag && v12 && name)
  {
    v31 = externalIdentifier;
    responseCopy = response;
    v16 = [CalDAVCalendarServerInviteNotificationItem alloc];
    mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    calendarUserAddresses = [mainPrincipal2 calendarUserAddresses];
    anyObject = [calendarUserAddresses anyObject];
    v30 = [v16 initForReplyWithUID:daExternalIdentificationTag href:anyObject hostURL:v12 summary:name];

    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v20, v21))
    {
      v22 = @"decline";
      *buf = 138413058;
      if (responseCopy == 1)
      {
        v22 = @"accept";
      }

      v34 = v22;
      v35 = 2112;
      v36 = name;
      v37 = 2112;
      v38 = daExternalIdentificationTag;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_0, v20, v21, "MobileCalDAVSharingResponse: Sending shared calendar invite %@ for invite to %@ of with uid %@ at URL %@", buf, 0x2Au);
    }

    v23 = [CalDAVReplyToSharedCalendarInvitationTaskGroup alloc];
    mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    calendarHomeURL2 = [mainPrincipal3 calendarHomeURL];
    [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    v27 = v26 = v10;
    taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
    v15 = [v23 initWithInvitation:v30 acceptInvitation:responseCopy == 1 atCalendarHomeURL:calendarHomeURL2 accountInfoProvider:v27 taskManager:taskManager];

    v10 = v26;
    externalIdentifier = v31;
  }

  return v15;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (self->_holdingGatekeeperLock)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVSharingResponse: Releasing gatekeeper lock", &v12, 2u);
    }

    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];

    self->_holdingGatekeeperLock = 0;
  }

  if (!self->_finished)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v8, v9))
    {
      WeakRetained = objc_loadWeakRetained(&self->_consumer);
      v12 = 134218498;
      selfCopy = self;
      v14 = 2112;
      v15 = errorCopy;
      v16 = 2112;
      v17 = WeakRetained;
      _os_log_impl(&dword_0, v8, v9, "MobileCalDAVSharingResponse finished with {%p, error: %@, consumer: %@}", &v12, 0x20u);
    }

    self->_finished = 1;
    v11 = objc_loadWeakRetained(&self->_consumer);
    [v11 shareResponseFinishedWithError:errorCopy];

    [(MobileCalDAVDaemonAccount *)self->_account shareResponseIsGoingAway:self];
  }
}

- (void)cancel
{
  currentOperation = [(MobileCalDAVSharingResponse *)self currentOperation];
  [currentOperation cancelTaskGroup];

  taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
  [taskManager cancelAllTasks];

  v5 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVSharingResponse *)self finishWithError:v5];
}

- (id)_remAccount
{
  v3 = self->_remAccountCache;
  if (!v3)
  {
    rem_store = [(MobileCalDAVDaemonAccount *)self->_account rem_store];
    accountID = [(MobileCalDAVDaemonAccount *)self->_account accountID];
    v14 = 0;
    v3 = [rem_store fetchAccountWithExternalIdentifier:accountID error:&v14];
    v6 = v14;

    if (v6)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v7, v8))
      {
        accountID2 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
        calendarID = self->_calendarID;
        responseID = self->_responseID;
        localizedDescription = [v6 localizedDescription];
        *buf = 138413058;
        v16 = accountID2;
        v17 = 2112;
        v18 = calendarID;
        v19 = 2112;
        v20 = responseID;
        v21 = 2112;
        v22 = localizedDescription;
        _os_log_impl(&dword_0, v7, v8, "MobileCalDAVSharingResponse: ERROR: Failed to fetch an REMAccount for MobileCalDAVSharingResponse {accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x2Au);
      }
    }
  }

  return v3;
}

- (DAEventsCalendarSharingResponseConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end