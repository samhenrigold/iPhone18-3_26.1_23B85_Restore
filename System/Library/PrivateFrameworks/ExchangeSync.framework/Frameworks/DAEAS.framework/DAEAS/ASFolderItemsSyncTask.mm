@interface ASFolderItemsSyncTask
- (ASFolderItemsSyncTask)initWithFolderID:(id)d deletesAsMoves:(BOOL)moves;
- (BOOL)checkForErrorInContext:(id)context;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)handleStreamOperation:(int)operation forCodePage:(int)page tag:(int)tag withParentItem:(id)item withData:(char *)data dataLength:(int)length;
- (BOOL)processContext:(id)context;
- (NSString)previousSyncKeyForAgent;
- (double)percentComplete;
- (id)copyWithZone:(_NSZone *)zone;
- (id)replacementObjectForEmailItem:(id)item;
- (id)requestBody;
- (int)_bodyTruncationCode;
- (int)_mimeSupportCode;
- (int)_mimeTruncationCode;
- (int)bodyType;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)_addRejectedServerId:(id)id;
- (void)_handleChangedLeaf:(id)leaf addedChanges:(id)changes modifiedChanges:(id)modifiedChanges removedChanges:(id)removedChanges;
- (void)_handleResponseToLeaf:(id)leaf addedResponses:(id)responses modifiedResponses:(id)modifiedResponses removedResponses:(id)removedResponses fetchedResponses:(id)fetchedResponses;
- (void)_setSpinning:(BOOL)spinning;
- (void)appendActionData:(id)data;
- (void)appendSupportedFieldsData:(id)data;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)reportStatusWithError:(id)error;
@end

@implementation ASFolderItemsSyncTask

- (void)_setSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  v26 = *MEMORY[0x277D85DE8];
  if (!spinning || ![(ASFolderItemsSyncTask *)self isSpinning])
  {
    [(ASFolderItemsSyncTask *)self dataclass];
    v5 = appBundleIDsForDADataclasses();
    [(ASFolderItemsSyncTask *)self setIsSpinning:spinningCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = *(MEMORY[0x277D03988] + 6);
      if (spinningCopy)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v11 = *(MEMORY[0x277D03988] + 7);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = DALoggingwithCategory();
          if (os_log_type_enabled(v14, v9))
          {
            *buf = 138412546;
            v22 = v10;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_24A0AC000, v14, v9, "Telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }

          SBSSetStatusBarShowsActivityForApplication();
          v15 = DALoggingwithCategory();
          if (os_log_type_enabled(v15, v11))
          {
            *buf = 138412546;
            v22 = v10;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_24A0AC000, v15, v11, "Finished telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);
    }
  }
}

- (void)dealloc
{
  if (self->_isSpinning)
  {
    [(ASFolderItemsSyncTask *)self _setSpinning:0];
  }

  v3.receiver = self;
  v3.super_class = ASFolderItemsSyncTask;
  [(ASTask *)&v3 dealloc];
}

- (ASFolderItemsSyncTask)initWithFolderID:(id)d deletesAsMoves:(BOOL)moves
{
  movesCopy = moves;
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ASFolderItemsSyncTask;
  v7 = [(ASTask *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASFolderItemsSyncTask *)v7 setFolderID:dCopy];
    [(ASFolderItemsSyncTask *)v8 setIsInitialSync:0];
    [(ASFolderItemsSyncTask *)v8 setIsInitialBootstrapSync:0];
    [(ASFolderItemsSyncTask *)v8 setBodyTruncationBytes:0xFFFFFFFFLL];
    [(ASFolderItemsSyncTask *)v8 setMIMESupport:0xFFFFFFFFLL];
    [(ASFolderItemsSyncTask *)v8 setIsSpinning:0];
    [(ASFolderItemsSyncTask *)v8 setDeletesAsMoves:movesCopy];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASFolderItemsSyncTask alloc];
  folderID = [(ASFolderItemsSyncTask *)self folderID];
  v6 = [(ASFolderItemsSyncTask *)v4 initWithFolderID:folderID];

  previousSyncKey = [(ASFolderItemsSyncTask *)self previousSyncKey];
  [(ASFolderItemsSyncTask *)v6 setPreviousSyncKey:previousSyncKey];

  [(ASFolderItemsSyncTask *)v6 setDataclass:[(ASFolderItemsSyncTask *)self dataclass]];
  actions = [(ASFolderItemsSyncTask *)self actions];
  [(ASFolderItemsSyncTask *)v6 setActions:actions];

  [(ASFolderItemsSyncTask *)v6 setIsInitialSync:[(ASFolderItemsSyncTask *)self isInitialSync]];
  [(ASFolderItemsSyncTask *)v6 setWillUpdate:[(ASFolderItemsSyncTask *)self willUpdate]];
  [(ASFolderItemsSyncTask *)v6 setMoreAvailable:[(ASFolderItemsSyncTask *)self moreAvailable]];
  [(ASFolderItemsSyncTask *)v6 setIsResyncAfterConnectionFailed:[(ASFolderItemsSyncTask *)self isResyncAfterConnectionFailed]];
  [(ASFolderItemsSyncTask *)v6 setBodyTruncationBytes:[(ASFolderItemsSyncTask *)self bodyTruncationBytes]];
  [(ASFolderItemsSyncTask *)v6 setMIMESupport:[(ASFolderItemsSyncTask *)self mimeSupport]];
  [(ASFolderItemsSyncTask *)v6 setFilterDays:[(ASFolderItemsSyncTask *)self filterDays]];
  preservedActions = [(ASFolderItemsSyncTask *)self preservedActions];
  [(ASFolderItemsSyncTask *)v6 setPreservedActions:preservedActions];

  pushedActions = [(ASFolderItemsSyncTask *)self pushedActions];
  [(ASFolderItemsSyncTask *)v6 setPushedActions:pushedActions];

  return v6;
}

- (int)bodyType
{
  if ([(ASFolderItemsSyncTask *)self dataclass]!= 1 && [(ASFolderItemsSyncTask *)self dataclass]!= 32)
  {
    return 1;
  }

  mimeSupport = [(ASFolderItemsSyncTask *)self mimeSupport];
  if (mimeSupport == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (mimeSupport)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)appendActionData:(id)data
{
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  actions = [(ASFolderItemsSyncTask *)self actions];
  v6 = [actions count];

  actions2 = [(ASFolderItemsSyncTask *)self actions];
  v8 = [actions2 count];

  if (!v8)
  {
    goto LABEL_44;
  }

  [dataCopy switchToCodePage:0];
  [dataCopy openTag:22];
  if (!v6)
  {
LABEL_43:
    [dataCopy closeTag:22];
    goto LABEL_44;
  }

  v10 = 0;
  v11 = *(MEMORY[0x277D03988] + 3);
  type = *(MEMORY[0x277D03988] + 7);
  *&v9 = 138412290;
  v35 = v9;
  v37 = v11;
  v36 = v6;
  while (1)
  {
    [dataCopy switchToCodePage:{0, v35}];
    actions3 = [(ASFolderItemsSyncTask *)self actions];
    v13 = [actions3 objectAtIndexedSubscript:v10];

    asServerID = [v13 asServerID];
    asClientID = [v13 asClientID];
    if (!(asServerID | asClientID))
    {
      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v11))
      {
        *buf = v35;
        v43 = v13;
        _os_log_impl(&dword_24A0AC000, v19, v11, "Action does not have a server ID or client ID. Dropping action: %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    itemChangeType = [v13 itemChangeType];
    if (itemChangeType <= 1)
    {
      break;
    }

    if (itemChangeType == 2)
    {
      goto LABEL_9;
    }

    if (itemChangeType != 3)
    {
      if (itemChangeType != 8)
      {
        goto LABEL_45;
      }

LABEL_9:
      v17 = 0;
      v18 = 9;
      goto LABEL_18;
    }

    v17 = 0;
    v18 = 10;
LABEL_18:
    [dataCopy openTag:v18];
    taskManager = [(ASTask *)self taskManager];
    protocol = [taskManager protocol];
    useInstanceIdForException = [protocol useInstanceIdForException];

    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, type))
    {
      asServerID2 = [v13 asServerID];
      *buf = 138412546;
      v43 = v13;
      v44 = 2112;
      selfCopy = asServerID2;
      _os_log_impl(&dword_24A0AC000, v22, type, "checking out action %@.  Got a server ID of %@", buf, 0x16u);
    }

    v11 = v37;
    if (asServerID)
    {
      if (v17)
      {
        v24 = DALoggingwithCategory();
        if (os_log_type_enabled(v24, v37))
        {
          asServerID3 = [v13 asServerID];
          *buf = 138412546;
          v43 = v13;
          v44 = 2112;
          selfCopy = asServerID3;
          _os_log_impl(&dword_24A0AC000, v24, v37, "An add action %@, has a server ID %@", buf, 0x16u);

          v11 = v37;
        }

        v26 = DALoggingwithCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = v35;
          v43 = asServerID;
          _os_log_fault_impl(&dword_24A0AC000, v26, OS_LOG_TYPE_FAULT, "An add action contains server ID %@", buf, 0xCu);
        }

LABEL_28:
        if (asClientID)
        {
          v27 = dataCopy;
          v28 = 12;
          v29 = asClientID;
          goto LABEL_31;
        }

        v30 = DALoggingwithCategory();
        if (os_log_type_enabled(v30, v11))
        {
          *buf = v35;
          v43 = v13;
          _os_log_impl(&dword_24A0AC000, v30, v11, "An add action %@, without a client ID", buf, 0xCu);
        }

        v31 = DALoggingwithCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          [(ASFolderItemsSyncTask *)&v40 appendActionData:v41, v31];
        }
      }

      else
      {
        v27 = dataCopy;
        v28 = 13;
        v29 = asServerID;
LABEL_31:
        [v27 appendTag:v28 withStringContent:v29];
      }

      if (((asServerID != 0) & useInstanceIdForException) == 1)
      {
        asInstanceID = [v13 asInstanceID];
        if (asInstanceID)
        {
          [dataCopy switchToCodePage:17];
          [dataCopy appendTag:45 withStringContent:asInstanceID];
        }
      }

      goto LABEL_41;
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_41:
    [dataCopy switchToCodePage:0];
    [dataCopy openProspectiveTag:29];
    [v13 appendApplicationDataForTask:self toWBXMLData:dataCopy];
    [dataCopy switchToCodePage:0];
    [dataCopy closeProspectiveTag:29];
    [dataCopy closeTag:v18];
    v6 = v36;
LABEL_42:

    if (v6 == ++v10)
    {
      goto LABEL_43;
    }
  }

  if (!itemChangeType)
  {
    v18 = 7;
    v17 = 1;
    goto LABEL_18;
  }

  if (itemChangeType == 1)
  {
    v17 = 0;
    v18 = 8;
    goto LABEL_18;
  }

LABEL_45:
  v33 = DALoggingwithCategory();
  if (os_log_type_enabled(v33, v11))
  {
    itemChangeType2 = [v13 itemChangeType];
    *buf = 134218242;
    v43 = itemChangeType2;
    v44 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24A0AC000, v33, v11, "UNKNOWN CHANGE TYPE %lu %@", buf, 0x16u);
  }

LABEL_44:
}

- (void)appendSupportedFieldsData:(id)data
{
  dataCopy = data;
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  if ([(ASFolderItemsSyncTask *)self dataclass]== 2)
  {
    taskManager2 = [(ASTask *)self taskManager];
    protocol2 = [taskManager2 protocol];
    shouldSendFullContactInfo = [protocol2 shouldSendFullContactInfo];

    if ((shouldSendFullContactInfo & 1) == 0)
    {
      [dataCopy openTag:32];
      currentCodePage = [dataCopy currentCodePage];
      [dataCopy switchToCodePage:1];
      [dataCopy appendEmptyTag:5];
      [dataCopy appendEmptyTag:8];
      if ((usesAirSyncBaseNamespace & 1) == 0)
      {
        [dataCopy appendEmptyTag:9];
      }

      [dataCopy appendEmptyTag:55];
      [dataCopy appendEmptyTag:14];
      [dataCopy appendEmptyTag:26];
      [dataCopy appendEmptyTag:27];
      [dataCopy appendEmptyTag:28];
      [dataCopy appendEmptyTag:29];
      [dataCopy appendEmptyTag:18];
      [dataCopy appendEmptyTag:30];
      [dataCopy appendEmptyTag:31];
      [dataCopy appendEmptyTag:33];
      [dataCopy appendEmptyTag:34];
      [dataCopy appendEmptyTag:38];
      [dataCopy appendEmptyTag:39];
      [dataCopy appendEmptyTag:32];
      [dataCopy appendEmptyTag:35];
      [dataCopy appendEmptyTag:36];
      [dataCopy appendEmptyTag:37];
      [dataCopy appendEmptyTag:13];
      [dataCopy appendEmptyTag:42];
      [dataCopy appendEmptyTag:43];
      [dataCopy appendEmptyTag:53];
      [dataCopy appendEmptyTag:25];
      [dataCopy appendEmptyTag:45];
      [dataCopy appendEmptyTag:46];
      [dataCopy appendEmptyTag:20];
      [dataCopy appendEmptyTag:47];
      [dataCopy appendEmptyTag:48];
      [dataCopy appendEmptyTag:49];
      [dataCopy appendEmptyTag:50];
      [dataCopy appendEmptyTag:60];
      [dataCopy appendEmptyTag:54];
      [dataCopy appendEmptyTag:15];
      [dataCopy appendEmptyTag:6];
      [dataCopy appendEmptyTag:7];
      [dataCopy appendEmptyTag:41];
      [dataCopy appendEmptyTag:52];
      [dataCopy appendEmptyTag:16];
      [dataCopy appendEmptyTag:17];
      [dataCopy appendEmptyTag:19];
      [dataCopy appendEmptyTag:12];
      [dataCopy appendEmptyTag:40];
      [dataCopy appendEmptyTag:57];
      [dataCopy appendEmptyTag:58];
      [dataCopy appendEmptyTag:51];
      [dataCopy switchToCodePage:12];
      [dataCopy appendEmptyTag:7];
      [dataCopy appendEmptyTag:8];
      [dataCopy appendEmptyTag:9];
      [dataCopy appendEmptyTag:10];
      [dataCopy appendEmptyTag:11];
      [dataCopy appendEmptyTag:13];
      [dataCopy switchToCodePage:currentCodePage];
      [dataCopy closeTag:32];
    }
  }
}

- (int)_mimeSupportCode
{
  v3 = [(ASFolderItemsSyncTask *)self mimeSupport]+ 1;
  if (v3 < 4)
  {
    return dword_24A14DC90[v3];
  }

  NSLog(&cfstr_UnexpectedMime.isa, [(ASFolderItemsSyncTask *)self mimeSupport]);
  return 2;
}

- (int)_bodyTruncationCode
{
  if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
  {
    return 9;
  }

  if (![(ASFolderItemsSyncTask *)self bodyTruncationBytes])
  {
    return 0;
  }

  v3 = 9;
  v4 = &dword_24A14DF4C;
  v5 = 8;
  while (v5 >= 2)
  {
    --v5;
    v6 = *v4--;
    --v3;
    if (v6 <= [(ASFolderItemsSyncTask *)self bodyTruncationBytes])
    {
      return v3;
    }
  }

  return 1;
}

- (int)_mimeTruncationCode
{
  if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
  {
    return 8;
  }

  if (![(ASFolderItemsSyncTask *)self bodyTruncationBytes])
  {
    return 0;
  }

  v3 = 8;
  v4 = &dword_24A14DF6C;
  v5 = 7;
  while (v5 >= 2)
  {
    --v5;
    v6 = *v4--;
    --v3;
    if (v6 <= [(ASFolderItemsSyncTask *)self bodyTruncationBytes])
    {
      return v3;
    }
  }

  return 1;
}

- (id)requestBody
{
  v33 = *MEMORY[0x277D85DE8];
  [(ASFolderItemsSyncTask *)self _setSpinning:1];
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  v5 = objc_opt_new();
  previousSyncKey = [(ASFolderItemsSyncTask *)self previousSyncKey];
  v7 = previousSyncKey;
  if (!previousSyncKey || [(__CFString *)previousSyncKey isEqualToString:@"0"])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v8, v9))
    {
      folderID = [(ASFolderItemsSyncTask *)self folderID];
      v27 = 134218498;
      selfCopy = self;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = folderID;
      _os_log_impl(&dword_24A0AC000, v8, v9, "Folder item sync task %p is using sync key %{public}@ for folder %{public}@", &v27, 0x20u);
    }
  }

  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];
  [v5 openTag:5];
  [v5 openTag:28];
  [v5 openTag:15];
  if ([protocol shouldSendClassForFolderItemsSync])
  {
    v12 = NSStringForDASingleDataclass([(ASFolderItemsSyncTask *)self dataclass]);
    [v5 appendTag:16 withStringContent:v12];
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = @"0";
  }

  [v5 appendTag:11 withStringContent:v13];
  folderID2 = [(ASFolderItemsSyncTask *)self folderID];
  [v5 appendTag:18 withStringContent:folderID2];

  if (!v7)
  {
    [(ASFolderItemsSyncTask *)self appendSupportedFieldsData:v5];
    goto LABEL_26;
  }

  if ([(__CFString *)v7 isEqualToString:@"0"])
  {
    [(ASFolderItemsSyncTask *)self appendSupportedFieldsData:v5];
  }

  if (([(__CFString *)v7 isEqualToString:@"0"]& 1) == 0)
  {
    useBooleanFolderItemsSyncDeletesAsMoves = [protocol useBooleanFolderItemsSyncDeletesAsMoves];
    deletesAsMoves = [(ASFolderItemsSyncTask *)self deletesAsMoves];
    if (useBooleanFolderItemsSyncDeletesAsMoves)
    {
      if (!deletesAsMoves)
      {
        [v5 appendTag:30 withIntContent:0];
      }
    }

    else if (deletesAsMoves)
    {
      [v5 appendEmptyTag:30];
    }

    if ([(ASFolderItemsSyncTask *)self willUpdate])
    {
      [v5 appendEmptyTag:19];
      v17 = v5;
      v18 = 21;
      v19 = 25;
    }

    else
    {
      if (![protocol requiresExplicitlyFalseGetChanges])
      {
        goto LABEL_26;
      }

      v17 = v5;
      v18 = 19;
      v19 = 0;
    }

    [v17 appendTag:v18 withIntContent:v19];
  }

LABEL_26:
  [v5 openProspectiveTag:23];
  if ([(ASFolderItemsSyncTask *)self dataclass]== 1)
  {
    if ([(ASFolderItemsSyncTask *)self filterDays])
    {
      [v5 appendTag:24 withIntContent:{ASFilterCodeForNumPastDays(-[ASFolderItemsSyncTask filterDays](self, "filterDays"), -[ASFolderItemsSyncTask dataclass](self, "dataclass"))}];
    }

    if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]!= -1)
    {
      if ((usesAirSyncBaseNamespace & 1) == 0)
      {
        [v5 appendTag:25 withIntContent:{-[ASFolderItemsSyncTask _bodyTruncationCode](self, "_bodyTruncationCode")}];
      }

      [v5 appendTag:35 withIntContent:{-[ASFolderItemsSyncTask _mimeTruncationCode](self, "_mimeTruncationCode")}];
    }

    if ([(ASFolderItemsSyncTask *)self clientWinsOnSyncConflict])
    {
      [v5 appendTag:27 withIntContent:0];
    }

    if ([(ASFolderItemsSyncTask *)self mimeSupport]!= -1)
    {
      _mimeSupportCode = [(ASFolderItemsSyncTask *)self _mimeSupportCode];
      v21 = v5;
      v22 = 34;
LABEL_42:
      [v21 appendTag:v22 withIntContent:_mimeSupportCode];
    }
  }

  else if ([(ASFolderItemsSyncTask *)self dataclass]== 4)
  {
    if ([(ASFolderItemsSyncTask *)self clientWinsOnSyncConflict])
    {
      [v5 appendTag:27 withIntContent:0];
    }

    if ([(ASFolderItemsSyncTask *)self filterDays])
    {
      _mimeSupportCode = ASFilterCodeForNumPastDays([(ASFolderItemsSyncTask *)self filterDays], [(ASFolderItemsSyncTask *)self dataclass]);
      v21 = v5;
      v22 = 24;
      goto LABEL_42;
    }
  }

  if ([(ASFolderItemsSyncTask *)self dataclass]!= 2 && [(ASFolderItemsSyncTask *)self dataclass]!= 4 && [(ASFolderItemsSyncTask *)self dataclass]!= 1 && [(ASFolderItemsSyncTask *)self dataclass]!= 16)
  {
    if ((([(ASFolderItemsSyncTask *)self dataclass]== 32) & usesAirSyncBaseNamespace) == 0)
    {
      goto LABEL_61;
    }

LABEL_48:
    currentCodePage = [v5 currentCodePage];
    [v5 switchToCodePage:17];
    [v5 openTag:5];
    [v5 appendTag:6 withIntContent:{-[ASFolderItemsSyncTask bodyType](self, "bodyType")}];
    if ([(ASFolderItemsSyncTask *)self dataclass]== 1)
    {
      if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
      {
        goto LABEL_60;
      }
    }

    else if ([(ASFolderItemsSyncTask *)self dataclass]== 32 || [(ASFolderItemsSyncTask *)self dataclass]== 16)
    {
      if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
      {
        bodyTruncationBytes = 0x200000;
LABEL_59:
        [v5 appendTag:7 withIntContent:bodyTruncationBytes];
LABEL_60:
        [v5 closeTag:5];
        [v5 switchToCodePage:currentCodePage];
        goto LABEL_61;
      }
    }

    else if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
    {
      bodyTruncationBytes = 0x8000;
      goto LABEL_59;
    }

    bodyTruncationBytes = [(ASFolderItemsSyncTask *)self bodyTruncationBytes];
    goto LABEL_59;
  }

  if (usesAirSyncBaseNamespace)
  {
    goto LABEL_48;
  }

LABEL_61:
  [v5 closeProspectiveTag:23];
  if (v7 && ([(__CFString *)v7 isEqualToString:@"0"]& 1) == 0)
  {
    [(ASFolderItemsSyncTask *)self appendActionData:v5];
  }

  [v5 closeTag:15];
  [v5 closeTag:28];
  [v5 closeTag:5];
  data = [v5 data];

  return data;
}

- (void)_handleChangedLeaf:(id)leaf addedChanges:(id)changes modifiedChanges:(id)modifiedChanges removedChanges:(id)removedChanges
{
  leafCopy = leaf;
  changesCopy = changes;
  modifiedChangesCopy = modifiedChanges;
  removedChangesCopy = removedChanges;
  changeType = [leafCopy changeType];
  if (changeType <= 1)
  {
    v15 = changesCopy;
    if (changeType)
    {
      v15 = modifiedChangesCopy;
      if (changeType != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_8:
    v16 = v15;
    [v16 addObject:leafCopy];
    goto LABEL_9;
  }

  if (changeType == 2 || changeType == 7)
  {
    [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numDownloadedElements]+ 1];
    v15 = removedChangesCopy;
    goto LABEL_8;
  }

LABEL_10:
  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v16, v17))
  {
    *v18 = 0;
    _os_log_impl(&dword_24A0AC000, v16, v17, "How did I get a change with a fetch type?  skipping", v18, 2u);
  }

LABEL_9:
}

- (void)_handleResponseToLeaf:(id)leaf addedResponses:(id)responses modifiedResponses:(id)modifiedResponses removedResponses:(id)removedResponses fetchedResponses:(id)fetchedResponses
{
  leafCopy = leaf;
  responsesCopy = responses;
  modifiedResponsesCopy = modifiedResponses;
  removedResponsesCopy = removedResponses;
  fetchedResponsesCopy = fetchedResponses;
  changeType = [leafCopy changeType];
  v18 = changeType;
  if (changeType <= 1)
  {
    if (!changeType)
    {
      v19 = responsesCopy;
      goto LABEL_11;
    }

    if (changeType == 1)
    {
      v19 = modifiedResponsesCopy;
      goto LABEL_11;
    }
  }

  else
  {
    switch(changeType)
    {
      case 2:
        goto LABEL_5;
      case 3:
        v19 = fetchedResponsesCopy;
        goto LABEL_11;
      case 7:
LABEL_5:
        [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numDownloadedElements]+ 1];
        v19 = removedResponsesCopy;
LABEL_11:
        v20 = v19;
        goto LABEL_12;
    }
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASFolderItemsSyncTask.m" lineNumber:539 description:{@"Asked to handle a response to a leaf with change type %ld, which isn't known to me.  Item is %@", v18, leafCopy}];

  v20 = 0;
LABEL_12:
  [v20 addObject:leafCopy];
}

- (BOOL)handleStreamOperation:(int)operation forCodePage:(int)page tag:(int)tag withParentItem:(id)item withData:(char *)data dataLength:(int)length
{
  v10 = *&tag;
  v11 = *&page;
  v12 = *&operation;
  itemCopy = item;
  v15 = itemCopy;
  if (v11 == 17)
  {
    parent = [itemCopy parent];
    v18Parent = [parent parent];

    parent2 = [v15 parent];
    goto LABEL_5;
  }

  if (v11 == 2)
  {
    v18Parent = [itemCopy parent];
    parent2 = v15;
LABEL_5:
    v19 = parent2;
    goto LABEL_7;
  }

  v19 = 0;
  v18Parent = 0;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v12)
    {
      [v15 applyPlaceHolder];
      if (v19 != v15)
      {
        commonValue = [v15 commonValue];
        if (commonValue)
        {
          [v19 setObject:commonValue forDCCPT:4362];
        }

        [v19 applyPlaceHolder];
      }

      commonValue2 = [v19 commonValue];
      [v18Parent setApplicationData:commonValue2];

      [v18Parent processAppDataForStream];
    }

    delegate = [(ASTask *)self delegate];
    LODWORD(v25) = length;
    v23 = [delegate folderItemsSyncTask:self handleStreamOperation:v12 forCodePage:v11 tag:v10 withParentItem:v18Parent withData:data dataLength:v25];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)replacementObjectForEmailItem:(id)item
{
  *&v44[5] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v42 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  parent = [itemCopy parent];
  v9Parent = [parent parent];

  dataclass = [v9Parent dataclass];
  if ([itemCopy isResponse])
  {
    if (dataclass <= 0x20 && ((1 << dataclass) & 0x100010016) != 0)
    {
      status = [itemCopy status];
      if ([status intValue] == 8)
      {
        willUpdate = [(ASFolderItemsSyncTask *)self willUpdate];

        if (willUpdate)
        {
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v14, v15))
          {
            *buf = 138412290;
            *v44 = itemCopy;
            _os_log_impl(&dword_24A0AC000, v14, v15, "The following collection item isn't known by the server.  We'll delete it locally.  Item %@", buf, 0xCu);
          }

          [itemCopy setChangeType:2];
LABEL_16:
          [(ASFolderItemsSyncTask *)self _handleChangedLeaf:itemCopy addedChanges:v42 modifiedChanges:v5 removedChanges:v6];
          goto LABEL_25;
        }
      }

      else
      {
      }

      [(ASFolderItemsSyncTask *)self _handleResponseToLeaf:itemCopy addedResponses:v41 modifiedResponses:v40 removedResponses:v7 fetchedResponses:v8];
    }

    else
    {
      v21 = v5;
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 134217984;
        *v44 = dataclass;
        _os_log_impl(&dword_24A0AC000, v22, v23, "No support yet for responses of dataclass %lu", buf, 0xCu);
      }

      v5 = v21;
    }
  }

  else
  {
    v39 = v5;
    status2 = [itemCopy status];
    intValue = [status2 intValue];

    if (intValue == 31 || intValue == 9)
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        status3 = [itemCopy status];
        *buf = 67109378;
        v44[0] = [status3 intValue];
        LOWORD(v44[1]) = 2112;
        *(&v44[1] + 2) = itemCopy;
        _os_log_impl(&dword_24A0AC000, v18, v19, "The following collection item had an unsuccessful status (%d) %@", buf, 0x12u);
      }
    }

    v5 = v39;
    if (dataclass <= 0x20 && ((1 << dataclass) & 0x100010016) != 0)
    {
      goto LABEL_16;
    }

    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 134217984;
      *v44 = dataclass;
      _os_log_impl(&dword_24A0AC000, v24, v25, "No support yet for collections of dataclass %lu", buf, 0xCu);
    }

    v5 = v39;
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  moreAvailable = [v9Parent moreAvailable];
  LOBYTE(v38) = [moreAvailable BOOLValue];
  v28 = v8;
  v36 = v7;
  v37 = v8;
  v29 = v7;
  v30 = v6;
  v31 = v6;
  v32 = v5;
  v33 = [WeakRetained folderItemsSyncTask:self hasPartialAdded:v42 removed:v31 modified:v5 addedResponse:v41 modifiedResponse:v40 removedResponse:v36 fetchedResponse:v37 moreAvailable:v38];

  v34 = itemCopy;
  if (v33)
  {

    [(ASFolderItemsSyncTask *)self setNumReplacedItems:[(ASFolderItemsSyncTask *)self numReplacedItems]+ 1];
    v34 = 0;
  }

  return v34;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 0;
  *token = 5;
  *statusToken = 14;
  return 1;
}

- (BOOL)checkForErrorInContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if ([contextCopy dataGeneration] == 1 && !objc_msgSend(contextCopy, "currentBytesReceivedCount"))
    {
      goto LABEL_31;
    }

    v28 = 0;
    v27 = 0;
    if ([(ASFolderItemsSyncTask *)self getTopLevelToken:&v28 + 1 outStatusCodePage:&v28 outStatusToken:&v27])
    {
      if (![contextCopy currentByte] && !self->super._haveSwitchedCodePage)
      {
        if (![contextCopy hasNumberOfTokensRemaining:2])
        {
          goto LABEL_22;
        }

        if ([contextCopy currentByte])
        {
          currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v28];
          foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 683, objc_msgSend(contextCopy, "curOffset")];
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v16, v17))
          {
            curOffset = [contextCopy curOffset];
            *buf = 134217984;
            v30 = curOffset;
            _os_log_impl(&dword_24A0AC000, v16, v17, "Failure at index %lld:", buf, 0xCu);
          }

          v19 = DALoggingwithCategory();
          if (!os_log_type_enabled(v19, v17))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v30 = currentlyParsingItem3;
          goto LABEL_27;
        }

        [contextCopy advanceOffsetByAmount:1];
        v24 = v28;
        if (v24 != [contextCopy currentByte])
        {
          currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v28];
          foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 683, objc_msgSend(contextCopy, "curOffset")];
          v25 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v25, v17))
          {
            curOffset2 = [contextCopy curOffset];
            *buf = 134217984;
            v30 = curOffset2;
            _os_log_impl(&dword_24A0AC000, v25, v17, "Failure at index %lld:", buf, 0xCu);
          }

          v19 = DALoggingwithCategory();
          if (!os_log_type_enabled(v19, v17))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v30 = currentlyParsingItem3;
          goto LABEL_27;
        }

        [contextCopy advanceOffsetByAmount:1];
        [contextCopy setCodePage:v28];
        self->super._haveSwitchedCodePage = 1;
      }

      if (self->super._haveParsedCommand)
      {
LABEL_12:
        v13 = [ASTopLevelErrorChecker alloc];
        v14 = [(ASTopLevelErrorChecker *)v13 initWithCodePage:v28 statusToken:v27];
        [(ASTask *)self setCurrentlyParsingItem:v14];

        goto LABEL_2;
      }

      if (![contextCopy hasNumberOfTokensRemaining:1])
      {
        goto LABEL_22;
      }

      currentByte = [contextCopy currentByte];
      if ((currentByte & 0x3F) == HIBYTE(v28))
      {
        self->super._haveParsedCommand = 1;
        goto LABEL_12;
      }

      currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected top level token 0x%x", HIBYTE(v28)];
      foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 685, objc_msgSend(contextCopy, "curOffset")];
      v21 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v21, v17))
      {
        curOffset3 = [contextCopy curOffset];
        *buf = 134217984;
        v30 = curOffset3;
        _os_log_impl(&dword_24A0AC000, v21, v17, "Failure at index %lld:", buf, 0xCu);
      }

      v19 = DALoggingwithCategory();
      if (!os_log_type_enabled(v19, v17))
      {
LABEL_28:

        [contextCopy setParseErrorReason:foundStatus];
        goto LABEL_29;
      }

      *buf = 138412290;
      v30 = currentlyParsingItem3;
LABEL_27:
      _os_log_impl(&dword_24A0AC000, v19, v17, "failure reason was %@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem)
  {
    parsingState = [(ASItem *)currentlyParsingItem parsingState];
    if (parsingState >= 2)
    {
      if (parsingState - 3 < 2)
      {
LABEL_30:
        [(ASTask *)self setCurrentlyParsingItem:0];
LABEL_31:
        v20 = 1;
        goto LABEL_32;
      }

      currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
      foundStatus = [currentlyParsingItem3 foundStatus];
      [(ASTask *)self handleTopLevelErrorStatus:foundStatus];
LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_22:
  v20 = 0;
LABEL_32:

  return v20;
}

- (BOOL)processContext:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (currentlyParsingItem)
  {
    goto LABEL_8;
  }

  if ([contextCopy dataGeneration] == 1 && !objc_msgSend(contextCopy, "currentBytesReceivedCount"))
  {
    [(ASFolderItemsSyncTask *)self setHaveShortcut121Response:1];
    goto LABEL_8;
  }

  if ([contextCopy currentByte] || self->super._haveSwitchedCodePage)
  {
LABEL_6:
    v6 = [[ASFolderItemsSyncResponse alloc] initWithDataclass:[(ASFolderItemsSyncTask *)self dataclass]];
    [(ASTask *)self setCurrentlyParsingItem:v6];
    [(ASFolderItemsSyncTask *)self setNumReplacedItems:0];

LABEL_8:
    currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];

    if (!currentlyParsingItem2)
    {
      goto LABEL_18;
    }

    v42 = contextCopy;
    [(ASFolderItemsSyncTask *)self setHaveShortcut121Response:0];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __40__ASFolderItemsSyncTask_processContext___block_invoke;
    v44[3] = &unk_278FC7D20;
    v44[4] = self;
    v8 = MEMORY[0x24C2119B0](v44);
    v49[0] = @"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem";
    v9 = MEMORY[0x24C2119B0]();
    v49[1] = @"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse";
    v50[0] = v9;
    v41 = v8;
    v10 = MEMORY[0x24C2119B0](v8);
    v50[1] = v10;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __40__ASFolderItemsSyncTask_processContext___block_invoke_2;
    v43[3] = &unk_278FC7D98;
    v43[4] = self;
    v11 = MEMORY[0x24C2119B0](v43);
    taskManager = [(ASTask *)self taskManager];
    protocol = [taskManager protocol];
    usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

    if (usesAirSyncBaseNamespace)
    {
      69899 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.ASDictionary.%d", 69899];
      v47[0] = 69899;
      v16 = MEMORY[0x24C2119B0](v11);
      v48[0] = v16;
      698992 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.ASDictionary.%d", 69899];
      v47[1] = 698992;
      v18 = MEMORY[0x24C2119B0](v11);
      v48[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    }

    else
    {
      66102 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.%d", 66102];
      v45[0] = 66102;
      v16 = MEMORY[0x24C2119B0](v11);
      v46[0] = v16;
      698992 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.%d", 66102];
      v45[1] = 698992;
      v18 = MEMORY[0x24C2119B0](v11);
      v46[1] = v18;
      66060 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.%d", 66060];
      v45[2] = 66060;
      v21 = MEMORY[0x24C2119B0](v11);
      v46[2] = v21;
      660602 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.%d", 66060];
      v45[3] = 660602;
      v23 = MEMORY[0x24C2119B0](v11);
      v46[3] = v23;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

      69899 = 66102;
    }

    currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
    taskManager2 = [(ASTask *)self taskManager];
    account = [taskManager2 account];
    contextCopy = v42;
    [currentlyParsingItem3 parseASParseContext:v42 root:0 parent:0 callbackDict:v40 streamCallbackDict:v19 account:account];

    currentlyParsingItem = self->super._currentlyParsingItem;
    if (currentlyParsingItem)
    {
      parsingState = [(ASItem *)currentlyParsingItem parsingState];
      v29 = parsingState > 4 ? 0 : dword_24A14DF74[parsingState];
    }

    else
    {
      v29 = 1;
    }

    if ((v29 | 2) == 2)
    {
      goto LABEL_18;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  if (![contextCopy hasNumberOfTokensRemaining:2])
  {
    goto LABEL_25;
  }

  if ([contextCopy currentByte])
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to sync code page"];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 712, objc_msgSend(contextCopy, "curOffset")];
    v34 = DALoggingwithCategory();
    v35 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v34, v35, "Failure at index %lld:", buf, 0xCu);
    }

    v36 = DALoggingwithCategory();
    if (!os_log_type_enabled(v36, v35))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    curOffset = v32;
    goto LABEL_32;
  }

  [contextCopy advanceOffsetByAmount:1];
  if (![contextCopy currentByte])
  {
    [contextCopy advanceOffsetByAmount:1];
    [contextCopy setCodePage:0];
    self->super._haveSwitchedCodePage = 1;
    goto LABEL_6;
  }

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to sync code page"];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 712, objc_msgSend(contextCopy, "curOffset")];
  v38 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v38, v35))
  {
    *buf = 134217984;
    curOffset = [contextCopy curOffset];
    _os_log_impl(&dword_24A0AC000, v38, v35, "Failure at index %lld:", buf, 0xCu);
  }

  v36 = DALoggingwithCategory();
  if (os_log_type_enabled(v36, v35))
  {
    *buf = 138412290;
    curOffset = v32;
LABEL_32:
    _os_log_impl(&dword_24A0AC000, v36, v35, "failure reason was %@", buf, 0xCu);
  }

LABEL_33:

  [contextCopy setParseErrorReason:v33];
LABEL_18:
  parseErrorReason = [contextCopy parseErrorReason];
  v31 = parseErrorReason == 0;

LABEL_26:
  return v31;
}

- (void)_addRejectedServerId:(id)id
{
  if (id)
  {
    idCopy = id;
    mRejectedServerIds = [(ASFolderItemsSyncTask *)self mRejectedServerIds];

    if (!mRejectedServerIds)
    {
      v6 = objc_opt_new();
      [(ASFolderItemsSyncTask *)self setMRejectedServerIds:v6];
    }

    mRejectedServerIds2 = [(ASFolderItemsSyncTask *)self mRejectedServerIds];
    [mRejectedServerIds2 addObject:idCopy];
  }
}

- (void)finishWithError:(id)error
{
  v88 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_isSpinning)
  {
    [(ASFolderItemsSyncTask *)self _setSpinning:0];
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v70 = objc_opt_new();
  v71 = objc_opt_new();
  v72 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(ASTask *)self taskStatusForError:errorCopy];
  [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numReplacedItems]];
  if (!errorCopy)
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    if ([(ASFolderItemsSyncTask *)self haveShortcut121Response]&& !currentlyParsingItem)
    {
      [(ASFolderItemsSyncTask *)self previousSyncKey];
      v17 = v16 = v6;
      syncKey2 = [v17 copy];

      v6 = v16;
      goto LABEL_39;
    }

    v69 = v6;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 6);
      v66 = v5;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = objc_opt_class();
        v23 = v22;
        *buf = 138412802;
        *v85 = v22;
        *&v85[8] = 2112;
        *&v85[10] = currentlyParsingItem;
        v86 = 1024;
        numReplacedItems = [(ASFolderItemsSyncTask *)self numReplacedItems];
        _os_log_impl(&dword_24A0AC000, v20, v21, "%@ Parsed response of %@ (%d items downloaded and replaced while parsing)", buf, 0x1Cu);

        v5 = v66;
      }

      status = [currentlyParsingItem status];
      v9 = -[ASFolderItemsSyncTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

      if (v9 == 2)
      {
        collection = [currentlyParsingItem collection];
        dataclass = [collection dataclass];
        v65 = collection;
        changedItems = [collection changedItems];
        objectEnumerator = [changedItems objectEnumerator];

        v68 = objectEnumerator;
        nextObject = [objectEnumerator nextObject];
        if (nextObject)
        {
          v30 = nextObject;
          v31 = *(MEMORY[0x277D03988] + 3);
          do
          {
            status2 = [v30 status];
            intValue = [status2 intValue];

            if (intValue == 31 || intValue == 9)
            {
              v34 = DALoggingwithCategory();
              if (os_log_type_enabled(v34, v31))
              {
                status3 = [v30 status];
                intValue2 = [status3 intValue];
                *buf = 67109378;
                *v85 = intValue2;
                *&v85[4] = 2112;
                *&v85[6] = v30;
                _os_log_impl(&dword_24A0AC000, v34, v31, "The following collection item had an unsuccessful status (%d) %@", buf, 0x12u);
              }

              serverID = [v30 serverID];
              [(ASFolderItemsSyncTask *)self _addRejectedServerId:serverID];
            }

            else
            {
              if (dataclass <= 0x20 && ((1 << dataclass) & 0x100010016) != 0)
              {
                [(ASFolderItemsSyncTask *)self _handleChangedLeaf:v30 addedChanges:v66 modifiedChanges:v69 removedChanges:v70];
                goto LABEL_30;
              }

              serverID = DALoggingwithCategory();
              if (os_log_type_enabled(serverID, v31))
              {
                *buf = 134217984;
                *v85 = dataclass;
                _os_log_impl(&dword_24A0AC000, serverID, v31, "No support yet for collections of dataclass %lu", buf, 0xCu);
              }
            }

LABEL_30:
            nextObject2 = [v68 nextObject];

            v30 = nextObject2;
          }

          while (nextObject2);
        }

        responseItems = [v65 responseItems];
        objectEnumerator2 = [responseItems objectEnumerator];

        v67 = objectEnumerator2;
        nextObject3 = [objectEnumerator2 nextObject];
        if (nextObject3)
        {
          v45 = nextObject3;
          v46 = *(MEMORY[0x277D03988] + 3);
          *&v44 = 134217984;
          v64 = v44;
          do
          {
            if (dataclass > 0x20 || ((1 << dataclass) & 0x100010016) == 0)
            {
              v50 = DALoggingwithCategory();
              if (os_log_type_enabled(v50, v46))
              {
                *buf = v64;
                *v85 = dataclass;
                _os_log_impl(&dword_24A0AC000, v50, v46, "No support yet for responses of dataclass %lu", buf, 0xCu);
              }

              goto LABEL_56;
            }

            status4 = [v45 status];
            if ([status4 intValue] == 8)
            {
              willUpdate = [(ASFolderItemsSyncTask *)self willUpdate];

              if (willUpdate)
              {
                v49 = DALoggingwithCategory();
                if (os_log_type_enabled(v49, v46))
                {
                  *buf = 138412290;
                  *v85 = v45;
                  _os_log_impl(&dword_24A0AC000, v49, v46, "The following collection item isn't known by the server.  We'll delete it locally.  Item %@", buf, 0xCu);
                }

                [v45 setChangeType:2];
                [(ASFolderItemsSyncTask *)self _handleChangedLeaf:v45 addedChanges:v66 modifiedChanges:v69 removedChanges:v70];
                goto LABEL_56;
              }
            }

            else
            {
            }

            [(ASFolderItemsSyncTask *)self _handleResponseToLeaf:v45 addedResponses:v71 modifiedResponses:v72 removedResponses:v7 fetchedResponses:v8, v64];
LABEL_56:
            nextObject4 = [v67 nextObject];

            v45 = nextObject4;
          }

          while (nextObject4);
        }

        v52 = v65;
        status5 = [v65 status];
        v9 = -[ASFolderItemsSyncTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status5 intValue]);

        syncKey = [v65 syncKey];

        if (syncKey && v9 == 2)
        {
          syncKey2 = [v65 syncKey];
          v5 = v66;
        }

        else
        {
          v5 = v66;
          if (v9 == 2)
          {
            syncKey2 = 0;
          }

          else
          {
            v55 = DALoggingwithCategory();
            v56 = *(MEMORY[0x277D03988] + 4);
            if (os_log_type_enabled(v55, v56))
            {
              *buf = 138412546;
              *v85 = self;
              *&v85[8] = 2048;
              *&v85[10] = v9;
              _os_log_impl(&dword_24A0AC000, v55, v56, "%@ collection error code was %ld", buf, 0x16u);
            }

            syncKey2 = 0;
            v52 = v65;
          }
        }

        if ([(ASFolderItemsSyncTask *)self numReplacedItems]<= 0)
        {
          [v52 changedItems];
          v59 = v58 = v52;
          if ([v59 count])
          {
            v57 = 1;
          }

          else
          {
            responseItems2 = [v58 responseItems];
            v57 = [responseItems2 count] != 0;

            v5 = v66;
          }

          v52 = v65;
        }

        else
        {
          v57 = 1;
        }

        moreAvailable = [v52 moreAvailable];
        -[ASFolderItemsSyncTask setMoreAvailable:](self, "setMoreAvailable:", [moreAvailable BOOLValue]);

        if ([(ASFolderItemsSyncTask *)self moreAvailable]&& !v57)
        {
          v62 = DALoggingwithCategory();
          v63 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v62, v63))
          {
            *buf = 138412290;
            *v85 = self;
            _os_log_impl(&dword_24A0AC000, v62, v63, "%@ saw more available, but no new content", buf, 0xCu);
          }

          [(ASFolderItemsSyncTask *)self setHadFalseMoreAvailable:1];
          [(ASFolderItemsSyncTask *)self setMoreAvailable:0];
          v5 = v66;
        }

LABEL_38:
        v6 = v69;
        goto LABEL_39;
      }
    }

    else
    {
      v9 = 1;
    }

    v39 = DALoggingwithCategory();
    v40 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 134218240;
      *v85 = self;
      *&v85[8] = 2048;
      *&v85[10] = v9;
      _os_log_impl(&dword_24A0AC000, v39, v40, "ASFolderItemsSyncTask %p failed with status: %ld", buf, 0x16u);
    }

    syncKey2 = 0;
    goto LABEL_38;
  }

  v10 = DALoggingwithCategory();
  currentlyParsingItem = v10;
  if (v9 == -1)
  {
    v18 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v18))
    {
      *buf = 138412290;
      *v85 = objc_opt_class();
      v19 = *v85;
      _os_log_impl(&dword_24A0AC000, currentlyParsingItem, v18, "%@ cancelled", buf, 0xCu);
    }

    syncKey2 = 0;
    v9 = -1;
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v12))
    {
      *buf = 138412546;
      *v85 = objc_opt_class();
      *&v85[8] = 2112;
      *&v85[10] = errorCopy;
      v13 = v6;
      v14 = *v85;
      _os_log_impl(&dword_24A0AC000, currentlyParsingItem, v12, "%@ failed: %@", buf, 0x16u);

      v6 = v13;
    }

    syncKey2 = 0;
  }

LABEL_39:

  if (![(ASTask *)self attemptRetryWithStatus:v9 error:errorCopy])
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __41__ASFolderItemsSyncTask_finishWithError___block_invoke;
    v73[3] = &unk_278FC8000;
    v73[4] = self;
    v83 = v9;
    v74 = errorCopy;
    v75 = syncKey2;
    v76 = v5;
    v77 = v70;
    v78 = v6;
    v79 = v71;
    v80 = v72;
    v81 = v7;
    v82 = v8;
    [(ASTask *)self finishWithError:v74 afterDelegateCallout:v73];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];
}

void __41__ASFolderItemsSyncTask_finishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 folderItemsSyncTask:*(a1 + 32) completedWithStatus:*(a1 + 112) error:*(a1 + 40) newSyncKey:*(a1 + 48) added:*(a1 + 56) removed:*(a1 + 64) modified:*(a1 + 72) addedResponse:*(a1 + 80) modifiedResponse:*(a1 + 88) removedResponse:*(a1 + 96) fetchedResponse:*(a1 + 104)];
}

- (double)percentComplete
{
  parseContext = [(ASTask *)self parseContext];
  expectedTotalBytesCount = [parseContext expectedTotalBytesCount];

  if (expectedTotalBytesCount < 1)
  {
    return -1.0;
  }

  parseContext2 = [(ASTask *)self parseContext];
  currentBytesReceivedCount = [parseContext2 currentBytesReceivedCount];
  parseContext3 = [(ASTask *)self parseContext];
  v8 = currentBytesReceivedCount / [parseContext3 expectedTotalBytesCount];

  return v8;
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v13 = *MEMORY[0x277D85DE8];
  result = 2;
  switch(status)
  {
    case 0:
    case 1:
      return result;
    case 2:
      result = 30;
      break;
    case 3:
      result = 8;
      break;
    case 4:
    case 14:
    case 15:
      result = 9;
      break;
    case 5:
    case 13:
    case 16:
      result = 5;
      break;
    case 6:
      result = 31;
      break;
    case 7:
      result = 32;
      break;
    case 8:
      result = 12;
      break;
    case 9:
      result = 33;
      break;
    case 10:
      result = 34;
      break;
    case 11:
      result = 21;
      break;
    case 12:
      result = 67;
      break;
    default:
      if (status == 111)
      {
        result = 80;
      }

      else
      {
        v5 = DALoggingwithCategory();
        v6 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v5, v6))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = 138412546;
          v10 = v8;
          v11 = 1024;
          statusCopy = status;
          _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v9, 0x12u);
        }

        result = 10;
      }

      break;
  }

  return result;
}

- (NSString)previousSyncKeyForAgent
{
  if ([(ASFolderItemsSyncTask *)self isInitialBootstrapSync])
  {
    previousSyncKey = @"0";
  }

  else
  {
    previousSyncKey = [(ASFolderItemsSyncTask *)self previousSyncKey];
  }

  return previousSyncKey;
}

- (void)reportStatusWithError:(id)error
{
  errorCopy = error;
  if (!overSimplifiedStatusForError(errorCopy) && [(ASFolderItemsSyncTask *)self hadFalseMoreAvailable])
  {
    taskManager = [(ASTask *)self taskManager];
    account = [taskManager account];
    statusReport = [account statusReport];

    [statusReport noteFalseMoreAvailableResponse];
  }

  v8.receiver = self;
  v8.super_class = ASFolderItemsSyncTask;
  [(ASTask *)&v8 reportStatusWithError:errorCopy];
}

- (void)appendActionData:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_24A0AC000, log, OS_LOG_TYPE_FAULT, "An add action does not contain client ID", buf, 2u);
}

@end