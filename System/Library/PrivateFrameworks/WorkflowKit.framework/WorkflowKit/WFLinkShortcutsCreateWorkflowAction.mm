@interface WFLinkShortcutsCreateWorkflowAction
- (id)localizedCategoryWithContext:(id)context;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkShortcutsCreateWorkflowAction

- (id)overrideLabelsByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"name";
  v2 = WFLocalizedStringResourceWithKey(@"Shortcut Name", @"Shortcut Name");
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"ShortcutsSubcategoryShortcuts", @"Shortcuts");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end