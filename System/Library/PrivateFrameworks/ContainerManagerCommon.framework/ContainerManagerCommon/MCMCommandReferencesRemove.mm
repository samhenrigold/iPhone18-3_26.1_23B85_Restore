@interface MCMCommandReferencesRemove
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandReferencesRemove)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandReferencesRemove

- (void)execute
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v48 = [MEMORY[0x1E695DFA8] set];
  ownerIdentifiers = [(MCMCommandReferencesRemove *)self ownerIdentifiers];
  if (ownerIdentifiers)
  {
    goto LABEL_2;
  }

  if (![(MCMCommandReferencesRemove *)self yesReallyApplyToAll])
  {
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Owner identifiers must be specified", buf, 2u);
    }

    v7 = [[MCMError alloc] initWithErrorType:38 category:3];
    ownerIdentifiers = 0;
    goto LABEL_37;
  }

  v52 = 0;
  ownerIdentifiers = [gCodeSigningMapping identifiersWithError:&v52];
  v28 = v52;
  v29 = v28;
  if (!ownerIdentifiers)
  {
    v7 = [[MCMError alloc] initWithNSError:v28 url:0 defaultErrorType:66];

LABEL_37:
    v34 = [(MCMResultBase *)[MCMResultWithContainersArrayBase alloc] initWithError:v7];
    goto LABEL_38;
  }

LABEL_2:
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  ownerIdentifiers = ownerIdentifiers;
  v5 = [ownerIdentifiers countByEnumeratingWithState:&v61 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v62;
    v46 = ownerIdentifiers;
    v47 = v3;
    v45 = *v62;
    do
    {
      v9 = 0;
      v44 = v6;
      do
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(ownerIdentifiers);
        }

        v10 = *(*(&v61 + 1) + 8 * v9);
        groupIdentifiers = [(MCMCommandReferencesRemove *)self groupIdentifiers];

        if (groupIdentifiers)
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          groupIdentifiers2 = [(MCMCommandReferencesRemove *)self groupIdentifiers];
          v13 = [groupIdentifiers2 countByEnumeratingWithState:&v56 objects:v55 count:16];
          if (v13)
          {
            v14 = v13;
            v43 = v9;
            selfCopy = self;
            v16 = *v57;
            while (2)
            {
              v17 = 0;
              v18 = v7;
              do
              {
                if (*v57 != v16)
                {
                  objc_enumerationMutation(groupIdentifiers2);
                }

                v19 = *(*(&v56 + 1) + 8 * v17);
                v20 = gCodeSigningMapping;
                containerClass = [(MCMCommandReferencesRemove *)selfCopy containerClass];
                v51 = v18;
                v49[0] = MEMORY[0x1E69E9820];
                v49[1] = 3221225472;
                v49[2] = __37__MCMCommandReferencesRemove_execute__block_invoke;
                v49[3] = &unk_1E86AFE10;
                v50 = v48;
                LODWORD(containerClass) = [v20 removeGroupIdentifier:v19 forIdentifier:v10 containerClass:containerClass error:&v51 reconcileHandler:v49];
                v7 = v51;

                if (!containerClass)
                {

                  ownerIdentifiers = v46;
                  v3 = v47;
                  self = selfCopy;
                  goto LABEL_37;
                }

                ++v17;
                v18 = v7;
              }

              while (v14 != v17);
              v14 = [groupIdentifiers2 countByEnumeratingWithState:&v56 objects:v55 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

            ownerIdentifiers = v46;
            v3 = v47;
            self = selfCopy;
            v6 = v44;
            v8 = v45;
            v9 = v43;
          }

          else
          {
            v6 = v44;
          }
        }

        else
        {
          selfCopy2 = self;
          v23 = ownerIdentifiers;
          v24 = v3;
          v25 = v9;
          v26 = gCodeSigningMapping;
          v27 = [MEMORY[0x1E695DFD8] setWithObject:v10];
          groupIdentifiers2 = [v26 removeCodeSigningDictionaryForIdentifiers:v27];

          if (groupIdentifiers2)
          {
            [v48 unionSet:groupIdentifiers2];
          }

          v9 = v25;
          v3 = v24;
          ownerIdentifiers = v23;
          self = selfCopy2;
          v8 = v45;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [ownerIdentifiers countByEnumeratingWithState:&v61 objects:v60 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (!-[MCMCommandReferencesRemove deleteDuringReconciliation](self, "deleteDuringReconciliation") || ![v48 count] || (v30 = objc_alloc_init(MCMResultPromise), objc_msgSend(v48, "allObjects"), v31 = objc_claimAutoreleasedReturnValue(), -[MCMCommand context](self, "context"), v32 = objc_claimAutoreleasedReturnValue(), +[MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:removeAllCodeSignInfo:context:resultPromise:](MCMCommandOperationDelete, "commandForOperationDeleteWithContainerIdentities:removeAllCodeSignInfo:context:resultPromise:", v31, 0, v32, v30), v33 = objc_claimAutoreleasedReturnValue(), v32, v31, objc_msgSend(v33, "execute"), -[MCMResultPromise result](v30, "result"), v34 = objc_claimAutoreleasedReturnValue(), v33, v30, !v34))
  {
    v35 = [MCMResultWithContainersArrayBase alloc];
    context = [(MCMCommand *)self context];
    clientIdentity = [context clientIdentity];
    LOBYTE(v42) = 1;
    v34 = [(MCMResultWithContainersArrayBase *)v35 initWithContainers:MEMORY[0x1E695E0F0] includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0 clientIdentity:clientIdentity skipSandboxExtensions:v42];
  }

LABEL_38:
  v39 = container_log_handle_for_category();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    error = [(MCMResultBase *)v34 error];
    *buf = 138412290;
    v54 = error;
    _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "References remove; error = %@", buf, 0xCu);
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v34];

  objc_autoreleasePoolPop(v3);
}

uint64_t __37__MCMCommandReferencesRemove_execute__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  return [v2 unionSet:a2];
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToChangeReferences = [clientIdentity isAllowedToChangeReferences];

  return isAllowedToChangeReferences;
}

- (MCMCommandReferencesRemove)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MCMCommandReferencesRemove;
  v9 = [(MCMCommand *)&v15 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_containerClass = [messageCopy containerClass];
    ownerIdentifiers = [messageCopy ownerIdentifiers];
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = ownerIdentifiers;

    groupIdentifiers = [messageCopy groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = groupIdentifiers;

    v9->_deleteDuringReconciliation = [messageCopy deleteDuringReconciliation];
    v9->_yesReallyApplyToAll = [messageCopy yesReallyApplyToAll];
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end