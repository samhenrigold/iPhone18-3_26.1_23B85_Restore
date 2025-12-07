@interface _MFOfflineCacheOperation
- (BOOL)databaseID:(id *)d andMailbox:(id *)mailbox forMessageWithRemoteID:(id)iD connection:(id)connection;
@end

@implementation _MFOfflineCacheOperation

- (BOOL)databaseID:(id *)d andMailbox:(id *)mailbox forMessageWithRemoteID:(id)iD connection:(id)connection
{
  v30[1] = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  connectionCopy = connection;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v11 = [connectionCopy preparedStatementForQueryString:{@"SELECT ROWID, mailbox FROM messages WHERE remote_id = ? LIMIT 1"}];
  v30[0] = iDCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v16 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84___MFOfflineCacheOperation_databaseID_andMailbox_forMessageWithRemoteID_connection___block_invoke;
  v17[3] = &unk_1E7AA4130;
  v17[4] = &v24;
  v17[5] = &v18;
  v13 = [v11 executeWithIndexedBindings:v12 usingBlock:v17 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    [connectionCopy handleError:v14 message:@"Fetching database ID and mailbox for message"];
  }

  if (d)
  {
    *d = v25[5];
  }

  if (mailbox)
  {
    *mailbox = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

@end