@interface QSSMutableCheckForSpeechResponse
- (BOOL)speech_detected;
- (QSSMutableCheckForSpeechResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSpeech_detected:(BOOL)speech_detected;
@end

@implementation QSSMutableCheckForSpeechResponse

- (void)setSpeech_detected:(BOOL)speech_detected
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:speech_detected];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)speech_detected
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_detected"];
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

- (QSSMutableCheckForSpeechResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCheckForSpeechResponse;
  v2 = [(QSSMutableCheckForSpeechResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end