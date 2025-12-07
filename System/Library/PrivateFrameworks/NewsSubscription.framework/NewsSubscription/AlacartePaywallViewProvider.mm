@interface AlacartePaywallViewProvider
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC16NewsSubscription27AlacartePaywallViewProvider)init;
@end

@implementation AlacartePaywallViewProvider

- (_TtC16NewsSubscription27AlacartePaywallViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3254();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(interaction) = sub_1D7819F3C(v13, interaction);

  (*(v10 + 8))(v13, v9);
  return interaction & 1;
}

@end