@interface FitTestWelcomeController
- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation FitTestWelcomeController

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2DAC48();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](name);
  sub_1AC30A92C();
  if (text)
  {
    sub_1AC30A92C();
    MEMORY[0x1E69E5920](text);
  }

  if (name)
  {
    v7 = sub_1AC30A92C();
    v8 = v6;
    MEMORY[0x1E69E5920](name);
    sub_1AC2DBE58(v7, v8, layout, v8);
  }

  sub_1AC2DBE58(0, 0, layout, 0);
}

- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  layoutCopy = layout;
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](icon);
  sub_1AC30A92C();
  if (text)
  {
    v8 = sub_1AC30A92C();
    v9 = v6;
    MEMORY[0x1E69E5920](text);
    v7 = v9;
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v11 = 0;
  }

  sub_1AC2DC09C(v10, v11, icon, layoutCopy, v7);
}

@end