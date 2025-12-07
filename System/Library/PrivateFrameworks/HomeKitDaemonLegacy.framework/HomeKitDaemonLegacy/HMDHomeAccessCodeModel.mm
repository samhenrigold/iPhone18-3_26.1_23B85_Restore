@interface HMDHomeAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)d accessCodeValue:(id)value;
+ (id)properties;
- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)d value:(id)value label:(id)label;
@end

@implementation HMDHomeAccessCodeModel

- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)d value:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
  dCopy = d;
  v11 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:dCopy accessCodeValue:valueCopy];
  v12 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v11 parentUUID:dCopy];

  if (v12)
  {
    [(HMDHomeAccessCodeModel *)v12 setValue:valueCopy];
    [(HMDHomeAccessCodeModel *)v12 setLabel:labelCopy];
  }

  return v12;
}

+ (id)modelUUIDForHomeUUID:(id)d accessCodeValue:(id)value
{
  v5 = MEMORY[0x277CCAD78];
  dCopy = d;
  v7 = [value dataUsingEncoding:4];
  v8 = [v5 hmf_UUIDWithNamespace:dCopy data:v7];

  return v8;
}

+ (id)properties
{
  if (properties_onceToken_109939 != -1)
  {
    dispatch_once(&properties_onceToken_109939, &__block_literal_global_109940);
  }

  v3 = properties__properties_109941;

  return v3;
}

void __36__HMDHomeAccessCodeModel_properties__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"label";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v4[1] = @"value";
  v5[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = properties__properties_109941;
  properties__properties_109941 = v2;
}

@end