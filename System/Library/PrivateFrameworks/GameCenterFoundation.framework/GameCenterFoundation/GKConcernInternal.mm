@interface GKConcernInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
@end

@implementation GKConcernInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_763 != -1)
  {
    +[GKConcernInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_762;

  return v3;
}

void __44__GKConcernInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"player";
  v5[0] = objc_opt_class();
  v4[1] = @"concernID";
  v5[1] = objc_opt_class();
  v4[2] = @"message";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_762;
  secureCodedPropertyKeys_sSecureCodedKeys_762 = v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    concernID = self->_concernID;
    if (concernID == [v5 concernID])
    {
      message = self->_message;
      message = [v5 message];
      v9 = [(NSString *)message isEqualToString:message];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end