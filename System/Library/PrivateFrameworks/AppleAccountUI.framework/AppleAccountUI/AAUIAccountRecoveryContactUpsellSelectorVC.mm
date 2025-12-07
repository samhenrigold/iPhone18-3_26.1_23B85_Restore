@interface AAUIAccountRecoveryContactUpsellSelectorVC
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithSelectorViewModel:(id)model vcDelegate:(id)delegate;
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)addButton;
- (void)didSelectLearnMoreButton;
- (void)didSelectLocalContactFor:(id)for;
- (void)dismissLearnMoreSheet;
- (void)setupLater;
- (void)viewDidLoad;
@end

@implementation AAUIAccountRecoveryContactUpsellSelectorVC

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithSelectorViewModel:(id)model vcDelegate:(id)delegate
{
  MEMORY[0x1E69E5928](model, a2);
  swift_unknownObjectRetain();
  return AccountRecoveryContactUpsellSelectorVC.init(selectorViewModel:vcDelegate:)(model, delegate);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54F17C0(v2, v3);
  MEMORY[0x1E69E5920](self);
}

- (void)addButton
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54F269C();
  MEMORY[0x1E69E5920](self);
}

- (void)setupLater
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54F2A70();
  MEMORY[0x1E69E5920](self);
}

- (void)didSelectLocalContactFor:(id)for
{
  MEMORY[0x1E69E5928](for, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C54F2B40(for, v5);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](for);
}

- (void)didSelectLearnMoreButton
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54F2EA4();
  MEMORY[0x1E69E5920](self);
}

- (void)dismissLearnMoreSheet
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54F333C();
  MEMORY[0x1E69E5920](self);
}

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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

  AccountRecoveryContactUpsellSelectorVC.init(title:detailText:symbolName:contentLayout:)(v9);
}

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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

  AccountRecoveryContactUpsellSelectorVC.init(title:detailText:icon:contentLayout:)(v9);
}

@end