@interface VSKAttribute(MediaAnalysis)
+ (id)mad_embeddingVersionAttribute;
+ (id)mad_stringIdentifierAttribute;
@end

@implementation VSKAttribute(MediaAnalysis)

+ (id)mad_embeddingVersionAttribute
{
  v1 = objc_alloc(MEMORY[0x1E69DF600]);
  mad_embeddingVersionAttributeName = [objc_opt_class() mad_embeddingVersionAttributeName];
  v3 = [objc_alloc(MEMORY[0x1E69DF610]) initWithIntegerDefaultValue:0];
  v4 = [v1 initWithName:mad_embeddingVersionAttributeName columnType:v3];

  return v4;
}

+ (id)mad_stringIdentifierAttribute
{
  v0 = objc_alloc(MEMORY[0x1E69DF600]);
  v1 = [objc_alloc(MEMORY[0x1E69DF610]) initWithStringDefaultValue:0];
  v2 = [v0 initWithName:@"asset_id" columnType:v1];

  return v2;
}

@end