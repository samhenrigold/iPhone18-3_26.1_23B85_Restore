@interface WFDropboxStorageServicesMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
+ (id)migrationClassDependencies;
- (void)migrateWorkflow;
@end

@implementation WFDropboxStorageServicesMigration

+ (id)migrationClassDependencies
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  v20 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"is.workflow.actions.dropbox.append", @"is.workflow.actions.dropbox.createfolder", @"is.workflow.actions.dropbox.delete2", @"is.workflow.actions.dropbox.getlink", @"is.workflow.actions.dropbox.pick", @"is.workflow.actions.dropbox.save", 0}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [migrationCopy objectForKey:@"WFWorkflowActions"];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKey:@"WFWorkflowActionIdentifier"];
        v12 = [v5 containsObject:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)migrateWorkflow
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v3 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(actions);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 objectForKey:@"WFWorkflowActionIdentifier"];
        if (objc_msgSend_isEqualToString_(v8))
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.append";
          v11 = &unk_1F4A99D98;
        }

        else if (objc_msgSend_isEqualToString_(v8))
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.createfolder";
          v11 = &unk_1F4A99DC0;
        }

        else if (objc_msgSend_isEqualToString_(v8))
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.delete";
          v11 = &unk_1F4A99DE8;
        }

        else if (objc_msgSend_isEqualToString_(v8))
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.getlink";
          v11 = MEMORY[0x1E695E0F8];
        }

        else if (objc_msgSend_isEqualToString_(v8))
        {
          v9 = v7;
          v10 = @"is.workflow.actions.documentpicker.open";
          v11 = &unk_1F4A99E10;
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(v8))
          {
            goto LABEL_19;
          }

          v9 = v7;
          v10 = @"is.workflow.actions.documentpicker.save";
          v11 = &unk_1F4A99E38;
        }

        WFMigrateDropboxAction(v9, v10, v11);
LABEL_19:
      }

      v4 = [actions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

@end