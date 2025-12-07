@interface SYDocumentWorkflows
+ (BOOL)isSupportedContentType:(id)type;
+ (id)localizedStringRemove;
+ (id)localizedStringReply:(id)reply;
+ (id)localizedStringShowInAppWithBundleIdentifier:(id)identifier error:(id *)error;
+ (id)localizedStringShowInMail;
@end

@implementation SYDocumentWorkflows

+ (BOOL)isSupportedContentType:(id)type
{
  if (!type)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflows isSupportedContentType:v4];
    }
  }

  return type != 0;
}

+ (id)localizedStringReply:(id)reply
{
  replyCopy = reply;
  v4 = replyCopy;
  if (replyCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _SYBundle(replyCopy);
    v7 = [v6 localizedStringForKey:@"Reply to %@" value:@"Reply to %@" table:@"Localizable"];
    preferredFormattedName = [v4 preferredFormattedName];
    v9 = [v5 stringWithFormat:v7, preferredFormattedName];
  }

  else
  {
    v6 = _SYBundle(0);
    v9 = [v6 localizedStringForKey:@"Reply" value:@"Reply" table:@"Localizable"];
  }

  return v9;
}

+ (id)localizedStringShowInMail
{
  v2 = _SYBundle(self);
  v3 = [v2 localizedStringForKey:@"Show in Mail" value:@"Show in Mail" table:@"Localizable"];

  return v3;
}

+ (id)localizedStringShowInAppWithBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v16 = 0;
  v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v16];
  v7 = v16;
  if (v6)
  {
    localizedName = [v6 localizedName];
    v9 = MEMORY[0x277CCACA8];
    v10 = _SYBundle(localizedName);
    v11 = [v10 localizedStringForKey:@"Show in %@" value:@"Show in %@" table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11, localizedName];
  }

  else
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SYDocumentWorkflows *)identifierCopy localizedStringShowInAppWithBundleIdentifier:v7 error:v13];
    }

    if (error)
    {
      v14 = v7;
      v12 = 0;
      *error = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)localizedStringRemove
{
  v2 = _SYBundle(self);
  v3 = [v2 localizedStringForKey:@"Remove" value:@"Remove" table:@"Localizable"];

  return v3;
}

+ (void)localizedStringShowInAppWithBundleIdentifier:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Unable to find record for bundle identifier: %@, error: %@", &v3, 0x16u);
}

@end