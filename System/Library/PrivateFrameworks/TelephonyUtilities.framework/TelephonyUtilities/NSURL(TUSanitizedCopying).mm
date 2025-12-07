@interface NSURL(TUSanitizedCopying)
+ (id)tu_defaultAllowedSchemes;
- (id)sanitizedCopy;
- (id)sanitizedCopyWithZone:()TUSanitizedCopying;
- (id)sanitizedCopyWithZone:()TUSanitizedCopying allowedSchemes:;
@end

@implementation NSURL(TUSanitizedCopying)

+ (id)tu_defaultAllowedSchemes
{
  if (tu_defaultAllowedSchemes_onceToken != -1)
  {
    +[NSURL(TUSanitizedCopying) tu_defaultAllowedSchemes];
  }

  v2 = tu_defaultAllowedSchemes_defaultAllowedSchemes;

  return v2;
}

- (id)sanitizedCopy
{
  tu_defaultAllowedSchemes = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v3 = [self sanitizedCopyWithZone:0 allowedSchemes:tu_defaultAllowedSchemes];

  return v3;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying
{
  tu_defaultAllowedSchemes = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v6 = [self sanitizedCopyWithZone:a3 allowedSchemes:tu_defaultAllowedSchemes];

  return v6;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying allowedSchemes:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString length])
  {
    v9 = [v6 containsObject:lowercaseString];
    if (v9)
    {
      v10 = [self copyWithZone:a3];
      goto LABEL_10;
    }

    v11 = TUDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v6;
      v12 = "[WARN] URL scheme is not in list of allowed schemes: %@ allowedSchemes: %@";
      v13 = v11;
      v14 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = TUDefaultLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      selfCopy2 = self;
      v12 = "[WARN] URL does not contain a valid scheme: %@";
      v13 = v11;
      v14 = 12;
LABEL_8:
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end