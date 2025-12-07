@interface PresentationBasedCollectionViewListCell
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation PresentationBasedCollectionViewListCell

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return [(PresentationBasedCollectionViewListCell *)&v8 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A40C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  v14 = sub_1BA4A40A8();
  v15 = type metadata accessor for PresentationBasedCollectionViewListCell();
  v17.receiver = selfCopy;
  v17.super_class = v15;
  [(PresentationBasedCollectionViewListCell *)&v17 _bridgedUpdateConfigurationUsingState:v14];

  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.super.super.isa) + 0x58))(v12);
  v16 = sub_1BA4A4168();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  MEMORY[0x1BFAF1F10](v7);

  (*(v9 + 8))(v12, v8);
}

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  coderCopy = coder;
  v5 = [(PresentationBasedCollectionViewListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end