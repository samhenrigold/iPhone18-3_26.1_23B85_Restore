@interface GKScopedIDs
+ (BOOL)availableForPlayerID:(id)d;
+ (id)makeNonpersistentWithPlayerID:(id)d gameBundleID:(id)iD;
+ (id)makePersistentWithPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID;
+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)ds;
+ (id)secureCodedPropertyKeys;
- (BOOL)arePersistent;
- (BOOL)isForPlayerID:(id)d gameBundleID:(id)iD;
- (GKScopedIDs)initWithNonpersistentPlayerID:(id)d gameBundleID:(id)iD salt:(int)salt;
- (GKScopedIDs)initWithPersistentPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID;
@end

@implementation GKScopedIDs

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_16 != -1)
  {
    +[GKScopedIDs secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_16;

  return v3;
}

void __38__GKScopedIDs_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"createdPersistent";
  v5[0] = objc_opt_class();
  v4[1] = @"playerID";
  v5[1] = objc_opt_class();
  v4[2] = @"gameBundleID";
  v5[2] = objc_opt_class();
  v4[3] = @"gamePlayerID";
  v5[3] = objc_opt_class();
  v4[4] = @"teamPlayerID";
  v5[4] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_16;
  secureCodedPropertyKeys_sSecureCodedKeys_16 = v2;
}

- (GKScopedIDs)initWithPersistentPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID
{
  dCopy = d;
  iDCopy = iD;
  playerIDCopy = playerID;
  teamPlayerIDCopy = teamPlayerID;
  v19.receiver = self;
  v19.super_class = GKScopedIDs;
  v15 = [(GKScopedIDs *)&v19 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    createdPersistent = v15->_createdPersistent;
    v15->_createdPersistent = v16;

    objc_storeStrong(&v15->_playerID, d);
    objc_storeStrong(&v15->_gameBundleID, iD);
    objc_storeStrong(&v15->_gamePlayerID, playerID);
    objc_storeStrong(&v15->_teamPlayerID, teamPlayerID);
  }

  return v15;
}

- (GKScopedIDs)initWithNonpersistentPlayerID:(id)d gameBundleID:(id)iD salt:(int)salt
{
  v5 = *&salt;
  dCopy = d;
  iDCopy = iD;
  v23.receiver = self;
  v23.super_class = GKScopedIDs;
  v11 = [(GKScopedIDs *)&v23 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
    createdPersistent = v11->_createdPersistent;
    v11->_createdPersistent = v12;

    objc_storeStrong(&v11->_playerID, d);
    objc_storeStrong(&v11->_gameBundleID, iD);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"A:%@:%@:%d", dCopy, iDCopy, v5];
    _gkSHA256HashData = [v14 _gkSHA256HashData];
    _gkAsHexString = [_gkSHA256HashData _gkAsHexString];
    gamePlayerID = v11->_gamePlayerID;
    v11->_gamePlayerID = _gkAsHexString;

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"T:%@:%@:%d", dCopy, iDCopy, v5];
    _gkSHA256HashData2 = [v18 _gkSHA256HashData];
    _gkAsHexString2 = [_gkSHA256HashData2 _gkAsHexString];
    teamPlayerID = v11->_teamPlayerID;
    v11->_teamPlayerID = _gkAsHexString2;
  }

  return v11;
}

- (BOOL)arePersistent
{
  createdPersistent = [(GKScopedIDs *)self createdPersistent];
  bOOLValue = [createdPersistent BOOLValue];

  return bOOLValue;
}

- (BOOL)isForPlayerID:(id)d gameBundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  playerID = [(GKScopedIDs *)self playerID];
  v9 = [playerID isEqualToString:dCopy];

  if (v9)
  {
    gameBundleID = [(GKScopedIDs *)self gameBundleID];
    v11 = [gameBundleID isEqualToString:iDCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)makePersistentWithPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID
{
  v6 = 0;
  if (d && iD && playerID && teamPlayerID)
  {
    teamPlayerIDCopy = teamPlayerID;
    playerIDCopy = playerID;
    iDCopy = iD;
    dCopy = d;
    v6 = [[GKScopedIDs alloc] initWithPersistentPlayerID:dCopy gameBundleID:iDCopy gamePlayerID:playerIDCopy teamPlayerID:teamPlayerIDCopy];
  }

  return v6;
}

+ (id)makeNonpersistentWithPlayerID:(id)d gameBundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [GKScopedIDs alloc];
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = @"UnknownID";
  }

  if (iDCopy)
  {
    v9 = iDCopy;
  }

  else
  {
    v9 = @"UnknownBundleID";
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v11 = -[GKScopedIDs initWithNonpersistentPlayerID:gameBundleID:salt:](v7, "initWithNonpersistentPlayerID:gameBundleID:salt:", v8, v9, [processInfo processIdentifier]);

  return v11;
}

+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        playerID = [v10 playerID];
        [dictionary setObject:v10 forKey:playerID];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  return v12;
}

+ (BOOL)availableForPlayerID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (!dCopy || ([dCopy isEqualToString:@"AnonymousID"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"AutoMatchID") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:@"UnknownID"] ^ 1;
  }

  return v5;
}

@end