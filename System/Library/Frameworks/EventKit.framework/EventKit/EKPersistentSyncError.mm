@interface EKPersistentSyncError
+ (id)relations;
@end

@implementation EKPersistentSyncError

+ (id)relations
{
  if (relations_onceToken_1 != -1)
  {
    +[EKPersistentSyncError relations];
  }

  v3 = relations_relations_1;

  return v3;
}

void __34__EKPersistentSyncError_relations__block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69928C8];
  v0 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69926F0]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v9[0] = v1;
  v8[1] = *MEMORY[0x1E69928D0];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992898]];
  v3 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:v2 ownsRelated:0];
  v9[1] = v3;
  v8[2] = *MEMORY[0x1E69928E8];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992D98]];
  v5 = [EKRelation relationWithEntityName:@"Store" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v7 = relations_relations_1;
  relations_relations_1 = v6;
}

@end