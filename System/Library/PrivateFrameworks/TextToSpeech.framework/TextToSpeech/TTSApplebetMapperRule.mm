@interface TTSApplebetMapperRule
+ (id)ruleWithHeterogeniousArray:(id)array;
@end

@implementation TTSApplebetMapperRule

+ (id)ruleWithHeterogeniousArray:(id)array
{
  arrayCopy = array;
  v4 = [[TTSApplebetMapperRule alloc] init];
  v5 = [arrayCopy objectAtIndexedSubscript:0];
  [(TTSApplebetMapperRule *)v4 setLeft:v5];

  v6 = [arrayCopy objectAtIndexedSubscript:1];
  [(TTSApplebetMapperRule *)v4 setMatch:v6];

  v7 = [arrayCopy objectAtIndexedSubscript:2];
  [(TTSApplebetMapperRule *)v4 setRight:v7];

  v8 = [arrayCopy objectAtIndexedSubscript:3];
  [(TTSApplebetMapperRule *)v4 setMatchRule:v8];

  v9 = [arrayCopy objectAtIndexedSubscript:4];
  [(TTSApplebetMapperRule *)v4 setSubstitution:v9];

  return v4;
}

@end