@interface QSSMutableRecognitionToken
- (BOOL)add_space_after;
- (QSSMutableRecognitionToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)confidence;
- (int)end_milli_seconds;
- (int)silence_start_milli_seconds;
- (int)start_milli_seconds;
- (void)setAdd_space_after:(BOOL)add_space_after;
- (void)setConfidence:(int)confidence;
- (void)setEnd_milli_seconds:(int)end_milli_seconds;
- (void)setIpa_phone_seq:(id)ipa_phone_seq;
- (void)setPhone_seq:(id)phone_seq;
- (void)setSilence_start_milli_seconds:(int)silence_start_milli_seconds;
- (void)setStart_milli_seconds:(int)start_milli_seconds;
- (void)setToken_text:(id)token_text;
@end

@implementation QSSMutableRecognitionToken

- (void)setIpa_phone_seq:(id)ipa_phone_seq
{
  v4 = [ipa_phone_seq copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhone_seq:(id)phone_seq
{
  v4 = [phone_seq copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAdd_space_after:(BOOL)add_space_after
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:add_space_after];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)add_space_after
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"add_space_after"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setConfidence:(int)confidence
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&confidence];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSilence_start_milli_seconds:(int)silence_start_milli_seconds
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&silence_start_milli_seconds];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)silence_start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"silence_start_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setEnd_milli_seconds:(int)end_milli_seconds
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&end_milli_seconds];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)end_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setStart_milli_seconds:(int)start_milli_seconds
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&start_milli_seconds];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setToken_text:(id)token_text
{
  v4 = [token_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableRecognitionToken)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRecognitionToken;
  v2 = [(QSSMutableRecognitionToken *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end