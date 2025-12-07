@interface FindMyLocateSession
+ (BOOL)FMFAllowed;
+ (BOOL)FMFRestricted;
- (FindMyLocateSession)init;
- (id)cachedFriendsFollowingMyLocation;
- (id)cachedFriendsSharingLocationsWithMe;
- (id)cachedLocationForHandle:(id)handle;
- (id)cachedLocationForHandle:(id)handle includeAddress:(BOOL)address;
- (id)cachedOfferExpirationForHandle:(id)handle groupId:(id)id;
- (id)friendshipUpdateCallback;
- (id)locationUpdateCallback;
- (id)meDeviceUpdateCallback;
- (int64_t)cachedCanShareLocationWithHandle:(id)handle isFromGroup:(BOOL)group;
- (void)canShareLocationWithHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion;
- (void)friendshipStateWithHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion;
- (void)getActiveLocationSharingDeviceWithCompletion:(id)completion;
- (void)getFriendsFollowingMyLocationWithCompletion:(id)completion;
- (void)getFriendsSharingLocationsWithMeWithCompletion:(id)completion;
- (void)getOfferExpirationForHandle:(id)handle groupId:(id)id completion:(id)completion;
- (void)sendFriendshipInviteToHandle:(id)handle from:(id)from isFromGroup:(BOOL)group completion:(id)completion;
- (void)sendFriendshipInviteToHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion;
- (void)sendFriendshipOfferToHandles:(id)handles expiration:(int64_t)expiration isFromGroup:(BOOL)group completion:(id)completion;
- (void)sendFriendshipOfferToHandles:(id)handles from:(id)from expiration:(int64_t)expiration isFromGroup:(BOOL)group completion:(id)completion;
- (void)setActiveLocationSharingDevice:(id)device completion:(id)completion;
- (void)setFriendshipUpdateCallback:(id)callback;
- (void)setLocationUpdateCallback:(id)callback;
- (void)setMeDeviceUpdateCallback:(id)callback;
- (void)startMonitoringActiveLocationSharingDeviceChangeWithCompletion:(id)completion;
- (void)startRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group completion:(id)completion;
- (void)startRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group reverseGeocode:(BOOL)geocode completion:(id)completion;
- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)updates completion:(id)completion;
- (void)stopRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group completion:(id)completion;
- (void)stopRefreshingLocationWithCompletion:(id)completion;
- (void)stopSharingLocationWith:(id)with from:(id)from isFromGroup:(BOOL)group completion:(id)completion;
- (void)stopSharingLocationWith:(id)with isFromGroup:(BOOL)group completion:(id)completion;
- (void)stopUpdatingFriendsWithCompletion:(id)completion;
@end

@implementation FindMyLocateSession

- (FindMyLocateSession)init
{
  v5.receiver = self;
  v5.super_class = FindMyLocateSession;
  v2 = [(FindMyLocateSession *)&v5 init];
  v3 = objc_alloc_init(_TtC23FindMyLocateObjCWrapper13ObjCBootstrap);
  [(FindMyLocateSession *)v2 setTrampoline:v3];

  return v2;
}

- (void)setLocationUpdateCallback:(id)callback
{
  callbackCopy = callback;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline setLocationUpdateCallback:callbackCopy];
}

- (id)locationUpdateCallback
{
  trampoline = [(FindMyLocateSession *)self trampoline];
  locationUpdateCallback = [trampoline locationUpdateCallback];

  return locationUpdateCallback;
}

- (void)setFriendshipUpdateCallback:(id)callback
{
  callbackCopy = callback;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline setFriendshipUpdateCallback:callbackCopy];
}

- (id)friendshipUpdateCallback
{
  trampoline = [(FindMyLocateSession *)self trampoline];
  friendshipUpdateCallback = [trampoline friendshipUpdateCallback];

  return friendshipUpdateCallback;
}

- (void)setMeDeviceUpdateCallback:(id)callback
{
  callbackCopy = callback;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline setMeDeviceUpdateCallback:callbackCopy];
}

- (id)meDeviceUpdateCallback
{
  trampoline = [(FindMyLocateSession *)self trampoline];
  meDeviceUpdateCallback = [trampoline meDeviceUpdateCallback];

  return meDeviceUpdateCallback;
}

- (void)sendFriendshipOfferToHandles:(id)handles expiration:(int64_t)expiration isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handlesCopy = handles;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline sendFriendshipOfferTo:handlesCopy from:0 end:expiration isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)sendFriendshipOfferToHandles:(id)handles from:(id)from expiration:(int64_t)expiration isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  fromCopy = from;
  handlesCopy = handles;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline sendFriendshipOfferTo:handlesCopy from:fromCopy end:expiration isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)sendFriendshipInviteToHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline sendFriendshipInviteTo:handleCopy from:0 isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)sendFriendshipInviteToHandle:(id)handle from:(id)from isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  fromCopy = from;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline sendFriendshipInviteTo:handleCopy from:fromCopy isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)stopSharingLocationWith:(id)with isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  withCopy = with;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline stopSharingLocationWith:withCopy from:0 isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)stopSharingLocationWith:(id)with from:(id)from isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  fromCopy = from;
  withCopy = with;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline stopSharingLocationWith:withCopy from:fromCopy isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)startRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handlesCopy = handles;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline startRefreshingLocationFor:handlesCopy priority:priority isFromGroup:groupCopy reverseGeocode:1 completionHandler:completionCopy];
}

- (void)startRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group reverseGeocode:(BOOL)geocode completion:(id)completion
{
  geocodeCopy = geocode;
  groupCopy = group;
  completionCopy = completion;
  handlesCopy = handles;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline startRefreshingLocationFor:handlesCopy priority:priority isFromGroup:groupCopy reverseGeocode:geocodeCopy completionHandler:completionCopy];
}

- (void)stopRefreshingLocationForHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handlesCopy = handles;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline stopRefreshingLocationFor:handlesCopy priority:priority isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)stopRefreshingLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline stopRefreshingLocationWithCompletionHandler:completionCopy];
}

- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline startUpdatingFriendsWithInitialUpdates:updatesCopy completionHandler:completionCopy];
}

- (void)stopUpdatingFriendsWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline stopUpdatingFriendsWithCompletionHandler:completionCopy];
}

- (void)startMonitoringActiveLocationSharingDeviceChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline startMonitoringActiveLocationSharingDeviceWithCompletionHandler:completionCopy];
}

- (void)setActiveLocationSharingDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline setActiveLocationSharingDevice:deviceCopy completionHandler:completionCopy];
}

- (void)getActiveLocationSharingDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline getActiveLocationSharingDeviceWithCompletionHandler:completionCopy];
}

- (void)getFriendsSharingLocationsWithMeWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline getFriendsWith:1 completionHandler:completionCopy];
}

- (void)getFriendsFollowingMyLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline getFriendsWith:0 completionHandler:completionCopy];
}

- (void)canShareLocationWithHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline canShareLocationWithHandle:handleCopy isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)friendshipStateWithHandle:(id)handle isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline friendshipStateWithHandle:handleCopy isFromGroup:groupCopy completionHandler:completionCopy];
}

- (void)getOfferExpirationForHandle:(id)handle groupId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  [trampoline getOfferExpirationForHandle:handleCopy groupId:idCopy completionHandler:completionCopy];
}

+ (BOOL)FMFAllowed
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  if (([FMFAllowed_fmfAllowedNumber BOOLValue] & 1) == 0)
  {
    v3 = MGCopyAnswer();
    v4 = FMFAllowed_fmfAllowedNumber;
    FMFAllowed_fmfAllowedNumber = v3;

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = FMFAllowed_fmfAllowedNumber;

  return [v5 BOOLValue];
}

+ (BOOL)FMFRestricted
{
  v2 = *MEMORY[0x277D25EA8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LOBYTE(v2) = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:v2] == 2;

  return v2;
}

- (id)cachedFriendsFollowingMyLocation
{
  trampoline = [(FindMyLocateSession *)self trampoline];
  cachedFriendsFollowingMyLocation = [trampoline cachedFriendsFollowingMyLocation];

  return cachedFriendsFollowingMyLocation;
}

- (id)cachedFriendsSharingLocationsWithMe
{
  trampoline = [(FindMyLocateSession *)self trampoline];
  cachedFriendsSharingLocationWithMe = [trampoline cachedFriendsSharingLocationWithMe];

  return cachedFriendsSharingLocationWithMe;
}

- (id)cachedLocationForHandle:(id)handle
{
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  v6 = [trampoline cachedLocationFor:handleCopy includeAddress:1];

  return v6;
}

- (id)cachedLocationForHandle:(id)handle includeAddress:(BOOL)address
{
  addressCopy = address;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  v8 = [trampoline cachedLocationFor:handleCopy includeAddress:addressCopy];

  return v8;
}

- (id)cachedOfferExpirationForHandle:(id)handle groupId:(id)id
{
  idCopy = id;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  v9 = [trampoline cachedOfferExpirationFor:handleCopy groupId:idCopy];

  return v9;
}

- (int64_t)cachedCanShareLocationWithHandle:(id)handle isFromGroup:(BOOL)group
{
  groupCopy = group;
  handleCopy = handle;
  trampoline = [(FindMyLocateSession *)self trampoline];
  v8 = [trampoline cachedCanShareLocationWithHandle:handleCopy isFromGroup:groupCopy];

  return v8;
}

@end