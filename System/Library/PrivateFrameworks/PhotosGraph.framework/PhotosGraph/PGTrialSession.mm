@interface PGTrialSession
- (PGTrialSession)init;
- (id)arrayForFactorName:(id)name withNamespaceType:(unsigned __int16)type;
- (id)dictionaryForFactorName:(id)name withNamespaceType:(unsigned __int16)type;
- (id)levelForFactorName:(id)name withNamespaceType:(unsigned __int16)type;
- (id)namespaceNameForNamespaceType:(unsigned __int16)type;
@end

@implementation PGTrialSession

- (id)namespaceNameForNamespaceType:(unsigned __int16)type
{
  if ((type - 1) > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2788839E8[(type - 1)];
  }
}

- (id)arrayForFactorName:(id)name withNamespaceType:(unsigned __int16)type
{
  typeCopy = type;
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(PGTrialSession *)self levelForFactorName:nameCopy withNamespaceType:typeCopy];
  fileValue = [v7 fileValue];
  if ([fileValue hasPath])
  {
    path = [fileValue path];
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:path];
    if (v10)
    {
      v11 = v10;
      goto LABEL_10;
    }

    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = path;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[TrialSession] failed to load array at filepath %@", &v16, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    path = [v12 loggingConnection];

    if (os_log_type_enabled(path, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_impl(&dword_22F0FC000, path, OS_LOG_TYPE_INFO, "[TrialSession] levelFile.hasPath evaluated to false for factor name %@", &v16, 0xCu);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)dictionaryForFactorName:(id)name withNamespaceType:(unsigned __int16)type
{
  typeCopy = type;
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(PGTrialSession *)self levelForFactorName:nameCopy withNamespaceType:typeCopy];
  fileValue = [v7 fileValue];
  if ([fileValue hasPath])
  {
    path = [fileValue path];
    v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:path];
    if (v10)
    {
      v11 = v10;
      goto LABEL_10;
    }

    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = path;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[TrialSession] failed to load dictionary at filepath %@", &v16, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    path = [v12 loggingConnection];

    if (os_log_type_enabled(path, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_impl(&dword_22F0FC000, path, OS_LOG_TYPE_INFO, "[TrialSession] levelFile.hasPath evaluated to false for factor name %@", &v16, 0xCu);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)levelForFactorName:(id)name withNamespaceType:(unsigned __int16)type
{
  typeCopy = type;
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(PGTrialSession *)self namespaceNameForNamespaceType:typeCopy];
  if (v7)
  {
    v8 = [(TRIClient *)self->_trialClient levelForFactor:nameCopy withNamespaceName:v7];
    if (v8)
    {
      goto LABEL_12;
    }

    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = nameCopy;
      v11 = "[TrialSession] nil level found for factor name %@";
LABEL_10:
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, v11, &v15, 0xCu);
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      if (typeCopy > 5)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_2788839B8[typeCopy];
      }

      v15 = 138412290;
      v16 = v13;
      v11 = "[TrialSession] no namespaceName found for namespaceType %@";
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (PGTrialSession)init
{
  v6.receiver = self;
  v6.super_class = PGTrialSession;
  v2 = [(PGTrialSession *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:235];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;
  }

  return v2;
}

@end