@interface BRCUploadSyncUpRequestsManager
+ (id)_fetchManagersDictionary;
+ (id)defaultManagerWithPersonaIdentifier:(id)identifier;
- (BOOL)cancelRequestForIdentifier:(id)identifier error:(id *)error;
- (BOOL)finishRequestForIdentifer:(id)identifer finishError:(id)error error:(id *)a5;
- (BOOL)registerRequestForIdentifier:(id)identifier requestType:(signed __int16)type requestSource:(id)source progress:(id)progress finishBlock:(id)block error:(id *)error;
- (id)_initWithPersonaIdentifier:(id)identifier;
- (id)getProgressForIdentifier:(id)identifier;
- (void)_callFinishBlockOnDataRequest:(id)request finishError:(id)error;
- (void)_invalidateRequestsTableWithNewSource:(id)source;
- (void)dumpToContext:(id)context;
- (void)finishRequestForItemsInZoneRowID:(id)d finishError:(id)error;
- (void)invalidateRequestsOfClient:(id)client;
@end

@implementation BRCUploadSyncUpRequestsManager

+ (id)_fetchManagersDictionary
{
  if (_fetchManagersDictionary_onceToken != -1)
  {
    +[BRCUploadSyncUpRequestsManager _fetchManagersDictionary];
  }

  v3 = _fetchManagersDictionary_managersByPersona;

  return v3;
}

uint64_t __58__BRCUploadSyncUpRequestsManager__fetchManagersDictionary__block_invoke()
{
  _fetchManagersDictionary_managersByPersona = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = BRCUploadSyncUpRequestsManager;
  v6 = [(BRCUploadSyncUpRequestsManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaIdentifer, identifier);
    v8 = objc_opt_new();
    requestsByItemGlobalID = v7->_requestsByItemGlobalID;
    v7->_requestsByItemGlobalID = v8;

    v10 = objc_opt_new();
    zoneIDToItemIDs = v7->_zoneIDToItemIDs;
    v7->_zoneIDToItemIDs = v10;

    latestSourceIdentifier = v7->_latestSourceIdentifier;
    v7->_latestSourceIdentifier = &unk_2837B0580;
  }

  return v7;
}

+ (id)defaultManagerWithPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _fetchManagersDictionary = [objc_opt_class() _fetchManagersDictionary];
  objc_sync_enter(_fetchManagersDictionary);
  v5 = [_fetchManagersDictionary objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [[BRCUploadSyncUpRequestsManager alloc] _initWithPersonaIdentifier:identifierCopy];
    [_fetchManagersDictionary setObject:v5 forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(_fetchManagersDictionary);

  return v5;
}

- (BOOL)registerRequestForIdentifier:(id)identifier requestType:(signed __int16)type requestSource:(id)source progress:(id)progress finishBlock:(id)block error:(id *)error
{
  typeCopy = type;
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sourceCopy = source;
  progressCopy = progress;
  blockCopy = block;
  v32 = [[BRCRequestData alloc] initWithProgress:progressCopy requestType:typeCopy finishBlock:blockCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([sourceCopy br_isEqualToNumber:selfCopy->_latestSourceIdentifier] & 1) == 0)
  {
    [(BRCUploadSyncUpRequestsManager *)selfCopy _invalidateRequestsTableWithNewSource:sourceCopy];
  }

  v19 = [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID objectForKey:identifierCopy];

  if (v19)
  {
    v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1006 description:{@"Request is already registered for %@", identifierCopy}];
    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v31 = "(passed to caller)";
        *buf = 136315906;
        v34 = "[BRCUploadSyncUpRequestsManager registerRequestForIdentifier:requestType:requestSource:progress:finishBlock:error:]";
        v35 = 2080;
        if (!error)
        {
          v31 = "(ignored by caller)";
        }

        v36 = v31;
        v37 = 2112;
        v38 = v20;
        v39 = 2112;
        v40 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v23 = v20;
      *error = v20;
    }

    v24 = v20;
  }

  else
  {
    [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID setObject:v32 forKey:identifierCopy];
    zoneIDToItemIDs = selfCopy->_zoneIDToItemIDs;
    zoneRowID = [identifierCopy zoneRowID];
    v24 = [(NSMutableDictionary *)zoneIDToItemIDs objectForKey:zoneRowID];

    if (!v24)
    {
      v24 = objc_opt_new();
      v27 = selfCopy->_zoneIDToItemIDs;
      zoneRowID2 = [identifierCopy zoneRowID];
      [(NSMutableDictionary *)v27 setObject:v24 forKey:zoneRowID2];
    }

    [v24 addObject:identifierCopy];
    v20 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v34 = v32;
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v20;
      _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] Registered request %@ for identifier %@%@", buf, 0x20u);
    }
  }

  objc_sync_exit(selfCopy);
  return v19 == 0;
}

- (void)_callFinishBlockOnDataRequest:(id)request finishError:(id)error
{
  if (request)
  {
    errorCopy = error;
    finishBlock = [request finishBlock];
    finishBlock[2](finishBlock, errorCopy);
  }
}

- (BOOL)finishRequestForIdentifer:(id)identifer finishError:(id)error error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID objectForKey:identiferCopy];
  v12 = [v11 copy];

  [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID removeObjectForKey:identiferCopy];
  zoneIDToItemIDs = selfCopy->_zoneIDToItemIDs;
  zoneRowID = [identiferCopy zoneRowID];
  v15 = [(NSMutableDictionary *)zoneIDToItemIDs objectForKey:zoneRowID];

  if (v15)
  {
    [v15 removeObject:identiferCopy];
    if (![v15 count])
    {
      v16 = selfCopy->_zoneIDToItemIDs;
      zoneRowID2 = [identiferCopy zoneRowID];
      [(NSMutableDictionary *)v16 removeObjectForKey:zoneRowID2];
    }
  }

  objc_sync_exit(selfCopy);
  if (v12)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v27 = identiferCopy;
      v28 = 2112;
      v29 = errorCopy;
      v30 = 2112;
      v31 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Calling finish block for %@ with %@%@", buf, 0x20u);
    }

    [(BRCUploadSyncUpRequestsManager *)selfCopy _callFinishBlockOnDataRequest:v12 finishError:errorCopy];
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1007 description:{@"there is no request for %@", identiferCopy}];
    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v25 = "(passed to caller)";
        *buf = 136315906;
        v27 = "[BRCUploadSyncUpRequestsManager finishRequestForIdentifer:finishError:error:]";
        v28 = 2080;
        if (!a5)
        {
          v25 = "(ignored by caller)";
        }

        v29 = v25;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v23 = v20;
      *a5 = v20;
    }
  }

  return v12 != 0;
}

- (BOOL)cancelRequestForIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x277CCA9B8];
  identifierCopy = identifier;
  brc_errorOperationCancelled = [v6 brc_errorOperationCancelled];
  LOBYTE(error) = [(BRCUploadSyncUpRequestsManager *)self finishRequestForIdentifer:identifierCopy finishError:brc_errorOperationCancelled error:error];

  return error;
}

- (void)finishRequestForItemsInZoneRowID:(id)d finishError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadSyncUpRequestsManager finishRequestForItemsInZoneRowID:finishError:];
  }

  v11 = [(NSMutableDictionary *)selfCopy->_zoneIDToItemIDs objectForKey:dCopy];
  v12 = v11;
  if (v11)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID objectForKey:*(*(&v18 + 1) + 8 * v16), v18];
          [(BRCUploadSyncUpRequestsManager *)selfCopy _callFinishBlockOnDataRequest:v17 finishError:errorCopy];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID removeObjectsForKeys:v13];
  }

  objc_sync_exit(selfCopy);
}

- (id)getProgressForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID objectForKey:identifierCopy];
  progress = [v6 progress];

  objc_sync_exit(selfCopy);

  return progress;
}

- (void)_invalidateRequestsTableWithNewSource:(id)source
{
  sourceCopy = source;
  v5 = objc_opt_new();
  requestsByItemGlobalID = self->_requestsByItemGlobalID;
  self->_requestsByItemGlobalID = v5;

  v7 = objc_opt_new();
  zoneIDToItemIDs = self->_zoneIDToItemIDs;
  self->_zoneIDToItemIDs = v7;

  latestSourceIdentifier = self->_latestSourceIdentifier;
  self->_latestSourceIdentifier = sourceCopy;
}

- (void)invalidateRequestsOfClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([clientCopy br_isEqualToNumber:selfCopy->_latestSourceIdentifier])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCUploadSyncUpRequestsManager invalidateRequestsOfClient:];
    }

    [(BRCUploadSyncUpRequestsManager *)selfCopy _invalidateRequestsTableWithNewSource:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:@"fpfs modifications tracked requests"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [contextCopy writeLineWithFormat:@"tracked requests of client (%lu) : (%lu):", -[NSNumber unsignedLongValue](selfCopy->_latestSourceIdentifier, "unsignedLongValue"), -[NSMutableDictionary count](selfCopy->_requestsByItemGlobalID, "count")];
  if ([(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID count])
  {
    [contextCopy writeLineWithFormat:@"{"];
    [contextCopy pushIndentation];
  }

  requestsByItemGlobalID = selfCopy->_requestsByItemGlobalID;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCUploadSyncUpRequestsManager_dumpToContext___block_invoke;
  v8[3] = &unk_278507A18;
  v7 = contextCopy;
  v9 = v7;
  [(NSMutableDictionary *)requestsByItemGlobalID enumerateKeysAndObjectsUsingBlock:v8];
  if ([(NSMutableDictionary *)selfCopy->_requestsByItemGlobalID count])
  {
    [v7 popIndentation];
    [v7 writeLineWithFormat:@"}"];
  }

  [v7 writeEmptyLine];

  objc_sync_exit(selfCopy);
}

@end