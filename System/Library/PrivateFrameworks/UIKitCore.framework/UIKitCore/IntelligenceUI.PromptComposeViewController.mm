@interface IntelligenceUI.PromptComposeViewController
- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithCoder:(id)coder;
- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation IntelligenceUI.PromptComposeViewController

- (void)loadView
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  v4 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView) + OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView) + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for IntelligenceUI.PromptComposeViewController;
  swift_unknownObjectWeakAssign();
  [(UIViewController *)self setView:*(&self->super.super.super.isa + v3)];
}

- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  type metadata accessor for IntelligenceUI.PromptComposeView();
  v10 = objc_allocWithZone(v9);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v10 initWithFrame_];
  if (v7)
  {
    v12 = sub_18A4A7258();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(UIViewController *)&v17 initWithNibName:v12 bundle:bundleCopy, v13];

  return v15;
}

- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  type metadata accessor for IntelligenceUI.PromptComposeView();
  v7 = objc_allocWithZone(v6);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v7 initWithFrame_];
  v9 = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(UIViewController *)&v13 initWithCoder:coderCopy, v9];

  if (v11)
  {
  }

  return v11;
}

@end