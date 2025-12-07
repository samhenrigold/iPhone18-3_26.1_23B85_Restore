@interface ATAccountInfo
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation ATAccountInfo

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = objc_opt_class();
  }

  __Copy(self, zone, v5);
  return objc_claimAutoreleasedReturnValue();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
  }

  __Copy(self, zone, v5);
  return objc_claimAutoreleasedReturnValue();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ATAccountInfo;
  v4 = [(ATAccountInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [%@, %@, %@]", v4, self->_appleID, self->_altDSID, self->_DSID];

  return v5;
}

@end