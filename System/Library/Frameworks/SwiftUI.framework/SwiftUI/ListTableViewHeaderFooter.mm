@interface ListTableViewHeaderFooter
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7SwiftUI25ListTableViewHeaderFooter)initWithReuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation ListTableViewHeaderFooter

- (void)prepareForReuse
{
  selfCopy = self;
  ListTableViewHeaderFooter.prepareForReuse()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host))
  {
    selfCopy = self;
    contentView = [(ListTableViewHeaderFooter *)selfCopy contentView];
    [contentView bounds];
    v6 = v5;

    specialized PlatformListViewBase<>.hostSizeThatFits(width:)(v6);
    v8 = v7;
    v10 = v9;

    v11 = v10;
    v12 = v8;
  }

  else
  {
    height = fits.height;
    width = fits.width;
    v15.receiver = self;
    v15.super_class = type metadata accessor for ListTableViewHeaderFooter();
    [(ListTableViewHeaderFooter *)&v15 sizeThatFits:width, height];
  }

  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIViewConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ListTableViewHeaderFooter.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUI25ListTableViewHeaderFooter)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return ListTableViewHeaderFooter.init(reuseIdentifier:)(v3, v4);
}

@end