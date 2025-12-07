@interface OPTTSMutableTTSRequestFeatureFlags
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (OPTTSMutableTTSRequestFeatureFlags)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFe_feature:(BOOL)fe_feature;
- (void)setFe_feature_only:(BOOL)fe_feature_only;
@end

@implementation OPTTSMutableTTSRequestFeatureFlags

- (void)setFe_feature_only:(BOOL)fe_feature_only
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)fe_feature_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setFe_feature:(BOOL)fe_feature
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)fe_feature
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTTSRequestFeatureFlags)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTTSRequestFeatureFlags;
  v2 = [(OPTTSMutableTTSRequestFeatureFlags *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end