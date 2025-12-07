@interface MFDADeferredStoreDraftOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)connection;
- (MFDADeferredStoreDraftOperation)initWithCoder:(id)coder;
- (MFDADeferredStoreDraftOperation)initWithMessageIDHeader:(id)header mailbox:(id)mailbox;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFDADeferredStoreDraftOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MFDADeferredStoreDraftOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_369 != -1)
  {
    dispatch_once(&log_onceToken_369, block);
  }

  v2 = log_log_368;

  return v2;
}

void __38__MFDADeferredStoreDraftOperation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_368;
  log_log_368 = v1;
}

- (MFDADeferredStoreDraftOperation)initWithMessageIDHeader:(id)header mailbox:(id)mailbox
{
  headerCopy = header;
  mailboxCopy = mailbox;
  v15.receiver = self;
  v15.super_class = MFDADeferredStoreDraftOperation;
  v8 = [(MFDADeferredStoreDraftOperation *)&v15 init];
  if (v8)
  {
    v9 = [headerCopy copy];
    messageIDHeader = v8->_messageIDHeader;
    v8->_messageIDHeader = v9;

    v11 = [mailboxCopy copy];
    folderID = v8->_folderID;
    v8->_folderID = v11;

    v13 = v8;
  }

  return v8;
}

- (MFDADeferredStoreDraftOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MFDADeferredStoreDraftOperation;
  v5 = [(MFDADeferredStoreDraftOperation *)&v12 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[MFDADeferredStoreDraftOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 684, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageID"];
    messageIDHeader = v5->_messageIDHeader;
    v5->_messageIDHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FolderID"];
    folderID = v5->_folderID;
    v5->_folderID = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[MFDADeferredStoreDraftOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 693, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [coderCopy encodeObject:self->_messageIDHeader forKey:@"MessageID"];
  [coderCopy encodeObject:self->_folderID forKey:@"FolderID"];
}

- (BOOL)translateToLocalActionWithConnection:(id)connection
{
  v37[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__15;
  v33 = __Block_byref_object_dispose__15;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__15;
  v27 = __Block_byref_object_dispose__15;
  v28 = 0;
  v4 = [connectionCopy preparedStatementForQueryString:{@"SELECT ROWID, mailbox FROM messages JOIN WHERE message_id = ? LIMIT 1"}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:MFStringHashForMessageIDHeader()];
  v37[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v21 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__MFDADeferredStoreDraftOperation_translateToLocalActionWithConnection___block_invoke;
  v22[3] = &unk_1E7AA4130;
  v22[4] = &v29;
  v22[5] = &v23;
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:v22 error:&v21];
  v8 = v21;

  if (v7)
  {
    if (v24[5])
    {
      v9 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (2, ?, NULL, ?, 0)"}];
      v36[0] = v24[5];
      v36[1] = v36[0];
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v20 = v8;
      v11 = [v9 executeWithIndexedBindings:v10 usingBlock:0 error:&v20];
      v12 = v20;

      if (!v11)
      {
        [connectionCopy handleError:v12 message:@"Inserting append action"];
        v14 = 0;
LABEL_10:

        v8 = v12;
        goto LABEL_11;
      }

      lastInsertedDatabaseID = [connectionCopy lastInsertedDatabaseID];

      v8 = v12;
    }

    else
    {
      lastInsertedDatabaseID = 0;
    }

    v9 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, NULL, NULL, ?, 3)"}];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
    v16 = v30[5];
    v35[0] = v15;
    v35[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v19 = v8;
    v14 = [v9 executeWithIndexedBindings:v17 usingBlock:0 error:&v19];
    v12 = v19;

    if ((v14 & 1) == 0)
    {
      [connectionCopy handleError:v12 message:@"Inserting message for append"];
    }

    goto LABEL_10;
  }

  [connectionCopy handleError:v8 message:@"Selecting message for append"];
  v14 = 0;
LABEL_11:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __72__MFDADeferredStoreDraftOperation_translateToLocalActionWithConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v14 objectAtIndexedSubscript:1];
  v11 = [v10 numberValue];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *a4 = 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFDADeferredStoreDraftOperation;
  v4 = [(MFDADeferredStoreDraftOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ message-id %@", v4, self->_messageIDHeader];

  return v5;
}

@end