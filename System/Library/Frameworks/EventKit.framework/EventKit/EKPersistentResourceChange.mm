@interface EKPersistentResourceChange
+ (id)defaultPropertiesToLoad;
+ (id)relations;
@end

@implementation EKPersistentResourceChange

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_6 != -1)
  {
    +[EKPersistentResourceChange defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_5;

  return v3;
}

void __53__EKPersistentResourceChange_defaultPropertiesToLoad__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992BF8];
  v8[0] = *MEMORY[0x1E6992BF0];
  v8[1] = v0;
  v1 = *MEMORY[0x1E6992C18];
  v8[2] = *MEMORY[0x1E6992C10];
  v8[3] = v1;
  v2 = *MEMORY[0x1E6992C00];
  v8[4] = *MEMORY[0x1E6992C20];
  v8[5] = v2;
  v3 = *MEMORY[0x1E6992C28];
  v8[6] = *MEMORY[0x1E6992C58];
  v8[7] = v3;
  v4 = *MEMORY[0x1E6992C60];
  v9 = *MEMORY[0x1E6992C30];
  v10 = v4;
  v5 = *MEMORY[0x1E6992C40];
  v11 = v9;
  v12 = v5;
  v13 = *MEMORY[0x1E6992A90];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:13];
  v7 = defaultPropertiesToLoad_defaultPropertiesToLoad_5;
  defaultPropertiesToLoad_defaultPropertiesToLoad_5 = v6;
}

+ (id)relations
{
  if (relations_onceToken_9 != -1)
  {
    +[EKPersistentResourceChange relations];
  }

  v3 = relations_relations_9;

  return v3;
}

void __39__EKPersistentResourceChange_relations__block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992AD0]];
  v6[0] = *MEMORY[0x1E6992BF0];
  v1 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v7[0] = v1;
  v6[1] = *MEMORY[0x1E6992BF8];
  v2 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v7[1] = v2;
  v6[2] = *MEMORY[0x1E6992C48];
  v3 = [EKRelation relationWithEntityName:@"Notification" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = relations_relations_9;
  relations_relations_9 = v4;
}

@end