@interface MFDAMessageStore
- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)canFetchSearchResults;
- (BOOL)messageCanBeTriaged:(id)triaged;
- (BOOL)replayFlagChange:(id)change forRemoteIDs:(id)ds error:(id *)error completed:(BOOL *)completed;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (MFDAMessageStore)initWithMailbox:(id)mailbox readOnly:(BOOL)only;
- (id)_downloadHeadersForMessages:(id)messages;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)_fetchBodyDataForNormalMessage:(id)message format:(int)format part:(id)part streamConsumer:(id)consumer;
- (id)_fetchBodyDataForSearchResult:(id)result folderID:(id)d format:(int)format streamConsumer:(id)consumer;
- (id)bestAlternativeForPart:(id)part;
- (id)defaultAlternativeForPart:(id)part;
- (id)fetchBodyDataForRemoteID:(id)d;
- (id)folderIDForFetching;
- (id)loadMeetingDataForMessage:(id)message;
- (id)loadMeetingExternalIDForMessage:(id)message;
- (id)loadMeetingMetadataForMessage:(id)message;
- (id)messageForRemoteID:(id)d;
- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox;
- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete;
- (id)storeSearchResultMatchingQuery:(id)query criterion:(id)criterion limit:(unsigned int)limit offset:(id)offset useLocalIndex:(BOOL)index;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (void)_remoteIDsMatchingSearchText:(id)text predicate:(id)predicate limit:(unsigned int)limit offset:(id)offset filterByDate:(BOOL)date handler:(id)handler;
- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact;
@end

@implementation MFDAMessageStore

- (MFDAMessageStore)initWithMailbox:(id)mailbox readOnly:(BOOL)only
{
  onlyCopy = only;
  mailboxCopy = mailbox;
  v11.receiver = self;
  v11.super_class = MFDAMessageStore;
  v7 = [(MFLibraryStore *)&v11 initWithMailbox:mailboxCopy readOnly:onlyCopy];
  if (v7)
  {
    folderID = [mailboxCopy folderID];
    v9 = [folderID isEqualToString:@"kDAMailAccountAllMailboxesFolderID"];

    v7->_backedByVirtualAllSearchMailbox = v9;
  }

  return v7;
}

- (id)folderIDForFetching
{
  v3 = +[MFActivityMonitor currentMonitor];
  mailbox = [(MFLibraryStore *)self mailbox];
  [v3 setMailbox:mailbox];

  mailbox2 = [(MFLibraryStore *)self mailbox];
  folderID = [mailbox2 folderID];
  if (!folderID)
  {
    account = [(MFLibraryStore *)self account];
    [account fetchMailboxListImplicit];

    folderID = [mailbox2 folderID];
  }

  return folderID;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  optionsCopy = options;
  dCopy = d;
  [(MFLibraryStore *)self willFetchMessages];
  folderIDForFetching = [(MFDAMessageStore *)self folderIDForFetching];
  if (!folderIDForFetching)
  {
    account = [(MFLibraryStore *)self account];
    finishedInitialMailboxListLoad = [account finishedInitialMailboxListLoad];

    numNewMessages_low = finishedInitialMailboxListLoad << 63 >> 63;
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  v11 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v11->super.store, self);
  objc_storeStrong(&v11->super.mailbox, mailbox);
  v12 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v11 setMonitor:v12];

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore fetchNumMessages:preservingUID:options:]", "MFDAMessageStore.m", 257, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  library2 = [(MFLibraryStore *)self library];
  library = v11->super.library;
  v11->super.library = library2;

  v16 = [[_MFDAMessageStoreGetUpdatesRequest alloc] initRequestForBodyFormat:0 withBodySizeLimit:500 isUserRequested:optionsCopy & 1];
  account2 = [(MFLibraryStore *)self account];
  [account2 addRequest:v16 consumer:v11 mailbox:mailbox];

  if (![(MFBufferedQueue *)v11 isEmpty])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:264 description:@"update consumer queue should be empty at this point."];
  }

  error = [(_MFDAMSBasicConsumer *)v11 error];

  if (error)
  {
    v19 = +[MFActivityMonitor currentMonitor];
    error2 = [(_MFDAMSBasicConsumer *)v11 error];
    [v19 setError:error2];

    numNewMessages_low = -1;
  }

  else
  {
    numNewMessages_low = SLODWORD(v11->super.numNewMessages);
  }

  if ((optionsCopy & 2) != 0)
  {
LABEL_11:
    serverSearchResults = [(MFLibraryStore *)self serverSearchResults];
    [(MFLibraryStore *)self compactMessages:serverSearchResults];
  }

LABEL_12:
  v25 = +[MFActivityMonitor currentMonitor];
  [v25 reset];

  return numNewMessages_low;
}

- (void)_remoteIDsMatchingSearchText:(id)text predicate:(id)predicate limit:(unsigned int)limit offset:(id)offset filterByDate:(BOOL)date handler:(id)handler
{
  dateCopy = date;
  v73 = *MEMORY[0x1E69E9840];
  textCopy = text;
  predicateCopy = predicate;
  offsetCopy = offset;
  handlerCopy = handler;
  folderIDForFetching = [(MFDAMessageStore *)self folderIDForFetching];
  v14 = MFLogGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v68 = textCopy;
    v69 = 2112;
    v70 = predicateCopy;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "About to process remote ids matching searchtext:%@ predicate: %@", buf, 0x16u);
  }

  if (folderIDForFetching)
  {
    mailbox = [(MFLibraryStore *)self mailbox];
    v15 = objc_alloc_init(_MFDAMSSearchResponseConsumer);
    objc_storeStrong(&v15->super.store, self);
    objc_storeStrong(&v15->super.mailbox, mailbox);
    v16 = +[MFActivityMonitor currentMonitor];
    [(_MFDAMSBasicConsumer *)v15 setMonitor:v16];

    library = [(MFLibraryStore *)self library];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MFDAMessageStore _remoteIDsMatchingSearchText:predicate:limit:offset:filterByDate:handler:]", "MFDAMessageStore.m", 313, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
    }

    library2 = [(MFLibraryStore *)self library];
    library = v15->super.library;
    v15->super.library = library2;

    v15->totalCount = 0;
    if (offsetCopy)
    {
      v20 = offsetCopy;
      goto LABEL_15;
    }

    if (dateCopy)
    {
      dateOfOldestNonIndexedNonSearchResultMessage = [(MFLibraryStore *)self dateOfOldestNonIndexedNonSearchResultMessage];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v27 = [dateOfOldestNonIndexedNonSearchResultMessage isEqualToDate:distantFuture];

      if (!v27)
      {
        v20 = dateOfOldestNonIndexedNonSearchResultMessage;
LABEL_15:
        [(_MFDAMSSearchResponseConsumer *)v15 setLatestDateToAdd:v20];
        v28 = MFUserAgent();
        [v28 networkActivityStarted:self];

        if ([(MFDAMessageStore *)self backedByVirtualAllSearchMailbox])
        {

          folderIDForFetching = 0;
        }

        v63 = v20;
        if (v15->super.numNewMessages >= limit)
        {
          v41 = 100;
        }

        else
        {
          v29 = 0;
          limitCopy = limit;
          do
          {
            error = [(_MFDAMSBasicConsumer *)v15 error];
            v32 = error == 0;

            if (!v32)
            {
              break;
            }

            v33 = [MEMORY[0x1E69998B8] mailboxSearchQueryWithSearchString:textCopy predicate:predicateCopy consumer:v15];
            [v33 setBodyType:1];
            [v33 setCollectionID:folderIDForFetching];
            [v33 setMIMESupport:0];
            [v33 setRange:{v29, 100}];
            [v33 setTruncationSize:500];
            [v33 setPriorToDate:v20];
            [v33 setDeepTraversal:1];
            account = [(MFLibraryStore *)self account];
            accountConduit = [account accountConduit];

            [accountConduit performSearchQuery:v33];
            v36 = +[MFActivityMonitor currentMonitor];
            while (1)
            {
              v37 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:1.0];
              if ([(_MFDAMSSearchResponseConsumer *)v15 waitUntilDoneBeforeDate:v37])
              {
                break;
              }

              if ([v36 shouldCancel])
              {
                [accountConduit cancelSearchQuery:v33];
                [(_MFDAMSSearchResponseConsumer *)v15 waitUntilDone];
                v39 = 0;
                goto LABEL_27;
              }
            }

            error2 = [(_MFDAMSBasicConsumer *)v15 error];
            v20 = v63;
            if (error2)
            {

              v39 = 1;
              goto LABEL_28;
            }

            if (v29 + 100 >= v15->totalCount)
            {
              v39 = 1;
            }

            else
            {
              [(_MFDAMSSearchResponseConsumer *)v15 resetDoneCondition];
              v39 = 0;
              v29 += 100;
            }

LABEL_27:
            v20 = v63;
LABEL_28:

            v40 = v15->super.numNewMessages >= limitCopy ? 1 : v39;
          }

          while ((v40 & 1) == 0);
          v41 = v29 + 100;
        }

        v42 = MFUserAgent();
        [v42 networkActivityEnded:self];

        if (![(MFBufferedQueue *)v15 isEmpty])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:377 description:@"update consumer queue should be empty at this point."];
        }

        error3 = [(_MFDAMSBasicConsumer *)v15 error];

        if (!error3)
        {
          goto LABEL_60;
        }

        error4 = [(_MFDAMSBasicConsumer *)v15 error];
        domain = [error4 domain];
        v46 = [domain isEqualToString:*MEMORY[0x1E6999880]];

        error5 = [(_MFDAMSBasicConsumer *)v15 error];
        code = [error5 code];

        v49 = code == 78 ? v46 : 0;
        if (v49)
        {
          goto LABEL_60;
        }

        if (code == 29)
        {
          v50 = v46;
        }

        else
        {
          v50 = 0;
        }

        if (v50 == 1)
        {
          v51 = MFLogGeneral();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [MFDAMessageStore _remoteIDsMatchingSearchText:predicateCopy predicate:v51 limit:? offset:? filterByDate:? handler:?];
          }
        }

        else
        {
          if (code == 30)
          {
            v52 = v46;
          }

          else
          {
            v52 = 0;
          }

          if (v52 != 1)
          {
LABEL_58:
            error6 = [(_MFDAMSBasicConsumer *)v15 error];
            if (error6)
            {
              v54 = +[MFActivityMonitor currentMonitor];
              error7 = [(_MFDAMSBasicConsumer *)v15 error];
              [v54 setError:error7];

              searchResult = 0;
              numNewMessages = -1;
LABEL_64:

              goto LABEL_65;
            }

LABEL_60:
            searchResult = [(_MFDAMSSearchResponseConsumer *)v15 searchResult];
            numNewMessages = v15->super.numNewMessages;
            if (numNewMessages < v41)
            {
              v56 = MFLogGeneral();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v57 = objc_opt_class();
                *buf = 138412802;
                v68 = v57;
                v69 = 2048;
                v70 = numNewMessages;
                v71 = 2048;
                v72 = v41;
                _os_log_impl(&dword_1B0389000, v56, OS_LOG_TYPE_INFO, "%@ Seems like the server exhausted the search results (%ld of %lu), un-setting a continue offset", buf, 0x20u);
              }

              [(MFRemoteSearchResults *)searchResult setContinueOffset:0];
            }

            goto LABEL_64;
          }

          v51 = MFLogGeneral();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [MFDAMessageStore _remoteIDsMatchingSearchText:v51 predicate:? limit:? offset:? filterByDate:? handler:?];
          }
        }

        goto LABEL_58;
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  account2 = [(MFLibraryStore *)self account];
  finishedInitialMailboxListLoad = [account2 finishedInitialMailboxListLoad];

  if (finishedInitialMailboxListLoad)
  {
    searchResult = 0;
    folderIDForFetching = 0;
    numNewMessages = -1;
  }

  else
  {
    numNewMessages = 0;
    folderIDForFetching = 0;
    searchResult = objc_alloc_init(MFRemoteSearchResults);
  }

LABEL_65:
  handlerCopy[2](handlerCopy, numNewMessages, searchResult);
}

- (id)storeSearchResultMatchingQuery:(id)query criterion:(id)criterion limit:(unsigned int)limit offset:(id)offset useLocalIndex:(BOOL)index
{
  v9 = *&limit;
  v26 = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  offsetCopy = offset;
  if (index)
  {
    v13 = 0;
  }

  else
  {
    v14 = DALoggingwithCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = criterionCopy;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "Searching for criterion: %@", &buf, 0xCu);
    }

    daSearchPredicate = [criterionCopy daSearchPredicate];
    if (daSearchPredicate)
    {
      daBasicSearchString = [criterionCopy daBasicSearchString];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__11;
      v24 = __Block_byref_object_dispose__11;
      v25 = 0;
      if ([daBasicSearchString length])
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __88__MFDAMessageStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke;
        v20[3] = &unk_1E7AA53D0;
        v20[4] = &buf;
        [(MFDAMessageStore *)self _remoteIDsMatchingSearchText:daBasicSearchString predicate:daSearchPredicate limit:v9 offset:offsetCopy filterByDate:1 handler:v20];
      }

      else
      {
        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Attempted to fetch messages from DA without searchText", v19, 2u);
        }
      }

      if (*(*(&buf + 1) + 40))
      {
        v13 = [MEMORY[0x1E699B7C8] futureWithResult:?];
      }

      else
      {
        v13 = 0;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      daBasicSearchString = DALoggingwithCategory();
      if (os_log_type_enabled(daBasicSearchString, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B0389000, daBasicSearchString, OS_LOG_TYPE_INFO, "Predicate is not supported, bailing.", &buf, 2u);
      }

      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)replayFlagChange:(id)change forRemoteIDs:(id)ds error:(id *)error completed:(BOOL *)completed
{
  v75 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  dsCopy = ds;
  v8 = DALoggingwithCategory();
  completedCopy = completed;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = changeCopy;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Replaying flag change %@ for remote ids: %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v74 = 1;
  v50 = mailbox;
  folderID = [mailbox folderID];

  if (!folderID)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    ef_publicDescription = [v50 ef_publicDescription];
    *v70 = 138412290;
    v71 = ef_publicDescription;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No folder ID for mailbox: %@", v70, 0xCu);

LABEL_52:
    p_super = v20;
    goto LABEL_53;
  }

  account = [(MFLibraryStore *)self account];
  supportsMessageFlagging = [account supportsMessageFlagging];

  readChanged = [changeCopy readChanged];
  if (readChanged)
  {
    read = [changeCopy read];
    v15 = read ^ 1;
    v16 = read;
    if (!supportsMessageFlagging)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (!supportsMessageFlagging)
    {
      goto LABEL_17;
    }
  }

  if ([changeCopy flaggedChanged])
  {
    if ([changeCopy flagged])
    {
      v16 |= 2uLL;
    }

    else
    {
      v15 |= 2uLL;
    }

    readChanged = 1;
  }

LABEL_17:
  deleted = [changeCopy deleted];
  if (((readChanged | deleted) & 1) == 0)
  {
    p_super = DALoggingwithCategory();
    v18 = 1;
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_53;
    }

    ef_publicDescription2 = [changeCopy ef_publicDescription];
    *v70 = 138412290;
    v71 = ef_publicDescription2;
    v20 = p_super;
    _os_log_impl(&dword_1B0389000, p_super, OS_LOG_TYPE_INFO, "No request needed for flag change: %@", v70, 0xCu);

    goto LABEL_52;
  }

  v54 = objc_alloc_init(_MFDAMSUpdateConsumer);
  objc_storeStrong(&v54->super.store, self);
  objc_storeStrong(&v54->super.mailbox, v50);
  v21 = +[MFActivityMonitor currentMonitor];
  [(_MFDAMSBasicConsumer *)v54 setMonitor:v21];

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore replayFlagChange:forRemoteIDs:error:completed:]", "MFDAMessageStore.m", 502, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  library2 = [(MFLibraryStore *)self library];
  library = v54->super.library;
  v54->super.library = library2;

  if (readChanged)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v53 = dsCopy;
    v26 = [v53 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v26)
    {
      v27 = *v66;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(v53);
          }

          v29 = [(DAMailboxSetFlagsRequest *)[_MFDAMessageStoreSetFlagsRequest alloc] initRequestWithSetFlags:v16 unsetFlags:v15 message:*(*(&v65 + 1) + 8 * i)];
          v30 = [MEMORY[0x1E699B848] pairWithFirst:v29 second:v54];
          [v25 addObject:v30];
        }

        v26 = [v53 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v26);
    }

    if ([v25 count])
    {
      v31 = DALoggingwithCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v70 = 138412290;
        v71 = v25;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "Adding flag change requests: %@", v70, 0xCu);
      }

      *(*&buf[8] + 24) = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke;
      v62[3] = &unk_1E7AA53F8;
      v64 = buf;
      v62[4] = self;
      v63 = v50;
      [v25 ef_enumerateObjectsInBatchesOfSize:100 block:v62];
    }
  }

  if (deleted)
  {
    v32 = v54;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v34 = dsCopy;
    v35 = [v34 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v35)
    {
      v36 = *v59;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v59 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = [(DAMailboxDeleteMessageRequest *)[_MFDAMessageStoreDeleteRequest alloc] initRequestWithMessageID:*(*(&v58 + 1) + 8 * j)];
          v39 = [MEMORY[0x1E699B848] pairWithFirst:v38 second:v32];
          [v33 addObject:v39];

          v32 = v54;
        }

        v35 = [v34 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v35);
    }

    if ([v33 count])
    {
      v40 = DALoggingwithCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v70 = 138412290;
        v71 = v33;
        _os_log_impl(&dword_1B0389000, v40, OS_LOG_TYPE_INFO, "Adding delete requests: %@", v70, 0xCu);
      }

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke_39;
      v55[3] = &unk_1E7AA53F8;
      v57 = buf;
      v55[4] = self;
      v56 = v50;
      [v33 ef_enumerateObjectsInBatchesOfSize:100 block:v55];
    }
  }

  if (![(MFBufferedQueue *)v54 isEmpty])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:541 description:@"update consumer queue should be empty at this point."];
  }

  p_super = &v54->super.super.super;
  error = v54->super.error;
  v18 = error == 0;
  if (error && error)
  {
    v18 = 0;
    *error = error;
    p_super = &v54->super.super.super;
  }

LABEL_53:

  if (completedCopy)
  {
    *completedCopy = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);

  return v18;
}

void __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) account];
  *(*(*(a1 + 48) + 8) + 24) = [v5 addRequests:v6 mailbox:*(a1 + 40) combine:1];

  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

void __66__MFDAMessageStore_replayFlagChange_forRemoteIDs_error_completed___block_invoke_39(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) account];
  *(*(*(a1 + 48) + 8) + 24) = [v5 addRequests:v6 mailbox:*(a1 + 40) combine:1];

  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  mailbox = [(MFLibraryStore *)self mailbox];
  v6 = [(MFDAMessageStore *)self messageForRemoteID:dCopy inMailbox:mailbox];

  return v6;
}

- (id)messageForRemoteID:(id)d inMailbox:(id)mailbox
{
  dCopy = d;
  mailboxCopy = mailbox;
  library = [(MFLibraryStore *)self library];
  uRLString = [mailboxCopy URLString];
  v10 = [library messageWithRemoteID:dCopy inRemoteMailbox:uRLString];

  [v10 setMessageStore:self];

  return v10;
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact
{
  compactCopy = compact;
  v5 = *&days;
  v14[1] = *MEMORY[0x1E69E9840];
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];

  v9 = [(MFMailMessageLibrary *)self->super._library messagesForMailbox:uRLString olderThanNumberOfDays:v5];
  v13 = @"MessageIsDeleted";
  v14[0] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [(MFLibraryStore *)self setFlagsFromDictionary:v10 forMessages:v9];

  v12.receiver = self;
  v12.super_class = MFDAMessageStore;
  [(MFLibraryStore *)&v12 deleteMessagesOlderThanNumberOfDays:v5 compact:compactCopy];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy messageFlags] & 0x80) != 0)
  {
    isMessageContentsLocallyAvailable = 1;
  }

  else
  {
    isMessageContentsLocallyAvailable = [messageCopy isMessageContentsLocallyAvailable];
  }

  return isMessageContentsLocallyAvailable ^ 1;
}

- (id)loadMeetingExternalIDForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:596 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingExternalIDForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingExternalIDForMessage:messageCopy];

  return v6;
}

- (id)loadMeetingDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:601 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingDataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingDataForMessage:messageCopy];

  return v6;
}

- (id)loadMeetingMetadataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:606 description:{@"should only have LibraryMessages in %s", "-[MFDAMessageStore loadMeetingMetadataForMessage:]"}];
  }

  v6 = [(MFMailMessageLibrary *)self->super._library loadMeetingMetadataForMessage:messageCopy];

  return v6;
}

- (id)fetchBodyDataForRemoteID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "Fetching body data for remote id: %@", &v14, 0xCu);
  }

  v6 = objc_alloc_init(MFDAMessageContentConsumer);
  [(MFDAMessageContentConsumer *)v6 setRequestedFormat:1];
  v7 = objc_alloc_init(_MFDAMessageBodyFetchConsumer);
  [(_MFDAMessageBodyFetchConsumer *)v7 setStreamConsumer:v6];
  v8 = [(DAMailboxFetchMessageRequest *)[_MFDAMessageStoreFetchUsingRemoteIDRequest alloc] initRequestForBodyFormat:1 withMessageID:dCopy withBodySizeLimit:0xFFFFFFFFLL];
  account = [(MFLibraryStore *)self account];
  mailbox = [(MFLibraryStore *)self mailbox];
  [account addRequest:v8 consumer:v7 mailbox:mailbox];

  if ([(_MFDAMessageBodyFetchConsumer *)v7 succeeded])
  {
    data = [(_MFDAMessageBodyFetchConsumer *)v7 data];
  }

  else
  {
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_ERROR, "failed to download body for message %@", &v14, 0xCu);
    }

    data = 0;
  }

  return data;
}

- (id)_fetchBodyDataForSearchResult:(id)result folderID:(id)d format:(int)format streamConsumer:(id)consumer
{
  v7 = *&format;
  v41 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dCopy = d;
  consumerCopy = consumer;
  v12 = DALoggingwithCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    ef_publicDescription = [resultCopy ef_publicDescription];
    *buf = 138412546;
    v38 = ef_publicDescription;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Fetching body data for search result %@ in folder %@", buf, 0x16u);
  }

  remoteID = [resultCopy remoteID];
  if ([resultCopy isSearchResultWithBogusRemoteId])
  {
    v15 = objc_alloc(MEMORY[0x1E6999840]);
    v16 = 0;
    v17 = 0;
    v18 = remoteID;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E6999840]);
    v18 = 0;
    v16 = dCopy;
    v17 = remoteID;
  }

  v19 = [v15 initRequestForBodyFormat:v7 withFolderID:v16 withServerID:v17 withLongID:v18 withBodySizeLimit:0xFFFFFFFFLL];
  v20 = objc_alloc_init(_MFDAMessageStoreSearchResultBodyConsumer);
  [(_MFDAMessageStoreSearchResultBodyConsumer *)v20 setStreamConsumer:consumerCopy];
  account = [(MFLibraryStore *)self account];
  accountConduit = [account accountConduit];

  v36 = v19;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v24 = [accountConduit performFetchMessageSearchResultRequests:v23 consumer:v20];

  Current = CFAbsoluteTimeGetCurrent();
  v26 = +[MFActivityMonitor currentMonitor];
  v27 = Current + 60.0;
  while (1)
  {
    v28 = CFAbsoluteTimeGetCurrent();
    if (v28 >= v27)
    {
      break;
    }

    v29 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:1.0];
    if ([(_MFDAMessageStoreSearchResultBodyConsumer *)v20 waitUntilDoneBeforeDate:v29])
    {

      v31 = +[MFNetworkController sharedInstance];
      [v26 recordTransportType:{-[NSObject transportType](v31, "transportType")}];
      goto LABEL_19;
    }

    if ([v26 shouldCancel])
    {
      [accountConduit cancelTaskWithID:v24];
      [(_MFDAMessageStoreSearchResultBodyConsumer *)v20 waitUntilDone];

      break;
    }

    if ([consumerCopy didBeginStreaming])
    {
      [consumerCopy timeOfLastActivity];
      v27 = v30 + 60.0;
    }
  }

  v31 = DALoggingwithCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = "timed out";
    if (v28 < v27)
    {
      v32 = "was cancelled";
    }

    *buf = 138412546;
    v38 = remoteID;
    v39 = 2080;
    v40 = v32;
    _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "Search result body fetch for message %@ %s", buf, 0x16u);
  }

LABEL_19:

  data = [consumerCopy data];

  return data;
}

- (id)_fetchBodyDataForNormalMessage:(id)message format:(int)format part:(id)part streamConsumer:(id)consumer
{
  v8 = *&format;
  v36 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  partCopy = part;
  consumerCopy = consumer;
  v14 = [_MFDAMessageStoreFetchRequest alloc];
  remoteID = [messageCopy remoteID];
  v16 = [(DAMailboxFetchMessageRequest *)v14 initRequestForBodyFormat:v8 withMessageID:remoteID withBodySizeLimit:0xFFFFFFFFLL];

  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    ef_publicDescription = [messageCopy ef_publicDescription];
    v32 = 138412546;
    v33 = ef_publicDescription;
    v34 = 1024;
    v35 = v8;
    _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "Fetching body data for message %@. format: %d", &v32, 0x12u);
  }

  objc_storeStrong(v16 + 5, self);
  objc_storeStrong(v16 + 6, message);
  objc_storeStrong(v16 + 7, part);
  v19 = objc_alloc_init(_MFDAMessageBodyFetchConsumer);
  [(_MFDAMessageBodyFetchConsumer *)v19 setStreamConsumer:consumerCopy];
  objc_storeStrong(v16 + 4, v19);
  account = [(MFLibraryStore *)self account];
  mailbox = [(MFLibraryStore *)self mailbox];
  [account addRequest:v16 consumer:v19 mailbox:mailbox];

  if ([(_MFDAMessageBodyFetchConsumer *)v19 succeeded])
  {
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      ef_publicDescription2 = [messageCopy ef_publicDescription];
      v32 = 138412546;
      v33 = ef_publicDescription2;
      v34 = 1024;
      v35 = v8;
      _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_INFO, "Successfully downloaded body for message: %@. format: %d", &v32, 0x12u);
    }

    data = [(_MFDAMessageBodyFetchConsumer *)v19 data];
  }

  else
  {
    v25 = DALoggingwithCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      remoteID2 = [messageCopy remoteID];
      v32 = 138412290;
      v33 = remoteID2;
      _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_ERROR, "Failed to download body for message %@", &v32, 0xCu);
    }

    data = 0;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[_MFDAMessageBodyFetchConsumer hasLocalCopyOfData](v19, "hasLocalCopyOfData")}];
  v28 = +[MFActivityMonitor currentMonitor];
  v29 = +[MFNetworkController sharedInstance];
  [v28 recordTransportType:{objc_msgSend(v29, "transportType")}];

  v30 = [MEMORY[0x1E699B848] pairWithFirst:data second:v27];

  return v30;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  necessaryCopy = necessary;
  v57 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 recordTransportType:1];

  v50.receiver = self;
  v50.super_class = MFDAMessageStore;
  v12 = [(MFLibraryStore *)&v50 _fetchBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:available downloadIfNecessary:necessaryCopy partial:partial];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = !necessaryCopy;
  }

  if (!v13)
  {
    mailbox = [(MFLibraryStore *)self mailbox];
    folderID = [mailbox folderID];
    if (!folderID)
    {
      v12 = 0;
LABEL_40:

      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = messageCopy;
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = messageCopy;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "#Warning DAMessageStore: this is not a MFLibraryMessage: %@", buf, 0xCu);
      }

      v45 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = messageCopy;
    }

    else
    {
      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = messageCopy;
        _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "#Warning DAMessageStore: this is not a MFMailMessage: %@", buf, 0xCu);
      }

      v47 = 0;
    }

    library = [(MFLibraryStore *)self library];
    v44 = [library dataConsumerForMessage:v45 isPartial:0];

    v17 = objc_alloc_init(MFDAMessageContentConsumer);
    [(MFDAMessageContentConsumer *)v17 setRequestedFormat:1];
    [(MFDAMessageContentConsumer *)v17 setDataConsumer:v44];
    v49 = objc_alloc_init(_MFDALibraryConsumerFactory);
    library2 = [(MFLibraryStore *)self library];
    [(_MFDALibraryConsumerFactory *)v49 setLibrary:library2];

    [(_MFDALibraryConsumerFactory *)v49 setMessage:messageCopy];
    [(MFDAMessageContentConsumer *)v17 setConsumerFactory:v49];
    if (([v47 messageFlags] & 0x80) != 0)
    {
      v23 = 1;
      first = [(MFDAMessageStore *)self _fetchBodyDataForSearchResult:v47 folderID:folderID format:1 streamConsumer:v17];
    }

    else
    {
      v19 = [(MFDAMessageStore *)self _fetchBodyDataForNormalMessage:messageCopy format:1 part:0 streamConsumer:v17];
      first = [v19 first];
      second = [v19 second];
      bOOLValue = [second BOOLValue];

      v23 = bOOLValue ^ 1;
    }

    v24 = +[MFActivityMonitor currentMonitor];
    v25 = +[MFNetworkController sharedInstance];
    [v24 recordTransportType:{objc_msgSend(v25, "transportType")}];

    message = [(MFDAMessageContentConsumer *)v17 message];
    v43 = MFCreateExternalConversationID(message);

    if (v43)
    {
      v27 = MFStringHashForMessageID();
      if (first)
      {
LABEL_22:
        if (v23)
        {
          mf_rangeOfRFC822HeaderData = [first mf_rangeOfRFC822HeaderData];
          v30 = v29;
          v31 = mf_rangeOfRFC822HeaderData + v29;
          if (mf_rangeOfRFC822HeaderData + v29 <= [first length])
          {
            v32 = [first mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v30}];
            v33 = v32;
            if (available)
            {
              v34 = v32;
              *available = v33;
              v35 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v33 encoding:134217984];
              [(MFMailMessageLibrary *)self->super._library updateThreadingInfoForMessage:v45 fromHeaders:v35];
              if ([mailbox mailboxType] == 4 && v27)
              {
                [(MFMailMessageLibrary *)self->super._library updateAdditionalThreadingInfoForSentMessageWithHeaders:v35 externalConversationID:v27];
              }
            }

            v12 = [first mf_subdataWithRange:{v31, objc_msgSend(first, "length") - v31}];
            [(MFMailMessageLibrary *)self->super._library processRemoteContentFromHeaderData:v33 bodyData:v12 forMessage:v45];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = first;
        }

        v36 = MFPersistenceLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v12 length];
          v38 = [first length];
          ef_publicDescription = [messageCopy ef_publicDescription];
          *buf = 134218498;
          v52 = v37;
          v53 = 2048;
          v54 = v38;
          v55 = 2114;
          v56 = ef_publicDescription;
          _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu from total data of length %lu for message %{public}@", buf, 0x20u);
        }

        v40 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v12 partial:0 incomplete:0];
        v41 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v40];
        if (partial)
        {
          *partial = 0;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v27 = 0;
      if (first)
      {
        goto LABEL_22;
      }
    }

    v12 = 0;
LABEL_39:

    goto LABEL_40;
  }

LABEL_41:

  return v12;
}

- (id)_downloadHeadersForMessages:(id)messages
{
  v41 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Downloading headers for messages", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mailbox = [(MFLibraryStore *)self mailbox];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = messagesCopy;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [_MFDAMessageStoreFetchHeadersRequest alloc];
        remoteID = [v8 remoteID];
        v11 = [(DAMailboxFetchMessageRequest *)v9 initRequestForBodyFormat:0xFFFFFFFFLL withMessageID:remoteID withBodySizeLimit:0xFFFFFFFFLL];

        objc_storeStrong(v11 + 5, self);
        objc_storeStrong(v11 + 6, v8);
        v12 = objc_alloc_init(_MFDAMessageHeaderFetchConsumer);
        [(_MFDAMessageHeaderFetchConsumer *)v12 setStore:self];
        v13 = [MEMORY[0x1E699B848] pairWithFirst:v11 second:v12];
        [v29 addObject:v13];
        [v31 addObject:v11];
        [v30 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v5);
  }

  account = [(MFLibraryStore *)self account];
  [account addRequests:v29 mailbox:mailbox];

  for (j = 0; [v31 count] > j; ++j)
  {
    v16 = [v31 objectAtIndexedSubscript:j];
    v17 = [v30 objectAtIndexedSubscript:j];
    v18 = v16[6];
    error = [v17 error];

    if (error)
    {
      data = MFLogGeneral();
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        remoteID2 = [v18 remoteID];
        error2 = [v17 error];
        *buf = 138412546;
        v37 = remoteID2;
        v38 = 2112;
        v39 = error2;
        _os_log_impl(&dword_1B0389000, data, OS_LOG_TYPE_DEFAULT, "#Warning Error while fetching headers for message %@: %@", buf, 0x16u);
      }
    }

    else
    {
      data = [v17 data];
      if (data)
      {
        v23 = -[MFMessageHeaders initWithHeaderData:encoding:]([MFLocalizedMessageHeaders alloc], "initWithHeaderData:encoding:", data, [v18 preferredEncoding]);
        [dictionary setObject:v23 forKeyedSubscript:v18];
      }
    }
  }

  return dictionary;
}

- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  v67 = *MEMORY[0x1E69E9840];
  partCopy = part;
  consumerCopy = consumer;
  v10 = +[MFActivityMonitor currentMonitor];
  partNumber = [partCopy partNumber];
  v12 = [partNumber isEqual:@"2"];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    partNumber2 = [partCopy partNumber];
    v13 = [partNumber2 isEqual:@"1.1"];
  }

  mailbox = [(MFLibraryStore *)self mailbox];
  folderID = [mailbox folderID];
  if (!folderID)
  {
    fetchSucceeded = 1;
    goto LABEL_34;
  }

  library = [(MFLibraryStore *)self library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFDAMessageStore _fetchDataForMimePart:range:isComplete:consumer:]", "MFDAMessageStore.m", 972, "[[self library] isKindOfClass:[MFMailMessageLibrary class]]");
  }

  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v60 = v10;
  if (v13)
  {
    v17 = objc_alloc_init(MFDAMessageContentConsumer);
    [(MFDAMessageContentConsumer *)v17 setRequestedFormat:v12];
    if (([message messageFlags] & 0x80) != 0)
    {
      [(MFDAMessageStore *)self _fetchBodyDataForSearchResult:message folderID:folderID format:v12 streamConsumer:v17];
      first = bOOLValue = 0;
    }

    else
    {
      v18 = [(MFDAMessageStore *)self _fetchBodyDataForNormalMessage:message format:v12 part:partCopy streamConsumer:v17];
      first = [v18 first];
      second = [v18 second];
      bOOLValue = [second BOOLValue];
    }

    [consumerCopy appendData:first];
    if (!(bOOLValue & 1 | ((v12 & 1) == 0)))
    {
      mf_rangeOfRFC822HeaderData = [first mf_rangeOfRFC822HeaderData];
      v33 = v32;
      v34 = mf_rangeOfRFC822HeaderData + v32;
      if (mf_rangeOfRFC822HeaderData + v32 <= [first length])
      {
        v35 = [first mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v33}];
        v36 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v35 encoding:134217984];
        [(MFMailMessageLibrary *)self->super._library updateThreadingInfoForMessage:message fromHeaders:v36];
        v37 = [first mf_subdataWithRange:{v34, objc_msgSend(first, "length") - v34}];
        library2 = [(MFLibraryStore *)self library];
        [library2 processRemoteContentFromHeaderData:v35 bodyData:v37 forMessage:message];
      }
    }

    fetchSucceeded = 1;
  }

  else
  {
    contentID = [partCopy contentID];

    if (!contentID)
    {
      v39 = MFLogGeneral();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = partCopy;
        _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "#Warning don't know how to fetch data for mime part %@", buf, 0xCu);
      }

      fetchSucceeded = 1;
      goto LABEL_33;
    }

    v24 = [[_MFDAMessageFetchAttachmentConsumer alloc] initWithActivityMonitor:v10];
    [partCopy range];
    [(_MFDAMessageFetchAttachmentConsumer *)v24 setExpectedLength:v25];
    v26 = objc_alloc(MEMORY[0x1E6999848]);
    contentID2 = [partCopy contentID];
    messageID = [message messageID];
    v55 = [v26 initWithAttachmentName:contentID2 andMessageServerID:messageID];

    contentTransferEncoding = [partCopy contentTransferEncoding];

    if (contentTransferEncoding)
    {
      v30 = consumerCopy;
      v59 = 0;
    }

    else
    {
      v59 = objc_alloc_init(MEMORY[0x1E69AD698]);
      expectedLength = [(_MFDAMessageFetchAttachmentConsumer *)v24 expectedLength];
      v57 = [objc_alloc(MEMORY[0x1E69AD750]) initWithConsumer:v59 expectedSize:expectedLength];
      progressBlock = [consumerCopy progressBlock];
      [v57 setProgressBlock:progressBlock];

      [consumerCopy setProgressBlock:0];
      v30 = v57;
    }

    [(_MFDAMessageFetchAttachmentConsumer *)v24 setProgressFilter:v30, v55];
    v58 = v30;
    account = [(MFLibraryStore *)self account];
    accountConduit = [account accountConduit];
    v44 = [accountConduit performFetchAttachmentRequest:v56 consumer:v24];

    while (1)
    {
      v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      v46 = [(MFDAMailAccountConsumer *)v24 waitUntilDoneBeforeDate:v45];

      if (v46)
      {
        break;
      }

      v47 = +[MFActivityMonitor currentMonitor];
      shouldCancel = [v47 shouldCancel];

      if (shouldCancel)
      {
        accountConduit2 = [(MailAccount *)self->super._account accountConduit];
        [accountConduit2 cancelTaskWithID:v44];

        [(MFDAMailAccountConsumer *)v24 waitUntilDone];
        break;
      }
    }

    fetchSucceeded = [(_MFDAMessageFetchAttachmentConsumer *)v24 fetchSucceeded];
    if (!contentTransferEncoding)
    {
      [v58 done];
      if ([(_MFDAMessageFetchAttachmentConsumer *)v24 dataWasBase64])
      {
        data2 = [objc_alloc(MEMORY[0x1E69AD678]) initWithConsumer:consumerCopy];
        data = [v59 data];
        [data2 appendData:data];

        [data2 done];
      }

      else
      {
        data2 = [v59 data];
        [consumerCopy appendData:data2];
      }
    }

    v52 = +[MFActivityMonitor currentMonitor];
    v53 = +[MFNetworkController sharedInstance];
    [v52 recordTransportType:{objc_msgSend(v53, "transportType")}];
  }

  v10 = v60;
LABEL_33:

LABEL_34:
  if (complete)
  {
    *complete = fetchSucceeded;
  }

  return fetchSucceeded;
}

- (id)defaultAlternativeForPart:(id)part
{
  partCopy = part;
  v5 = [(MFDAMessageStore *)self decryptedTopLevelPartForPart:partCopy];

  type = [v5 type];
  LODWORD(partCopy) = [type isEqualToString:@"multipart"];

  if (partCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v12.receiver = self;
    v12.super_class = MFDAMessageStore;
    v8 = [(MFDAMessageStore *)&v12 defaultAlternativeForPart:v5];
    v9 = [v8 copyBodyDataToOffset:1 resultOffset:0 downloadIfNecessary:0];
    if (!v9)
    {
      v10 = [v5 alternativeAtIndex:0];

      v8 = v10;
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)bestAlternativeForPart:(id)part
{
  partCopy = part;
  v13.receiver = self;
  v13.super_class = MFDAMessageStore;
  v5 = [(MFDAMessageStore *)&v13 bestAlternativeForPart:partCopy];
  partNumber = [v5 partNumber];
  if ([partNumber isEqualToString:@"2"])
  {
    isGenerated = [v5 isGenerated];

    if (isGenerated)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 copyBodyDataToOffset:1 resultOffset:0 downloadIfNecessary:0];
      v10 = v9;
      if (v9 && ![v9 length])
      {
        v11 = [partCopy alternativeAtIndex:0];

        v5 = v11;
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
  }

  return v5;
}

- (BOOL)canFetchSearchResults
{
  v10 = *MEMORY[0x1E69E9840];
  account = [(MFLibraryStore *)self account];
  supportsServerSearch = [account supportsServerSearch];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"No";
    if (supportsServerSearch != 2)
    {
      v5 = @"Yes";
    }

    v7[0] = 67240450;
    v7[1] = supportsServerSearch;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Account search capability: %{public}u. canFetchSearchResults: %{public}@", v7, 0x12u);
  }

  return supportsServerSearch != 2;
}

- (BOOL)messageCanBeTriaged:(id)triaged
{
  triagedCopy = triaged;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [triagedCopy isSearchResultWithBogusRemoteId] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  dataCopy = data;
  partCopy = part;
  partNumber = [partCopy partNumber];
  if (![partNumber isEqualToString:@"2"])
  {

    goto LABEL_7;
  }

  isHTML = [partCopy isHTML];

  if (!isHTML)
  {
LABEL_7:
    v16.receiver = self;
    v16.super_class = MFDAMessageStore;
    v13 = [(MFLibraryStore *)&v16 storeData:dataCopy forMimePart:partCopy isComplete:completeCopy];
    goto LABEL_8;
  }

  v12 = MFPersistenceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [MFDAMessageStore storeData:v12 forMimePart:? isComplete:?];
  }

  v13 = dataCopy;
LABEL_8:
  v14 = v13;

  return v14;
}

- (void)_remoteIDsMatchingSearchText:(uint64_t)a1 predicate:(NSObject *)a2 limit:offset:filterByDate:handler:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Invalid search returned for predicate: %@", &v2, 0xCu);
}

@end