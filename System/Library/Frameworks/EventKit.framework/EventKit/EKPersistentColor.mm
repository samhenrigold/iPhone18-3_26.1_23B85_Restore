@interface EKPersistentColor
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EKPersistentColor

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_10 != -1)
  {
    +[EKPersistentColor defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_9;

  return v3;
}

void __44__EKPersistentColor_defaultPropertiesToLoad__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69928B8];
  v4[0] = *MEMORY[0x1E69928B0];
  v4[1] = v0;
  v1 = *MEMORY[0x1E6992B10];
  v4[2] = *MEMORY[0x1E6992B08];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_9;
  defaultPropertiesToLoad_defaultPropertiesToLoad_9 = v2;
}

+ (id)relations
{
  if (relations_onceToken_16 != -1)
  {
    +[EKPersistentColor relations];
  }

  v3 = relations_relations_16;

  return v3;
}

void __30__EKPersistentColor_relations__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69928C0];
  v0 = [MEMORY[0x1E695DFD8] set];
  v1 = [EKRelation relationWithEntityName:@"Source" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = relations_relations_16;
  relations_relations_16 = v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentColor);
  data = [(EKPersistentColor *)self data];
  [(EKPersistentColor *)v4 setData:data];

  uUID = [(EKPersistentColor *)self UUID];
  [(EKPersistentColor *)v4 setUUID:uUID];

  providerIdentifier = [(EKPersistentColor *)self providerIdentifier];
  [(EKPersistentColor *)v4 setProviderIdentifier:providerIdentifier];

  externalID = [(EKPersistentColor *)self externalID];
  [(EKPersistentColor *)v4 setExternalID:externalID];

  source = [(EKPersistentColor *)self source];
  [(EKPersistentColor *)v4 setSource:source];

  return v4;
}

@end