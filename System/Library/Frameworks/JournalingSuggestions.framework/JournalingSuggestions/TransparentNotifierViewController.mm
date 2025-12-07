@interface TransparentNotifierViewController
- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithCoder:(id)coder;
- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation TransparentNotifierViewController

- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithCoder:(id)coder
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = OBJC_IVAR____TtC21JournalingSuggestions33TransparentNotifierViewController__viewHasAppeared;
  v10[15] = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v8, v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TransparentNotifierViewController(0);
  v4 = v5.receiver;
  [(TransparentNotifierViewController *)&v5 viewDidAppear:appearCopy];
  (*((*MEMORY[0x277D85000] & *v4) + 0x60))(1);
}

- (_TtC21JournalingSuggestions33TransparentNotifierViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end