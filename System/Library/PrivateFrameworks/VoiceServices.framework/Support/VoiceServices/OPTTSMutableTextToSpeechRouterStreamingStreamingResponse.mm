@interface OPTTSMutableTextToSpeechRouterStreamingStreamingResponse
- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse;
- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse;
- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init;
- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation OPTTSMutableTextToSpeechRouterStreamingStreamingResponse

- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:?];
  v4 = [responseCopy copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:?];
  v4 = [responseCopy copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:?];
  v4 = [responseCopy copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent_type:(int64_t)content_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:?];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRouterStreamingStreamingResponse;
  v2 = [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end