@interface SFAirDropTransfer
+ (id)keyPathsForValuesAffectingNeedsAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJustFiles;
- (BOOL)needsAction;
- (BOOL)updateUsingCoder:(id)coder;
- (BOOL)updateWithTransfer:(id)transfer;
- (SFAirDropTransfer)initWithCoder:(id)coder;
- (SFAirDropTransfer)initWithIdentifier:(id)identifier initialInformation:(id)information;
- (SFAirDropTransfer)initWithIdentifier:(id)identifier metaData:(id)data userResponse:(unint64_t)response transferState:(unint64_t)state failureReason:(unint64_t)reason error:(id)error customDestinationURL:(id)l contentsTitle:(id)self0 contentsDescription:(id)self1 selectedAction:(id)self2 possibleActions:(id)self3 cancelAction:(id)self4 completedURLs:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (unint64_t)itemCount;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFailureReason:(unint64_t)reason;
- (void)setTransferState:(unint64_t)state;
- (void)setUpProgressToBroadcast:(BOOL)broadcast;
- (void)setUserResponse:(unint64_t)response;
- (void)updateWithInformation:(id)information;
@end

@implementation SFAirDropTransfer

- (SFAirDropTransfer)initWithIdentifier:(id)identifier initialInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationCopy = information;
  v18.receiver = self;
  v18.super_class = SFAirDropTransfer;
  v8 = [(SFAirDropTransfer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_usedByTransferManager = 1;
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    if (v9->_usedByTransferManager)
    {
      v13 = airdrop_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v9->_identifier;
        *buf = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = informationCopy;
        _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Initialized with initial information: %@", buf, 0x16u);
      }
    }

    v9->_transferState = 0;
    v15 = [[SFAirDropTransferMetaData alloc] initWithInformation:informationCopy];
    metaData = v9->_metaData;
    v9->_metaData = v15;

    [(SFAirDropTransfer *)v9 updateWithInformation:informationCopy];
    [(SFAirDropTransfer *)v9 setUpProgressToBroadcast:v9->_usedByTransferManager];
  }

  return v9;
}

- (SFAirDropTransfer)initWithIdentifier:(id)identifier metaData:(id)data userResponse:(unint64_t)response transferState:(unint64_t)state failureReason:(unint64_t)reason error:(id)error customDestinationURL:(id)l contentsTitle:(id)self0 contentsDescription:(id)self1 selectedAction:(id)self2 possibleActions:(id)self3 cancelAction:(id)self4 completedURLs:(id)self5
{
  identifierCopy = identifier;
  obj = data;
  dataCopy = data;
  errorCopy = error;
  lCopy = l;
  titleCopy = title;
  descriptionCopy = description;
  actionCopy = action;
  actionsCopy = actions;
  cancelActionCopy = cancelAction;
  lsCopy = ls;
  v37.receiver = self;
  v37.super_class = SFAirDropTransfer;
  v22 = [(SFAirDropTransfer *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_metaData, obj);
    v23->_userResponse = response;
    v23->_transferState = state;
    v23->_failureReason = reason;
    objc_storeStrong(&v23->_error, error);
    objc_storeStrong(&v23->_customDestinationURL, l);
    objc_storeStrong(&v23->_contentsTitle, title);
    objc_storeStrong(&v23->_contentsDescription, description);
    objc_storeStrong(&v23->_selectedAction, action);
    objc_storeStrong(&v23->_possibleActions, actions);
    objc_storeStrong(&v23->_cancelAction, cancelAction);
    objc_storeStrong(&v23->_completedURLs, ls);
    v24 = v23;
  }

  return v23;
}

- (void)setUpProgressToBroadcast:(BOOL)broadcast
{
  broadcastCopy = broadcast;
  v34[3] = *MEMORY[0x1E69E9840];
  v5 = SFAirDropDownloadsURL();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];
    v8 = [v7 URLByAppendingPathComponent:self->_identifier isDirectory:1];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E696AE38];
    if (broadcastCopy)
    {
      v10 = objc_alloc(MEMORY[0x1E696AE38]);
      v11 = *MEMORY[0x1E696A858];
      v33[0] = *MEMORY[0x1E696A880];
      v33[1] = v11;
      v12 = *MEMORY[0x1E696A860];
      v34[0] = v8;
      v34[1] = v12;
      v33[2] = *MEMORY[0x1E696A878];
      v13 = MEMORY[0x1E696AD98];
      metaData = [(SFAirDropTransfer *)self metaData];
      rawFiles = [metaData rawFiles];
      v16 = [v13 numberWithUnsignedInteger:{objc_msgSend(rawFiles, "count")}];
      v34[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
      v18 = [v10 initWithParent:0 userInfo:v17];
      transferProgress = self->_transferProgress;
      self->_transferProgress = v18;

      [(NSProgress *)self->_transferProgress setCancellable:1];
      [(NSProgress *)self->_transferProgress setPausable:0];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke;
      v29[3] = &unk_1E788AEA0;
      v20 = &v31;
      objc_copyWeak(&v31, &location);
      v30 = v8;
      [(NSProgress *)self->_transferProgress setCancellationHandler:v29];
      [(NSProgress *)self->_transferProgress publish];
      v21 = &v30;
    }

    else
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_152;
      v26 = &unk_1E788C238;
      v20 = &v28;
      objc_copyWeak(&v28, &location);
      v27 = v8;
      v22 = [v9 addSubscriberForFileURL:v27 withPublishingHandler:&v23];
      [(SFAirDropTransfer *)self setProgressToken:v22, v23, v24, v25, v26];

      v21 = &v27;
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);

LABEL_9:
    goto LABEL_10;
  }

  if (self->_usedByTransferManager)
  {
    v7 = airdrop_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SFAirDropTransfer *)self setUpProgressToBroadcast:v7];
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = airdrop_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained identifier];
    v5 = *(a1 + 32);
    v7 = 138543619;
    v8 = v4;
    v9 = 2113;
    v10 = v5;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_INFO, "[Transfer: %{public}@]: SFAirDropTransfer: cancellation handler called %{private}@", &v7, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setUserResponse:2];
}

id __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTransferProgress:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = WeakRetained;
  v8 = *(a1 + 32);
  v5 = _Block_copy(v7);

  return v5;
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = airdrop_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Progress unpublished for transfer at %@", &v10, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 progressToken];
  v8 = [*v5 setProgressToken:0];
  if (v7)
  {
    [*v5 setTransferProgress:0];
  }

  else
  {
    v9 = airdrop_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2_cold_1(v5, v9);
    }
  }
}

- (BOOL)isJustFiles
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  metaData = [(SFAirDropTransfer *)self metaData];
  items = [metaData items];

  v4 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(items);
        }

        if (![*(*(&v10 + 1) + 8 * i) isFile])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (unint64_t)itemCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  metaData = [(SFAirDropTransfer *)self metaData];
  items = [metaData items];

  v4 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(items);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) count];
      }

      v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_progressToken)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:?];
  }

  [(NSProgress *)self->_transferProgress unpublish];
  v3.receiver = self;
  v3.super_class = SFAirDropTransfer;
  [(SFAirDropTransfer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 updateWithTransfer:self];
  return v4;
}

- (SFAirDropTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropTransfer *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransfer *)v5 updateUsingCoder:coderCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_metaData forKey:@"metaData"];
  [coderCopy encodeInteger:self->_userResponse forKey:@"userResponse"];
  [coderCopy encodeInteger:self->_transferState forKey:@"transferState"];
  [coderCopy encodeInteger:self->_failureReason forKey:@"failureReason"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeObject:self->_contentsTitle forKey:@"contentsTitle"];
  [coderCopy encodeObject:self->_contentsDescription forKey:@"contentsDescription"];
  [coderCopy encodeObject:self->_selectedAction forKey:@"selectedAction"];
  [coderCopy encodeObject:self->_possibleActions forKey:@"possibleActions"];
  [coderCopy encodeObject:self->_cancelAction forKey:@"cancelAction"];
  [coderCopy encodeBool:self->_willOpenInMRQL forKey:@"willOpenInMRQL"];
  [coderCopy encodeObject:self->_completedURLs forKey:@"completedURLs"];
}

- (id)description
{
  v35 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v35, "<%@: identifier: %@", v3, self->_identifier);
  v4 = v35;
  v34 = v4;
  v5 = SFAirDropTransferStateToString(self->_transferState);
  NSAppendPrintF(&v34, ", transferState: %@", v5);
  v6 = v34;

  if (self->_transferState == 9)
  {
    v33 = v6;
    NSAppendPrintF(&v33, ", error: %{error}", self->_error);
    v7 = v33;

    v32 = v7;
    v8 = self->_failureReason - 1;
    if (v8 > 2)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E788C278[v8];
    }

    NSAppendPrintF(&v32, ", failureReason: %@", v9);
    v6 = v32;
  }

  v31 = v6;
  userResponse = self->_userResponse;
  if (userResponse > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E788C258[userResponse];
  }

  NSAppendPrintF(&v31, ", userResponse: %@", v11);
  v12 = v31;

  v30 = v12;
  if ([(SFAirDropTransfer *)self needsAction])
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  NSAppendPrintF(&v30, ", needsAction: %s", v13);
  v14 = v30;

  v29 = v14;
  if ([(SFAirDropTransfer *)self willOpenInMRQL])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  NSAppendPrintF(&v29, ", willOpenInMRQL: %s", v15);
  v16 = v29;

  selectedAction = self->_selectedAction;
  if (selectedAction)
  {
    v28 = v16;
    localizedTitle = [(SFAirDropAction *)selectedAction localizedTitle];
    NSAppendPrintF(&v28, ", selectedAction: %@", localizedTitle);
    v19 = v28;
  }

  else
  {
    v27 = v16;
    localizedTitle = [(NSArray *)self->_possibleActions valueForKeyPath:@"@unionOfObjects.localizedTitle"];
    v20 = SFCompactStringFromCollection(localizedTitle);
    NSAppendPrintF(&v27, ", possibleActions: %@", v20);
    v19 = v27;

    v16 = v20;
  }

  v26 = v19;
  NSAppendPrintF(&v26, ", metadata: %@", self->_metaData);
  v21 = v26;

  v25 = v21;
  NSAppendPrintF(&v25, ">");
  v22 = v25;
  v23 = v25;

  return v22;
}

- (unint64_t)hash
{
  identifier = [(SFAirDropTransfer *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(SFAirDropTransfer *)self identifier];
      identifier2 = [(SFAirDropTransfer *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)updateWithTransfer:(id)transfer
{
  v4 = MEMORY[0x1E696ACC8];
  transferCopy = transfer;
  v6 = [[v4 alloc] initRequiringSecureCoding:1];
  [transferCopy encodeWithCoder:v6];

  v7 = objc_alloc(MEMORY[0x1E696ACD0]);
  encodedData = [v6 encodedData];
  v9 = [v7 initForReadingFromData:encodedData error:0];

  LOBYTE(self) = [(SFAirDropTransfer *)self updateUsingCoder:v9];
  [v9 finishDecoding];

  return self;
}

- (BOOL)updateUsingCoder:(id)coder
{
  v54[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  identifier = [(SFAirDropTransfer *)self identifier];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SFAirDropTransfer *)self setIdentifier:v6];

  identifier2 = [(SFAirDropTransfer *)self identifier];
  v52 = SFNilEqual(identifier, identifier2);

  metaData = [(SFAirDropTransfer *)self metaData];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
  [(SFAirDropTransfer *)self setMetaData:v9];

  metaData2 = [(SFAirDropTransfer *)self metaData];
  v51 = SFNilEqual(metaData, metaData2);

  userResponse = [(SFAirDropTransfer *)self userResponse];
  -[SFAirDropTransfer setUserResponse:](self, "setUserResponse:", [coderCopy decodeIntegerForKey:@"userResponse"]);
  v50 = userResponse != [(SFAirDropTransfer *)self userResponse];
  transferState = [(SFAirDropTransfer *)self transferState];
  -[SFAirDropTransfer setTransferState:](self, "setTransferState:", [coderCopy decodeIntegerForKey:@"transferState"]);
  v49 = transferState != [(SFAirDropTransfer *)self transferState];
  failureReason = [(SFAirDropTransfer *)self failureReason];
  -[SFAirDropTransfer setFailureReason:](self, "setFailureReason:", [coderCopy decodeIntegerForKey:@"failureReason"]);
  v48 = failureReason != [(SFAirDropTransfer *)self failureReason];
  error = [(SFAirDropTransfer *)self error];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(SFAirDropTransfer *)self setError:v15];

  error2 = [(SFAirDropTransfer *)self error];
  v47 = SFNilEqual(error, error2);

  contentsTitle = [(SFAirDropTransfer *)self contentsTitle];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentsTitle"];
  [(SFAirDropTransfer *)self setContentsTitle:v18];

  contentsTitle2 = [(SFAirDropTransfer *)self contentsTitle];
  v46 = SFNilEqual(contentsTitle, contentsTitle2);

  contentsDescription = [(SFAirDropTransfer *)self contentsDescription];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentsDescription"];
  [(SFAirDropTransfer *)self setContentsDescription:v21];

  contentsDescription2 = [(SFAirDropTransfer *)self contentsDescription];
  v45 = SFNilEqual(contentsDescription, contentsDescription2);

  selectedAction = [(SFAirDropTransfer *)self selectedAction];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedAction"];
  [(SFAirDropTransfer *)self setSelectedAction:v24];

  selectedAction2 = [(SFAirDropTransfer *)self selectedAction];
  v44 = SFNilEqual(selectedAction, selectedAction2);

  possibleActions = [(SFAirDropTransfer *)self possibleActions];

  v27 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v29 = [v27 setWithArray:v28];
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"possibleActions"];
  [(SFAirDropTransfer *)self setPossibleActions:v30];

  possibleActions2 = [(SFAirDropTransfer *)self possibleActions];
  v32 = SFNilEqual(possibleActions, possibleActions2);

  cancelAction = [(SFAirDropTransfer *)self cancelAction];

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelAction"];
  [(SFAirDropTransfer *)self setCancelAction:v34];

  cancelAction2 = [(SFAirDropTransfer *)self cancelAction];
  v36 = SFNilEqual(cancelAction, cancelAction2);

  LOBYTE(cancelAction2) = [(SFAirDropTransfer *)self willOpenInMRQL];
  -[SFAirDropTransfer setWillOpenInMRQL:](self, "setWillOpenInMRQL:", [coderCopy decodeBoolForKey:@"willOpenInMRQL"]);
  LOBYTE(possibleActions2) = [(SFAirDropTransfer *)self willOpenInMRQL];
  completedURLs = [(SFAirDropTransfer *)self completedURLs];

  v38 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v40 = [v38 setWithArray:v39];
  v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"completedURLs"];

  [(SFAirDropTransfer *)self setCompletedURLs:v41];
  completedURLs2 = [(SFAirDropTransfer *)self completedURLs];
  LOBYTE(self) = SFNilEqual(completedURLs, completedURLs2);

  return (v50 || (v52 & v51 & 1) == 0 || v49 || v48 || (v47 & v46 & v45 & v44 & v32 & v36 & 1) == 0) | (cancelAction2 ^ possibleActions2) & 1 | ((self & 1) == 0);
}

- (void)updateWithInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = [informationCopy objectForKeyedSubscript:@"Items"];
  [(SFAirDropTransfer *)self setCompletedURLs:v5];

  v6 = [informationCopy objectForKeyedSubscript:@"Error"];
  [(SFAirDropTransfer *)self setError:v6];

  error = [(SFAirDropTransfer *)self error];

  if (error && self->_usedByTransferManager)
  {
    v9 = airdrop_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      error2 = [(SFAirDropTransfer *)self error];
      v20 = 138543618;
      v21 = identifier;
      v22 = 2112;
      v23 = error2;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] updateWithInformation: Error was set: %@", &v20, 0x16u);
    }
  }

  v12 = [informationCopy objectForKeyedSubscript:@"TotalBytes"];
  v13 = v12;
  if (v12)
  {
    -[NSProgress setTotalUnitCount:](self->_transferProgress, "setTotalUnitCount:", [v12 longLongValue]);
  }

  v14 = [informationCopy objectForKeyedSubscript:@"BytesCopied"];
  v15 = v14;
  if (v14)
  {
    if (self->_usedByTransferManager)
    {
      v16 = airdrop_log(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = self->_identifier;
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Updating completedUnitCount: %@ bytesCopied / %@ totalBytes", &v20, 0x20u);
      }
    }

    -[NSProgress setCompletedUnitCount:](self->_transferProgress, "setCompletedUnitCount:", [v15 longLongValue]);
  }

  v18 = [informationCopy objectForKeyedSubscript:@"TimeRemaining"];
  if (v18)
  {
    [(NSProgress *)self->_transferProgress setUserInfoObject:v18 forKey:*MEMORY[0x1E696A808]];
  }

  v19 = [informationCopy objectForKeyedSubscript:@"FilesCopied"];
  if (v19)
  {
    [(NSProgress *)self->_transferProgress setUserInfoObject:v19 forKey:*MEMORY[0x1E696A810]];
  }
}

- (void)setUserResponse:(unint64_t)response
{
  v19 = *MEMORY[0x1E69E9840];
  userResponse = self->_userResponse;
  if (userResponse != response)
  {
    if (userResponse > 3)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E788C258[userResponse];
    }

    if (response > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_1E788C258[response];
    }

    if (self->_userResponse >= response)
    {
      if (!self->_usedByTransferManager)
      {
        return;
      }

      v11 = airdrop_log(self);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        v13 = 138543874;
        v14 = identifier;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&dword_1A9662000, v11, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Cannot change userResponse from %@ to %@", &v13, 0x20u);
      }
    }

    else
    {
      if (self->_usedByTransferManager)
      {
        v8 = airdrop_log(self);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = self->_identifier;
          v13 = 138543874;
          v14 = v9;
          v15 = 2112;
          v16 = v6;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Changing user response from %@ to %@", &v13, 0x20u);
        }
      }

      v10 = NSStringFromSelector(sel_userResponse);
      [(SFAirDropTransfer *)self willChangeValueForKey:v10];

      self->_userResponse = response;
      v11 = NSStringFromSelector(sel_userResponse);
      [(SFAirDropTransfer *)self didChangeValueForKey:v11];
    }
  }
}

- (void)setTransferState:(unint64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  transferState = self->_transferState;
  if (transferState != state)
  {
    v6 = SFAirDropTransferStateToString(transferState);
    v7 = SFAirDropTransferStateToString(state);
    v8 = v7;
    if (self->_transferState >= state)
    {
      if (!self->_usedByTransferManager)
      {
LABEL_12:

        return;
      }

      v12 = airdrop_log(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        v14 = 138543874;
        v15 = identifier;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_1A9662000, v12, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Cannot change transferState from %@ to %@", &v14, 0x20u);
      }
    }

    else
    {
      if (self->_usedByTransferManager)
      {
        v9 = airdrop_log(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = self->_identifier;
          v14 = 138543874;
          v15 = v10;
          v16 = 2112;
          v17 = v6;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Changing transfer state from %@ to %@", &v14, 0x20u);
        }
      }

      v11 = NSStringFromSelector(sel_transferState);
      [(SFAirDropTransfer *)self willChangeValueForKey:v11];

      self->_transferState = state;
      v12 = NSStringFromSelector(sel_transferState);
      [(SFAirDropTransfer *)self didChangeValueForKey:v12];
    }

    goto LABEL_12;
  }
}

- (void)setFailureReason:(unint64_t)reason
{
  v18 = *MEMORY[0x1E69E9840];
  failureReason = self->_failureReason;
  if (failureReason != reason)
  {
    if (failureReason - 1 > 2)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E788C278[failureReason - 1];
    }

    if (reason - 1 > 2)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_1E788C278[reason - 1];
    }

    if (self->_usedByTransferManager)
    {
      v8 = airdrop_log(self);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        v12 = 138543874;
        v13 = identifier;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_INFO, "[Transfer: %{public}@] Setting failure reason from %@ to %@", &v12, 0x20u);
      }
    }

    v10 = NSStringFromSelector(sel_failureReason);
    [(SFAirDropTransfer *)self willChangeValueForKey:v10];

    self->_failureReason = reason;
    v11 = NSStringFromSelector(sel_failureReason);
    [(SFAirDropTransfer *)self didChangeValueForKey:v11];
  }
}

+ (id)keyPathsForValuesAffectingNeedsAction
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSStringFromSelector(sel_selectedAction);
  v9 = v3;
  v4 = NSStringFromSelector(sel_possibleActions);
  v10 = v4;
  v5 = NSStringFromSelector(sel_userResponse);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [v2 setWithArray:{v6, v9, v10}];

  return v7;
}

- (BOOL)needsAction
{
  selectedAction = [(SFAirDropTransfer *)self selectedAction];
  if (selectedAction)
  {
    v4 = [(SFAirDropTransfer *)self userResponse]== 0;
  }

  else
  {
    possibleActions = [(SFAirDropTransfer *)self possibleActions];
    if ([possibleActions count])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(SFAirDropTransfer *)self userResponse]== 0;
    }
  }

  return v4;
}

- (void)setUpProgressToBroadcast:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = 138543618;
  v4 = v2;
  v5 = 2114;
  v6 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] [Transfer: %{public}@] Failed to set up progress object (Downloads URL not available)", &v3, 0x16u);
}

void __46__SFAirDropTransfer_setUpProgressToBroadcast___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "[Transfer: %{public}@] Progress token not available.", &v4, 0xCu);
}

@end