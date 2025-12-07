@interface WFRemoteQuarantineDecision
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFRemoteQuarantineDecision

+ (id)JSONKeyPathsByPropertyKey
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"policy";
  v4[1] = @"errorTitle";
  v5[0] = @"policy";
  v5[1] = @"errorTitle";
  v4[2] = @"errorMessage";
  v5[2] = @"errorMessage";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end