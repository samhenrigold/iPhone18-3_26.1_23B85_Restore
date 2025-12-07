@interface FTMutableTranslationOptions
- (BOOL)disable_payload_logging;
- (BOOL)enable_disambiguation_alternatives;
- (BOOL)mask_profanity;
- (FTMutableTranslationOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisable_payload_logging:(BOOL)disable_payload_logging;
- (void)setEnable_disambiguation_alternatives:(BOOL)enable_disambiguation_alternatives;
- (void)setMask_profanity:(BOOL)mask_profanity;
@end

@implementation FTMutableTranslationOptions

- (FTMutableTranslationOptions)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationOptions;
  v2 = [(FTMutableTranslationOptions *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)enable_disambiguation_alternatives
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_disambiguation_alternatives"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setEnable_disambiguation_alternatives:(BOOL)enable_disambiguation_alternatives
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:enable_disambiguation_alternatives];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)mask_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"mask_profanity"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMask_profanity:(BOOL)mask_profanity
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:mask_profanity];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)disable_payload_logging
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_payload_logging"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDisable_payload_logging:(BOOL)disable_payload_logging
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:disable_payload_logging];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end