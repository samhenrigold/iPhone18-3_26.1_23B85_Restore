@interface MFMailMessageLibraryGlobalDataUpgradeStep
+ (BOOL)_recreateMessagesIndices:(id)indices;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryGlobalDataUpgradeStep

+ (int)runWithConnection:(id)connection
{
  if ([v4 executeStatementString:@"CREATE TABLE message_global_data (ROWID INTEGER PRIMARY KEY AUTOINCREMENT errorMessage:{\nmessage_id INTEGER, \nUNIQUE(message_id) ON CONFLICT ABORT)", @"Creating message_global_data"}] & 1) != 0 && objc_msgSend(v4, "executeStatementString:errorMessage:", @"INSERT INTO message_global_data (message_id) SELECT DISTINCT message_id FROM messages", @"Populating message_global_data table") && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DROP TRIGGER IF EXISTS after_delete_message\n", @"Dropping trigger") && objc_msgSend(v4, "executeStatementString:errorMessage:", @"ALTER TABLE messages RENAME TO messages_old", @"Moving messages table aside") && (objc_msgSend(self, "_messagesTableDefinition"), v5 = v4 = connection;
  {
    [v4 executeStatementString:@"INSERT INTO properties  (key errorMessage:{value) VALUES (NeedToMigrateFiles, 1)", @"Setting need to upgrade property"}];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)_recreateMessagesIndices:(id)indices
{
  v14 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&unk_1F2775220 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F2775220);
        }

        if (([indicesCopy executeStatementString:*(*(&v9 + 1) + 8 * i) errorMessage:@"Adding index"] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F2775220 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

@end