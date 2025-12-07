@interface WFLinkBooksNavigatePagesAction
- (id)overrideDefaultValuesByParameter;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkBooksNavigatePagesAction

- (id)overrideDefaultValuesByParameter
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"direction";
  v5[0] = @"next";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)overrideLabelsByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"direction";
  v2 = WFLocalizedStringResourceWithKey(@"Direction (direction)", @"Direction");
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end