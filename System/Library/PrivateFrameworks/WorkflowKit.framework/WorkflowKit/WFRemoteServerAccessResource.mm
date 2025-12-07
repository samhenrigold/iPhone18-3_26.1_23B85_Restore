@interface WFRemoteServerAccessResource
- (WFRemoteServerAccessResource)init;
@end

@implementation WFRemoteServerAccessResource

- (WFRemoteServerAccessResource)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"WFResourceClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v10.receiver = self;
  v10.super_class = WFRemoteServerAccessResource;
  v6 = [(WFAccessResource *)&v10 initWithDefinition:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

@end