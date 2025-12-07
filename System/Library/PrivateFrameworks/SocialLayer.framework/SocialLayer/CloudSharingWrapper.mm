@interface CloudSharingWrapper
+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite completionHandler:(id)handler;
+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0;
+ (void)shareFileOrFolderURL:(id)l emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)handler;
@end

@implementation CloudSharingWrapper

+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite completionHandler:(id)handler
{
  inviteCopy = invite;
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  [getCSCloudSharingClass() addParticipantsToShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy permissionType:type allowOthersToInvite:inviteCopy completionHandler:handlerCopy];
}

+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0
{
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  LOBYTE(v20) = invite;
  [getCSCloudSharingClass() completeShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy accessType:type permissionType:permissionType allowOthersToInvite:v20 completionHandler:handlerCopy];
}

+ (void)shareFileOrFolderURL:(id)l emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)handler
{
  inviteCopy = invite;
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  lCopy = l;
  [getCSCloudSharingClass() shareFileOrFolderURL:lCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy accessType:type permissionType:permissionType allowOthersToInvite:inviteCopy completionHandler:handlerCopy];
}

@end