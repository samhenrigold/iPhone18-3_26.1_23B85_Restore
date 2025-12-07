@interface FTMutableBatchTranslationLoggingRequest
- (FTMutableBatchTranslationLoggingRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)time_to_first_response;
- (int)time_to_page_complete;
- (int)time_to_viewport_complete;
- (void)setSession_id:(id)session_id;
- (void)setTime_to_first_response:(int)time_to_first_response;
- (void)setTime_to_page_complete:(int)time_to_page_complete;
- (void)setTime_to_viewport_complete:(int)time_to_viewport_complete;
@end

@implementation FTMutableBatchTranslationLoggingRequest

- (FTMutableBatchTranslationLoggingRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationLoggingRequest;
  v2 = [(FTMutableBatchTranslationLoggingRequest *)&v6 init];
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

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)time_to_first_response
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_first_response"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setTime_to_first_response:(int)time_to_first_response
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&time_to_first_response];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)time_to_viewport_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_viewport_complete"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setTime_to_viewport_complete:(int)time_to_viewport_complete
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&time_to_viewport_complete];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)time_to_page_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_page_complete"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setTime_to_page_complete:(int)time_to_page_complete
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&time_to_page_complete];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end