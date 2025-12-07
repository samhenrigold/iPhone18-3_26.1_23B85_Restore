@interface GKMultiplayerButtonHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)handler;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue cancelButtonHandler:(id)handler;
- (void)applyGame:(id)game;
- (void)cancelPressed:(id)pressed;
- (void)layoutSubviews;
- (void)updateCountWithMinPlayers:(int64_t)players maxPlayers:(int64_t)maxPlayers;
- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset;
@end

@implementation GKMultiplayerButtonHeaderView

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  return GKMultiplayerButtonHeaderView.init(cancelButtonHandler:)(v3, v5);
}

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue cancelButtonHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v10 = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = sub_24DFA0D08;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return GKMultiplayerButtonHeaderView.init(minimumValue:maximumValue:initialValue:cancelButtonHandler:)(value, maximumValue, v9, v12, v11);
}

- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.wantsMaterialBackground(scrollOffset:)(offset);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10.n128_f64[0] = height;
  v11 = sub_24E00CB4C(v9, v10, in, selfCopy);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = GKMultiplayerButtonHeaderView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.layoutSubviews()();
}

- (void)applyGame:(id)game
{
  gameCopy = game;
  selfCopy = self;
  GKMultiplayerButtonHeaderView.apply(game:)(gameCopy);
}

- (void)updateCountWithMinPlayers:(int64_t)players maxPlayers:(int64_t)maxPlayers
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.updateCount(minPlayers:maxPlayers:)(players, maxPlayers);
}

- (void)cancelPressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24E00C924();

  sub_24DF8894C(v6);
}

@end