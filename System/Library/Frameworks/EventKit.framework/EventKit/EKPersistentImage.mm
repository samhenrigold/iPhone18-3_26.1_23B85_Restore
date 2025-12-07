@interface EKPersistentImage
+ (id)defaultPropertiesToLoad;
+ (id)relations;
@end

@implementation EKPersistentImage

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_2 != -1)
  {
    +[EKPersistentImage defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_2;

  return v3;
}

void __44__EKPersistentImage_defaultPropertiesToLoad__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A10];
  v4[0] = *MEMORY[0x1E6992A08];
  v4[1] = v0;
  v1 = *MEMORY[0x1E6992A28];
  v4[2] = *MEMORY[0x1E6992A18];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_2;
  defaultPropertiesToLoad_defaultPropertiesToLoad_2 = v2;
}

+ (id)relations
{
  if (relations_onceToken_4 != -1)
  {
    +[EKPersistentImage relations];
  }

  v3 = relations_relations_4;

  return v3;
}

void __30__EKPersistentImage_relations__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6992A20];
  v0 = [MEMORY[0x1E695DFD8] set];
  v1 = [EKRelation relationWithEntityName:@"Source" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = relations_relations_4;
  relations_relations_4 = v2;
}

@end