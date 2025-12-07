@interface AdaptiveGlyphSwiftUITextView.TextViewController
- (_TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController)initWithCoder:(id)coder;
- (_TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AdaptiveGlyphSwiftUITextView.TextViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AdaptiveGlyphSwiftUITextView.TextViewController();
  v4 = v6.receiver;
  v5 = [(AdaptiveGlyphSwiftUITextView.TextViewController *)&v6 viewWillDisappear:disappearCopy];
  (*&v4[OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_viewWillDisappear])(v5);
}

- (_TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController)initWithCoder:(id)coder
{
  result = sub_487D4();
  __break(1u);
  return result;
}

- (_TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end