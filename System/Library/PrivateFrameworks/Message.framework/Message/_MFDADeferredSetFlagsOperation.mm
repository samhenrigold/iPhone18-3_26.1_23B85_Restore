@interface _MFDADeferredSetFlagsOperation
+ (id)log;
- (BOOL)translateToLocalActionWithConnection:(id)connection;
- (_MFDADeferredSetFlagsOperation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFDADeferredSetFlagsOperation

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___MFDADeferredSetFlagsOperation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_223 != -1)
  {
    dispatch_once(&log_onceToken_223, block);
  }

  v2 = log_log_222;

  return v2;
}

- (_MFDADeferredSetFlagsOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _MFDADeferredSetFlagsOperation;
  v5 = [(_MFDADeferredSetFlagsOperation *)&v9 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      __assert_rtn("[_MFDADeferredSetFlagsOperation initWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 374, "[aDecoder allowsKeyedCoding] && aDecoder must allow keyed coding");
    }

    v5->_onFlags = [coderCopy decodeInt64ForKey:@"OnFlags"];
    v5->_offFlags = [coderCopy decodeInt64ForKey:@"OffFlags"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageID"];
    messageID = v5->_messageID;
    v5->_messageID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[_MFDADeferredSetFlagsOperation encodeWithCoder:]", "MFMailMessageLibraryLocalActionsTablesMigrationStep.m", 384, "[aCoder allowsKeyedCoding] && aCoder must allow keyed coding");
  }

  [coderCopy encodeInt64:self->_onFlags forKey:@"OnFlags"];
  [coderCopy encodeInt64:self->_offFlags forKey:@"OffFlags"];
  [coderCopy encodeObject:self->_messageID forKey:@"MessageID"];
}

- (BOOL)translateToLocalActionWithConnection:(id)connection
{
  v46[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  onFlags = self->_onFlags;
  offFlags = self->_offFlags;
  v41 = 0;
  v42 = 0;
  v7 = [(_MFOfflineCacheOperation *)self databaseID:&v42 andMailbox:&v41 forMessageWithRemoteID:self->_messageID connection:connectionCopy];
  v35 = v42;
  v36 = v41;
  if (!v36)
  {
    v11 = +[_MFDADeferredSetFlagsOperation log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_MFDADeferredSetFlagsOperation *)&self->_messageID translateToLocalActionWithConnection:v11, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_20;
  }

  if (v7)
  {
    v8 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox, source_mailbox, destination_mailbox, user_initiated) VALUES (3, ?, NULL, NULL, 0)"}];
    v46[0] = v36;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    v40 = 0;
    v10 = [v8 executeWithIndexedBindings:v9 usingBlock:0 error:&v40];
    v11 = v40;

    if (v10)
    {
      lastInsertedDatabaseID = [connectionCopy lastInsertedDatabaseID];

      if (onFlags & 1 | offFlags & 1)
      {
        v33 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, 1, ?)"}];
        v32 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
        v45[0] = v32;
        v12 = [MEMORY[0x1E696AD98] numberWithBool:onFlags & 1];
        v45[1] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
        v39 = v11;
        v14 = [v33 executeWithIndexedBindings:v13 usingBlock:0 error:&v39];
        v15 = v39;

        if ((v14 & 1) == 0)
        {
          v8 = v33;
          [connectionCopy handleError:v15 message:@"Inserting read flag change"];
          LOBYTE(v7) = 0;
          v11 = v15;
          goto LABEL_19;
        }

        if (!((onFlags >> 1) & 1 | (offFlags >> 1) & 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v15 = v11;
        if (((onFlags | offFlags) & 2) == 0)
        {
LABEL_15:
          v28 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_messages (action, message, remote_id, destination_message, action_phase) VALUES (?, ?, ?, NULL, 0)"}];
          v29 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
          v43[0] = v29;
          v43[1] = v35;
          v43[2] = self->_messageID;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
          v37 = v15;
          LOBYTE(v7) = [v28 executeWithIndexedBindings:v30 usingBlock:0 error:&v37];
          v11 = v37;

          if ((v7 & 1) == 0)
          {
            [connectionCopy handleError:v11 message:@"Inserting message for flag change"];
          }

          v8 = v28;
          goto LABEL_19;
        }
      }

      v22 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, 4, ?)"}];
      v23 = [MEMORY[0x1E696AD98] numberWithLongLong:lastInsertedDatabaseID];
      v44[0] = v23;
      v24 = [MEMORY[0x1E696AD98] numberWithBool:(onFlags >> 1) & 1];
      v44[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
      v26 = v23;
      v38 = v15;
      v27 = v22;
      LODWORD(v22) = [v22 executeWithIndexedBindings:v25 usingBlock:0 error:&v38];
      v11 = v38;

      if (v22)
      {

        v15 = v11;
        goto LABEL_15;
      }

      v8 = v27;
      [connectionCopy handleError:v11 message:@"Inserting flagged flag change"];
    }

    else
    {
      [connectionCopy handleError:v11 message:@"Inserting flag change action"];
    }

    LOBYTE(v7) = 0;
LABEL_19:

LABEL_20:
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _MFDADeferredSetFlagsOperation;
  v4 = [(_MFDADeferredSetFlagsOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ message-id %@, on-flags %llu, off-flags %llu", v4, self->_messageID, self->_onFlags, self->_offFlags];

  return v5;
}

- (void)translateToLocalActionWithConnection:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "DAMessageID: %@ and corresponding mailboxNumber not found.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end