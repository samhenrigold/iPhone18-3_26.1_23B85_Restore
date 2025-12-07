@interface GKTurnBasedExchangeInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
@end

@implementation GKTurnBasedExchangeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_369 != -1)
  {
    +[GKTurnBasedExchangeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_368;

  return v3;
}

void __54__GKTurnBasedExchangeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v19[10] = *MEMORY[0x277D85DE8];
  v18[0] = @"exchangeID";
  v19[0] = objc_opt_class();
  v18[1] = @"senderIndex";
  v19[1] = objc_opt_class();
  v18[2] = @"statusString";
  v19[2] = objc_opt_class();
  v18[3] = @"recipientIndexes";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v19[3] = v5;
  v18[4] = @"localizableMessage";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v19[4] = v11;
  v18[5] = @"data";
  v19[5] = objc_opt_class();
  v18[6] = @"sendDate";
  v19[6] = objc_opt_class();
  v18[7] = @"timeoutDate";
  v19[7] = objc_opt_class();
  v18[8] = @"completionDate";
  v19[8] = objc_opt_class();
  v18[9] = @"replies";
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  v19[9] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:10];

  v17 = secureCodedPropertyKeys_sSecureCodedKeys_368;
  secureCodedPropertyKeys_sSecureCodedKeys_368 = v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    exchangeID = self->_exchangeID;
    exchangeID = [equalCopy exchangeID];
    v7 = exchangeID == exchangeID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end