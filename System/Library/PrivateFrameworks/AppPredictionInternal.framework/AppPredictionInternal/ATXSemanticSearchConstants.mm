@interface ATXSemanticSearchConstants
+ (NSNumber)aNN_max_distance;
+ (NSNumber)embeddingIdx;
- (ATXSemanticSearchConstants)init;
@end

@implementation ATXSemanticSearchConstants

+ (NSNumber)embeddingIdx
{
  v7 = 0;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v2, 0x6E69646465626D65, 0xEC00000078644967, sub_2267D8CD0, &v7, MEMORY[0x277D83B88], &v8);

  v3 = v8;
  v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  initWithInteger_ = [v4 initWithInteger_];

  return initWithInteger_;
}

+ (NSNumber)aNN_max_distance
{
  v8 = 1064346583;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v2, 0xD000000000000010, 0x80000002268CF550, sub_2267D914C, &v8, MEMORY[0x277D83A90], &v9);

  v3 = v9;
  v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v5) = v3;
  initWithFloat_ = [v4 initWithFloat_];

  return initWithFloat_;
}

- (ATXSemanticSearchConstants)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SemanticSearchConstants();
  return [(ATXSemanticSearchConstants *)&v3 init];
}

@end