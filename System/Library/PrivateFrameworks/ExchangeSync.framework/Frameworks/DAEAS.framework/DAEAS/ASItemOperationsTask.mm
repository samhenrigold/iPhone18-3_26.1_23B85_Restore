@interface ASItemOperationsTask
- (ASItemOperationsTask)init;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)handleStreamOperation:(int)operation forCodePage:(int)page tag:(int)tag withParentItem:(id)item withData:(char *)data dataLength:(int)length;
- (BOOL)processContext:(id)context;
- (id)replacementObjectForEmailItem:(id)item;
- (id)requestBody;
- (int)_mimeSupportCode;
- (int)bodyType;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
- (void)requestBody;
- (void)setCommands:(id)commands;
- (void)setStreamingMailMessage:(id)message;
@end

@implementation ASItemOperationsTask

- (ASItemOperationsTask)init
{
  v3.receiver = self;
  v3.super_class = ASItemOperationsTask;
  result = [(ASTask *)&v3 init];
  if (result)
  {
    result->_bodyTruncationBytes = -1;
    result->_mimeSupport = -1;
  }

  return result;
}

- (int)bodyType
{
  if (self->_mimeSupport)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (void)setCommands:(id)commands
{
  commandsCopy = commands;
  if (self->_commands != commandsCopy)
  {
    v6 = commandsCopy;
    objc_storeStrong(&self->_commands, commands);
    commandsCopy = v6;
  }
}

- (int)_mimeSupportCode
{
  mimeSupport = self->_mimeSupport;
  if ((mimeSupport + 1) < 4)
  {
    return dword_24A14DC90[(mimeSupport + 1)];
  }

  NSLog(&cfstr_UnexpectedMime.isa, a2, mimeSupport);
  return 2;
}

- (id)requestBody
{
  v28 = *MEMORY[0x277D85DE8];
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if (([protocol supportsItemOperationsCommand] & 1) == 0)
  {
    [(ASItemOperationsTask *)a2 requestBody];
  }

  v22 = protocol;
  v6 = objc_opt_new();
  [v6 switchToCodePage:20];
  [v6 openTag:5];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_commands;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        [v6 switchToCodePage:20];
        [v6 openTag:6];
        [v6 appendTag:7 withStringContent:@"Mailbox"];
        collectionID = [v12 collectionID];
        if (collectionID && (v14 = collectionID, [v12 serverID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
        {
          [v6 switchToCodePage:0];
          collectionID2 = [v12 collectionID];
          [v6 appendTag:18 withStringContent:collectionID2];

          serverID = [v12 serverID];
          v18 = v6;
          v19 = 13;
        }

        else
        {
          [v6 switchToCodePage:15];
          serverID = [v12 longID];
          v18 = v6;
          v19 = 24;
        }

        [v18 appendTag:v19 withStringContent:serverID];

        [v6 switchToCodePage:20];
        [v6 openProspectiveTag:8];
        [v6 switchToCodePage:0];
        if ([(ASItemOperationsTask *)self mimeSupport]!= -1)
        {
          [v6 appendTag:34 withIntContent:{-[ASItemOperationsTask _mimeSupportCode](self, "_mimeSupportCode")}];
        }

        [v6 switchToCodePage:17];
        [v6 openTag:5];
        [v6 appendTag:6 withIntContent:{-[ASItemOperationsTask bodyType](self, "bodyType")}];
        if (self->_bodyTruncationBytes != -1)
        {
          [v6 appendTag:7 withIntContent:?];
        }

        [v6 closeTag:5];
        [v6 closeProspectiveTag:8];
        [v6 closeTag:6];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  [v6 closeTag:5];
  data = [v6 data];

  return data;
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

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    LODWORD(v25) = length;
    v23 = [WeakRetained itemOperationsTask:self handleStreamOperation:v12 forCodePage:v11 tag:v10 withParentItem:v18Parent withData:data dataLength:v25];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)replacementObjectForEmailItem:(id)item
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v10[0] = itemCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [WeakRetained itemOperationsTask:self hasPartialResponses:v6];

  v8 = itemCopy;
  if (v7)
  {

    v8 = 0;
    ++self->_numReplacedItems;
  }

  return v8;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 20;
  *token = 5;
  *statusToken = 13;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (currentlyParsingItem)
  {
    goto LABEL_4;
  }

  if (self->super._haveSwitchedCodePage)
  {
LABEL_3:
    v6 = objc_opt_new();
    [(ASTask *)self setCurrentlyParsingItem:v6];
    self->_numReplacedItems = 0;

LABEL_4:
    currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];

    if (!currentlyParsingItem2)
    {
      goto LABEL_16;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__ASItemOperationsTask_processContext___block_invoke;
    v31[3] = &unk_278FC7D20;
    v31[4] = self;
    v8 = MEMORY[0x24C2119B0](v31);
    v34 = @"ASItemOperationsResponse.ASArray.ASItemOperationsFetchResult";
    v9 = MEMORY[0x24C2119B0]();
    v35 = v9;
    v10 = 1;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__ASItemOperationsTask_processContext___block_invoke_2;
    v30[3] = &unk_278FC7D98;
    v30[4] = self;
    v12 = MEMORY[0x24C2119B0](v30);
    69899 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASItemOperationsResponse.ASArray.ASItemOperationsFetchResult.ASDictionary.ASDictionary.%d", 69899];
    v32 = 69899;
    v14 = MEMORY[0x24C2119B0](v12);
    v33 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
    taskManager = [(ASTask *)self taskManager];
    account = [taskManager account];
    [currentlyParsingItem3 parseASParseContext:contextCopy root:0 parent:0 callbackDict:v11 streamCallbackDict:v15 account:account];

    currentlyParsingItem = self->super._currentlyParsingItem;
    if (currentlyParsingItem)
    {
      parsingState = [(ASItem *)currentlyParsingItem parsingState];
      if (parsingState > 4)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_24A14DCA0[parsingState];
      }
    }

    if ((v10 | 2) == 2)
    {
      goto LABEL_16;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  if (![contextCopy hasNumberOfTokensRemaining:2])
  {
    goto LABEL_17;
  }

  if ([contextCopy currentByte])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(contextCopy, "curOffset")];
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v23, v24, "Failure at index %lld:", buf, 0xCu);
    }

    v25 = DALoggingwithCategory();
    if (!os_log_type_enabled(v25, v24))
    {
      goto LABEL_26;
    }

    *buf = 138412290;
    curOffset = v21;
    goto LABEL_25;
  }

  [contextCopy advanceOffsetByAmount:1];
  if ([contextCopy currentByte] == 20)
  {
    [contextCopy advanceOffsetByAmount:1];
    [contextCopy setCodePage:20];
    self->super._haveSwitchedCodePage = 1;
    goto LABEL_3;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(contextCopy, "curOffset")];
  v29 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v29, v24))
  {
    *buf = 134217984;
    curOffset = [contextCopy curOffset];
    _os_log_impl(&dword_24A0AC000, v29, v24, "Failure at index %lld:", buf, 0xCu);
  }

  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v24))
  {
    *buf = 138412290;
    curOffset = v21;
LABEL_25:
    _os_log_impl(&dword_24A0AC000, v25, v24, "failure reason was %@", buf, 0xCu);
  }

LABEL_26:

  [contextCopy setParseErrorReason:v22];
LABEL_16:
  parseErrorReason = [contextCopy parseErrorReason];
  v27 = parseErrorReason == 0;

LABEL_18:
  return v27;
}

- (void)finishWithError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (!errorCopy)
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    v8 = currentlyParsingItem;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = objc_opt_class();
        numReplacedItems = self->_numReplacedItems;
        *buf = 138412802;
        v32 = v14;
        v33 = 2112;
        v34 = v8;
        v35 = 1024;
        v36 = numReplacedItems;
        v16 = v14;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ Parsed response of %@ (%d items downloaded and replaced while parsing)", buf, 0x1Cu);
      }

      status = [v8 status];
      v6 = -[ASItemOperationsTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

      if (v6 == 2)
      {
        fetchResponses = [v8 fetchResponses];
        goto LABEL_19;
      }
    }

    else
    {
      v6 = 1;
    }

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 134217984;
      v32 = v6;
      _os_log_impl(&dword_24A0AC000, v19, v20, "ASItemOperationsTask failed with status: %ld", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = v5;
  v7 = DALoggingwithCategory();
  v8 = v7;
  if (v6 != -1)
  {
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v9))
    {
      *buf = 138412546;
      v32 = objc_opt_class();
      v33 = 2112;
      v34 = errorCopy;
      v10 = v32;
      _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
    }

LABEL_15:
    fetchResponses = 0;
    goto LABEL_19;
  }

  v21 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v21))
  {
    *buf = 138412290;
    v32 = objc_opt_class();
    v22 = v32;
    _os_log_impl(&dword_24A0AC000, v8, v21, "%@ cancelled", buf, 0xCu);
  }

  fetchResponses = 0;
  v6 = -1;
LABEL_19:

  if (![(ASTask *)self attemptRetryWithStatus:v6 error:errorCopy])
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __40__ASItemOperationsTask_finishWithError___block_invoke;
    v26 = &unk_278FC7D70;
    selfCopy = self;
    v30 = v6;
    v28 = errorCopy;
    v29 = fetchResponses;
    [(ASTask *)self finishWithError:v28 afterDelegateCallout:&v23];
  }

  [(ASTask *)self setCurrentlyParsingItem:0, v23, v24, v25, v26, selfCopy];
}

void __40__ASItemOperationsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained itemOperationsTask:a1[4] completedWithStatus:a1[7] error:a1[5] responses:a1[6]];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v13 = *MEMORY[0x277D85DE8];
  if (status < 0x12)
  {
    return qword_24A14DCB8[status];
  }

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

  return 10;
}

- (void)setStreamingMailMessage:(id)message
{
  messageCopy = message;
  if (self->_streamingMailMessage != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_streamingMailMessage, message);
    messageCopy = v6;
  }
}

- (void)requestBody
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASItemOperationsTask.m" lineNumber:82 description:{@"We were asked to fetch an email with ItemOperations, but our protocol %@ doesn't support that", a3}];
}

@end