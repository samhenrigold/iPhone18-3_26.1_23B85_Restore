@interface STRestrictionsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STRestrictionsCoreAnalyticsEvent)initWithContentAndPrivacyRestrictionsEnabled:(BOOL)enabled mediaAndAppleMusicIsRestricted:(BOOL)restricted gameCenterMultiplayerGamesIsRestricted:(BOOL)isRestricted gameCenterAddingFriendsIsRestricted:(BOOL)friendsIsRestricted gameCenterConnectWithFriendsIsRestricted:(BOOL)withFriendsIsRestricted gameCenterScreenRecordingIsRestricted:(BOOL)recordingIsRestricted gameCenterNearbyMultiplayerIsRestricted:(BOOL)multiplayerIsRestricted gameCenterPrivateMessagingIsRestricted:(BOOL)self0 gameCenterProfilePrivacyChangesIsRestricted:(BOOL)self1 gameCenterAvatarAndNicknameChangesIsRestricted:(BOOL)self2 userAgeGroup:(int64_t)self3 userIsManaged:(BOOL)self4;
@end

@implementation STRestrictionsCoreAnalyticsEvent

- (STRestrictionsCoreAnalyticsEvent)initWithContentAndPrivacyRestrictionsEnabled:(BOOL)enabled mediaAndAppleMusicIsRestricted:(BOOL)restricted gameCenterMultiplayerGamesIsRestricted:(BOOL)isRestricted gameCenterAddingFriendsIsRestricted:(BOOL)friendsIsRestricted gameCenterConnectWithFriendsIsRestricted:(BOOL)withFriendsIsRestricted gameCenterScreenRecordingIsRestricted:(BOOL)recordingIsRestricted gameCenterNearbyMultiplayerIsRestricted:(BOOL)multiplayerIsRestricted gameCenterPrivateMessagingIsRestricted:(BOOL)self0 gameCenterProfilePrivacyChangesIsRestricted:(BOOL)self1 gameCenterAvatarAndNicknameChangesIsRestricted:(BOOL)self2 userAgeGroup:(int64_t)self3 userIsManaged:(BOOL)self4
{
  v21.receiver = self;
  v21.super_class = STRestrictionsCoreAnalyticsEvent;
  result = [(STRestrictionsCoreAnalyticsEvent *)&v21 init];
  result->_contentAndPrivacyRestrictionsEnabled = enabled;
  result->_mediaAndAppleMusicIsRestricted = restricted;
  result->_gameCenterMultiplayerGamesIsRestricted = isRestricted;
  result->_gameCenterAddingFriendsIsRestricted = friendsIsRestricted;
  result->_gameCenterConnectWithFriendsIsRestricted = withFriendsIsRestricted;
  result->_gameCenterScreenRecordingIsRestricted = recordingIsRestricted;
  result->_gameCenterNearbyMultiplayerIsRestricted = multiplayerIsRestricted;
  result->_gameCenterPrivateMessagingIsRestricted = messagingIsRestricted;
  result->_gameCenterProfilePrivacyChangesIsRestricted = changesIsRestricted;
  result->_gameCenterAvatarAndNicknameChangesIsRestricted = nicknameChangesIsRestricted;
  result->_userAgeGroup = group;
  result->_userIsManaged = managed;
  return result;
}

- (NSDictionary)payload
{
  v18[12] = *MEMORY[0x1E69E9840];
  v17[0] = @"contentAndPrivacyRestrictionsEnabled";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent contentAndPrivacyRestrictionsEnabled](self, "contentAndPrivacyRestrictionsEnabled")}];
  v18[0] = v16;
  v17[1] = @"mediaAndAppleMusicIsRestricted";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent mediaAndAppleMusicIsRestricted](self, "mediaAndAppleMusicIsRestricted")}];
  v18[1] = v15;
  v17[2] = @"gameCenterMultiplayerGamesIsRestricted";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterMultiplayerGamesIsRestricted](self, "gameCenterMultiplayerGamesIsRestricted")}];
  v18[2] = v14;
  v17[3] = @"gameCenterAddingFriendsIsRestricted";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterAddingFriendsIsRestricted](self, "gameCenterAddingFriendsIsRestricted")}];
  v18[3] = v3;
  v17[4] = @"gameCenterConnectWithFriendsIsRestricted";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterConnectWithFriendsIsRestricted](self, "gameCenterConnectWithFriendsIsRestricted")}];
  v18[4] = v4;
  v17[5] = @"gameCenterScreenRecordingIsRestricted";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterScreenRecordingIsRestricted](self, "gameCenterScreenRecordingIsRestricted")}];
  v18[5] = v5;
  v17[6] = @"gameCenterNearbyMultiplayerIsRestricted";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterNearbyMultiplayerIsRestricted](self, "gameCenterNearbyMultiplayerIsRestricted")}];
  v18[6] = v6;
  v17[7] = @"gameCenterPrivateMessagingIsRestricted";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterPrivateMessagingIsRestricted](self, "gameCenterPrivateMessagingIsRestricted")}];
  v18[7] = v7;
  v17[8] = @"gameCenterProfilePrivacyChangesIsRestricted";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterProfilePrivacyChangesIsRestricted](self, "gameCenterProfilePrivacyChangesIsRestricted")}];
  v18[8] = v8;
  v17[9] = @"gameCenterAvatarAndNicknameChangesIsRestricted";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterAvatarAndNicknameChangesIsRestricted](self, "gameCenterAvatarAndNicknameChangesIsRestricted")}];
  v18[9] = v9;
  v17[10] = @"userAgeGroup";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STRestrictionsCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v18[10] = v10;
  v17[11] = @"userIsManaged";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v18[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:12];

  return v12;
}

@end