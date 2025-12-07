@interface QSSMutableItnAlignment
- (QSSMutableItnAlignment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)first_post_itn_char_pos;
- (int)first_pre_itn_token_index;
- (int)last_post_itn_char_pos;
- (int)last_pre_itn_token_index;
- (void)setFirst_post_itn_char_pos:(int)first_post_itn_char_pos;
- (void)setFirst_pre_itn_token_index:(int)first_pre_itn_token_index;
- (void)setLast_post_itn_char_pos:(int)last_post_itn_char_pos;
- (void)setLast_pre_itn_token_index:(int)last_pre_itn_token_index;
@end

@implementation QSSMutableItnAlignment

- (void)setLast_post_itn_char_pos:(int)last_post_itn_char_pos
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&last_post_itn_char_pos];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)last_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_post_itn_char_pos"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setFirst_post_itn_char_pos:(int)first_post_itn_char_pos
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&first_post_itn_char_pos];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)first_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_post_itn_char_pos"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setLast_pre_itn_token_index:(int)last_pre_itn_token_index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&last_pre_itn_token_index];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)last_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_pre_itn_token_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setFirst_pre_itn_token_index:(int)first_pre_itn_token_index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&first_pre_itn_token_index];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)first_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_pre_itn_token_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableItnAlignment)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableItnAlignment;
  v2 = [(QSSMutableItnAlignment *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end