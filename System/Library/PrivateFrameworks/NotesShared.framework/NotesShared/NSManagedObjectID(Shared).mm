@interface NSManagedObjectID(Shared)
- (uint64_t)ic_isAccountType;
- (uint64_t)ic_isAttachmentType;
- (uint64_t)ic_isBaseAttachmentType;
- (uint64_t)ic_isContainerType;
- (uint64_t)ic_isFolderType;
- (uint64_t)ic_isHashtagType;
- (uint64_t)ic_isInlineAttachmentType;
- (uint64_t)ic_isInvitationType;
- (uint64_t)ic_isLegacyAccountType;
- (uint64_t)ic_isLegacyContainerType;
- (uint64_t)ic_isLegacyFolderType;
- (uint64_t)ic_isLegacyNoteType;
- (uint64_t)ic_isLegacyType;
- (uint64_t)ic_isModernAccountProxyType;
- (uint64_t)ic_isModernAccountType;
- (uint64_t)ic_isModernContainerType;
- (uint64_t)ic_isModernFolderType;
- (uint64_t)ic_isModernNoteType;
- (uint64_t)ic_isModernType;
- (uint64_t)ic_isNoteType;
@end

@implementation NSManagedObjectID(Shared)

- (uint64_t)ic_isModernType
{
  entity = [self entity];
  managedObjectClassName = [entity managedObjectClassName];
  v3 = [managedObjectClassName hasPrefix:@"IC"];

  return v3;
}

- (uint64_t)ic_isContainerType
{
  if ([self ic_isModernContainerType])
  {
    return 1;
  }

  return [self ic_isLegacyContainerType];
}

- (uint64_t)ic_isModernContainerType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isLegacyContainerType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isNoteType
{
  if ([self ic_isModernNoteType])
  {
    return 1;
  }

  return [self ic_isLegacyNoteType];
}

- (uint64_t)ic_isModernNoteType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isModernFolderType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isModernAccountType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isLegacyNoteType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isLegacyType
{
  entity = [self entity];
  managedObjectClassName = [entity managedObjectClassName];
  v3 = [managedObjectClassName hasPrefix:@"IC"];

  return v3 ^ 1u;
}

- (uint64_t)ic_isModernAccountProxyType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isLegacyAccountType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isAccountType
{
  if ([self ic_isModernAccountType])
  {
    return 1;
  }

  return [self ic_isLegacyAccountType];
}

- (uint64_t)ic_isLegacyFolderType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isFolderType
{
  if ([self ic_isModernFolderType])
  {
    return 1;
  }

  return [self ic_isLegacyFolderType];
}

- (uint64_t)ic_isBaseAttachmentType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isAttachmentType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isInlineAttachmentType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isHashtagType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

- (uint64_t)ic_isInvitationType
{
  v3 = objc_opt_class();

  return [self ic_isEntityOfClass:v3];
}

@end