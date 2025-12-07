@interface MFDATransferActionReplayer
- (BOOL)deleteSourceMessagesFromTransferItems:(id)items;
- (BOOL)downloadFailed;
- (BOOL)isRecoverableError:(id)error;
- (id)appendItem:(id)item mailboxURL:(id)l;
- (id)copyItems:(id)items destinationMailboxURL:(id)l;
- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l;
- (id)moveItems:(id)items destinationMailboxURL:(id)l;
- (id)replayActionUsingStore:(id)store;
@end

@implementation MFDATransferActionReplayer

- (id)replayActionUsingStore:(id)store
{
  storeCopy = store;
  [(MFDATransferActionReplayer *)self setStore:storeCopy];
  replayAction = [(ECTransferActionReplayer *)self replayAction];

  return replayAction;
}

- (id)appendItem:(id)item mailboxURL:(id)l
{
  v48[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  store = [(MFDATransferActionReplayer *)self store];
  account = [store account];
  action = [(ECLocalActionReplayer *)self action];
  mailboxURL = [action mailboxURL];
  absoluteString = [mailboxURL absoluteString];
  v11 = [account mailboxUidForURL:absoluteString];

  if ([v11 type] == 3)
  {
    v12 = objc_alloc(MEMORY[0x1E699B360]);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke;
    v46[3] = &unk_1E7AA5490;
    v47 = itemCopy;
    v13 = [v12 initWithBuilder:v46];
    v14 = v47;
  }

  else if ([v11 type] == 5)
  {
    folderID = [v11 folderID];
    v16 = [account syncAnchorForFolderID:folderID mailbox:0];

    if (!v16)
    {
      [store fetchNumMessages:0 preservingUID:0 options:0];
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc(MEMORY[0x1E695DFA8]);
    v48[0] = itemCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    v35 = [v18 initWithArray:v19];

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    destinationMessage = [itemCopy destinationMessage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [MFDAMessageStoreSaveDraftRequest alloc];
      folderID2 = [v11 folderID];
      v23 = [(MFDAMessageStoreSaveDraftRequest *)v21 initWithMessage:destinationMessage mailbox:folderID2];

      v24 = objc_opt_new();
      [account addRequest:v23 consumer:v24 mailbox:v11];
      if ([v24 success])
      {
        [v17 addObject:itemCopy];
        [v35 removeObject:itemCopy];
        v25 = objc_alloc(MEMORY[0x1E699B320]);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_3;
        v41[3] = &unk_1E7AA54B8;
        v42 = destinationMessage;
        v43 = v24;
        v26 = [v25 initWithServerMessageBuilder:v41];
        [v34 addObject:v26];

        error = 0;
      }

      else
      {
        error = [v24 error];
      }
    }

    else
    {
      error = 0;
    }

    v29 = objc_alloc(MEMORY[0x1E699B360]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_4;
    v36[3] = &unk_1E7AA54E0;
    v14 = v17;
    v37 = v14;
    v30 = v35;
    v38 = v30;
    v31 = v34;
    v39 = v31;
    v40 = error;
    v32 = error;
    v13 = [v29 initWithBuilder:v36];
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x1E699B360]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_2;
    v44[3] = &unk_1E7AA5490;
    v45 = itemCopy;
    v13 = [v28 initWithBuilder:v44];
    v14 = v45;
  }

  return v13;
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v5[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 setCompletedItems:v4];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 setFailedItems:v4];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699B068] code:1 userInfo:0];
  [v3 setError:v5];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) persistentID];
  [v5 setMessagePersistentID:v3];

  v4 = [*(a1 + 40) serverId];
  [v5 setRemoteID:v4];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  [v4 setCompletedItems:*(a1 + 32)];
  v3 = [*(a1 + 40) allObjects];
  [v4 setFailedItems:v3];

  [v4 setCreatedServerMessages:*(a1 + 48)];
  [v4 setError:*(a1 + 56)];
}

- (BOOL)deleteSourceMessagesFromTransferItems:(id)items
{
  v27 = *MEMORY[0x1E69E9840];
  action = [(ECLocalActionReplayer *)self action];
  store = [(MFDATransferActionReplayer *)self store];
  v5 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_30];
  itemsToDelete = [action itemsToDelete];
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(itemsToDelete, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = itemsToDelete;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        sourceRemoteID = [v12 sourceRemoteID];
        if (sourceRemoteID || ([v12 sourceMessage], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "remoteID"), sourceRemoteID = objc_claimAutoreleasedReturnValue(), v14, sourceRemoteID))
        {
          [v7 addObject:sourceRemoteID];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = MFExchangeLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v7;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Deleting source messages from transfer: %{public}@", buf, 0xCu);
  }

  v19 = 0;
  v16 = [store replayFlagChange:v5 forRemoteIDs:v7 error:&v19 completed:0];

  return v16;
}

- (id)copyItems:(id)items destinationMailboxURL:(id)l
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MFDATransferActionReplayer.m" lineNumber:116 description:@"Copy is not supported for DA accounts"];

  return 0;
}

- (id)moveItems:(id)items destinationMailboxURL:(id)l
{
  v103 = *MEMORY[0x1E69E9840];
  v66 = [(MFDATransferActionReplayer *)self store:items];
  account = [v66 account];
  action = [(ECLocalActionReplayer *)self action];
  itemsToCopy = [action itemsToCopy];
  v5 = [itemsToCopy count];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
  v63 = v5;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v7 = itemsToCopy;
  v8 = [v7 countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v8)
  {
    v9 = *v92;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v92 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v91 + 1) + 8 * i);
        sourceRemoteID = [v11 sourceRemoteID];
        if (sourceRemoteID || ([v11 sourceMessage], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "remoteID"), sourceRemoteID = objc_claimAutoreleasedReturnValue(), v13, sourceRemoteID))
        {
          [v6 setObject:v11 forKeyedSubscript:sourceRemoteID];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v91 objects:v102 count:16];
    }

    while (v8);
  }

  sourceMailboxURL = [action sourceMailboxURL];
  absoluteString = [sourceMailboxURL absoluteString];
  v69 = [account mailboxUidForURL:absoluteString];

  folderID = [v69 folderID];
  destinationMailboxURL = [action destinationMailboxURL];
  absoluteString2 = [destinationMailboxURL absoluteString];
  v67 = [account mailboxUidForURL:absoluteString2];

  folderID2 = [v67 folderID];
  account2 = [v69 account];
  v21 = account2;
  if (account2 == account)
  {
    account3 = [v67 account];
    if (folderID)
    {
      v23 = folderID2 == 0;
    }

    else
    {
      v23 = 1;
    }

    v25 = !v23 && account3 == account;

    if (v25)
    {
      v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v63];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v26 = v6;
      v27 = [v26 countByEnumeratingWithState:&v87 objects:v101 count:16];
      if (v27)
      {
        v28 = *v88;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v88 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = [objc_alloc(MEMORY[0x1E6999850]) initMoveRequestWithMessage:*(*(&v87 + 1) + 8 * j) fromFolder:folderID toFolder:folderID2];
            if (v30)
            {
              [v71 addObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v87 objects:v101 count:16];
        }

        while (v27);
      }

      if ([v71 count])
      {
        v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v63];
        v32 = objc_alloc(MEMORY[0x1E695DFD8]);
        allKeys = [v26 allKeys];
        v64 = [v32 initWithArray:allKeys];

        v34 = [[MFDAMoveResponseConsumer alloc] initWithSourceRemoteIDs:v64 destinationRemoteIDsBySourceRemoteIDs:v31 failures:v60];
        accountConduit = [account accountConduit];
        [accountConduit performMoveRequests:v71 consumer:v34];

        [(MFDAMailAccountConsumer *)v34 waitUntilDone];
        v36 = +[MFActivityMonitor currentMonitor];
        error = [(MFDAMoveResponseConsumer *)v34 error];
        [v36 setError:error];

        statusCode = [(MFDAMoveResponseConsumer *)v34 statusCode];
        if ([(MFDAMailAccountConsumer *)v34 shouldRetryRequest])
        {
          v39 = 0;
        }

        else
        {
          v50 = objc_opt_new();
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke;
          v81[3] = &unk_1E7AA5528;
          v82 = v60;
          v59 = v61;
          v83 = v59;
          v84 = v31;
          v58 = v65;
          v85 = v58;
          v51 = v50;
          v86 = v51;
          [v26 enumerateKeysAndObjectsUsingBlock:v81];
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v96 = v58;
            v97 = 2112;
            v98 = v59;
            v99 = 2048;
            v100 = statusCode;
            _os_log_impl(&dword_1B0389000, v52, OS_LOG_TYPE_INFO, "Transfer action completed with successful items: %@. Failed items: %@. StatusCode: %lu", buf, 0x20u);
          }

          if ([v59 count] && statusCode == 15)
          {
            v53 = DALoggingwithCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_DEFAULT, "Transfer failed with Invalid Source Error. Moving the messages locally", buf, 2u);
            }

            [v58 addObjectsFromArray:v59];
            [v59 removeAllObjects];
            v54 = +[MFActivityMonitor currentMonitor];
            [v54 setError:0];
          }

          v55 = objc_alloc(MEMORY[0x1E699B360]);
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_23;
          v76[3] = &unk_1E7AA54E0;
          v77 = v58;
          v56 = v51;
          v78 = v56;
          v79 = v59;
          v80 = v34;
          v39 = [v55 initWithBuilder:v76];
        }

        v49 = v60;
      }

      else
      {
        v48 = objc_alloc(MEMORY[0x1E699B360]);
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2_24;
        v74[3] = &unk_1E7AA5490;
        v75 = v7;
        v39 = [v48 initWithBuilder:v74];
        v49 = v75;
      }

      v41 = v61;
      goto LABEL_53;
    }
  }

  else
  {
  }

  account4 = [v69 account];
  v41 = +[LocalAccount localAccount];
  if (account4 != v41)
  {
    v65 = account4;
LABEL_39:
    v39 = 0;
LABEL_53:

    goto LABEL_54;
  }

  account5 = [v67 account];
  v43 = account5;
  if (account5 != account)
  {
    v65 = account4;

    goto LABEL_39;
  }

  v44 = account4;
  v45 = [v67 type] == 3;

  if (v45)
  {
    v65 = [v7 ef_compactMap:&__block_literal_global_28];
    library = [account library];
    [library compactMessages:v65];

    v47 = objc_alloc(MEMORY[0x1E699B360]);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_4;
    v72[3] = &unk_1E7AA5490;
    v73 = v7;
    v39 = [v47 initWithBuilder:v72];
    v41 = v73;
    goto LABEL_53;
  }

  v39 = 0;
LABEL_54:

  return v39;
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] containsObject:v5])
  {
    [a1[5] addObject:v6];
  }

  else
  {
    v7 = [a1[6] objectForKeyedSubscript:v5];
    if (v7)
    {
      [a1[7] addObject:v6];
      v8 = objc_alloc(MEMORY[0x1E699B320]);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2;
      v15 = &unk_1E7AA54B8;
      v16 = v6;
      v17 = v7;
      v9 = [v8 initWithServerMessageBuilder:&v12];
      [a1[8] addObject:{v9, v12, v13, v14, v15}];

      v10 = v16;
    }

    else
    {
      v10 = DALoggingwithCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 destinationMessage];
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "message %@ was successfully transferred, but we don't have a new remote ID for it", buf, 0xCu);
      }
    }
  }
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) destinationMessage];
  v4 = [v3 persistentID];
  [v5 setMessagePersistentID:v4];

  [v5 setRemoteID:*(a1 + 40)];
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_23(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  [v4 setCompletedItems:*(a1 + 32)];
  [v4 setCreatedServerMessages:*(a1 + 40)];
  [v4 setFailedItems:*(a1 + 48)];
  v3 = [*(a1 + 56) error];
  [v4 setError:v3];
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setFailedItems:*(a1 + 32)];
}

id __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 sourceMessage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setCompletedItems:*(a1 + 32)];
}

- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l
{
  dCopy = d;
  store = [(MFDATransferActionReplayer *)self store];
  v7 = [store fetchBodyDataForRemoteID:dCopy];

  return v7;
}

- (BOOL)downloadFailed
{
  error = [(ECLocalActionReplayer *)self error];
  if (error)
  {
    v4 = ![(MFDATransferActionReplayer *)self isRecoverableError:error];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isRecoverableError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x1E6999880]];

  return v4 ^ 1;
}

@end