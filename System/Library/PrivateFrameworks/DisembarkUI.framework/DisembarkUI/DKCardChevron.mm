@interface DKCardChevron
+ (id)imageForExpandedCard:(BOOL)card;
- (DKCardChevron)init;
@end

@implementation DKCardChevron

+ (id)imageForExpandedCard:(BOOL)card
{
  cardCopy = card;
  sub_248D81748(0, &qword_27EECD198, 0x277D755B8);
  v4 = MEMORY[0x24C1EA730](cardCopy);

  return v4;
}

- (DKCardChevron)init
{
  v3.receiver = self;
  v3.super_class = DKCardChevron;
  return [(DKCardChevron *)&v3 init];
}

@end