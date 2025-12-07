@interface MFMailMessageLibraryModifyColumnDefinitionsMigrationStep
- (BOOL)performMigrationStep;
- (EFSQLSchema)schema;
- (MFMailMessageLibraryModifyColumnDefinitionsMigrationStep)initWithSQLiteConnection:(id)connection;
- (id)actionFlagsTableSchema;
- (id)actionLabelsTableSchema;
- (id)actionMessagesTableSchema;
- (id)localMessageActionsTableSchema;
- (id)mailboxesTableStubSchema;
- (id)messagesTableStubSchema;
- (id)serverLabelsTableSchema;
- (id)serverMessagesTableSchema;
@end

@implementation MFMailMessageLibraryModifyColumnDefinitionsMigrationStep

- (MFMailMessageLibraryModifyColumnDefinitionsMigrationStep)initWithSQLiteConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryModifyColumnDefinitionsMigrationStep;
  v6 = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (EFSQLSchema)schema
{
  v28[8] = *MEMORY[0x1E69E9840];
  messagesTableStubSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self messagesTableStubSchema];
  mailboxesTableStubSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self mailboxesTableStubSchema];
  serverMessagesTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self serverMessagesTableSchema];
  serverLabelsTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self serverLabelsTableSchema];
  localMessageActionsTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self localMessageActionsTableSchema];
  actionMessagesTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self actionMessagesTableSchema];
  actionLabelsTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self actionLabelsTableSchema];
  actionFlagsTableSchema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self actionFlagsTableSchema];
  v11 = [serverMessagesTableSchema columnForName:@"message"];
  [v11 setAsForeignKeyForTable:messagesTableStubSchema onDelete:3 onUpdate:0];

  v12 = [serverMessagesTableSchema columnForName:@"mailbox"];
  [v12 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v13 = [serverLabelsTableSchema columnForName:@"server_message"];
  [v13 setAsForeignKeyForTable:serverMessagesTableSchema onDelete:2 onUpdate:0];

  v14 = [serverLabelsTableSchema columnForName:@"label"];
  [v14 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v15 = [localMessageActionsTableSchema columnForName:@"mailbox"];
  [v15 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v16 = [localMessageActionsTableSchema columnForName:@"source_mailbox"];
  [v16 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v17 = [localMessageActionsTableSchema columnForName:@"destination_mailbox"];
  [v17 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v18 = [actionMessagesTableSchema columnForName:@"action"];
  [v18 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v19 = [actionMessagesTableSchema columnForName:@"message"];
  [v19 setAsForeignKeyForTable:messagesTableStubSchema onDelete:3 onUpdate:0];

  v20 = [actionMessagesTableSchema columnForName:@"destination_message"];
  [v20 setAsForeignKeyForTable:messagesTableStubSchema onDelete:2 onUpdate:0];

  v21 = [actionLabelsTableSchema columnForName:@"action"];
  [v21 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v22 = [actionLabelsTableSchema columnForName:@"label"];
  [v22 setAsForeignKeyForTable:mailboxesTableStubSchema onDelete:2 onUpdate:0];

  v23 = [actionFlagsTableSchema columnForName:@"action"];
  [v23 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v24 = objc_alloc(MEMORY[0x1E699B940]);
  v28[0] = messagesTableStubSchema;
  v28[1] = mailboxesTableStubSchema;
  v28[2] = serverMessagesTableSchema;
  v28[3] = serverLabelsTableSchema;
  v28[4] = localMessageActionsTableSchema;
  v28[5] = actionMessagesTableSchema;
  v28[6] = actionLabelsTableSchema;
  v28[7] = actionFlagsTableSchema;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:8];
  v26 = [v24 initWithTables:v25];

  return v26;
}

- (id)messagesTableStubSchema
{
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [v2 initWithName:@"messages" rowIDType:1 columns:MEMORY[0x1E695E0F0]];

  return v3;
}

- (id)mailboxesTableStubSchema
{
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [v2 initWithName:@"mailboxes" rowIDType:1 columns:MEMORY[0x1E695E0F0]];

  return v3;
}

- (id)serverMessagesTableSchema
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v21 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v24 = v21;
  v25 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v20 = v25;
  v26 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sequence_identifier" nullable:1];
  v19 = v26;
  v18 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0];
  v27 = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted" nullable:0];
  v28 = v17;
  v16 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0];
  v29 = v16;
  v15 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0];
  v30 = v15;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0];
  v31 = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0];
  v32 = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0];
  v33 = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0];
  v34 = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0];
  v35 = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_color" nullable:0];
  v36 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:0];
  v37 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:14];
  v11 = [v2 initWithName:@"server_messages" rowIDType:2 columns:v10];

  v23[0] = @"mailbox";
  v23[1] = @"remote_id";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v11 addUniquenessConstraintForColumns:v12 conflictResolution:1];

  v22 = @"message";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v11 addIndexForColumns:v13];

  return v11;
}

- (id)serverLabelsTableSchema
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"server_message" nullable:1];
  v10[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9[0] = @"server_message";
  v9[1] = @"label";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v2 initWithName:@"server_labels" columns:v5 primaryKeyColumns:v6];

  return v7;
}

- (id)localMessageActionsTableSchema
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"source_mailbox" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_mailbox" nullable:1];
  v14[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_type" nullable:1];
  v14[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"user_initiated" nullable:1];
  v14[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v9 = [v2 initWithName:@"local_message_actions" rowIDType:2 columns:v8];

  v10 = *MEMORY[0x1E699B768];
  v13[0] = @"mailbox";
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v9 addIndexForColumns:v11];

  return v9;
}

- (id)actionMessagesTableSchema
{
  v17[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_phase" nullable:1];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:1];
  v17[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_message" nullable:1];
  v17[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v9 = [v2 initWithName:@"action_messages" rowIDType:1 columns:v8];

  v16 = @"action";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v9 addIndexForColumns:v10];

  v15 = @"message";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [v9 addIndexForColumns:v11];

  v14 = @"destination_message";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v9 addIndexForColumns:v12];

  return v9;
}

- (id)actionLabelsTableSchema
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v13[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"do_add" nullable:1];
  v13[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v13[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v7 = [v2 initWithName:@"action_labels" rowIDType:1 columns:v6];

  v12 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v8];

  v11 = @"label";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v7 addIndexForColumns:v9];

  return v7;
}

- (id)actionFlagsTableSchema
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_type" nullable:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_value" nullable:1];
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v7 = [v2 initWithName:@"action_flags" rowIDType:1 columns:v6];

  v10 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v7 addIndexForColumns:v8];

  return v7;
}

- (BOOL)performMigrationStep
{
  connection = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self connection];
  schema = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)self schema];
  v5 = [connection executeStatementString:@"ALTER TABLE server_messages RENAME TO server_messages_old" errorMessage:@"Renaming old server_messages"];
  v6 = [schema tableForName:@"server_messages"];
  v7 = [v6 definitionWithDatabaseName:0];

  if (v5 && [connection executeStatementString:v7 errorMessage:@"Creating new server_messages"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO server_messages SELECT * FROM server_messages_old", @"Populating new server_messages from old server_messages") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS server_messages_old", @"Dropping old server_messages") && objc_msgSend(connection, "executeStatementString:errorMessage:", v7, @"Creating new indexes for server_messages"))
  {
    v8 = [connection executeStatementString:@"ALTER TABLE local_message_actions RENAME TO local_message_actions_old" errorMessage:@"Renaming old local_message_actions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [schema tableForName:@"local_message_actions"];
  v10 = [v9 definitionWithDatabaseName:0];

  if (v8)
  {
    if ([connection executeStatementString:v10 errorMessage:@"Creating new local_message_actions"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO local_message_actions SELECT * FROM local_message_actions_old", @"Populating new local_message_actions from old local_message_actions") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS local_message_actions_old", @"Dropping old local_message_actions"))
    {
      LOBYTE(v8) = [connection executeStatementString:v10 errorMessage:@"Creating new indexes for local_message_actions"];
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

@end