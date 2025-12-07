@interface MFDADeferredMessageMoveOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)connection;
- (MFDADeferredMessageMoveOperation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFDADeferredMessageMoveOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MFDADeferredMessageMoveOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_304 != -1)
  {
    dispatch_once(&log_onceToken_304, block);
  }

  v2 = log_log_303;

  return v2;
}

void __39__MFDADeferredMessageMoveOperation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_303;
  log_log_303 = v1;
}

- (MFDADeferredMessageMoveOperation)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = MFDADeferredMessageMoveOperation;
  v5 = [(MFDADeferredMessageMoveOperation *)&v26 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[MFDADeferredMessageMoveOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 546, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceMailbox"];
    sourceMailboxID = v5->_sourceMailboxID;
    v5->_sourceMailboxID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationMailbox"];
    destinationMailboxID = v5->_destinationMailboxID;
    v5->_destinationMailboxID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"SourceRemoteIDs"];
    sourceRemoteIDs = v5->_sourceRemoteIDs;
    v5->_sourceRemoteIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"OriginalFlags"];
    originalFlags = v5->_originalFlags;
    v5->_originalFlags = v18;

    v20 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"TemporaryIDs"];
    temporaryRemoteIDs = v5->_temporaryRemoteIDs;
    v5->_temporaryRemoteIDs = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[MFDADeferredMessageMoveOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 558, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [coderCopy encodeObject:self->_sourceMailboxID forKey:@"SourceMailbox"];
  [coderCopy encodeObject:self->_destinationMailboxID forKey:@"DestinationMailbox"];
  [coderCopy encodeObject:self->_sourceRemoteIDs forKey:@"SourceRemoteIDs"];
  [coderCopy encodeObject:self->_originalFlags forKey:@"OriginalFlags"];
  [coderCopy encodeObject:self->_temporaryRemoteIDs forKey:@"TemporaryIDs"];
}

- (BOOL)translateToLocalActionWithConnection:(id)connection
{
  v81 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if ([(NSArray *)self->_sourceRemoteIDs count])
  {
    v5 = [(NSArray *)self->_sourceRemoteIDs count];
    if (v5 == [(NSArray *)self->_temporaryRemoteIDs count])
    {
      v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_temporaryRemoteIDs, "count")}];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v78 = __Block_byref_object_copy__15;
      v79 = __Block_byref_object_dispose__15;
      v80 = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__15;
      v72 = __Block_byref_object_dispose__15;
      v73 = 0;
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = [(NSArray *)self->_temporaryRemoteIDs valueForKey:@"ef_quotedSQLEscapedString"];
      v8 = [v7 componentsJoinedByString:{@", "}];
      v37 = [v6 initWithFormat:@"SELECT messages.ROWID, messages.mailbox, mailboxes.url FROM messages JOIN mailboxes ON messages.mailbox = mailboxes.ROWID WHERE remote_id IN (%@)", v8];

      v9 = [connectionCopy preparedStatementForQueryString:v37];
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__15;
      v66 = __Block_byref_object_dispose__15;
      v67 = 0;
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke;
      v54[3] = &unk_1E7AA64B8;
      v10 = v36;
      v55 = v10;
      v56 = buf;
      v57 = &v68;
      v11 = (v63 + 5);
      obj = v63[5];
      v35 = v9;
      LOBYTE(v9) = [v9 executeUsingBlock:v54 error:&obj];
      objc_storeStrong(v11, obj);
      v61 = v9;
      v12 = v59;
      if ((v59[3] & 1) == 0)
      {
        [connectionCopy handleError:v63[5] message:@"Selecting messages with temporary remote IDs"];
        v12 = v59;
      }

      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__15;
      v51 = __Block_byref_object_dispose__15;
      v52 = 0;
      if (*(v12 + 24) != 1)
      {
        goto LABEL_24;
      }

      uRLByDeletingLastPathComponent = [v69[5] URLByDeletingLastPathComponent];
      v14 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:self->_sourceMailboxID];

      v15 = 0x1E695D000uLL;
      if (v14)
      {
        v16 = [connectionCopy preparedStatementForQueryString:@"SELECT ROWID FROM mailboxes WHERE URL = ? LIMIT 1"];
        absoluteString = [v14 absoluteString];
        v76 = absoluteString;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke_2;
        v46[3] = &unk_1E7AA3810;
        v46[4] = &v47;
        v19 = (v63 + 5);
        v45 = v63[5];
        v20 = [v16 executeWithIndexedBindings:v18 usingBlock:v46 error:&v45];
        objc_storeStrong(v19, v45);
        v15 = 0x1E695D000;
        *(v59 + 24) = v20;

        if ((v59[3] & 1) == 0)
        {
          [connectionCopy handleError:v63[5] message:@"Selecting source mailbox"];
        }

        if (!v48[5])
        {
          v21 = +[MFDADeferredMessageMoveOperation log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:self->_sourceMailboxID];
            [(MFDADeferredMessageMoveOperation *)v22 translateToLocalActionWithConnection:v75, v21];
          }
        }
      }

      else
      {
        v16 = +[MFDADeferredMessageMoveOperation log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v27 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:self->_sourceMailboxID];
          [(MFDADeferredMessageMoveOperation *)v27 translateToLocalActionWithConnection:v75, v16];
        }
      }

      if (!v48[5])
      {
        goto LABEL_24;
      }

      v28 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (6, ?, ?, ?, 0)"}];
      v74[0] = v48[5];
      v74[1] = v74[0];
      v74[2] = *(*&buf[8] + 40);
      v29 = [*(v15 + 3784) arrayWithObjects:v74 count:3];
      v30 = (v63 + 5);
      v44 = v63[5];
      v31 = [v28 executeWithIndexedBindings:v29 usingBlock:0 error:&v44];
      objc_storeStrong(v30, v44);
      *(v59 + 24) = v31;

      if (*(v59 + 24) == 1)
      {
        lastInsertedDatabaseID = [connectionCopy lastInsertedDatabaseID];

        if (!lastInsertedDatabaseID)
        {
LABEL_24:
          v26 = *(v59 + 24);
          _Block_object_dispose(&v47, 8);

          _Block_object_dispose(&v58, 8);
          _Block_object_dispose(&v62, 8);

          _Block_object_dispose(&v68, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_25;
        }

        v33 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, NULL, ?, ?, 3)"}];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke_349;
        v38[3] = &unk_1E7AA64E0;
        v38[4] = self;
        v39 = v33;
        v41 = &v58;
        v42 = &v62;
        v43 = lastInsertedDatabaseID;
        v40 = connectionCopy;
        v28 = v33;
        [v10 enumerateObjectsUsingBlock:v38];
      }

      else
      {
        [connectionCopy handleError:v63[5] message:@"Inserting move action"];
      }

      goto LABEL_24;
    }
  }

  v10 = +[MFDADeferredMessageMoveOperation log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(NSArray *)self->_sourceRemoteIDs count];
    v24 = [(NSArray *)self->_temporaryRemoteIDs count];
    v25 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:self->_sourceMailboxID];
    *buf = 134218498;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v24;
    *&buf[22] = 2114;
    v78 = v25;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Not enough _sourceRemoteIDs(%ld) or _temporaryRemoteIDs(%ld) to migrate for source mailbox %{public}@", buf, 0x20u);
  }

  v26 = 1;
LABEL_25:

  return v26 & 1;
}

void __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  if (!*(*(*(a1 + 40) + 8) + 40) || !*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [v14 objectAtIndexedSubscript:1];
    v6 = [v5 numberValue];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v14 objectAtIndexedSubscript:2];
    v10 = [v9 stringValue];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

void __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a4 = 1;
}

void __73__MFDADeferredMessageMoveOperation_translateToLocalActionWithConnection___block_invoke_349(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a3];
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 72)];
  v14[0] = v10;
  v14[1] = v8;
  v14[2] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  LOBYTE(v9) = [v9 executeWithIndexedBindings:v11 usingBlock:0 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v9;

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 48) handleError:*(*(*(a1 + 64) + 8) + 40) message:@"Inserting message for move"];
    *a4 = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFDADeferredMessageMoveOperation;
  v4 = [(MFDADeferredMessageMoveOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ source %@, destination %@, %lu messages", v4, self->_sourceMailboxID, self->_destinationMailboxID, -[NSArray count](self->_sourceRemoteIDs, "count")];

  return v5;
}

- (void)translateToLocalActionWithConnection:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Unable to find source mailbox in database for source mailbox id: %{public}@", buf, 0xCu);
}

- (void)translateToLocalActionWithConnection:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Unable to find source mailbox URL for source mailbox id: %{public}@", buf, 0xCu);
}

@end