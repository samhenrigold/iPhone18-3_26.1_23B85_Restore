@interface WFLinkFavoriteEntityAction
- (id)overrideDefaultValuesByParameter;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkFavoriteEntityAction

- (id)overrideDefaultValuesByParameter
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"operation";
  v5[0] = @"add";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)overrideLabelsByParameter
{
  v8[1] = *MEMORY[0x1E69E9840];
  entityName = [(WFLinkEntityAction *)self entityName];

  if (entityName)
  {
    v7 = @"entities";
    entityName2 = [(WFLinkEntityAction *)self entityName];
    v8[0] = entityName2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end