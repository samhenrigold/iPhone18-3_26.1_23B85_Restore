@interface NNMKResendScheduler
- (NNMKResendSchedulerDelegate)delegate;
- (id)deviceRegistry;
- (id)messageTypeForIDSIdentifier:(id)identifier;
- (id)objectIdsForPendingIDSIdentifier:(id)identifier;
- (void)_executePendingResendsAndContentRequests;
- (void)_failPendingComposedMessages;
- (void)_resendInitialSyncWithIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval mailboxIds:(id)ids;
- (void)_resendObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval idsIdentifier:(id)identifier;
- (void)_resendPendingAccountWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_resendPendingMessageContentWithId:(id)id sentBecauseUserRequested:(BOOL)requested idsIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_resendPendingMessagesWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_resendSendingProgressForComposedMessageWithId:(id)id forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval;
- (void)_scheduleIdsIdentifierForResend:(id)resend currentResendInterval:(unint64_t)interval newResendInterval:(unint64_t)resendInterval errorCode:(int64_t)code;
- (void)deletePendingIDSMessagesForMailboxId:(id)id;
- (void)forceRetryingAllPendingIDSMessages;
- (void)handleIDSMessageFailedWithId:(id)id errorCode:(int64_t)code;
- (void)handleIDSMessageSentSuccessfullyWithId:(id)id;
- (void)registerIDSIdentifier:(id)identifier objectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval;
- (void)resendObjectsForIDSIdentifier:(id)identifier;
@end

@implementation NNMKResendScheduler

- (void)registerIDSIdentifier:(id)identifier objectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval
{
  identifierCopy = identifier;
  idsCopy = ids;
  typeCopy = type;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKResendScheduler registerIDSIdentifier:identifierCopy objectIds:typeCopy type:v13 resendInterval:?];
  }

  if (![idsCopy count])
  {

    idsCopy = &unk_286C7BF40;
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry addObjectIds:idsCopy type:typeCopy resendInterval:interval forIDSIdentifierNotYetAckd:identifierCopy];
}

- (void)resendObjectsForIDSIdentifier:(id)identifier
{
  v9 = 0;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v8 = 0;
  v6 = [deviceRegistry objectIdsForIDSIdentifierNotYetAckd:identifierCopy type:&v8 resendInterval:&v9];
  v7 = v8;

  [(NNMKResendScheduler *)self _resendObjectIds:v6 type:v7 resendInterval:v9 idsIdentifier:identifierCopy];
}

- (void)handleIDSMessageFailedWithId:(id)id errorCode:(int64_t)code
{
  v26 = *MEMORY[0x277D85DE8];
  idCopy = id;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    v17 = 0;
    deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
    v16 = 0;
    v9 = [deviceRegistry2 objectIdsForIDSIdentifierNotYetAckd:idCopy type:&v16 resendInterval:&v17];
    v10 = v16;

    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v19 = idCopy;
      v20 = 2114;
      v21 = v10;
      v22 = 2048;
      v23 = v17;
      v24 = 2048;
      codeCopy = code;
      _os_log_error_impl(&dword_25B19F000, v11, OS_LOG_TYPE_ERROR, "Error sending IDS Messages (IDS Identifier: %{public}@ - Object Type: %{public}@ - Resend Interval: %lu - Error code: %li).", buf, 0x2Au);
    }

    delegate = [(NNMKResendScheduler *)self delegate];
    v13 = [delegate resendScheduler:self didRequestNewResendIntervalForPreviousResendInterval:v17 errorCode:code];

    if (code == 27)
    {
      v17 = v13;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (v17)
    {
      goto LABEL_10;
    }

    delegate2 = [(NNMKResendScheduler *)self delegate];
    v15 = [delegate2 resendSchedulerShouldSendRetries:self];

    if (v15)
    {
      [(NNMKResendScheduler *)self _resendObjectIds:v9 type:v10 resendInterval:v13 idsIdentifier:idCopy];
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    [NNMKResendScheduler _scheduleIdsIdentifierForResend:"_scheduleIdsIdentifierForResend:currentResendInterval:newResendInterval:errorCode:" currentResendInterval:idCopy newResendInterval:? errorCode:?];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handleIDSMessageSentSuccessfullyWithId:(id)id
{
  idCopy = id;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [(NNMKResendScheduler *)idCopy handleIDSMessageSentSuccessfullyWithId:v6];
    }

    deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
    [deviceRegistry2 markIDSIdentifierAsAckd:idCopy];

    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestDequeueIDSIdentifierForResend:idCopy];
  }
}

- (void)deletePendingIDSMessagesForMailboxId:(id)id
{
  v62 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = idCopy;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Deleting pending IDS messages for mailbox. (Id: %{public}@)", buf, 0xCu);
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  v7 = [deviceRegistry2 objectIdsForType:@"InitialSync"];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        if ([v13 isEqualToString:v13])
        {
          deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry3 deleteObjectId:v13 fromIDSIdentifiersNotYetAckdOfType:@"InitialSync"];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v10);
  }

  v43 = v8;

  deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
  v16 = [deviceRegistry4 objectIdsForType:@"Message"];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v49 + 1) + 8 * j);
        deviceRegistry5 = [(NNMKResendScheduler *)self deviceRegistry];
        v24 = [deviceRegistry5 syncedMessageForMessageWithId:v22];

        if (!v24 || ([v24 mailboxId], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", idCopy), v25, v26))
        {
          deviceRegistry6 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry6 deleteObjectId:v22 fromIDSIdentifiersNotYetAckdOfType:@"Message"];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v19);
  }

  v42 = v17;

  deviceRegistry7 = [(NNMKResendScheduler *)self deviceRegistry];
  v29 = [deviceRegistry7 objectIdsForType:@"MessageContent"];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v46;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v45 + 1) + 8 * k);
        deviceRegistry8 = [(NNMKResendScheduler *)self deviceRegistry];
        v37 = [deviceRegistry8 syncedMessageForMessageWithId:v35];

        if (!v37 || ([v37 mailboxId], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", idCopy), v38, v39))
        {
          deviceRegistry9 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry9 deleteObjectId:v35 fromIDSIdentifiersNotYetAckdOfType:@"MessageContent"];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v32);
  }

  deviceRegistry10 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry10 endUpdates];
}

- (void)forceRetryingAllPendingIDSMessages
{
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];

  if (deviceRegistry)
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    v5 = [delegate resendSchedulerShouldSendRetries:self];

    v6 = qword_28144D620;
    if (v5)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Forcing retrying all pending ids messages", v11, 2u);
      }

      deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
      [deviceRegistry2 prepareIDSIdentifiersForResendForErrorCode:27];

      delegate2 = [(NNMKResendScheduler *)self delegate];
      deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
      datesForIDSIdentifiersScheduledToBeResent = [deviceRegistry3 datesForIDSIdentifiersScheduledToBeResent];
      [delegate2 resendScheduler:self didRequestEnqueueIDSIdentifiersForResend:datesForIDSIdentifiersScheduledToBeResent];

      [(NNMKResendScheduler *)self _executePendingResendsAndContentRequests];
      [(NNMKResendScheduler *)self _failPendingComposedMessages];
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKResendScheduler *)v6 forceRetryingAllPendingIDSMessages];
    }
  }
}

- (id)messageTypeForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [deviceRegistry typeForIDSIdentifierNotYetAckd:identifierCopy];

  return v6;
}

- (id)objectIdsForPendingIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v6 = [deviceRegistry objectIdsForIDSIdentifierNotYetAckd:identifierCopy type:0 resendInterval:0];

  return v6;
}

- (id)deviceRegistry
{
  delegate = [(NNMKResendScheduler *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];

  return currentDeviceRegistry;
}

- (void)_executePendingResendsAndContentRequests
{
  v45 = *MEMORY[0x277D85DE8];
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  syncedMessageIdsResendRequested = [deviceRegistry syncedMessageIdsResendRequested];

  if ([syncedMessageIdsResendRequested count])
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetrySendingMessageWithIds:syncedMessageIdsResendRequested];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  syncedAccountIdsResendRequested = [deviceRegistry2 syncedAccountIdsResendRequested];

  v8 = [syncedAccountIdsResendRequested countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(syncedAccountIdsResendRequested);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        delegate2 = [(NNMKResendScheduler *)self delegate];
        [delegate2 resendScheduler:self didRequestRetrySendingAccountWithId:v12];
      }

      v9 = [syncedAccountIdsResendRequested countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }

  deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
  syncedMessageIdsContentRequestedByUser = [deviceRegistry3 syncedMessageIdsContentRequestedByUser];

  if ([syncedMessageIdsContentRequestedByUser count])
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v16 = syncedMessageIdsContentRequestedByUser;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * j);
          delegate3 = [(NNMKResendScheduler *)self delegate];
          [delegate3 resendScheduler:self didRequestRetrySendingContentForMessageId:v21 highPriority:1];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
    *(&v30 + 1) = 0;
    v31 = 0uLL;
    deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
    v16 = [deviceRegistry4 firstSyncedMessageIdsContentNotSyncedOrRequestedByUser:20];

    v24 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v16);
          }

          v28 = *(*(&v30 + 1) + 8 * k);
          delegate4 = [(NNMKResendScheduler *)self delegate];
          [delegate4 resendScheduler:self didRequestRetrySendingContentForMessageId:v28 highPriority:0];
        }

        v25 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v25);
    }
  }
}

- (void)_failPendingComposedMessages
{
  v18 = *MEMORY[0x277D85DE8];
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  pendingComposedMessageIds = [deviceRegistry pendingComposedMessageIds];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = pendingComposedMessageIds;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        delegate = [(NNMKResendScheduler *)self delegate];
        [delegate resendScheduler:self didRequestRetrySendingComposeMessageProgress:-1 messageId:v10 resendInterval:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry2 removePendingComposedMessages];
}

- (void)_scheduleIdsIdentifierForResend:(id)resend currentResendInterval:(unint64_t)interval newResendInterval:(unint64_t)resendInterval errorCode:(int64_t)code
{
  resendCopy = resend;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:interval];
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry rescheduleIDSIdentifier:resendCopy resendInterval:resendInterval withDateToResend:v10 errorCode:code];

  delegate = [(NNMKResendScheduler *)self delegate];
  LODWORD(resendInterval) = [delegate resendSchedulerShouldSendRetries:self];

  if (resendInterval)
  {
    delegate2 = [(NNMKResendScheduler *)self delegate];
    [delegate2 resendScheduler:self didRequestEnqueueIDSIdentifierForResend:resendCopy date:v10 silent:0];
  }
}

- (void)_resendObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval idsIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  typeCopy = type;
  identifierCopy = identifier;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138544130;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = typeCopy;
    v25 = 2114;
    v26 = idsCopy;
    v27 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Resending IDS messages. (IDS id: %{public}@, Type: %{public}@, objects: %{public}@, resend interval: %lu)", &v21, 0x2Au);
  }

  if ([typeCopy isEqualToString:@"InitialSync"])
  {
    [(NNMKResendScheduler *)self _resendInitialSyncWithIDSIdentifier:identifierCopy newResendInterval:interval mailboxIds:idsCopy];
    goto LABEL_23;
  }

  if ([typeCopy isEqualToString:@"Message"])
  {
    [(NNMKResendScheduler *)self _resendPendingMessagesWithIds:idsCopy forIDSIdentifier:identifierCopy newResendInterval:interval];
    goto LABEL_23;
  }

  if (![typeCopy isEqualToString:@"MessageContent"])
  {
    if ([typeCopy isEqualToString:@"Account"])
    {
      [(NNMKResendScheduler *)self _resendPendingAccountWithIds:idsCopy forIDSIdentifier:identifierCopy newResendInterval:interval];
      goto LABEL_23;
    }

    if ([typeCopy isEqualToString:@"SendingProgress"])
    {
      firstObject = [idsCopy firstObject];
      [(NNMKResendScheduler *)self _resendSendingProgressForComposedMessageWithId:firstObject forIDSIdentifier:identifierCopy newResendInterval:interval];
    }

    else if ([typeCopy isEqualToString:@"MailboxSelection"])
    {
      firstObject = [(NNMKResendScheduler *)self delegate];
      [firstObject resendScheduler:self didRequestRetrySendingMailboxSelectionWithResendInterval:interval];
    }

    else if ([typeCopy isEqualToString:@"AccountIdentity"])
    {
      firstObject = [idsCopy firstObject];
      delegate = [(NNMKResendScheduler *)self delegate];
      [delegate resendScheduler:self didRequestRetrySendingAccountIdentifier:firstObject resendInterval:interval];
    }

    else
    {
      if (![typeCopy isEqualToString:@"VIPList"])
      {
        goto LABEL_23;
      }

      firstObject = [(NNMKResendScheduler *)self delegate];
      [firstObject resendScheduler:self didRequestRetrySendingVIPListWithResendInterval:interval];
    }

LABEL_22:

    goto LABEL_23;
  }

  if ([idsCopy count] == 2)
  {
    firstObject = [idsCopy objectAtIndexedSubscript:0];
    v15 = [idsCopy objectAtIndexedSubscript:1];
    bOOLValue = [v15 BOOLValue];

    [(NNMKResendScheduler *)self _resendPendingMessageContentWithId:firstObject sentBecauseUserRequested:bOOLValue idsIdentifier:identifierCopy newResendInterval:interval];
    goto LABEL_22;
  }

  v17 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKResendScheduler _resendObjectIds:identifierCopy type:v17 resendInterval:? idsIdentifier:?];
  }

LABEL_23:
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry markIDSIdentifierAsAckd:identifierCopy];

  delegate2 = [(NNMKResendScheduler *)self delegate];
  [delegate2 resendScheduler:self didRequestDequeueIDSIdentifierForResend:identifierCopy];
}

- (void)_resendInitialSyncWithIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval mailboxIds:(id)ids
{
  v23 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = idsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [deviceRegistry mailboxWithId:v14];

        if (v16)
        {
          [v8 addObject:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetryFullSyncForMailboxes:v8];

    self->_initialSyncResendInterval = interval;
  }
}

- (void)_resendPendingMessagesWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v59 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  array = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = idsCopy;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v49;
    *&v10 = 138543362;
    v41 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
        v16 = [deviceRegistry2 syncedMessageForMessageWithId:v14];

        if (v16)
        {
          resendRequested = [v16 resendRequested];
          v18 = qword_28144D620;
          v19 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
          if (resendRequested)
          {
            if (v19)
            {
              *buf = 138543874;
              v53 = v14;
              v54 = 2114;
              v55 = identifierCopy;
              v56 = 2048;
              intervalCopy3 = interval;
              _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Requested to resend message but a resend has already been requested. Ignoring. (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }
          }

          else
          {
            if (v19)
            {
              *buf = 138543874;
              v53 = v14;
              v54 = 2114;
              v55 = identifierCopy;
              v56 = 2048;
              intervalCopy3 = interval;
              _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Resending Message (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }

            if ([v16 usedNotificationPriorityForMessageSync])
            {
              dateReceived = [v16 dateReceived];
              [dateReceived timeIntervalSinceNow];
              v31 = -v30;
              v32 = *&kIntervalBeforeDowngradingMessagesToDefaultPriority;

              if (v32 < v31)
              {
                v33 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v53 = kIntervalBeforeDowngradingMessagesToDefaultPriority;
                  v54 = 2114;
                  v55 = v14;
                  _os_log_impl(&dword_25B19F000, v33, OS_LOG_TYPE_DEFAULT, "Message is older than %.0f seconds. Downgrading to Default Priority (Id: %{public}@).", buf, 0x16u);
                }

                [v16 setUsedNotificationPriorityForMessageSync:0];
              }
            }

            [v16 setResendRequested:1];
            [v16 setResendInterval:interval];
            deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
            [deviceRegistry3 addOrUpdateSyncedMessage:v16];

            deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
            [deviceRegistry4 deleteObjectId:v14 fromIDSIdentifiersNotYetAckdOfType:@"Message"];

            [v42 addObject:v14];
          }
        }

        else
        {
          v20 = objc_alloc_init(NNMKProtoMessageDeletion);
          syncController = [(NNMKResendScheduler *)self syncController];
          v22 = [syncController watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v20 setMessageId:v22];

          deviceRegistry5 = [(NNMKResendScheduler *)self deviceRegistry];
          v24 = [deviceRegistry5 mailboxIdForDeletedMessageId:v14];

          if (v24 || (-[NNMKResendScheduler deviceRegistry](self, "deviceRegistry"), v25 = objc_claimAutoreleasedReturnValue(), [v25 mailboxWithId:@"-1"], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "mailboxId"), v24 = objc_claimAutoreleasedReturnValue(), v26, v25, v24))
          {
            v27 = [v44 objectForKeyedSubscript:v24];
            if (!v27)
            {
              v27 = objc_alloc_init(NNMKProtoMessageDeletions);
              [v44 setObject:v27 forKeyedSubscript:v24];
            }

            [(NNMKProtoMessageDeletions *)v27 addMessageDeletion:v20];
            [array addObject:v14];
            v28 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v53 = v14;
              v54 = 2114;
              v55 = identifierCopy;
              v56 = 2048;
              intervalCopy3 = interval;
              _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Resending Message Deletion (Id: %{public}@ - Last IDS Identifier: %{public}@ - New Resend Interval: %lu)...", buf, 0x20u);
            }
          }

          else
          {
            v36 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
            {
              *buf = v41;
              v53 = v14;
              _os_log_error_impl(&dword_25B19F000, v36, OS_LOG_TYPE_ERROR, "Could not find mailbox for deleted message with id %{public}@", buf, 0xCu);
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v37 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      v11 = v37;
    }

    while (v37);
  }

  if ([v42 count])
  {
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetrySendingMessageWithIds:v42];
  }

  if ([array count])
  {
    delegate2 = [(NNMKResendScheduler *)self delegate];
    [delegate2 resendScheduler:self didRequestRetrySendingMessageDeletions:v44 deletionsMessageIds:array resendInterval:interval];
  }

  deviceRegistry6 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry6 endUpdates];
}

- (void)_resendPendingMessageContentWithId:(id)id sentBecauseUserRequested:(BOOL)requested idsIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  requestedCopy = requested;
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
  v14 = [deviceRegistry2 syncedMessageForMessageWithId:idCopy];

  if (v14)
  {
    if ([v14 usedNotificationPriorityForMessageSync])
    {
      dateReceived = [v14 dateReceived];
      [dateReceived timeIntervalSinceNow];
      v17 = -v16;
      v18 = *&kIntervalBeforeDowngradingMessagesToDefaultPriority;

      if (v18 < v17)
      {
        v19 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 134218242;
          *&v28[4] = kIntervalBeforeDowngradingMessagesToDefaultPriority;
          *&v28[12] = 2114;
          *&v28[14] = idCopy;
          _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "Message is older than %.0f seconds. Downgrading to Default Priority (Id: %{public}@).", v28, 0x16u);
        }

        [v14 setUsedNotificationPriorityForMessageSync:0];
      }
    }

    if (requestedCopy)
    {
      [v14 setContentRequestedByUser:1];
      [v14 setContentSyncedUsingNotificationPriority:0];
      [v14 setContentSyncedBecauseUserRequested:0];
      [v14 setContentSynced:0];
    }

    else
    {
      [v14 setContentSyncedUsingNotificationPriority:0];
      [v14 setContentSyncedBecauseUserRequested:0];
      [v14 setContentSynced:0];
      if (![v14 usedNotificationPriorityForMessageSync])
      {
        [v14 setContentResendInterval:0];
        v25 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 138543618;
          *&v28[4] = idCopy;
          *&v28[12] = 2114;
          *&v28[14] = identifierCopy;
          v22 = "Not resending content for message, as it's not for a notification and the user didn't request it (Id: %{public}@ - IDS Identifier: %{public}@).";
          v23 = v25;
          v24 = 22;
          goto LABEL_14;
        }

LABEL_15:
        v26 = [(NNMKResendScheduler *)self deviceRegistry:*v28];
        [v26 addOrUpdateSyncedMessage:v14];

        goto LABEL_16;
      }
    }

    [v14 setContentResendInterval:interval];
    delegate = [(NNMKResendScheduler *)self delegate];
    [delegate resendScheduler:self didRequestRetrySendingContentForMessageId:idCopy highPriority:requestedCopy];

    v21 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543874;
      *&v28[4] = idCopy;
      *&v28[12] = 2114;
      *&v28[14] = identifierCopy;
      *&v28[22] = 1024;
      LODWORD(v29) = requestedCopy;
      v22 = "Resending content for message (Id: %{public}@ - IDS Identifier: %{public}@ - User Requested: %d)...";
      v23 = v21;
      v24 = 28;
LABEL_14:
      _os_log_impl(&dword_25B19F000, v23, OS_LOG_TYPE_DEFAULT, v22, v28, v24);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_16:
  deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry3 endUpdates];
}

- (void)_resendPendingAccountWithIds:(id)ids forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v34 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  identifierCopy = identifier;
  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry beginUpdates];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = idsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v26;
    *&v12 = 138543618;
    v23 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v30 = v16;
          v31 = 2114;
          v32 = identifierCopy;
          _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Resending account (Id: %{public}@ - IDS Identifier: %{public}@)...", buf, 0x16u);
        }

        deviceRegistry2 = [(NNMKResendScheduler *)self deviceRegistry];
        v19 = [deviceRegistry2 syncedAccountForAccountWithId:v16];

        if (v19)
        {
          [v19 setResendRequested:1];
          [v19 setResendInterval:interval];
          deviceRegistry3 = [(NNMKResendScheduler *)self deviceRegistry];
          [deviceRegistry3 addOrUpdateSyncedAccount:v19];

          delegate = [(NNMKResendScheduler *)self delegate];
          [delegate resendScheduler:self didRequestRetrySendingAccountWithId:v16];
        }

        else
        {
          delegate = [(NNMKResendScheduler *)self delegate];
          [delegate resendScheduler:self didRequestRetrySendingDeletionForAccountWithId:v16 resendInterval:interval];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  deviceRegistry4 = [(NNMKResendScheduler *)self deviceRegistry];
  [deviceRegistry4 endUpdates];
}

- (void)_resendSendingProgressForComposedMessageWithId:(id)id forIDSIdentifier:(id)identifier newResendInterval:(unint64_t)interval
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = idCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Resending progress for composed message (Id: %{public}@ - IDS Identifier: %{public}@)...", &v15, 0x16u);
  }

  deviceRegistry = [(NNMKResendScheduler *)self deviceRegistry];
  v12 = [deviceRegistry progressForComposedMessageWithId:idCopy];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFFLL;
  }

  delegate = [(NNMKResendScheduler *)self delegate];
  [delegate resendScheduler:self didRequestRetrySendingComposeMessageProgress:v13 messageId:idCopy resendInterval:interval];
}

- (NNMKResendSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)registerIDSIdentifier:(os_log_t)log objectIds:type:resendInterval:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEBUG, "IDS message sent. (IDS Identifier: %{public}@, Type:%{public}@)", &v3, 0x16u);
}

- (void)handleIDSMessageSentSuccessfullyWithId:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25B19F000, a2, OS_LOG_TYPE_DEBUG, "IDS Message Sent Successfully (IDS Identifier: %{public}@).", &v2, 0xCu);
}

- (void)_resendObjectIds:(uint64_t)a1 type:(NSObject *)a2 resendInterval:idsIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Error re-sending content, as object IDs were corrupt (IDS Identifier: %{public}@).", &v2, 0xCu);
}

@end