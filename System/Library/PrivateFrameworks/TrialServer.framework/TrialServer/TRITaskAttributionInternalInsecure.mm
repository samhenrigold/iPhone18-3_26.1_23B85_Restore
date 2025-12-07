@interface TRITaskAttributionInternalInsecure
+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)options;
+ (id)taskAttributionFromPersistedTask:(id)task;
+ (id)taskAttributionWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTaskAttribution:(id)attribution;
- (NSString)description;
- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options;
- (id)asPersistedTaskAttribution;
- (id)copyWithReplacementApplicationBundleIdentifier:(id)identifier;
- (id)copyWithReplacementNetworkOptions:(id)options;
- (id)copyWithReplacementTeamIdentifier:(id)identifier;
- (id)copyWithReplacementTriCloudKitContainer:(int)container;
- (unint64_t)hash;
@end

@implementation TRITaskAttributionInternalInsecure

+ (id)taskAttributionFromPersistedTask:(id)task
{
  v27 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if (([taskCopy hasApplicationBundleId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = 138412290;
      v26 = v24;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: applicationBundleId", &v25, 0xCu);
    }

    teamId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v25 = 138412290;
    v26 = v10;
    v11 = "Cannot decode message of type %@ with missing field: applicationBundleId";
    goto LABEL_14;
  }

  applicationBundleId = [taskCopy applicationBundleId];
  v5 = [applicationBundleId length];

  if (!v5)
  {
    teamId2 = TRILogCategory_Server();
    if (os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v10 = NSStringFromClass(v12);
      v25 = 138412290;
      v26 = v10;
      v11 = "Cannot decode message of type %@ with field of length 0: applicationBundleId";
LABEL_14:
      _os_log_error_impl(&dword_26F567000, teamId2, OS_LOG_TYPE_ERROR, v11, &v25, 0xCu);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (([taskCopy hasCloudKitContainer] & 1) == 0)
  {
    teamId2 = TRILogCategory_Server();
    if (os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v10 = NSStringFromClass(v13);
      v25 = 138412290;
      v26 = v10;
      v11 = "Cannot decode message of type %@ with missing field: cloudKitContainer";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  teamId = [taskCopy teamId];
  if ([teamId length])
  {
    teamId2 = [taskCopy teamId];
  }

  else
  {
    teamId2 = 0;
  }

  if (![taskCopy hasNetworkBehavior] || (v16 = objc_alloc(MEMORY[0x277D736A0]), objc_msgSend(taskCopy, "networkBehavior"), v17 = objc_claimAutoreleasedReturnValue(), inexpensiveOptions = objc_msgSend(v16, "initFromPersistedBehavior:", v17), v17, !inexpensiveOptions))
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "unable to parse persisted network behavior, assuming discretionary", &v25, 2u);
    }

    inexpensiveOptions = [MEMORY[0x277D736A0] inexpensiveOptions];
  }

  v20 = [TRITaskAttributionInternalInsecure alloc];
  cloudKitContainer = [taskCopy cloudKitContainer];
  applicationBundleId2 = [taskCopy applicationBundleId];
  v14 = [(TRITaskAttributionInternalInsecure *)v20 initWithTeamIdentifier:teamId2 triCloudKitContainer:cloudKitContainer applicationBundleIdentifier:applicationBundleId2 networkOptions:inexpensiveOptions];

LABEL_16:

  return v14;
}

- (id)asPersistedTaskAttribution
{
  v3 = objc_alloc_init(TRIPersistedTaskAttribution);
  teamIdentifier = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
  if ([teamIdentifier length])
  {
    teamIdentifier2 = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
    [(TRIPersistedTaskAttribution *)v3 setTeamId:teamIdentifier2];
  }

  else
  {
    [(TRIPersistedTaskAttribution *)v3 setTeamId:0];
  }

  applicationBundleIdentifier = [(TRITaskAttributionInternalInsecure *)self applicationBundleIdentifier];
  [(TRIPersistedTaskAttribution *)v3 setApplicationBundleId:applicationBundleIdentifier];

  [(TRIPersistedTaskAttribution *)v3 setCloudKitContainer:[(TRITaskAttributionInternalInsecure *)self triCloudKitContainer]];
  networkOptions = [(TRITaskAttributionInternalInsecure *)self networkOptions];
  serializeToPersistedBehavior = [networkOptions serializeToPersistedBehavior];
  [(TRIPersistedTaskAttribution *)v3 setNetworkBehavior:serializeToPersistedBehavior];

  return v3;
}

+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)options
{
  v3 = MEMORY[0x277D737A8];
  optionsCopy = options;
  callerBundleId = [v3 callerBundleId];
  v6 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:callerBundleId networkOptions:optionsCopy];

  return v6;
}

- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  optionsCopy = options;
  v15 = optionsCopy;
  if (bundleIdentifierCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:861 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"networkOptions != nil"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = TRITaskAttributionInternalInsecure;
  v16 = [(TRITaskAttributionInternalInsecure *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_teamIdentifier, identifier);
    v17->_triCloudKitContainer = container;
    objc_storeStrong(&v17->_applicationBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v17->_networkOptions, options);
  }

  return v17;
}

+ (id)taskAttributionWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options
{
  v7 = *&container;
  optionsCopy = options;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v13 = [[self alloc] initWithTeamIdentifier:identifierCopy triCloudKitContainer:v7 applicationBundleIdentifier:bundleIdentifierCopy networkOptions:optionsCopy];

  return v13;
}

- (id)copyWithReplacementTeamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:identifierCopy triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementTriCloudKitContainer:(int)container
{
  v3 = *&container;
  v5 = objc_alloc(objc_opt_class());
  teamIdentifier = self->_teamIdentifier;
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  networkOptions = self->_networkOptions;

  return [v5 initWithTeamIdentifier:teamIdentifier triCloudKitContainer:v3 applicationBundleIdentifier:applicationBundleIdentifier networkOptions:networkOptions];
}

- (id)copyWithReplacementApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:identifierCopy networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementNetworkOptions:(id)options
{
  optionsCopy = options;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:optionsCopy];

  return v5;
}

- (BOOL)isEqualToTaskAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = attributionCopy;
  if (!attributionCopy || (v6 = self->_teamIdentifier == 0, [attributionCopy teamIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (teamIdentifier = self->_teamIdentifier) != 0 && (objc_msgSend(v5, "teamIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](teamIdentifier, "isEqual:", v10), v10, !v11) || (triCloudKitContainer = self->_triCloudKitContainer, triCloudKitContainer != objc_msgSend(v5, "triCloudKitContainer")) || (v13 = self->_applicationBundleIdentifier == 0, objc_msgSend(v5, "applicationBundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15) || (applicationBundleIdentifier = self->_applicationBundleIdentifier) != 0 && (objc_msgSend(v5, "applicationBundleIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSString isEqual:](applicationBundleIdentifier, "isEqual:", v17), v17, !v18) || (v19 = self->_networkOptions == 0, objc_msgSend(v5, "networkOptions"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21))
  {
    v24 = 0;
  }

  else
  {
    networkOptions = self->_networkOptions;
    if (networkOptions)
    {
      networkOptions = [v5 networkOptions];
      v24 = [(TRIDownloadOptions *)networkOptions isEqual:networkOptions];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskAttributionInternalInsecure *)self isEqualToTaskAttribution:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_teamIdentifier hash];
  v4 = self->_triCloudKitContainer - v3 + 32 * v3;
  v5 = [(NSString *)self->_applicationBundleIdentifier hash]- v4 + 32 * v4;
  return [(TRIDownloadOptions *)self->_networkOptions hash]- v5 + 32 * v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  teamIdentifier = self->_teamIdentifier;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_triCloudKitContainer];
  v6 = [v3 initWithFormat:@"<TRITaskAttributionInternalInsecure | teamIdentifier:%@ triCloudKitContainer:%@ applicationBundleIdentifier:%@ networkOptions:%@>", teamIdentifier, v5, self->_applicationBundleIdentifier, self->_networkOptions];

  return v6;
}

@end