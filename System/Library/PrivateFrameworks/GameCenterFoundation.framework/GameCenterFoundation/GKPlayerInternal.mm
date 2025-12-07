@interface GKPlayerInternal
+ (Class)classForFamiliarity:(int)familiarity;
+ (id)compositeNameForFirstName:(id)name lastName:(id)lastName;
+ (id)displayNameWithOptions:(unsigned __int8)options alias:(id)alias composite:(id)composite;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFriendInvitationInContacts;
- (BOOL)isLoaded;
- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)block;
- (id)conciseDescription;
- (id)debugDescription;
- (id)displayNameWithOptions:(unsigned __int8)options;
- (id)minimalInternal;
- (id)serverRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitize;
- (void)setMessagesID:(id)d;
@end

@implementation GKPlayerInternal

- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)block
{
  blockCopy = block;
  v5 = [(GKPlayerInternal *)self init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    sanitizeBeforeEncoding = v5->_sanitizeBeforeEncoding;
    v5->_sanitizeBeforeEncoding = v6;
  }

  return v5;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_21 != -1)
  {
    +[GKPlayerInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_21;

  return v3;
}

void __43__GKPlayerInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[35] = *MEMORY[0x277D85DE8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v9[6] = objc_opt_class();
  v9[7] = objc_opt_class();
  v9[8] = objc_opt_class();
  v9[9] = objc_opt_class();
  v9[10] = objc_opt_class();
  v9[11] = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0, @"playerID", @"scopedIDs", @"alias", @"avatarArtwork", @"avatarType", @"friendLevel", @"friendBiDirectional", @"friendPlayedWith", @"friendPlayedNearby", @"acceptedGameInviteFromThisFriend", @"initiatedGameInviteToThisFriend", @"automatchedTogether", @"photos"}];
  v9[12] = v5;
  v8[13] = @"flags";
  v9[13] = objc_opt_class();
  v8[14] = @"numberOfFriends";
  v9[14] = objc_opt_class();
  v8[15] = @"numberOfFriendsInCommon";
  v9[15] = objc_opt_class();
  v8[16] = @"numberOfGames";
  v9[16] = objc_opt_class();
  v8[17] = @"numberOfGamesInCommon";
  v9[17] = objc_opt_class();
  v8[18] = @"numberOfAchievements";
  v9[18] = objc_opt_class();
  v8[19] = @"numberOfAchievementPoints";
  v9[19] = objc_opt_class();
  v8[20] = @"messagesID";
  v9[20] = objc_opt_class();
  v8[21] = @"onboarding";
  v9[21] = objc_opt_class();
  v8[22] = @"achievementsVisibility";
  v9[22] = objc_opt_class();
  v8[23] = @"gamesPlayedVisibility";
  v9[23] = objc_opt_class();
  v8[24] = @"friendsVisibility";
  v9[24] = objc_opt_class();
  v8[25] = @"globalFriendListAccess";
  v9[25] = objc_opt_class();
  v8[26] = @"isArcadeSubscriber";
  v9[26] = objc_opt_class();
  v8[27] = @"contactsIntegrationConsent";
  v9[27] = objc_opt_class();
  v8[28] = @"contactsAssociationID";
  v9[28] = objc_opt_class();
  v8[29] = @"inboxEntry";
  v9[29] = objc_opt_class();
  v8[30] = @"isInContacts";
  v9[30] = objc_opt_class();
  v8[31] = @"contact";
  v9[31] = objc_opt_class();
  v8[32] = @"serviceLastUpdatedTimestamp";
  v9[32] = objc_opt_class();
  v8[33] = @"isChallengeable";
  v9[33] = objc_opt_class();
  v8[34] = @"supportsMultiplayerActivities";
  v9[34] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:35];

  v7 = secureCodedPropertyKeys_sSecureCodedKeys_21;
  secureCodedPropertyKeys_sSecureCodedKeys_21 = v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sanitizeBeforeEncoding = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
  if (sanitizeBeforeEncoding)
  {
    v6 = sanitizeBeforeEncoding;
    sanitizeBeforeEncoding2 = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
    v8 = sanitizeBeforeEncoding2[2]();

    if (v8)
    {
      [(GKPlayerInternal *)self sanitize];
    }
  }

  v9.receiver = self;
  v9.super_class = GKPlayerInternal;
  [(GKInternalRepresentation *)&v9 encodeWithCoder:coderCopy];
}

- (id)conciseDescription
{
  v3 = MEMORY[0x277CCACA8];
  playerID = [(GKPlayerInternal *)self playerID];
  alias = [(GKPlayerInternal *)self alias];
  friendLevel = [(GKPlayerInternal *)self friendLevel];
  v7 = [v3 stringWithFormat:@"playerID:%@ alias:%@ FL%@", playerID, alias, friendLevel];

  return v7;
}

- (id)serverRepresentation
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(GKPlayerInternal *)v2 serverRepresentation];
  }

  return MEMORY[0x277CBEC10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      playerID = [(GKPlayerInternal *)self playerID];
      playerID2 = [(GKPlayerInternal *)v5 playerID];
      v8 = [playerID isEqualToString:playerID2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  playerID = [(GKPlayerInternal *)self playerID];
  v3 = [playerID hash];

  return v3;
}

- (id)minimalInternal
{
  internalRepresentation = [objc_opt_class() internalRepresentation];
  playerID = [(GKPlayerInternal *)self playerID];
  [internalRepresentation setPlayerID:playerID];

  scopedIDs = [(GKPlayerInternal *)self scopedIDs];
  [internalRepresentation setScopedIDs:scopedIDs];

  alias = [(GKPlayerInternal *)self alias];
  [internalRepresentation setAlias:alias];

  firstName = [(GKPlayerInternal *)self firstName];
  [internalRepresentation setFirstName:firstName];

  lastName = [(GKPlayerInternal *)self lastName];
  [internalRepresentation setLastName:lastName];

  friendLevel = [(GKPlayerInternal *)self friendLevel];
  [internalRepresentation setFriendLevel:friendLevel];

  friendBiDirectional = [(GKPlayerInternal *)self friendBiDirectional];
  [internalRepresentation setFriendBiDirectional:friendBiDirectional];

  friendPlayedWith = [(GKPlayerInternal *)self friendPlayedWith];
  [internalRepresentation setFriendPlayedWith:friendPlayedWith];

  friendPlayedNearby = [(GKPlayerInternal *)self friendPlayedNearby];
  [internalRepresentation setFriendPlayedNearby:friendPlayedNearby];

  acceptedGameInviteFromThisFriend = [(GKPlayerInternal *)self acceptedGameInviteFromThisFriend];
  [internalRepresentation setAcceptedGameInviteFromThisFriend:acceptedGameInviteFromThisFriend];

  initiatedGameInviteToThisFriend = [(GKPlayerInternal *)self initiatedGameInviteToThisFriend];
  [internalRepresentation setInitiatedGameInviteToThisFriend:initiatedGameInviteToThisFriend];

  automatchedTogether = [(GKPlayerInternal *)self automatchedTogether];
  [internalRepresentation setAutomatchedTogether:automatchedTogether];

  compositeName = [(GKPlayerInternal *)self compositeName];
  [internalRepresentation setCompositeName:compositeName];

  [internalRepresentation setAchievementsVisibility:{-[GKPlayerInternal achievementsVisibility](self, "achievementsVisibility")}];
  [internalRepresentation setFriendsVisibility:{-[GKPlayerInternal friendsVisibility](self, "friendsVisibility")}];
  [internalRepresentation setGamesPlayedVisibility:{-[GKPlayerInternal gamesPlayedVisibility](self, "gamesPlayedVisibility")}];
  [internalRepresentation setGlobalFriendListAccess:{-[GKPlayerInternal globalFriendListAccess](self, "globalFriendListAccess")}];
  [internalRepresentation setIsArcadeSubscriber:{-[GKPlayerInternal isArcadeSubscriber](self, "isArcadeSubscriber")}];
  [internalRepresentation setIsChallengeable:{-[GKPlayerInternal isChallengeable](self, "isChallengeable")}];
  [internalRepresentation setSupportsMultiplayerActivities:{-[GKPlayerInternal supportsMultiplayerActivities](self, "supportsMultiplayerActivities")}];

  return internalRepresentation;
}

+ (id)compositeNameForFirstName:(id)name lastName:(id)lastName
{
  if (name | lastName)
  {
    v5 = MEMORY[0x277CBDB38];
    lastNameCopy = lastName;
    nameCopy = name;
    v8 = objc_alloc_init(v5);
    [v8 setContactType:0];
    [v8 setGivenName:nameCopy];

    [v8 setFamilyName:lastNameCopy];
    v9 = [MEMORY[0x277CBDA78] stringFromContact:v8 style:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)displayNameWithOptions:(unsigned __int8)options
{
  optionsCopy = options;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  alias = [(GKPlayerInternal *)self alias];
  if ((isKindOfClass & 1) == 0)
  {
    v7 = objc_opt_class();
    compositeName = [(GKPlayerInternal *)self compositeName];
    v9 = [v7 displayNameWithOptions:optionsCopy alias:alias composite:compositeName];

    alias = v9;
  }

  return alias;
}

+ (id)displayNameWithOptions:(unsigned __int8)options alias:(id)alias composite:(id)composite
{
  aliasCopy = alias;
  compositeCopy = composite;
  v9 = compositeCopy;
  if (compositeCopy)
  {
    v10 = aliasCopy == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (options & 1) == 0)
  {
    v12 = compositeCopy;
  }

  else
  {
    v12 = aliasCopy;
  }

  v13 = v12;

  return v13;
}

+ (Class)classForFamiliarity:(int)familiarity
{
  v4 = objc_opt_class();

  return v4;
}

- (BOOL)isLoaded
{
  v3 = [(NSString *)self->_playerID length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)self->_alias length]!= 0;
  }

  return v3;
}

- (void)setMessagesID:(id)d
{
  if (self->_messagesID != d)
  {
    lowercaseString = [d lowercaseString];
    messagesID = self->_messagesID;
    self->_messagesID = lowercaseString;

    MEMORY[0x2821F96F8](lowercaseString, messagesID);
  }
}

- (BOOL)isFriendInvitationInContacts
{
  if ([(GKPlayerInternal *)self isInContacts])
  {
    return 1;
  }

  contact = [(GKPlayerInternal *)self contact];
  v3 = contact != 0;

  return v3;
}

- (id)debugDescription
{
  playerID = [(GKPlayerInternal *)self playerID];
  v4 = playerID;
  if (playerID)
  {
    v5 = playerID;
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;

  alias = [(GKPlayerInternal *)self alias];
  v8 = alias;
  if (alias)
  {
    v9 = alias;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = v9;

  accountName = [(GKPlayerInternal *)self accountName];
  v12 = accountName;
  if (accountName)
  {
    v13 = accountName;
  }

  else
  {
    v13 = @"nil";
  }

  v14 = v13;

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_achievementsVisibility];
  scopedIDs = [(GKPlayerInternal *)self scopedIDs];
  v19 = [v15 stringWithFormat:@"%@(%p)(playerID:%@, alias:%@, accountName: %@, _achievementsVisibility:%@, scopedIDs: %@)", v16, self, v6, v10, v14, v17, scopedIDs];

  return v19;
}

- (void)sanitize
{
  [(GKPlayerInternal *)self setAccountName:0];
  [(GKPlayerInternal *)self setFriends:MEMORY[0x277CBEBF8]];
  [(GKPlayerInternal *)self setFirstName:0];
  [(GKPlayerInternal *)self setLastName:0];
  [(GKPlayerInternal *)self setCompositeName:0];
  [(GKPlayerInternal *)self setLastPlayedGame:0];
  [(GKPlayerInternal *)self setStatus:0];
  [(GKPlayerInternal *)self setLastPlayedDate:0];
  [(GKPlayerInternal *)self setContact:0];
  [(GKPlayerInternal *)self setContactsAssociationID:0];
  [(GKPlayerInternal *)self setContactsIntegrationConsent:2];
  [(GKPlayerInternal *)self setChallengedTogether:0];
  [(GKPlayerInternal *)self setLastChallengedDate:0];
  [(GKPlayerInternal *)self setLastChallengedGame:0];
  [(GKPlayerInternal *)self setAllowReceivingFriendInvites:0];
  [(GKPlayerInternal *)self setAllowChallengeFriendInvites:0];
  [(GKPlayerInternal *)self setAllowMultiplayerFriendInvites:0];
  [(GKPlayerInternal *)self setIsChallengeable:0];

  [(GKPlayerInternal *)self setSupportsMultiplayerActivities:0];
}

@end