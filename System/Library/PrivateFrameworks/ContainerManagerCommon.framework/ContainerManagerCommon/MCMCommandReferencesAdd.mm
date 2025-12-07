@interface MCMCommandReferencesAdd
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandReferencesAdd)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (id)_resolveUserIdentity;
- (void)execute;
@end

@implementation MCMCommandReferencesAdd

- (id)_resolveUserIdentity
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  userIdentity = [clientIdentity userIdentity];

  userIdentity2 = [(MCMCommandReferencesAdd *)self userIdentity];

  if (userIdentity2)
  {
    userIdentity3 = [(MCMCommandReferencesAdd *)self userIdentity];
  }

  else
  {
    if ([userIdentity isNoSpecificPersona])
    {
      v8 = 0;
      goto LABEL_7;
    }

    userIdentity3 = userIdentity;
  }

  v8 = userIdentity3;
LABEL_7:

  return v8;
}

- (void)execute
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  _resolveUserIdentity = [(MCMCommandReferencesAdd *)self _resolveUserIdentity];
  v60 = [MCMUserIdentity isUserIdentityRequiredForContainerClass:[(MCMCommandReferencesAdd *)self containerClass]];
  ownerIdentifiers = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
  if (!ownerIdentifiers)
  {
    goto LABEL_35;
  }

  v7 = ownerIdentifiers;
  groupIdentifiers = [(MCMCommandReferencesAdd *)self groupIdentifiers];
  if (!groupIdentifiers)
  {
    goto LABEL_34;
  }

  v9 = groupIdentifiers;
  ownerIdentifiers2 = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
  if (![ownerIdentifiers2 count])
  {

    p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
LABEL_34:

    goto LABEL_35;
  }

  [(MCMCommandReferencesAdd *)self groupIdentifiers];
  v11 = v64 = self;
  v12 = [v11 count];

  self = v64;
  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
  if (!v12)
  {
LABEL_35:
    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      ownerIdentifiers3 = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
      v47 = [ownerIdentifiers3 count];
      groupIdentifiers2 = [(MCMCommandReferencesAdd *)self groupIdentifiers];
      *buf = 134218240;
      v87 = v47;
      v88 = 2048;
      v89 = [groupIdentifiers2 count];
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Owner and group identifiers must be specified; owner cnt = %lu, group cnt = %lu", buf, 0x16u);
    }

    v15 = [[MCMError alloc] initWithErrorType:38 category:3];
    v40 = 0;
LABEL_38:
    v41 = [objc_alloc((p_superclass + 294)) initWithError:v15];

    v40 = v41;
    goto LABEL_39;
  }

  v59 = v4;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  ownerIdentifiers4 = [(MCMCommandReferencesAdd *)v64 ownerIdentifiers];
  v55 = [ownerIdentifiers4 countByEnumeratingWithState:&v82 objects:v81 count:16];
  v14 = 0;
  v15 = 0;
  if (v55)
  {
    v16 = *v83;
    v57 = v3;
    v53 = *v83;
    v54 = ownerIdentifiers4;
    do
    {
      v17 = 0;
      do
      {
        if (*v83 != v16)
        {
          objc_enumerationMutation(ownerIdentifiers4);
        }

        v56 = v17;
        v18 = *(*(&v82 + 1) + 8 * v17);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        groupIdentifiers3 = [(MCMCommandReferencesAdd *)self groupIdentifiers];
        v20 = [groupIdentifiers3 countByEnumeratingWithState:&v77 objects:v76 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v78;
          while (2)
          {
            v23 = 0;
            v24 = v15;
            do
            {
              if (*v78 != v22)
              {
                objc_enumerationMutation(groupIdentifiers3);
              }

              v25 = *(*(&v77 + 1) + 8 * v23);
              v26 = gCodeSigningMapping;
              containerClass = [(MCMCommandReferencesAdd *)v64 containerClass];
              v70 = v24;
              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __34__MCMCommandReferencesAdd_execute__block_invoke;
              v66[3] = &unk_1E86AF968;
              v67 = _resolveUserIdentity;
              v69 = v60;
              v68 = v4;
              LODWORD(v25) = [v26 addGroupIdentifier:v25 forIdentifier:v18 containerClass:containerClass error:&v70 reconcileHandler:v66];
              v15 = v70;

              if (!v25)
              {

                v40 = 0;
                v3 = v57;
                self = v64;
                p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
                goto LABEL_38;
              }

              ++v23;
              v24 = v15;
            }

            while (v21 != v23);
            v21 = [groupIdentifiers3 countByEnumeratingWithState:&v77 objects:v76 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v14 = 1;
          v3 = v57;
          v16 = v53;
          ownerIdentifiers4 = v54;
        }

        v17 = v56 + 1;
        self = v64;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
      }

      while (v56 + 1 != v55);
      v55 = [ownerIdentifiers4 countByEnumeratingWithState:&v82 objects:v81 count:16];
    }

    while (v55);
  }

  if (-[MCMCommandReferencesAdd createDuringReconciliation](self, "createDuringReconciliation") && [v4 count])
  {
    v61 = v14;
    v58 = v3;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v28 = v4;
    v29 = [v28 countByEnumeratingWithState:&v72 objects:v71 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v73;
      do
      {
        v32 = 0;
        v33 = v15;
        do
        {
          if (*v73 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v72 + 1) + 8 * v32);
          context = [(MCMCommand *)self context];
          containerFactory = [context containerFactory];
          v65 = v33;
          v37 = [containerFactory containerForContainerIdentity:v34 createIfNecessary:1 error:&v65];
          v15 = v65;

          metadataMinimal = [v37 metadataMinimal];
          if (([metadataMinimal existed] & 1) == 0)
          {
            [array addObject:metadataMinimal];
          }

          ++v32;
          v33 = v15;
          self = v64;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v72 objects:v71 count:16];
      }

      while (v30);
    }

    v3 = v58;
    v4 = v59;
    p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
    v14 = v61;
  }

  v49 = objc_alloc((p_superclass + 294));
  context2 = [(MCMCommand *)self context];
  clientIdentity = [context2 clientIdentity];
  LOBYTE(v52) = 1;
  v40 = [v49 initWithContainers:array includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0 clientIdentity:clientIdentity skipSandboxExtensions:v52];

  if ((v14 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  v42 = container_log_handle_for_category();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v44 = [array count];
    error = [v40 error];
    *buf = 134218242;
    v87 = v44;
    v88 = 2112;
    v89 = error;
    _os_log_debug_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_DEBUG, "References add; created containers count = %lu, error = %@", buf, 0x16u);
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v40];

  objc_autoreleasePoolPop(v3);
}

void __34__MCMCommandReferencesAdd_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32) && (*(a1 + 48) & 1) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 userIdentity];
          v12 = [v11 isEqual:*(a1 + 32)];

          if (v12)
          {
            [*(a1 + 40) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [*(a1 + 40) unionSet:v4];
  }
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToChangeReferences = [clientIdentity isAllowedToChangeReferences];

  return isAllowedToChangeReferences;
}

- (MCMCommandReferencesAdd)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandReferencesAdd;
  v9 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_containerClass = [messageCopy containerClass];
    ownerIdentifiers = [messageCopy ownerIdentifiers];
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = ownerIdentifiers;

    groupIdentifiers = [messageCopy groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = groupIdentifiers;

    v9->_createDuringReconciliation = [messageCopy createDuringReconciliation];
    userIdentity = [messageCopy userIdentity];
    userIdentity = v9->_userIdentity;
    v9->_userIdentity = userIdentity;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end