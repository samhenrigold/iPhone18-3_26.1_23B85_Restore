@interface TISKSpecialKeyEvent
- (id)description;
- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKSpecialKeyEvent

- (id)description
{
  input = [(TISKInputEvent *)self input];
  v4 = objc_msgSend_string(input);
  if (objc_msgSend_isEqualToString_(v4))
  {
    v5 = @"NL";
  }

  else
  {
    input2 = [(TISKInputEvent *)self input];
    v5 = objc_msgSend_string(input2);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"spl-%@", v5];

  return v7;
}

- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKSpecialKeyEvent;
  return [(TISKInputEvent *)&v6 init:init type:6 emojiSearchMode:mode order:order];
}

@end