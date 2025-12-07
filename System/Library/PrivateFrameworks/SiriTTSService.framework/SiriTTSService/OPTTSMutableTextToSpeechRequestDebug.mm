@interface OPTTSMutableTextToSpeechRequestDebug
- (BOOL)disable_cache;
- (BOOL)force_use_tts_service;
- (OPTTSMutableTextToSpeechRequestDebug)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisable_cache:(BOOL)disable_cache;
- (void)setForce_use_tts_service:(BOOL)force_use_tts_service;
@end

@implementation OPTTSMutableTextToSpeechRequestDebug

- (void)setDisable_cache:(BOOL)disable_cache
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:disable_cache];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)disable_cache
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_cache"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setForce_use_tts_service:(BOOL)force_use_tts_service
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:force_use_tts_service];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)force_use_tts_service
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"force_use_tts_service"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRequestDebug)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestDebug;
  v2 = [(OPTTSMutableTextToSpeechRequestDebug *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end