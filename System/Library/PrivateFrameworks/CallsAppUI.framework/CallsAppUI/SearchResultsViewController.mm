@interface SearchResultsViewController
- (_TtC10CallsAppUI27SearchResultsViewController)initWithCoder:(id)coder;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SearchResultsViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SectionnedCollectionViewController *)&v5 viewWillAppear:appearCopy];
  if (v4[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible] == 1)
  {
    sub_1CFBA8154(0, 0, 0);
  }

  else
  {
    v4[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear] = 1;
  }
}

- (_TtC10CallsAppUI27SearchResultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CFC9FFD8())
  {
    sub_1CFC72480(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_cancellables) = v4;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1CFC71E94(controllerCopy);
}

@end