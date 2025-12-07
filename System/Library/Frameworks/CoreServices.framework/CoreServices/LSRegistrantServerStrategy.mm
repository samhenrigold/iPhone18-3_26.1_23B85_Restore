@interface LSRegistrantServerStrategy
- (id)notificationJournallerForBundleIdentifier:(id)identifier registeringPlaceholder:(BOOL)placeholder;
- (id)preUnregistrationContextForBundleIdentifier:(id)identifier;
- (id)preUnregistrationContextForBundleUnit:(unsigned int)unit context:(id)context;
- (void)enumerateSystemEXExtensionPoints:(id)points;
- (void)runSyncBlockInWriteContext:(id)context;
@end

@implementation LSRegistrantServerStrategy

- (id)preUnregistrationContextForBundleIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[_LSInstallProgressService sharedInstance];
  v9[0] = identifierCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v4 _prepareApplicationProxiesForNotification:0 identifiers:v5 withPlugins:0];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)preUnregistrationContextForBundleUnit:(unsigned int)unit context:(id)context
{
  v4 = *&unit;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRegistrants.mm" lineNumber:807 description:@"Bad context provided"];
  }

  contextPointer = [contextCopy contextPointer];
  v9 = +[_LSInstallProgressService sharedInstance];
  v10 = [v9 _prepareProxyForNotificationByBundleUnit:v4 context:contextPointer];

  return v10;
}

- (void)runSyncBlockInWriteContext:(id)context
{
  contextCopy = context;
  v4 = +[LSDBExecutionContext sharedServerInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__LSRegistrantServerStrategy_runSyncBlockInWriteContext___block_invoke;
  v6[3] = &unk_1E6A1A660;
  v5 = contextCopy;
  v7 = v5;
  [(LSDBExecutionContext *)v4 syncWrite:v6];
}

void __57__LSRegistrantServerStrategy_runSyncBlockInWriteContext___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LSMIResultRegistrantServerDatabaseContextProviding);
  (*(*(a1 + 32) + 16))();
}

- (id)notificationJournallerForBundleIdentifier:(id)identifier registeringPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  identifierCopy = identifier;
  v6 = [[_LSRegistrationNotificationJournaller alloc] initWithPrimaryBundleID:identifierCopy placeholder:placeholderCopy];

  return v6;
}

- (void)enumerateSystemEXExtensionPoints:(id)points
{
  v15 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  [(objc_class *)getEXEnumeratorClass() extensionPointDefinitionEnumerator];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v4 = v11 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      v9 = 0;
      pointsCopy[2](pointsCopy, v8, &v9);
      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end