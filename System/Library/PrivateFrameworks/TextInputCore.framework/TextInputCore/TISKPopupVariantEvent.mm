@interface TISKPopupVariantEvent
- (id)description;
- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKPopupVariantEvent

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  input = [(TISKInputEvent *)self input];
  v4 = objc_msgSend_string(input);
  v5 = [v2 stringWithFormat:@"pu-%@", v4];

  return v5;
}

- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKPopupVariantEvent;
  return [(TISKInputEvent *)&v6 init:init type:15 emojiSearchMode:mode order:order];
}

@end