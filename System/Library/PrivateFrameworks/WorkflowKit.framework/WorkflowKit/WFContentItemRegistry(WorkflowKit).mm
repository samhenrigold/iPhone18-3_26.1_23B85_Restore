@interface WFContentItemRegistry(WorkflowKit)
+ (id)allContentItemClassesInWorkflowKit;
@end

@implementation WFContentItemRegistry(WorkflowKit)

+ (id)allContentItemClassesInWorkflowKit
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];

  return v2;
}

@end