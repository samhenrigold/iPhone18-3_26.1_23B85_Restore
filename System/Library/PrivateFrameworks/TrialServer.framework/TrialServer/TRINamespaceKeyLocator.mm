@interface TRINamespaceKeyLocator
+ (id)_fileNameForNamespaceIdentifier:(id)identifier asymmetric:(BOOL)asymmetric;
+ (id)_keyFileSearchLocationsForNamespace:(id)namespace asymmetric:(BOOL)asymmetric;
+ (id)_namespaceIdForNamespace:(id)namespace;
+ (id)keyDataForNamespace:(id)namespace asymmetric:(BOOL)asymmetric;
+ (id)keyFileURLForNamespace:(id)namespace asymmetric:(BOOL)asymmetric;
@end

@implementation TRINamespaceKeyLocator

+ (id)keyDataForNamespace:(id)namespace asymmetric:(BOOL)asymmetric
{
  asymmetricCopy = asymmetric;
  v19 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  v7 = [self keyFileURLForNamespace:namespaceCopy asymmetric:asymmetricCopy];
  if (v7)
  {
    v14 = 0;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7 options:2 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        path = [v7 path];
        *buf = 138412546;
        v16 = path;
        v17 = 2112;
        v18 = v9;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to read key data from file %@ -- %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = namespaceCopy;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Couldn't find key for namespace %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)keyFileURLForNamespace:(id)namespace asymmetric:(BOOL)asymmetric
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [self _keyFileSearchLocationsForNamespace:namespace asymmetric:asymmetric];
  v5 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Searching for namespace key in the following locations: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = v10;
        if (!access([v11 fileSystemRepresentation], 4))
        {
          v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10];
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

+ (id)_keyFileSearchLocationsForNamespace:(id)namespace asymmetric:(BOOL)asymmetric
{
  asymmetricCopy = asymmetric;
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D737E0];
  namespaceCopy = namespace;
  sharedPaths = [v6 sharedPaths];
  v9 = [sharedPaths decryptionKeyDirForAppleInternal:1];

  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v11 = [mEMORY[0x277D737E0] decryptionKeyDirForAppleInternal:0];

  v12 = [self _fileNameForNamespaceIdentifier:namespaceCopy asymmetric:asymmetricCopy];
  v13 = [self _namespaceIdForNamespace:namespaceCopy];

  if (v13)
  {
    stringValue = [v13 stringValue];
    v15 = [self _fileNameForNamespaceIdentifier:stringValue asymmetric:asymmetricCopy];

    v16 = [v9 stringByAppendingPathComponent:v12];
    v23[0] = v16;
    v17 = [v9 stringByAppendingPathComponent:v15];
    v23[1] = v17;
    v18 = [v11 stringByAppendingPathComponent:v12];
    v23[2] = v18;
    v19 = [v11 stringByAppendingPathComponent:v15];
    v23[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  }

  else
  {
    v15 = [v9 stringByAppendingPathComponent:v12];
    v22[0] = v15;
    v16 = [v11 stringByAppendingPathComponent:v12];
    v22[1] = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  }

  return v20;
}

+ (id)_fileNameForNamespaceIdentifier:(id)identifier asymmetric:(BOOL)asymmetric
{
  v4 = @"com.apple.trial.%@.namespacekey";
  if (asymmetric)
  {
    v4 = @"com.apple.trial.%@.namespacekey.priv";
  }

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:v4, identifier];

  return identifier;
}

+ (id)_namespaceIdForNamespace:(id)namespace
{
  v12 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  v9 = -1;
  v4 = TRINamespace_NamespaceId_EnumDescriptor();
  v5 = [v4 getValue:&v9 forEnumTextFormatName:namespaceCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  }

  else
  {
    v7 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = namespaceCopy;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find namespace id for namespace name: %@. This is expected for self-service namespaces with exclusively namespace names", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end