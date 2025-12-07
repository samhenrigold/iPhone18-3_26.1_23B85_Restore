@interface BRFileProviderHelper
+ (id)_br_getDomainIdentifierForAccountDescriptor:(id)descriptor;
+ (id)br_getDomainIdentifierForACAccountID:(id)d;
+ (id)br_getDomainIdentifierForCurrentPersona;
+ (id)br_getDomainIdentifierForDataSeparated:(BOOL)separated;
+ (id)br_getProviderDomainIDForCurrentPersona;
+ (id)br_getProviderDomainIDForDataSeparated:(BOOL)separated;
+ (id)br_getProviderDomainIDForDomainIdentifier:(id)identifier dataSeparated:(BOOL)separated;
+ (id)br_getProviderIDForCurrentPersona;
+ (id)br_getProviderIDForDataSeparated:(BOOL)separated;
@end

@implementation BRFileProviderHelper

+ (id)br_getDomainIdentifierForCurrentPersona
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [BRAccountDescriptor accountDescriptorForPersonaID:v3 mustBeLoggedIn:0];
  v5 = [self _br_getDomainIdentifierForAccountDescriptor:v4];

  return v5;
}

+ (id)br_getProviderIDForCurrentPersona
{
  IsDataSeparated = BRCurrentPersonaIsDataSeparated();

  return [self br_getProviderIDForDataSeparated:IsDataSeparated];
}

+ (id)br_getProviderIDForDataSeparated:(BOOL)separated
{
  if (separated)
  {
    return @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  }

  else
  {
    return @"com.apple.CloudDocs.iCloudDriveFileProvider";
  }
}

+ (id)br_getProviderDomainIDForCurrentPersona
{
  br_getDomainIdentifierForCurrentPersona = [self br_getDomainIdentifierForCurrentPersona];
  v4 = [self br_getProviderDomainIDForDomainIdentifier:br_getDomainIdentifierForCurrentPersona dataSeparated:BRCurrentPersonaIsDataSeparated()];

  return v4;
}

+ (id)br_getProviderDomainIDForDataSeparated:(BOOL)separated
{
  separatedCopy = separated;
  v5 = [self br_getDomainIdentifierForDataSeparated:?];
  v6 = [self br_getProviderDomainIDForDomainIdentifier:v5 dataSeparated:separatedCopy];

  return v6;
}

+ (id)br_getProviderDomainIDForDomainIdentifier:(id)identifier dataSeparated:(BOOL)separated
{
  separatedCopy = separated;
  identifierCopy = identifier;
  v7 = [self br_getProviderIDForDataSeparated:separatedCopy];
  v8 = v7;
  v9 = 0;
  if (identifierCopy && v7)
  {
    v9 = [v7 stringByAppendingPathComponent:identifierCopy];
  }

  return v9;
}

+ (id)br_getDomainIdentifierForDataSeparated:(BOOL)separated
{
  separatedCopy = separated;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = +[BRAccountDescriptor allEligibleAccountDescriptors];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isDataSeparated] == separatedCopy)
        {
          v12 = brc_bread_crumbs("+[BRFileProviderHelper br_getDomainIdentifierForDataSeparated:]", 62);
          v13 = brc_default_log(1, 0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [(BRFileProviderHelper *)v10 br_getDomainIdentifierForDataSeparated:v12, v13];
          }

          v11 = [self _br_getDomainIdentifierForAccountDescriptor:v10];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (id)br_getDomainIdentifierForACAccountID:(id)d
{
  v4 = [BRAccountDescriptor accountDescriptorForAccountID:d mustBeLoggedIn:0];
  v5 = [self _br_getDomainIdentifierForAccountDescriptor:v4];

  return v5;
}

+ (id)_br_getDomainIdentifierForAccountDescriptor:(id)descriptor
{
  v9 = *MEMORY[0x1E69E9840];
  if (descriptor)
  {
    domainIdentifier = [descriptor domainIdentifier];
  }

  else
  {
    v4 = brc_bread_crumbs("+[BRFileProviderHelper _br_getDomainIdentifierForAccountDescriptor:]", 86);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Couldn't resolve an account descriptor, returning nil domain identifier%@", &v7, 0xCu);
    }

    domainIdentifier = 0;
  }

  return domainIdentifier;
}

+ (void)br_getDomainIdentifierForDataSeparated:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Returning a domain for account: %@%@", &v3, 0x16u);
}

@end