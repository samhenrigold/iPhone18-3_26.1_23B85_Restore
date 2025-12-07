@interface SNModelMetadataUtils
+ (id)validatedFeedbackConnectionsFromModelDescription:(id)description orDefault:(id)default;
@end

@implementation SNModelMetadataUtils

+ (id)validatedFeedbackConnectionsFromModelDescription:(id)description orDefault:(id)default
{
  type metadata accessor for SNModelFeatureConnection(v4);
  sub_1C9A40EFC(&unk_1EC3C55C0, v6, type metadata accessor for SNModelFeatureConnection, MEMORY[0x1E69E81B8]);
  v7 = sub_1C9A92B28();
  swift_getObjCClassMetadata();
  descriptionCopy = description;
  sub_1C9A3C5D4(descriptionCopy, v7);

  v9 = sub_1C9A92B18();

  return v9;
}

@end