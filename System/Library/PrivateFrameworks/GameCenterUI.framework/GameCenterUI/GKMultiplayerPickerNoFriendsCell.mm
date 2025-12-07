@interface GKMultiplayerPickerNoFriendsCell
+ (NSString)reuseIdentifier;
+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (id)addFriendsHandler;
- (void)layoutSubviews;
- (void)setAddFriendsHandler:(id)handler;
@end

@implementation GKMultiplayerPickerNoFriendsCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerPickerNoFriendsCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (id)addFriendsHandler
{
  v2 = GKMultiplayerPickerNoFriendsCell.addFriendsHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_27;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAddFriendsHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(v4, v5);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  GKMultiplayerPickerNoFriendsCell.measurements(fitting:in:)(in, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  v7 = static GKMultiplayerPickerNoFriendsCell.itemHeight(fitting:in:)(environment, width, height);
  swift_unknownObjectRelease();
  return v7;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerPickerNoFriendsCell.layoutSubviews()();
}

@end