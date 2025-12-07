@interface AAUIAccountRecoveryContactUpsellContactSection
+ (id)createWithViewModel:(id)model delegate:(id)delegate;
@end

@implementation AAUIAccountRecoveryContactUpsellContactSection

+ (id)createWithViewModel:(id)model delegate:(id)delegate
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](model, v4);
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  v8 = static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(model, delegate);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](model);

  return v8;
}

@end