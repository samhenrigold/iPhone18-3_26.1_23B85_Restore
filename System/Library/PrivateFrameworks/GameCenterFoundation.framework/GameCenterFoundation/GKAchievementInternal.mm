@interface GKAchievementInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKAchievementInternal)initWithCoder:(id)coder;
- (id)serverRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHidden:(BOOL)hidden;
- (void)setReplayable:(BOOL)replayable;
@end

@implementation GKAchievementInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_23 != -1)
  {
    +[GKAchievementInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_23;

  return v3;
}

void __48__GKAchievementInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v16[17] = *MEMORY[0x277D85DE8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0, @"achievedDescription", @"attributes", @"friendsWhoHaveThis"}];
  v16[2] = v5;
  v15[3] = @"groupIdentifier";
  v16[3] = objc_opt_class();
  v15[4] = @"icons";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v16[4] = v9;
  v15[5] = @"ascResourceID";
  v16[5] = objc_opt_class();
  v15[6] = @"identifier";
  v16[6] = objc_opt_class();
  v15[7] = @"lastReportedDate";
  v16[7] = objc_opt_class();
  v15[8] = @"percentComplete";
  v16[8] = objc_opt_class();
  v15[9] = @"player";
  v16[9] = objc_opt_class();
  v15[10] = @"rarityPercent";
  v16[10] = objc_opt_class();
  v15[11] = @"activityIdentifier";
  v16[11] = objc_opt_class();
  v15[12] = @"activityProperties";
  v10 = MEMORY[0x277CBEB98];
  v11 = +[GKInternalRepresentation secureCodedJsonTypes];
  v12 = [v10 setWithSet:v11];
  v16[12] = v12;
  v15[13] = @"releaseState";
  v16[13] = objc_opt_class();
  v15[14] = @"title";
  v16[14] = objc_opt_class();
  v15[15] = @"unachievedDescription";
  v16[15] = objc_opt_class();
  v15[16] = @"gameHint";
  v16[16] = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:17];

  v14 = secureCodedPropertyKeys_sSecureCodedKeys_23;
  secureCodedPropertyKeys_sSecureCodedKeys_23 = v13;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GKAchievementInternal;
  coderCopy = coder;
  [(GKInternalRepresentation *)&v7 encodeWithCoder:coderCopy];
  v5 = [(GKAchievementInternal *)self player:v7.receiver];
  playerID = [v5 playerID];
  [coderCopy encodeObject:playerID forKey:@"playerID"];

  [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"hasFullPlayer"];
}

- (GKAchievementInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GKAchievementInternal;
  v5 = [(GKInternalRepresentation *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (v5 && !v5->_player)
  {
    v7 = +[(GKInternalRepresentation *)GKPlayerInternal];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    [(GKPlayerInternal *)v7 setPlayerID:v8];

    player = v6->_player;
    v6->_player = v7;
  }

  return v6;
}

- (id)serverRepresentation
{
  [(GKAchievementInternal *)self percentComplete];
  v4 = v3;
  lastReportedDate = [(GKAchievementInternal *)self lastReportedDate];
  if (!lastReportedDate)
  {
    lastReportedDate = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v4;
  if (v6 <= 100.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 100.0;
  }

  v8 = MEMORY[0x277CBEAC0];
  identifier = [(GKAchievementInternal *)self identifier];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKAchievementInternal isHidden](self, "isHidden")}];
  v11 = [MEMORY[0x277CCABB0] numberWithLong:v7];
  _gkServerTimestamp = [lastReportedDate _gkServerTimestamp];
  groupIdentifier = [(GKAchievementInternal *)self groupIdentifier];
  v14 = [v8 dictionaryWithObjectsAndKeys:{identifier, @"achievement-id", v10, @"is-hidden", v11, @"achievement-pct", _gkServerTimestamp, @"timestamp", groupIdentifier, @"group-achievement-id", 0}];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GKAchievementInternal *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v8 = 1;
    }

    else
    {
      groupIdentifier = [(GKAchievementInternal *)self groupIdentifier];
      groupIdentifier2 = [v5 groupIdentifier];
      v8 = [groupIdentifier isEqualToString:groupIdentifier2];
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
  identifier = [(GKAchievementInternal *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_attributes._value = self->_attributes._value & 0xFFFEFFFF | v3;
}

- (void)setReplayable:(BOOL)replayable
{
  if (replayable)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_attributes._value = self->_attributes._value & 0xFFFDFFFF | v3;
}

@end