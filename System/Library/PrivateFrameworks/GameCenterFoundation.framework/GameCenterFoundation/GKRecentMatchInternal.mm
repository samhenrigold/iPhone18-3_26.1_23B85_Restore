@interface GKRecentMatchInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKRecentMatchInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_315 != -1)
  {
    +[GKRecentMatchInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_314;

  return v3;
}

void __48__GKRecentMatchInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"player";
  v5[0] = objc_opt_class();
  v4[1] = @"game";
  v5[1] = objc_opt_class();
  v4[2] = @"date";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_314;
  secureCodedPropertyKeys_sSecureCodedKeys_314 = v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    game = [(GKRecentMatchInternal *)self game];
    player = [(GKRecentMatchInternal *)self player];
    date = [(GKRecentMatchInternal *)self date];
    game2 = [v5 game];
    player2 = [v5 player];
    date2 = [v5 date];
    if ((player == player2 || [player isEqual:player2]) && (game == game2 || objc_msgSend(game, "isEqual:", game2)))
    {
      if (date == date2)
      {
        v12 = 1;
      }

      else
      {
        v12 = [date isEqual:date2];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  player = [(GKRecentMatchInternal *)self player];
  v4 = [player hash];

  game = [(GKRecentMatchInternal *)self game];
  v6 = [game hash] ^ v4;

  date = [(GKRecentMatchInternal *)self date];
  v8 = [date hash];

  return v6 ^ v8;
}

@end