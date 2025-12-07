@interface AAUISignInDataclassMergeActionInvokingOBWelcomeController
- (AAUISignInDataclassMergeActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (AAUISignInDataclassMergeActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUISignInDataclassMergeActionInvokingOBWelcomeController

- (AAUISignInDataclassMergeActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title, a2);
  MEMORY[0x1E69E5928](text, v6);
  MEMORY[0x1E69E5928](name, v7);
  sub_1C5596574();
  if (text)
  {
    sub_1C5596574();
    MEMORY[0x1E69E5920](text);
  }

  if (name)
  {
    sub_1C5596574();
    v10 = v8;
    MEMORY[0x1E69E5920](name);
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  SignInDataclassMergeActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v9);
}

- (AAUISignInDataclassMergeActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title, a2);
  MEMORY[0x1E69E5928](text, v6);
  MEMORY[0x1E69E5928](icon, v7);
  sub_1C5596574();
  if (text)
  {
    sub_1C5596574();
    v10 = v8;
    MEMORY[0x1E69E5920](text);
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  SignInDataclassMergeActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v9);
}

- (void)viewWillAppear:(BOOL)appear
{
  MEMORY[0x1E69E5928](self, a2);
  v3 = sub_1C5594AC4();
  SignInDataclassMergeActionInvokingOBWelcomeController.viewWillAppear(_:)(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self, a2);
  SignInDataclassMergeActionInvokingOBWelcomeController.viewDidLoad()();
  MEMORY[0x1E69E5920](self);
}

@end