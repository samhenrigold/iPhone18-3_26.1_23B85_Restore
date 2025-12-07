@interface MCMCommandReferencesQuery
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandReferencesQuery)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandReferencesQuery

- (void)execute
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MCMResultWithOwnersAndGroupsBase);
  ownerIdentifiers = [(MCMCommandReferencesQuery *)self ownerIdentifiers];
  if (ownerIdentifiers)
  {
    v6 = 0;
  }

  else
  {
    groupIdentifiers = [(MCMCommandReferencesQuery *)self groupIdentifiers];
    v6 = groupIdentifiers == 0;
  }

  v8 = gCodeSigningMapping;
  containerClass = [(MCMCommandReferencesQuery *)self containerClass];
  v27 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __36__MCMCommandReferencesQuery_execute__block_invoke;
  v23 = &unk_1E86B04E8;
  v26 = v6;
  selfCopy = self;
  v10 = v4;
  v25 = v10;
  LOBYTE(containerClass) = [v8 enumerateOwnersAndGroupsWithGroupClass:containerClass error:&v27 block:&v20];
  v11 = v27;
  if ((containerClass & 1) == 0)
  {
    v12 = [MCMResultWithOwnersAndGroupsBase alloc];
    selfCopy = [(MCMResultBase *)v12 initWithError:v11, v20, v21, v22, v23, selfCopy];

    v10 = selfCopy;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    ownerIdentifiers2 = [(MCMResultWithOwnersAndGroupsBase *)v10 ownerIdentifiers];
    v17 = [ownerIdentifiers2 count];
    groupIdentifiers2 = [(MCMResultWithOwnersAndGroupsBase *)v10 groupIdentifiers];
    v19 = [groupIdentifiers2 count];
    *buf = 134218498;
    v29 = v17;
    v30 = 2048;
    v31 = v19;
    v32 = 2112;
    v33 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "References query; owners count = %lu, groups count = %lu, error = %@", buf, 0x20u);
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v10];

  objc_autoreleasePoolPop(v3);
}

uint64_t __36__MCMCommandReferencesQuery_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 48))
  {
    goto LABEL_12;
  }

  v8 = [*(a1 + 32) ownerIdentifiers];
  if (v8)
  {
    v3 = [*(a1 + 32) ownerIdentifiers];
    if ([v3 containsObject:v6])
    {

      goto LABEL_12;
    }
  }

  v9 = [*(a1 + 32) groupIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) groupIdentifiers];
    v12 = [v11 containsObject:v7];

    if (v8)
    {

      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v12)
    {
LABEL_12:
      [*(a1 + 40) addOwner:v6 group:v7];
    }
  }

  else if (v8)
  {
  }

LABEL_13:

  return 1;
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToReadReferences = [clientIdentity isAllowedToReadReferences];

  return isAllowedToReadReferences;
}

- (MCMCommandReferencesQuery)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MCMCommandReferencesQuery;
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

    v9->_uid = [messageCopy uid];
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end